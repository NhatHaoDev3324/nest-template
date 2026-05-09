import { Controller, Get, Post, Body, Patch, Param, Delete, HttpStatus } from '@nestjs/common';
import { ProductService } from './product.service';
import { CreateProductDto } from './dto/create-product.dto';
import { UpdateProductDto } from './dto/update-product.dto';
import { Product } from './entities/product.entity';
import { ResponseData, ResponseSuccessNoData } from '../../global/respone.global';

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
    async findOne(@Param('id') id: string): Promise<ResponseData<Product>> {
        const product = await this.productService.findOne(id);
        return new ResponseData<Product>(HttpStatus.OK, 'Lấy thông tin sản phẩm thành công', product);
    }

    @Patch(':id')
    async update(@Param('id') id: string, @Body() updateProductDto: UpdateProductDto): Promise<ResponseSuccessNoData> {
        await this.productService.update(id, updateProductDto);
        return new ResponseSuccessNoData(HttpStatus.OK, 'Cập nhật sản phẩm thành công');
    }

    @Delete(':id')
    async remove(@Param('id') id: string): Promise<ResponseSuccessNoData> {
        await this.productService.remove(id);
        return new ResponseSuccessNoData(HttpStatus.OK, 'Xóa sản phẩm thành công');
    }
}
