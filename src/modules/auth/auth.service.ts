import { Injectable, UnauthorizedException } from '@nestjs/common';
import { JwtService } from '@nestjs/jwt';
import { comparePassword } from 'utils/bcrypt';
import { InjectRepository } from '@nestjs/typeorm';
import { User } from '../user/entity/user.entity';
import { Repository } from 'typeorm';

@Injectable()
export class AuthService {
    constructor(
        @InjectRepository(User)
        private userRepository: Repository<User>,
        private jwtService: JwtService,
    ) {}

    async signIn(email: string, password: string): Promise<string> {
        const user = await this.userRepository.findOneBy({ email });
        if (!user) {
            throw new UnauthorizedException('Email không tồn tại');
        }
        const isValidatePass = await comparePassword(password, user.password);
        if (!isValidatePass) {
            throw new UnauthorizedException('Mật khẩu sai');
        }
        const payload = { sub: user.id };
        const token = await this.jwtService.signAsync(payload);
        return token;
    }
}
