import { IsNotEmpty, IsNumber, IsString } from 'class-validator';

export class CreateProductDto {
    @IsString({ message: 'Tên sản phẩm phải là một chuỗi' })
    @IsNotEmpty({ message: 'Tên sản phẩm không được để trống' })
    name!: string;

    @IsString({ message: 'Mô tả sản phẩm phải là một chuỗi' })
    @IsNotEmpty({ message: 'Mô tả sản phẩm không được để trống' })
    description!: string;

    @IsNumber({}, { message: 'Giá sản phẩm phải là một số' })
    @IsNotEmpty({ message: 'Giá sản phẩm không được để trống' })
    price!: number;
}
