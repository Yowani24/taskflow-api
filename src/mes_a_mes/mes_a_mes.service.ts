import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { UpdateMesAMesDto } from './dto/mes_a_mes_update.dto';

@Injectable()
export class MesAMesService {
  constructor(private readonly prismaService: PrismaService) {}

  async getMonthlyData() {
    const yearlyEmissions = await this.prismaService.yearlyEmissions.findMany();
    return yearlyEmissions;
  }

  async create(updateMesAMesDto: UpdateMesAMesDto) {
    return await this.prismaService.yearlyEmissions
    .create({
      data: updateMesAMesDto,
    });
  }

  async update(id: string, updateMesAMesDto: UpdateMesAMesDto) {
    return this.prismaService.yearlyEmissions.update({
      where: { id },
      data: updateMesAMesDto,
    });
  }
}
