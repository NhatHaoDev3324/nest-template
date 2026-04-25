import { Controller, Get, HttpCode, HttpStatus } from '@nestjs/common';
import { UserService } from './user.service';
import { User } from './entity/user.entity';
import { ResponseData } from '../../global/respone.global';

@Controller('users')
export class UserController {
    constructor(private readonly userService: UserService) {}

    @HttpCode(HttpStatus.OK)
    @Get('get-all')
    async getUser(): Promise<ResponseData<User[]>> {
        const data = await this.userService.getUser();
        try {
            return new ResponseData<User[]>(HttpStatus.OK, 'Get user successfully', data);
        } catch {
            return new ResponseData<User[]>(
                HttpStatus.INTERNAL_SERVER_ERROR,
                'Get user failed',
                null,
            );
        }
    }
}
