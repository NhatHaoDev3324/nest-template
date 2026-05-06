import { Controller, Get, Post, Body, Patch, Param, Delete, HttpStatus } from '@nestjs/common';
import { ProductService } from './product.service';
import { CreateProductDto } from './dto/create-product.dto';
import { UpdateProductDto } from './dto/update-product.dto';
import { Product } from './entities/product.entity';
import { ResponseData, ResponseError } from '../../global/respone.global';

@Controller('product')
export class ProductController {
    constructor(private readonly productService: ProductService) {}

    @Post()
    async create(@Body() createProductDto: CreateProductDto): Promise<ResponseData<Product>> {
        const product = await this.productService.create(createProductDto);
        return new ResponseData<Product>(HttpStatus.OK, 'Tạo sản phẩm thành công', product);
    }

    @Get()
    async findAll(): Promise<ResponseData<Product[]>> {
        const products = await this.productService.findAll();
        return new ResponseData<Product[]>(HttpStatus.OK, 'Lấy danh sách sản phẩm thành công', products);
    }

    @Get(':id')
    async findOne(@Param('id') id: string): Promise<ResponseData<Product> | ResponseError> {
        try {
            const product = await this.productService.findOne(id);
            return new ResponseData<Product>(HttpStatus.OK, 'Lấy thông tin sản phẩm thành công', product);
        } catch (error) {
            const err = error instanceof Error ? error.message : 'Lỗi không xác định';
            return new ResponseError(HttpStatus.NOT_FOUND, err);
        }
    }

    @Patch(':id')
    async update(@Param('id') id: string, @Body() updateProductDto: UpdateProductDto): Promise<ResponseData<void>> {
        await this.productService.update(id, updateProductDto);
        return new ResponseData<void>(HttpStatus.OK, 'Cập nhật sản phẩm thành công', undefined);
    }

    @Delete(':id')
    async remove(@Param('id') id: string): Promise<ResponseData<void>> {
        await this.productService.remove(id);
        return new ResponseData<void>(HttpStatus.OK, 'Xóa sản phẩm thành công', undefined);
    }
}
