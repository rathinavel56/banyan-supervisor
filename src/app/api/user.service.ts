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
  caregivers(): Observable<any> {
    return this.apiService.httpGet('get-caregivers');
  }
  clientList(): Observable<any> {
    return this.apiService.httpGet('get-clients');
  }
  getCenterCaregiver(): Observable<any> {
    return this.apiService.httpGet('get-center-caregiver');
  }
  updateClient(request): Observable<any> {
    return this.apiService.httpPost('update-client', request);
  }
  centers(request): Observable<any> {
    return this.apiService.httpPost('centers', request);
  }
  icpNotes(request): Observable<any> {
    return this.apiService.httpPost('add_icp_notes', request);
  }
  downloadXls(request): Observable<any> {
    return this.apiService.httpPost('download_xls', request);
  }
  clients(request: any): Observable<any> {
    return this.apiService.httpPost('clients', request);
  }
  clientDetail(request: any): Observable<any> {
    return this.apiService.httpPost('client_detail', request);
  }
}
