import { Routes } from '@angular/router';

import { SupervisorComponent } from '../../supervisor/supervisor.component';
import { UserAssignComponent } from '../../user_assign/user_assign.component';
import { LoginComponent } from '../../login/login.component';

export const AdminLayoutRoutes: Routes = [
    { path: 'login',      component: LoginComponent },
    { path: 'supervisor',      component: SupervisorComponent },
    { path: 'userassign',      component: UserAssignComponent },
];
