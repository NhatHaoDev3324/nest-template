import { IsEmail, IsNotEmpty, IsString } from 'class-validator';

export class LoginAuthDto {
    @IsNotEmpty({ message: 'Email không được bỏ trống' })
    @IsEmail({}, { message: 'Email không đúng định dạng' })
    email!: string;

    @IsNotEmpty({ message: 'Password không được bỏ trống' })
    @IsString({ message: 'Password phải là một chuỗi' })
    password!: string;
}
