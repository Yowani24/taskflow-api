import { CreateSubactivityDto } from 'src/subactivity/dto/create-subactivity.dto';

export class CreateProjectDto {
  projectName: string;
  activity: string;
  start: Date;
  end: Date;
  status: string;
  percentage: number;
  developer: string;
  role: string;
  subActivities: CreateSubactivityDto[];
}
