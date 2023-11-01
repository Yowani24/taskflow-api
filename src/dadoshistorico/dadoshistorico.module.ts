import { Module } from '@nestjs/common';
import { DadoshistoricoService } from './dadoshistorico.service';
import { DadoshistoricoController } from './dadoshistorico.controller';
import { PrismaService } from 'src/prisma/prisma.service';

@Module({
  controllers: [DadoshistoricoController],
  providers: [DadoshistoricoService, PrismaService],
})
export class DadoshistoricoModule {}
