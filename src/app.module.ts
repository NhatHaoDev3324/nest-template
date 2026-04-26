import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { UserModule } from './modules/user/user.module';
import { ConfigModule } from '@nestjs/config';
import { ProductModule } from './modules/product/product.module';
import { TypeOrmModule } from '@nestjs/typeorm';
import { postgresConfig } from './config/database.config';

@Module({
    imports: [
        ConfigModule.forRoot({
            isGlobal: true,
            envFilePath: ['.env.local', '.env'],
        }),
        TypeOrmModule.forRootAsync(postgresConfig()),
        UserModule,
        ProductModule,
    ],
    controllers: [AppController],
    providers: [AppService],
})
export class AppModule {}
