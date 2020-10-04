import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { CommonModule } from '@angular/common';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';

import { AdminLayoutRoutes } from './admin-layout.routing';

import { HomeComponent } from '../../home/home.component';
import { UserComponent } from '../../user/user.component';
import { TablesComponent } from '../../tables/tables.component';
import { TreeviewModule } from 'ngx-treeview';

@NgModule({
  imports: [
    CommonModule,
    RouterModule.forChild(AdminLayoutRoutes),
    TreeviewModule.forRoot(),
    FormsModule
  ],
  declarations: [
    HomeComponent,
    UserComponent,
    TablesComponent
  ]
})

export class AdminLayoutModule {}
