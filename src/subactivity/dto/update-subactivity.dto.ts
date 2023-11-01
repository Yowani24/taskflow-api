import { PartialType } from '@nestjs/mapped-types';
import { CreateSubactivityDto } from './create-subactivity.dto';

export class UpdateSubactivityDto extends PartialType(CreateSubactivityDto) {}
