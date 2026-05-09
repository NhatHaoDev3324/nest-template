import { Injectable } from '@nestjs/common';
import { CreateProductDto } from './dto/create-product.dto';
import { UpdateProductDto } from './dto/update-product.dto';
import { Product } from './entities/product.entity';
import { Repository } from 'typeorm';
import { InjectRepository } from '@nestjs/typeorm';

@Injectable()
export class ProductService {
    constructor(
        @InjectRepository(Product)
        private productRepository: Repository<Product>,
    ) {}

    async create(createProductDto: CreateProductDto): Promise<Product> {
        const product = await this.productRepository.save(createProductDto);
        if (!product) {
            throw new Error('Tạo sản phẩm thất bại');
        }
        return product;
    }

    async findAll(): Promise<Product[]> {
        const products = await this.productRepository.find();
        if (!products) {
            throw new Error('Lấy danh sách sản phẩm thất bại');
        }
        return products;
    }

    async findOne(id: string): Promise<Product> {
        const product = await this.productRepository.findOneBy({ id });
        if (!product) {
            throw new Error('Sản phẩm không tồn tại');
        }
        return product;
    }

    async update(id: string, updateProductDto: UpdateProductDto) {
        const product = await this.productRepository.findOneBy({ id });
        if (!product) {
            throw new Error('Sản phẩm không tồn tại');
        }
        await this.productRepository.update(id, updateProductDto);
    }

    async remove(id: string) {
        const product = await this.productRepository.findOneBy({ id });
        if (!product) {
            throw new Error('Sản phẩm không tồn tại');
        }
        await this.productRepository.delete(id);
    }
}
