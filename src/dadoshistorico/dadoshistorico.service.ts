import { Injectable } from '@nestjs/common';
import { CreateDadoshistoricoDto } from './dto/create-dadoshistorico.dto';
import { UpdateDadoshistoricoDto } from './dto/update-dadoshistorico.dto';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class DadoshistoricoService {
  constructor(private readonly prismaService: PrismaService) {}

  async create(createDadosHistoricos: CreateDadoshistoricoDto) {
    return await this.prismaService.dadosHistorico.create({
      data: createDadosHistoricos,
    });
  }

  async getDadosHistorico() {
    const dadosHistorico = await this.prismaService.dadosHistorico.findMany();
    return dadosHistorico;
  }

  findOne(id: number) {
    return `This action returns a #${id} dadoshistorico`;
  }

  async update(id: number, updateDadoshistoricoDto: UpdateDadoshistoricoDto) {
    return this.prismaService.dadosHistorico.update({
      where: { id },
      data: updateDadoshistoricoDto,
    });
  }

  remove(id: number) {
    return this.prismaService.dadosHistorico.delete({ where: { id } });
  }
}
