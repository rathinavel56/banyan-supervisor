import { Injectable } from '@angular/core';
import { FormGroup } from '@angular/forms';
import { ApiService } from './api.service';
import { Observable } from 'rxjs';

@Injectable()
export class UserService {

  constructor(private apiService: ApiService) { }

  login(request: any): Observable<any> {
    return this.apiService.httpPost('users/login', request);
  }
  centers(request): Observable<any> {
    return this.apiService.httpPost('centers', request);
  }
  clients(request: any): Observable<any> {
    return this.apiService.httpPost('clients', request);
  }
  clientDetail(request: any): Observable<any> {
    return this.apiService.httpPost('client_detail', request);
  }
}
