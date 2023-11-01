import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { SubactivityService } from './subactivity.service';
import { CreateSubactivityDto } from './dto/create-subactivity.dto';
import { UpdateSubactivityDto } from './dto/update-subactivity.dto';

@Controller('subactivity')
export class SubactivityController {
  constructor(private readonly subactivityService: SubactivityService) {}

  @Post()
  create(@Body() createSubactivityDto: CreateSubactivityDto) {
    return this.subactivityService.create(createSubactivityDto);
  }

  @Get()
  findAll() {
    return this.subactivityService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.subactivityService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateSubactivityDto: UpdateSubactivityDto) {
    return this.subactivityService.update(+id, updateSubactivityDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.subactivityService.remove(+id);
  }
}
