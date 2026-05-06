import { Body, Controller, Delete, Get, HttpCode, HttpStatus, Param, Patch, Post } from '@nestjs/common';
import { UserService } from './user.service';
import { User } from './entity/user.entity';
import { ResponseData, ResponseError, ResponseSuccessNoData } from '../../global/respone.global';
import { CreateUserDto } from './dto/create-user.dto';
import { UpdateUserDto } from './dto/update-user.dto';

@Controller('users')
export class UserController {
    constructor(private readonly userService: UserService) {}

    @HttpCode(HttpStatus.OK)
    @Get('get-all')
    async getUser() {
        const data = await this.userService.getUser();
        return new ResponseData<User[]>(HttpStatus.OK, 'Lấy danh sách người dùng thành công', data);
    }

    @HttpCode(HttpStatus.CREATED)
    @Post('create')
    async createUser(@Body() user: CreateUserDto) {
        await this.userService.createUser(user);
        return new ResponseSuccessNoData(HttpStatus.CREATED, 'Người dùng được tạo thành công');
    }

    @HttpCode(HttpStatus.OK)
    @Get(':id')
    async getUserById(@Param('id') id: string) {
        const user = await this.userService.getUserById(id);
        return new ResponseData<User>(HttpStatus.OK, 'Lấy thông tin người dùng thành công', user);
    }

    @HttpCode(HttpStatus.OK)
    @Patch('update/:id')
    async updateUser(@Param('id') id: string, @Body() user: UpdateUserDto) {
        await this.userService.updateUser(id, user);
        return new ResponseSuccessNoData(HttpStatus.OK, 'Thông tin người dùng được cập nhật thành công');
    }

    @HttpCode(HttpStatus.OK)
    @Delete('delete/:id')
    async deleteUser(@Param('id') id: string) {
        await this.userService.deleteUser(id);
        return new ResponseSuccessNoData(HttpStatus.OK, 'Người dùng được xóa thành công');
    }
}
