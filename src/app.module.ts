import { Module } from '@nestjs/common';
import { MesAMesModule } from './mes_a_mes/mes_a_mes.module';
import { DadoshistoricoModule } from './dadoshistorico/dadoshistorico.module';
import { ProjectModule } from './project/project.module';
import { SubactivityModule } from './subactivity/subactivity.module';

@Module({
  imports: [MesAMesModule, DadoshistoricoModule, ProjectModule, SubactivityModule],
})
export class AppModule {}
