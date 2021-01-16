import { Component, OnInit, Injectable, ViewChild } from '@angular/core';
import { LocationStrategy, PlatformLocation, Location } from '@angular/common';
import { UserService } from '../api/user.service';
import { Router } from '@angular/router';
import { ToastrService } from 'ngx-toastr';
declare var $;
@Component({
  selector: 'app-user-assign',
  templateUrl: './user_assign.component.html',
  styleUrls: ['./user_assign.component.scss']
})
export class UserAssignComponent implements OnInit {
  @ViewChild('dataTable') table;
  dataTable: any;
  careGivers: any;
  clientName: any;
  clients: any;
  isCenterLoading: any = true;
  isUpdate: any = false;
  giver1: any;
  giver2: any;
  giver3: any;
  projectCode: any;
  projectName: any;
  id: any;
  dtOptions: any = {};
  centerDetailCp: any;
  centerDetail: any;
  centers: any;
  constructor(private userService: UserService,
    public toastr: ToastrService,
    public router: Router) { }

  ngOnInit() {
    this.getCenterCaregiver();
    this.getClients(false);
  }

  getCenterCaregiver() {
    this.userService.getCenterCaregiver()
    .subscribe(response => {
      this.centers = response.data;
    });
  }

  getCareGivers() {
    this.userService.caregivers()
    .subscribe(response => {
      this.careGivers = response.data;
    });
  }
  getClients(isShowMsg) {
    this.isCenterLoading = true;
    this.userService.clientList()
    .subscribe(response => {
      this.clients = response.data;
      this.isCenterLoading = false;
      setTimeout(function(){
        $('#dataTable').DataTable();
      }, 500);      
      if (isShowMsg) {
        this.toastr.success('Successfully', 'Success', {
          timeOut: 3000,
        });
      }
    });
  }
  updateCareGivers(center) {
      this.centerDetail = this.centers.find((e) => e.id === +center);  
      this.careGivers = (this.centerDetail && this.centerDetail.caregivers && this.centerDetail.caregivers.length > 0) ? this.centerDetail.caregivers : [];
      this.giver1 = null;
      this.giver2 = null;
      this.giver3 = null;
      this.projectCode = null;
      this.projectName = null;
  }
  updateClient(user: any) {
    this.isUpdate = true;
    this.projectCode = user.center_code;
    this.projectName = user.center_name;
    this.centerDetail = this.centers.find((e) => e.project_code === this.projectCode);
    this.careGivers = (this.centerDetail && this.centerDetail.caregivers && this.centerDetail.caregivers.length > 0) ? this.centerDetail.caregivers : [];
    this.centerDetailCp = this.centerDetail.id;
    this.giver1 = user.client_cgiver1;
    this.giver2 = user.client_cgiver2;
    this.giver3 = user.client_cgiver3;
    this.clientName = (user.client_fname + ((user.client_lname != 'N/A') ? user.client_lname : ''));
    this.id = user.id;
    document.body.scrollTop = 0; // For Safari
    document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
  }
  onCancel() {
    this.isUpdate = false;
    this.giver1 = null;
    this.giver2 = null;
    this.giver3 = null;
    this.id = null;
    this.clientName = null;
    this.projectCode = null;
    this.projectName = null;
  }
  onSubmit() {
    if (!this.centerDetail) {
      this.toastr.error('Please select the center', 'Error', {
        timeOut: 3000,
      });
      return;
    }
    let givers = [];
    givers.push(this.giver1);
    if (givers.indexOf(this.giver2) > -1) {
      this.toastr.error('Care Giver should be unique', 'Error', {
        timeOut: 3000,
      });
      return;
    } else {
      givers.push(this.giver2);
    }
    if (givers.indexOf(this.giver3) > -1) {
      this.toastr.error('Care Giver should be unique', 'Error', {
        timeOut: 3000,
      });
      return;
    } else {
      givers.push(this.giver3);
    }
    this.userService.updateClient({
      client_cgiver1: this.giver1,
      client_cgiver2: this.giver2,
      client_cgiver3: this.giver3,
      center_name: this.centerDetail.project_name,
      center_code: this.centerDetail.project_code,
      id: this.id
    })
    .subscribe(response => {
      this.clients = [];
      this.getClients(true);
      this.onCancel();
    });
  }
}
