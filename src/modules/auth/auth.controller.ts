import { Body, Controller, Get, HttpCode, HttpStatus, Post, Request, UseGuards } from '@nestjs/common';
import { AuthService } from './auth.service';
import { ResponseData, ResponseToken } from '../../global/respone.global';
import { LocalAuthGuard } from './passport/local-auth.guard';
import { User } from '../user/entity/user.entity';
import { JwtAuthGuard } from './passport/jwt-auth.guard';

@Controller('auth')
export class AuthController {
    constructor(private readonly authService: AuthService) {}

    @UseGuards(LocalAuthGuard)
    @HttpCode(HttpStatus.OK)
    @Post('login')
    async login(@Request() req: { user: User }): Promise<ResponseToken> {
        const token = await this.authService.login(req.user);
        return new ResponseToken(HttpStatus.OK, 'Đăng nhập thành công', token);
    }

    @UseGuards(JwtAuthGuard)
    @HttpCode(HttpStatus.OK)
    @Get('profile')
    async getProfile(@Request() req: { user: { id: string } }): Promise<ResponseData<{ email: string; name: string; created_at: Date }>> {
        const user = await this.authService.profile(req.user.id);
        return new ResponseData(HttpStatus.OK, 'Lấy thông tin thành công', user);
    }
}
