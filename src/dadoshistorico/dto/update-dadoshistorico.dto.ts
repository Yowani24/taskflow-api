import { PartialType } from '@nestjs/mapped-types';
import { CreateDadoshistoricoDto } from './create-dadoshistorico.dto';

export class UpdateDadoshistoricoDto extends PartialType(
  CreateDadoshistoricoDto,
) {
  id?: number;
  ano?: number;
  valor?: number;
  escopos?: string;
  empresa?: string;
}
