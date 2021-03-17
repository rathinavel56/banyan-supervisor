import { Component, OnInit, Injectable, ViewChild } from '@angular/core';
import { LocationStrategy, PlatformLocation, Location } from '@angular/common';
import { UserService } from '../api/user.service';
import { ExcelService } from '../api/excel.service';
import { StarRatingComponent } from 'ng-starrating';
import { Router } from '@angular/router';
import { ToastrService } from 'ngx-toastr';
import { Lightbox } from 'ngx-lightbox';

@Component({
  selector: 'app-home',
  templateUrl: './supervisor.component.html',
  styleUrls: ['./supervisor.component.css']
})
export class SupervisorComponent implements OnInit {
  albums: any = [];
  dropdownEnabled = true;
  step = 1;
  serviceType = 0;
  centers = [];
  caregivers = [];
  isCenterLoading = false;
  isClientLoading = false;
  isClientDetailLoading = false;
  isNodata = false;
  clientDetail: any = {};
  currentFullDate = new Date();
  month = this.currentFullDate.getMonth() + 1;
  currentDate = this.currentFullDate.getFullYear() + '-' + (this.month.toString().length === 1 ? ('0' + this.month) : this.month) + '-' + ((this.currentFullDate.toString().length === 1) ? '0' + this.currentFullDate.getDate() : this.currentFullDate.getDate());
  currentDateCopy = this.currentFullDate.getFullYear() + '-' + (this.month.toString().length === 1 ? ('0' + this.month) : this.month) + '-' + ((this.currentFullDate.toString().length === 1) ? '0' + this.currentFullDate.getDate() : this.currentFullDate.getDate());
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
  icpnotes: any = '';
  window: any = window;
  empCode: any;
  supervisorClients: any;
  constructor(private userService: UserService,
    public router: Router,
    private excelService: ExcelService,
    public toastr: ToastrService,
    private _lightbox: Lightbox) { }

  ngOnInit() {
    this.loginUser = sessionStorage.getItem('report');
    if (!this.loginUser) {
      this.router.navigate(['/login']);
    } else {
      this.loginUser = JSON.parse(sessionStorage.getItem('report'));
    }
    const that = this;
    this.window.top.clearPage = function () {
      that.reset();
    };
    this.window.onbeforeunload = function() {
      this.isloginUser = sessionStorage.getItem('report') ? true : false;
      if (this.isloginUser) {
          const userDetail = JSON.parse(sessionStorage.getItem('report'));
          this.userName = userDetail.full_name;
          this.clockHandle = setInterval(() => {
              this.clock = new Date().toLocaleString();
            }, 1000);
            this.router.navigate(['/supervisor']);
      }
    };
  }

  exportxls(): void {
    if (this.clientDetail) {
      const data = this.organise([this.clientDetail]);
      this.excelService.exportAsExcelFile(data, 'export');
    } else {
      this.toastr.error('No Data', 'Error', {
        timeOut: 3000,
      });
    }
  }

