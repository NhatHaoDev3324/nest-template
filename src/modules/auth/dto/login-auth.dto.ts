import { IsEmail, IsNotEmpty } from 'class-validator';

export class LoginAuthDto {
    @IsNotEmpty({ message: 'Email Không được bỏ trống' })
    @IsEmail({}, { message: 'Email không đúng định dạng' })
    email!: string;

    @IsNotEmpty({ message: 'Password không được bỏ trống' })
    password!: string;
}
