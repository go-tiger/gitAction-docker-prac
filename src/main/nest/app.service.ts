import { Injectable } from '@nestjs/common';
import { ConfigService } from '@nestjs/config';

@Injectable()
export class AppService {
  constructor(private configService: ConfigService) {}

  getHello(): string {
    const test_env = this.configService.get<string>('test_env');
    return `Hello World!! test_env: ${test_env}`;
  }
}
