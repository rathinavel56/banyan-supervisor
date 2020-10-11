import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { CommonModule } from '@angular/common';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';

import { AdminLayoutRoutes } from './admin-layout.routing';
import { ApiService } from '../../api/api.service';
import { UserService } from '../../api/user.service';
import { SupervisorComponent } from '../../supervisor/supervisor.component';
import { LoginComponent } from '../../login/login.component';
import { UserComponent } from '../../user/user.component';
import { TablesComponent } from '../../tables/tables.component';
import { TreeviewModule } from 'ngx-treeview';

@NgModule({
  imports: [
    CommonModule,
    RouterModule.forChild(AdminLayoutRoutes),
    TreeviewModule.forRoot(),
    FormsModule,
    ReactiveFormsModule
  ],
  declarations: [
    LoginComponent,
    SupervisorComponent,
    UserComponent,
    TablesComponent
  ],
  providers: [
    ApiService,
    UserService
  ]
})

export class AdminLayoutModule {}
