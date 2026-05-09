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

    async validateUser(email: string, password: string): Promise<User> {
        const user = await this.userRepository.findOneBy({ email });
        if (!user) {
            throw new UnauthorizedException('Email không tồn tại');
        }
        const isValidatePass = await comparePassword(password, user.password);
        if (!isValidatePass) {
            throw new UnauthorizedException('Mật khẩu không chính xác');
        }
        return user;
    }

    async login(user: User): Promise<string> {
        const payload = { id: user.id };
        const token = await this.jwtService.signAsync(payload);
        return token;
    }

    async profile(id: string): Promise<{
        email: string;
        name: string;
        created_at: Date;
    }> {
        const user = await this.userRepository.findOne({
            where: { id },
            select: ['email', 'name', 'created_at'],
        });
        if (!user) {
            throw new UnauthorizedException('id không tồn tại');
        }
        return user;
    }
}
