import { Module } from '@nestjs/common';
import { MesAMesController } from './mes_a_mes.controller';
import { MesAMesService } from './mes_a_mes.service';
import { PrismaModule } from 'src/prisma/prisma.module';
import { PrismaService } from 'src/prisma/prisma.service';

@Module({
  imports: [PrismaModule],
  controllers: [MesAMesController],
  providers: [MesAMesService, PrismaService],
})
export class MesAMesModule {}
