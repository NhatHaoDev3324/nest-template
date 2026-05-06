import { Dependencies, Injectable, UnauthorizedException } from '@nestjs/common';
import { UserService } from '../user/user.service';
import { JwtService } from '@nestjs/jwt';
import { comparePassword } from 'utils/bcrypt';

@Injectable()
export class AuthService {
    constructor(
        private jwtService: JwtService,
        private userService: UserService,
    ) {}

    async signIn(email: string, password: string): Promise<any> {
        const user = await this.userService.getUserByEmail(email);
        const isValidatePass = await comparePassword(password, user.password);
        if (!isValidatePass) {
            throw new UnauthorizedException('Mật khẩu sai');
        }
        const payload = { sub: user.id };
        return {
            access_token: await this.jwtService.signAsync(payload),
        };
    }
}
