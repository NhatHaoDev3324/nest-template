import { IsEmail, IsNotEmpty, IsString, MaxLength, MinLength } from 'class-validator';

export class CreateUserDto {
    @IsEmail({}, { message: 'Email không đúng định dạng' })
    @IsNotEmpty({ message: 'Email không được bỏ trống' })
    @IsString({ message: 'Email phải là một chuỗi' })
    email!: string;

    @MinLength(6, { message: 'Mật khẩu phải có ít nhất 6 ký tự' })
    @MaxLength(20, { message: 'Mật khẩu phải có tối đa 20 ký tự' })
    @IsString({ message: 'Mật khẩu phải là một chuỗi' })
    @IsNotEmpty({ message: 'Mật khẩu không được bỏ trống' })
    password!: string;

    @MaxLength(200, { message: 'Tên phải có tối đa 200 ký tự' })
    @MinLength(2, { message: 'Tên phải có ít nhất 2 ký tự' })
    @IsString({ message: 'Tên phải là một chuỗi' })
    @IsNotEmpty({ message: 'Tên không được bỏ trống' })
    name!: string;
}
