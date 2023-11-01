import { Module } from '@nestjs/common';
import { SubactivityService } from './subactivity.service';
import { SubactivityController } from './subactivity.controller';
import { PrismaModule } from 'src/prisma/prisma.module';
import { PrismaService } from 'src/prisma/prisma.service';

@Module({
  imports: [PrismaModule],
  controllers: [SubactivityController],
  providers: [SubactivityService, PrismaService],
})
export class SubactivityModule {}
