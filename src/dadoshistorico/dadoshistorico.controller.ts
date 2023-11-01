import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
} from '@nestjs/common';
import { DadoshistoricoService } from './dadoshistorico.service';
import { CreateDadoshistoricoDto } from './dto/create-dadoshistorico.dto';
import { UpdateDadoshistoricoDto } from './dto/update-dadoshistorico.dto';

@Controller('dadoshistorico')
export class DadoshistoricoController {
  constructor(private readonly dadoshistoricoService: DadoshistoricoService) {}

  @Post()
  create(@Body() createDadoshistoricoDto: CreateDadoshistoricoDto) {
    return this.dadoshistoricoService.create(createDadoshistoricoDto);
  }

  @Get()
  getHistorico() {
    return this.dadoshistoricoService.getDadosHistorico();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.dadoshistoricoService.findOne(+id);
  }

  @Patch(':id')
  update(
    @Param('id') id: string,
    @Body() updateDadoshistoricoDto: UpdateDadoshistoricoDto,
  ) {
    return this.dadoshistoricoService.update(+id, updateDadoshistoricoDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.dadoshistoricoService.remove(+id);
  }
}
