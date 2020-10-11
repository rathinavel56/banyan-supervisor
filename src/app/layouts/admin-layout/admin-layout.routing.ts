import { Routes } from '@angular/router';

import { SupervisorComponent } from '../../supervisor/supervisor.component';
import { LoginComponent } from '../../login/login.component';
import { UserComponent } from '../../user/user.component';
import { TablesComponent } from '../../tables/tables.component';

export const AdminLayoutRoutes: Routes = [
    { path: 'login',      component: LoginComponent },
    { path: 'supervisor',      component: SupervisorComponent },
    { path: 'user',           component: UserComponent },
    { path: 'table',          component: TablesComponent }
];
