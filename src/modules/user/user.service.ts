import { BadRequestException, Injectable, InternalServerErrorException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { User } from './entity/user.entity';
import { Repository } from 'typeorm';
import { CreateUserDto } from './dto/create-user.dto';
import { hashPassword } from '../../../utils/bcrypt';
import { UpdateUserDto } from './dto/update-user.dto';

@Injectable()
export class UserService {
    constructor(
        @InjectRepository(User)
        private userRepository: Repository<User>,
    ) {}

    async getUser(): Promise<User[]> {
        try {
            return await this.userRepository.find();
        } catch {
            throw new InternalServerErrorException('Không thể lấy thông tin người dùng');
        }
    }

    async createUser(user: CreateUserDto) {
        try {
            const newUser = new User();

            newUser.name = user.name;
            newUser.email = user.email;
            newUser.password = await hashPassword(user.password);

            return await this.userRepository.save(newUser);
        } catch (error: unknown) {
            if ((error as { code?: string })?.code === '23505') {
                throw new BadRequestException('Email đã tồn tại');
            }

            throw new InternalServerErrorException('Không thể tạo tài khoản');
        }
    }

    async getUserById(id: string): Promise<User> {
        try {
            const user = await this.userRepository.findOneBy({ id });
            if (!user) {
                throw new BadRequestException('Người dùng không tồn tại');
            }
            return user;
        } catch {
            throw new InternalServerErrorException('Không thể lấy thông tin người dùng');
        }
    }

    async updateUser(id: string, user: UpdateUserDto) {
        try {
            const existingUser = await this.userRepository.findOneBy({ id });
            if (!existingUser) {
                throw new BadRequestException('Người dùng không tồn tại');
            }

            if (user.name) existingUser.name = user.name;
            if (user.email) existingUser.email = user.email;
            if (user.password) existingUser.password = await hashPassword(user.password);

            return await this.userRepository.save(existingUser);
        } catch (error: unknown) {
            if ((error as { code?: string })?.code === '23505') {
                throw new BadRequestException('Email đã tồn tại');
            }

            throw new InternalServerErrorException('Không thể cập nhật tài khoản');
        }
    }

    async deleteUser(id: string) {
        try {
            const existingUser = await this.userRepository.findOneBy({ id });
            if (!existingUser) {
                throw new BadRequestException('Người dùng không tồn tại');
            }
            return await this.userRepository.delete(id);
        } catch {
            throw new InternalServerErrorException('Không thể xóa tài khoản');
        }
    }
}
