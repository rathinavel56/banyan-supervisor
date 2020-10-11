import { Injectable } from '@angular/core';
import { FormGroup } from '@angular/forms';
import { ApiService } from './api.service';
import { Observable } from 'rxjs';

@Injectable()
export class UserService {

  constructor(private apiService: ApiService) { }

  login(request: any): Observable<any> {
    return this.apiService.httpPost('supervisor_login', request.value);
  }
  supervisorTree(request): Observable<any> {
    return this.apiService.httpPost('supervisor_tree', request);
  }
  clientDetail(request: any): Observable<any> {
    return this.apiService.httpPost('client_detail', request);
  }
}
