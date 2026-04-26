import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { ConfigService } from '@nestjs/config';
import { ValidationPipe } from '@nestjs/common';

async function bootstrap() {
    const app = await NestFactory.create(AppModule);
    app.useGlobalPipes(new ValidationPipe());
    const configService = app.get(ConfigService);
    const port = configService.get<number>('PORT', 3000);
    await app.listen(port);
    console.log(`\n🚀 Server is running on port ${port}\n`);
}

bootstrap().catch((err) => {
    console.error('Error starting the server:', err);
    process.exit(1);
});
