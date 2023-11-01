import { Controller, Get, Param, Body, Post, Put } from '@nestjs/common';
import { MesAMesService } from './mes_a_mes.service';
import { UpdateMesAMesDto } from './dto/mes_a_mes_update.dto';

@Controller('months')
export class MesAMesController {
  constructor(private readonly mesAMesService: MesAMesService) {}

  @Get()
  getMes() {
    return this.mesAMesService.getMonthlyData();
  }

  @Post()
  create(@Body() updateMesAMesDto: UpdateMesAMesDto) {
    return this.mesAMesService.create(updateMesAMesDto);
  }

  @Put(':id')
  update(@Param('id') id: string, @Body() updateMesAMesDto: UpdateMesAMesDto) {
    return this.mesAMesService.update(id, updateMesAMesDto);
  }
}
