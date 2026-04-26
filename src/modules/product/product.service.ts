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

    create(createProductDto: CreateProductDto) {
        return this.productRepository.save(createProductDto);
    }

    findAll(): Promise<Product[]> {
        return this.productRepository.find();
    }

    async findOne(id: string): Promise<Product | null> {
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
        return this.productRepository.update(id, updateProductDto);
    }

    async remove(id: string) {
        const product = await this.productRepository.findOneBy({ id });
        if (!product) {
            throw new Error('Sản phẩm không tồn tại');
        }
        return this.productRepository.delete(id);
    }
}
