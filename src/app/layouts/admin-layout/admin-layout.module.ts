import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { CommonModule } from '@angular/common';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';

import { AdminLayoutRoutes } from './admin-layout.routing';
import { ApiService } from '../../api/api.service';
import { UserService } from '../../api/user.service';
import { ExcelService } from '../../api/excel.service';
import { SupervisorComponent } from '../../supervisor/supervisor.component';
import { RatingModule } from 'ng-starrating';
import { LightboxModule } from 'ngx-lightbox';
@NgModule({
  imports: [
    CommonModule,
    RouterModule.forChild(AdminLayoutRoutes),
    RatingModule,
    FormsModule,
    ReactiveFormsModule,
    LightboxModule
  ],
  declarations: [
    SupervisorComponent
  ],
  providers: [
    ApiService,
    UserService,
    ExcelService
  ]
})

export class AdminLayoutModule {}
