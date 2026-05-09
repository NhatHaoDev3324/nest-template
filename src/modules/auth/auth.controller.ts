import { Body, Controller, HttpCode, HttpStatus, Post } from '@nestjs/common';
import { AuthService } from './auth.service';
import { LoginAuthDto } from './dto/login-auth.dto';
import { ResponseToken } from '../../global/respone.global';

@Controller('auth')
export class AuthController {
    constructor(private readonly authService: AuthService) {}

    @HttpCode(HttpStatus.OK)
    @Post('login')
    async signIn(@Body() login: LoginAuthDto): Promise<ResponseToken> {
        const token = await this.authService.signIn(login.email, login.password);
        return new ResponseToken(HttpStatus.OK, 'Đăng nhập thành công', token);
    }
}
