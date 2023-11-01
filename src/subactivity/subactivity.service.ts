import { Injectable } from '@nestjs/common';
import { CreateSubactivityDto } from './dto/create-subactivity.dto';
import { UpdateSubactivityDto } from './dto/update-subactivity.dto';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class SubactivityService {
  constructor(private readonly prismaService: PrismaService) {}

  async create(createSubactivityDto: CreateSubactivityDto) {
    return await this.prismaService.subActivity.create({
      data: createSubactivityDto,
    });
  }

  async findAll() {
    return await this.prismaService.subActivity.findMany();
  }

  findOne(id: number) {
    return `This action returns a #${id} subactivity`;
  }

  update(id: number, updateSubactivityDto: UpdateSubactivityDto) {
    return `This action updates a #${id} subactivity`;
  }

  remove(id: number) {
    return this.prismaService.subActivity.delete({ where: { id } });
  }
}