  organise(arr) {
    const objs = [];
    arr.forEach((element, index) => {
      for (const [key, value] of Object.entries(element)) {
        if (!objs[index]) {
          objs[index] = {};
        }
        objs[index][key] = value;
      }
    });
    return objs;
  }
  getServices(serviceTypeMenu) {
    this.serviceType = serviceTypeMenu;
    this.isCenterLoading = true;
    this.userService.centers({
      rep_officer_id: this.loginUser.id
    })
    .subscribe(response => {
      if (response.status) {
        const centerList = [];
        response.data.forEach((center, index) => {
          if (index === 0) {
            centerList.push({
                caregivers: [center.caregiver],
                project_code: center.project_code
            });
          } else {
            const getProject = centerList.findIndex((e) => e.project_code.project_code === center.project_code.project_code);
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
    this.userService.supervisorCenters({
      rep_officer_id: this.loginUser.ids
    })
    .subscribe(response => {
      this.supervisorClients = response.data;
    });
  }

  setCareGivers(center, cgiver) {
    this.step = 7;
    if (center) {
      const cgiver = center.caregivers[0];
      this.cgiverCode = cgiver.cgiver_code;
      this.cgiverName = cgiver.cgiver_name;
      this.caregivers = center.caregivers;
      this.centerCode = center.project_code.project_code;
    } else {
      this.cgiverCode = cgiver.cgiver_code;
      this.cgiverName = cgiver.cgiver_name;
    }
    this.getDetails(5, true, null);
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
    this.currentDate = this.currentFullDate.getFullYear() + '-' + (this.month.toString().length === 1 ? ('0' + this.month) : this.month) + '-' + ((this.currentFullDate.toString().length === 1) ? '0' + this.currentFullDate.getDate() : this.currentFullDate.getDate());
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
    this.empCode = '';
    this.modeDetail = 1;
  }

  getClients(project_code, caregiver) {
    this.clientDetail = undefined;
    this.step = 3;
    this.careGiverName = caregiver.cgiver_name;
    this.careGiveCode = caregiver.cgiver_code;
    this.empCode = caregiver.emp_code;
    this.userService.clients({
      code: caregiver.cgiver_code,
      rep_officer_id: this.loginUser.id,
      project_code: project_code
    })
    .subscribe(response => {
      if (response.status && response.data) {
        this.clients = response.data;
        this.clients.sort((a, b) => (a.color > b.color) ? 1 : -1);
        this.clientName = (this.clients && this.clients.length > 0) ? this.clients[0].client_fname : '';
        this.clientFileNumber = (this.clients && this.clients.length > 0) ? this.clients[0].client_file_number : '';
        this.getDetails(1, true, null);
      } else {
        this.clients = [];
      }
    });
  }
  setClientDetails(client, modeDetail) {
    this.clientName = client.client_fname;
    this.clientFileNumber = client.client_file_number;
    this.clientDetail = undefined;
    this.getDetails(1, true, null);
    this.step = 3;
  }
  addnotes() {
    this.userService.icpNotes({
      code: this.clientFileNumber,
      dateDetil: this.currentDate,
      notes: this.icpnotes
    })
    .subscribe(response => {
      this.toastr.success('Notes added Successfully', 'Success', {
        timeOut: 3000,
      });
    });
  }
  getDetails(modeDetail, isRefresh, nextPrevData) {
    this.isClientDetailLoading = true;
    this.isNodata = false;
    if (isRefresh || this.modeDetail !== modeDetail) {
      this.modeDetail = modeDetail;
      this.userService.clientDetail({
        code: this.clientFileNumber,
        dateDetail: this.currentDate,
        mode: modeDetail,
        center_code: (this.serviceType === 2) ? this.centerCode : undefined,
        cgiver_code: (this.serviceType === 2) ? this.cgiverCode : undefined,
        nextPrev: nextPrevData
      })
      .subscribe(response => {
        this.isClientDetailLoading = false;
        if (response.status) {
          this.breakFasts = [];
          this.lunchs = [];
          this.dinners = [];
          this.albums = [];
          this.currentDate = (response.data && response.data.date) ? response.data.date.split(' ')[0] : this.currentDateCopy;
          if (this.modeDetail === 4) {
            this.clientDetail = response.data;
            for (let i = 1; i <= 15; i++) {
              if (this.clientDetail['medicine_' + i + '_name'] !== null) {
                const schedules = this.clientDetail['medicine_' + i + '_schedule'].split(',');
                schedules[0] = schedules[0].replace( /(<([^>]+)>)/ig, '').replace(/(\r\n|\n|\r)/gm, '');
                schedules[1] = schedules[1].replace( /(<([^>]+)>)/ig, '').replace(/(\r\n|\n|\r)/gm, '');
                schedules[2] = schedules[2].replace( /(<([^>]+)>)/ig, '').replace(/(\r\n|\n|\r)/gm, '');
                if (schedules[0] !== '0') {
                  this.breakFasts.push({
                    name: this.clientDetail['medicine_' + i + '_name'],
                    count: schedules[0],
                    strength: this.clientDetail['medicine_' + i + '_strength']
                  });
                }
                if (schedules[1] !== '0') {
                  this.lunchs.push({
                    name: this.clientDetail['medicine_' + i + '_name'],
                    count: schedules[1],
                    strength: this.clientDetail['medicine_' + i + '_strength']
                  });
                }
                if (schedules[2] !== '0') {
                  this.dinners.push({
                    name: this.clientDetail['medicine_' + i + '_name'],
                    count: schedules[2],
                    strength: this.clientDetail['medicine_' + i + '_strength']
                  });
                }
              }
            }
          } else {
            this.clientDetail = response.data;
            if (modeDetail === 0) {
              this.icpnotes = (this.clientDetail) ? this.clientDetail.notes : '';
            }
          }
        } else {
          if (nextPrevData) {
            this.currentDate = JSON.parse(JSON.stringify(this.currentDateCopy));
          }
          this.isNodata = true;
        }
      });
    }
  }
  showImg() {
    let imgUrl;
    if (this.modeDetail === 1) {
      imgUrl = 'http://35.211.229.171/portal/' + this.clientDetail.cgiver_selfie_url;
    } else if (this.modeDetail === 2) {
      imgUrl = 'http://35.211.229.171/portal/' + this.clientDetail.medical_screening_selfie_url;
    } else if (this.modeDetail === 5) {
      imgUrl = 'http://35.211.229.171/portal/' + this.clientDetail.housekeeping_selfie_url;
    } else if (this.modeDetail === 6) {
      imgUrl = 'http://35.211.229.171/portal/' + this.clientDetail.kitchen_selfie_url;
    } else if (this.modeDetail === 7) {
      imgUrl = 'http://35.211.229.171/portal/' + this.clientDetail.dining_selfie_url;
    }
    window.open(imgUrl, '_blank');
  }
  showStockImg(imgUrl) {
    window.open('http://35.211.229.171/portal/' + imgUrl, '_blank');
  }
  showMap() {
    if (this.modeDetail === 1) {
      const cgiver_coordinates = JSON.parse(this.clientDetail.cgiver_coordinates);
      window.open('http://maps.google.com/maps?q=' + cgiver_coordinates.lat.toString() + ',' + cgiver_coordinates.long.toString() + '&ll=' + cgiver_coordinates.lat.toString() + ',' + cgiver_coordinates.long.toString() + '&z=17', '_blank');
    } else if (this.modeDetail === 2) {
      const medical_screening_latlong = JSON.parse(this.clientDetail.medical_screening_latlong);
      window.open('http://maps.google.com/maps?q=' + medical_screening_latlong.lat.toString() + ',' + medical_screening_latlong.long.toString() + '&ll=' + medical_screening_latlong.lat.toString() + ',' + medical_screening_latlong.long.toString() + '&z=17', '_blank');
    } else if (this.modeDetail === 5) {
      const housekeepingLatlong = JSON.parse(this.clientDetail.housekeeping_latlong);
       window.open('http://maps.google.com/maps?q=' + housekeepingLatlong.lat.toString() + ',' + housekeepingLatlong.long.toString() + '&ll=' + housekeepingLatlong.lat.toString() + ',' + housekeepingLatlong.long.toString() + '&z=17', '_blank');
    } else if (this.modeDetail === 6) {
      const kitchen_latlong = JSON.parse(this.clientDetail.kitchen_latlong);
       window.open('http://maps.google.com/maps?q=' + kitchen_latlong.lat.toString() + ',' + kitchen_latlong.long.toString() + '&ll=' + kitchen_latlong.lat.toString() + ',' + kitchen_latlong.long.toString() + '&z=17', '_blank');
    } else if (this.modeDetail === 7) {
      const dining_selfie_latlong = JSON.parse(this.clientDetail.dining_selfie_latlong);
       window.open('http://maps.google.com/maps?q=' + dining_selfie_latlong.lat.toString() + ',' + dining_selfie_latlong.long.toString() + '&ll=' + dining_selfie_latlong.lat.toString() + ',' + dining_selfie_latlong.long.toString() + '&z=17', '_blank');
    }
  }
  open(index: number): void {
    this._lightbox.open(this.albums, index);
  }

  close(): void {
    this._lightbox.close();
  }
}
