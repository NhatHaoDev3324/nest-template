import { IsEmail, IsString, MaxLength, MinLength } from 'class-validator';

export class CreateUserDto {
    @IsEmail()
    @IsString()
    email!: string;

    @MinLength(6)
    @IsString()
    password!: string;

    @MaxLength(200)
    @MinLength(2)
    @IsString()
    name!: string;
}
