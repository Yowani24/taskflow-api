import { Injectable } from '@nestjs/common';
import { CreateProjectDto } from './dto/create-project.dto';
import { UpdateProjectDto } from './dto/update-project.dto';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class ProjectService {
  constructor(private readonly prismaService: PrismaService) {}

  async create(createProjectDto: CreateProjectDto) {
    return await this.prismaService.project.create({
      data: createProjectDto as any,
    });
  }

  async findAll() {
    return await this.prismaService.project.findMany();
  }

  findOne(id: number) {
    return `This action returns a #${id} project`;
  }

  update(id: number, updateProjectDto: UpdateProjectDto) {
    return `This action updates a #${id} project`;
  }

  // async remove(id: number) {
  //   const project = await this.prismaService.project.findUnique({
  //     where: { id: id },
  //     include: { subActivities: true },
  //   });

  //   if (!project) {
  //     throw new Error(`Project with id ${id} not found.`);
  //   }

  //   const subActivities = project.subActivities;

  //   for (const subActivity of subActivities) {
  //     await this.prismaService.subActivity.delete({
  //       where: { id: subActivity.id },
  //     });
  //   }

  //   return this.prismaService.project.delete({ where: { id } });
  // }

  async remove(id: number) {
    try {
      const project = await this.prismaService.project.findUnique({
        where: { id: id },
        include: { subActivities: true },
      });

      if (!project) {
        throw new Error(`Project with id ${id} not found.`);
      }

      const subActivityDeletions = project.subActivities.map((subActivity) =>
        this.prismaService.subActivity.delete({
          where: { id: subActivity.id },
        }),
      );

      await Promise.all(subActivityDeletions);

      return this.prismaService.project.delete({ where: { id } });
    } catch (error) {
      console.error(error);
      throw new Error('An error occurred while processing the request.');
    }
  }
}
