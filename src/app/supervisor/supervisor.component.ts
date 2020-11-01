import { Component, OnInit, Injectable, ViewChild } from '@angular/core';
import { LocationStrategy, PlatformLocation, Location } from '@angular/common';
import { UserService } from '../api/user.service';
import { StarRatingComponent } from 'ng-starrating';
import { Router } from '@angular/router';
@Component({
  selector: 'app-home',
  templateUrl: './supervisor.component.html',
  styleUrls: ['./supervisor.component.css']
})
export class SupervisorComponent implements OnInit {
  dropdownEnabled = true;
  step = 1;
  serviceType = 0;
  centers = [];
  caregivers = [];
  isCenterLoading = false;
  isClientLoading = false;
  isClientDetailLoading = false;
  isNodata = false;
  clientDetail = {};
  currentFullDate = new Date();
  month = this.currentFullDate.getMonth() + 1;
  currentDate = this.currentFullDate.getFullYear() + '-' + (this.month.toString().length === 1 ? ('0' + this.month) : this.month) + '-' + this.currentFullDate.getDate();
  values: number[];
  clients = [];
  breakFasts = [];
  lunchs = [];
  dinners = [];
  cgiverName = '';
  totalstar = 4;
  mdScr: any;
  clientFileNumber: any;
  centerCode: any;
  cgiverCode: any;
  clientName: any;
  modeDetail = 1;
  careGiverName = '';
  careGiveCode = '';
  loginUser: any = '';
  constructor(private userService: UserService,
    public router: Router) { }

  ngOnInit() {
    this.loginUser = sessionStorage.getItem('report');
    if (!this.loginUser) {
      this.router.navigate(['/login']);
    } else {
      this.loginUser = JSON.parse(sessionStorage.getItem('report'));
    }
  }

  getServices(serviceTypeMenu) {
    this.serviceType = serviceTypeMenu;
    this.isCenterLoading = true;
    this.userService.centers({
      rep_officer_id: this.loginUser.id
    })
    .subscribe(response => {
      if (response.status) {
        let centerList = [];
        response.data.forEach((center, index) => {
          if (index === 0) {
            centerList.push({
                caregivers: [center.caregiver],
                project_code: center.project_code
            });
          } else {
            let getProject = centerList.findIndex((e) => e.project_code.project_code === center.project_code.project_code);
            if (getProject > -1) {
              centerList[getProject].caregivers.push(center.caregiver);
            } else {
              centerList.push({
                  caregivers: [center.caregiver],
                  project_code: center.project_code
              });
            }
          }
        });
        this.centers = centerList;
      } else {

      }
      this.isCenterLoading = false;
      if (this.serviceType === 1) {
        this.step = 2;
      } else {
        this.step = 5;
        if (this.centers.length > 0) {
          this.centerCode = this.centers[0].project_code.project_code;
        }
      }
    });
  }

  setCareGivers(center, cgiver) {
    this.step = 7;
    if (center) {
      let cgiver = center.caregivers[0];
      this.cgiverCode = cgiver.cgiver_code;
      this.cgiverName = cgiver.cgiver_name;
      this.caregivers = center.caregivers;
      this.centerCode = center.project_code.project_name;
    } else {
      this.cgiverCode = cgiver.cgiver_code;
      this.cgiverName = cgiver.cgiver_name;
    }
    this.getDetails(5, true);
  }
  reset() {
    this.step = 1;
    this.serviceType = 0;
    this.centers = [];
    this.caregivers = [];
    this.isCenterLoading = false;
    this.isClientLoading = false;
    this.isClientDetailLoading = false;
    this.isNodata = false;
    this.clientDetail = {};
    this.currentFullDate = new Date();
    this.month = this.currentFullDate.getMonth() + 1;
    this.currentDate = this.currentFullDate.getFullYear() + '-' + (this.month.toString().length === 1 ? ('0' + this.month) : this.month) + '-' + this.currentFullDate.getDate();
    this.breakFasts = [];
    this.lunchs = [];
    this.dinners = [];
    this.cgiverName = '';
    this.clientFileNumber = '';
    this.centerCode = '';
    this.cgiverCode = '';
    this.clientName = '';
    this.careGiverName = '';
    this.careGiveCode = '';
    this.modeDetail = 1;
  }

  getClients(project_code, caregiver) {
    this.clientDetail = undefined;
    this.step = 3;
    this.careGiverName = caregiver.cgiver_name;
    this.careGiveCode = caregiver.cgiver_code;
    this.userService.clients({
      code: caregiver.cgiver_code,
      rep_officer_id: this.loginUser.id,
      project_code: project_code.project_code
    })
    .subscribe(response => {
      if (response.status && response.data) {
        this.clients = response.data;
        this.clients.sort((a, b) => (a.color > b.color) ? 1 : -1);
        this.clientName = this.clients[0].client_fname;
        this.clientFileNumber = this.clients[0].client_file_number;
        this.getDetails(1, true);
      } else {
        this.clients = [];
      }
    });
  }
  setClientDetails(client, modeDetail) {    
    this.clientName = client.client_fname;
    this.clientFileNumber = client.client_file_number;
    this.clientDetail = undefined;
    this.getDetails(1, true);
    this.step = 3;
  }
  getDetails(modeDetail, isRefresh) {
    this.isClientDetailLoading = true;
    this.isNodata = false;    
    if (isRefresh || this.modeDetail !== modeDetail) {
      this.modeDetail = modeDetail;       
      this.userService.clientDetail({
        code: this.clientFileNumber,
        dateDetail: this.currentDate,
        mode: modeDetail,
        center_code: (this.serviceType === 2) ? this.centerCode : undefined,
        cgiver_code: (this.serviceType === 2) ? this.cgiverCode : undefined
      })
      .subscribe(response => {
        this.isClientDetailLoading = false;
        if (response.status) {
          this.breakFasts = [];
          this.lunchs = [];
          this.dinners = [];
          if (this.modeDetail === 4) {
            this.clientDetail = response.data;
            for (let i = 1; i <= 15; i++) {
              if (this.clientDetail['medicine_' + i +'_name'] !== null) {
                let schedules = this.clientDetail['medicine_' + i +'_schedule'].split(',');
                schedules[0] = schedules[0].replace( /(<([^>]+)>)/ig, '').replace(/(\r\n|\n|\r)/gm, "");
                schedules[1] = schedules[1].replace( /(<([^>]+)>)/ig, '').replace(/(\r\n|\n|\r)/gm, "");
                schedules[2] = schedules[2].replace( /(<([^>]+)>)/ig, '').replace(/(\r\n|\n|\r)/gm, "");
                if (schedules[0] != '0') {
                  this.breakFasts.push({
                    name: this.clientDetail['medicine_' + i +'_name'],
                    count: schedules[0],
                    strength: this.clientDetail['medicine_' + i +'_strength']
                  });
                }
                if (schedules[1] != '0') {
                  this.lunchs.push({
                    name: this.clientDetail['medicine_' + i +'_name'],
                    count: schedules[1],
                    strength: this.clientDetail['medicine_' + i +'_strength']
                  });
                }
                if (schedules[2] != '0') {
                  this.dinners.push({
                    name: this.clientDetail['medicine_' + i +'_name'],
                    count: schedules[2],
                    strength: this.clientDetail['medicine_' + i +'_strength']
                  });
                }
              }
            }
          } else {
            this.clientDetail = response.data;
          }
        } else {
          this.isNodata = true;
        }
      });
    }
  }
}
