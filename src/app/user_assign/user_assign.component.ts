import { Component, OnInit, Injectable, ViewChild } from '@angular/core';
import { LocationStrategy, PlatformLocation, Location } from '@angular/common';
import { UserService } from '../api/user.service';
import { Router } from '@angular/router';
import { ToastrService } from 'ngx-toastr';
import Swal from 'sweetalert2/dist/sweetalert2.js'
import 'sweetalert2/src/sweetalert2.scss'
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
  caregiver: any;
  clientName: any;
  clients: any;
  client: any;
  isCenterLoading: any = true;
  isUpdate: any = false;
  isAdd: any = false;
  isView: any = false;
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
  isAllChecked: any = false;
  casemanagers: any = [];
  careGiversList: any = [];
  casemanagersList: any = [];
  centerList: any = [];
  type: any = 'Casemanagers';
  windowTop: any = window;
  casemanager: any;
  centerCode: any;
  hideScreen: any = true;
  genders: any = [{
    name: 'Male'
  }, {
    name: 'Female'
  }, {
    name: 'Transgender'
  }];
  centerName: any;
  superVisorName: any;
  constructor(private userService: UserService,
    public toastr: ToastrService,
    public router: Router) {

    }

  ngOnInit() {
    this.getCenterCaregiver();
    this.getCenterList();
    const thiss = this;
    let menuType: any = '';
    this.windowTop.top.hideScreen = function() {
      thiss.hideScreen = true;
    };
    const userDetail = JSON.parse(sessionStorage.getItem('report'));
      if (userDetail) {
        if (userDetail.session_detail.user_group_id === 1 || userDetail.session_detail.user_group_id === 5 || userDetail.session_detail.user_group_id === 8 || userDetail.session_detail.user_group_id === 9) {
            menuType = 1;
        } else if (userDetail.session_detail.user_group_id === 6 || userDetail.session_detail.user_group_id === 10) {
            menuType = 2;
        } else if (userDetail.session_detail.user_group_id === 7) {
            menuType = 3;
        }
        if (userDetail.session_detail.user_group_id === 1 || userDetail.session_detail.user_group_id > 7) {
          thiss.windowTop.top.showMenu(true);
          thiss.windowTop.top.showNav(false);
        } else {
          thiss.windowTop.top.showNav(true);
        }
      }
    this.windowTop.top.switchMenu = function(index) {
      thiss.hideScreen = false;
      thiss.careGiversList = [];
      thiss.clients = [];
      thiss.onCasemanagerCancel();
      thiss.onClientsCancel();
      thiss.onCaregiverCancel(false);
      if (index === 1) {
        thiss.type = 'Casemanagers';
        thiss.getCasemanagers(false);
      } else if (index === 2) {
        thiss.type = 'Caregivers';
        thiss.getCareGiversList(false);
      } else {
        thiss.type = 'Clients';
        thiss.getClients(false);
      }
    };
    // this.windowTop.top.switchMenu(menuType);
  }

  chooseAllCenters() {
    let checkedValue: any = document.getElementById('allcenters') as HTMLInputElement;
    checkedValue = checkedValue.checked;
    this.centerList.forEach(element => {
      element.checked = checkedValue;
    });
  }

  getCenterCaregiver() {
    this.userService.getCenterCaregiver()
    .subscribe(response => {
      this.centers = response.data.sort(this.compareCenter);
    });
  }

  deleteCasemanager(casemanager) {
    if (confirm('Are you sure to delete')) {
      this.userService.deleteCasemanager(casemanager)
        .subscribe(response => {
          this.casemanagers = [];
          this.getCasemanagers(true);
          this.onCasemanagerCancel();
        });
    }
  }

  deleteClient(client) {
    if (confirm('Are you sure to delete')) {
      this.userService.deleteClient(client)
        .subscribe(response => {
          this.clients = [];
          this.getClients(true);
          this.onClientsCancel();
        });
    }
  }

  deleteCareGiver(careGiver) {
    this.userService.deleteCaregiver(careGiver)
      .subscribe(response => {
        this.casemanagers = [];
        this.getCareGiversList(true);
        this.onCaregiverCancel(false);
      });
  }

  addCasemanagers() {
    this.onCasemanagerCancel();
    this.isUpdate = true;
    this.isAdd = true;
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
  }

  addClients() {
    this.onClientsCancel();
    this.isUpdate = true;
    this.isAdd = true;
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
  }

  addCareGivers() {
    this.onCaregiverCancel(false);
    this.isUpdate = true;
    this.isAdd = true;
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
  }

  getCenterList() {
    this.userService.centerList()
    .subscribe(response => {
      this.centerList = response.data.sort(this.compareCenter);
      this.centerList.forEach(element => {
        element.checked = false;
      });
    });
  }

  compareCenter(a, b) {
    const bandA = a.project_name.toUpperCase();
    const bandB = b.project_name.toUpperCase();

    let comparison = 0;
    if (bandA > bandB) {
      comparison = 1;
    } else if (bandA < bandB) {
      comparison = -1;
    }
    return comparison;
  }

  getCasemanagers(isShowMsg) {
    this.casemanagers = [];
    this.isCenterLoading = true;
    this.userService.casemanagers()
    .subscribe(response => {
      const dataList: any = response.data.sort(this.compareData);
      this.casemanagers = dataList;
      this.casemanagersList = dataList;
      this.isCenterLoading = false;
      setTimeout(function() {
        $('#dataTable').DataTable();
      }, 500);
      if (isShowMsg) {
        this.toastr.success('Successfully', 'Success', {
          timeOut: 3000,
        });
      }
    });
  }

  compareData(a, b) {
    // Use toUpperCase() to ignore character casing
    const bandA = a.cm_Name.toUpperCase();
    const bandB = b.cm_Name.toUpperCase();

    let comparison = 0;
    if (bandA > bandB) {
      comparison = 1;
    } else if (bandA < bandB) {
      comparison = -1;
    }
    return comparison;
  }

  getCareGivers() {
    this.userService.caregivers()
    .subscribe(response => {
      this.careGivers = response.data;
    });
  }
  getClients(isShowMsg) {
    this.clients = [];
    this.isCenterLoading = true;
    this.userService.clientList()
    .subscribe(response => {
      this.clients = response.data;
      this.isCenterLoading = false;
      setTimeout(function() {
        $('#dataTable').DataTable();
      }, 500);
      if (isShowMsg) {
        this.toastr.success('Successfully', 'Success', {
          timeOut: 3000,
        });
      }
    });
  }
  getCareGiversList(isShowMsg) {
    this.careGiversList = [];
    this.isCenterLoading = true;
    this.userService.caregivers()
    .subscribe(response => {
      this.careGiversList = response.data;
      this.isCenterLoading = false;
      setTimeout(function() {
        $('#dataTable').DataTable();
      }, 500);
      this.getCasemanagers(false);
      if (isShowMsg) {
        this.toastr.success('Successfully', 'Success', {
          timeOut: 3000,
        });
      }
    });
  }
  updateCenters(center) {
    this.casemanager.cm_Center = center;
  }
  compareGivers(a, b) {
    // Use toUpperCase() to ignore character casing
    const bandA = (a.caregiver && a.caregiver.cgiver_name) ? a.caregiver.cgiver_name.toUpperCase() : '';
    const bandB = (b.caregiver && b.caregiver.cgiver_name) ? b.caregiver.cgiver_name.toUpperCase() : '';

    let comparison = 0;
    if (bandA > bandB) {
      comparison = 1;
    } else if (bandA < bandB) {
      comparison = -1;
    }
    return comparison;
  }
  updateClientCenters(id) {
    const centerDetail = this.centers.find((e) => e.id === +id);
    this.centerCode = centerDetail.project_code;
    this.client.center_name = centerDetail.project_name;
    this.careGivers = centerDetail.caregivers.sort(this.compareGivers);
    if (this.careGivers.length > 0) {
      this.careGivers.splice(0, 0, {
        caregiver: {
          cgiver_code: 0,
          cgiver_name: 'Please Select'
        }
      });
      this.giver1 = this.careGivers[0].caregiver.cgiver_code;
      this.giver2 = this.careGivers[0].caregiver.cgiver_code;
      this.giver3 = this.careGivers[0].caregiver.cgiver_code;
    } else {
      this.giver1 = '';
      this.giver2 = '';
      this.giver3 = '';
    }
  }
  setAllCheckBox() {
    this.isAllChecked = this.centerList.length === this.centerList.filter(e => {
      return e.checked === true;
    }).length;
  }
  updateCareGivers(careGiver) {
    this.onCaregiverCancel(true);
      this.caregiver = JSON.parse(JSON.stringify(careGiver));
      this.caregiver.casemanager = (this.caregiver && this.caregiver.cgiver_cm_id) ? this.caregiver.cgiver_cm_id.toString() : '';
      this.caregiver.rep_officier = this.casemanagers.find((e) => e.cm_ID === this.caregiver.cgiver_cm_id);
      if (this.caregiver.project_codes && this.caregiver.project_codes.length > 0) {
        this.centerList.forEach(element => {
          element.checked = (this.caregiver.project_codes.filter(e => {
            return element.id === e.project_code_id;
          }).length > 0);
          this.setAllCheckBox();
        });
      }
      this.isUpdate = true;
      this.isAdd = false;
      this.isView = false;
      document.body.scrollTop = 0;
      document.documentElement.scrollTop = 0;
  }
  viewCareGivers(careGiver) {
    this.onCaregiverCancel(true);
      this.caregiver = JSON.parse(JSON.stringify(careGiver));
      this.caregiver.casemanager = (this.caregiver && this.caregiver.cgiver_cm_id) ? this.caregiver.cgiver_cm_id.toString() : '';
      this.caregiver.rep_officier = this.casemanagers.find((e) => e.cm_ID === this.caregiver.cgiver_cm_id);
      if (this.caregiver.project_codes && this.caregiver.project_codes.length > 0) {
        this.centerList.forEach(element => {
          element.checked = (this.caregiver.project_codes.filter(e => {
            return element.id === e.project_code_id;
          }).length > 0);
          this.setAllCheckBox();
        });
      }
      const supervisorList = this.casemanagersList.find((e) =>  e.cm_ID === careGiver.cgiver_cm_id);
      this.superVisorName = supervisorList.cm_Name;
      this.isUpdate = false;
      this.isAdd = false;
      this.isView = true;
      document.body.scrollTop = 0;
      document.documentElement.scrollTop = 0;
  }
  updateCasemanager(casemanager) {
    this.isUpdate = true;
    this.isAdd = false;
    this.isView = false;
    this.casemanager = JSON.parse(JSON.stringify(casemanager));
    this.casemanager.cm_ID_OG = casemanager.cm_ID;
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
  }
  viewCasemanager(casemanager) {
    this.isUpdate = false;
    this.isAdd = false;
    this.isView = true;
    this.casemanager = JSON.parse(JSON.stringify(casemanager));
    this.casemanager.cm_ID_OG = casemanager.cm_ID;
    const managerlist = this.centerList.find((e) =>  e.id == casemanager.cm_Center);
    this.centerName = managerlist;
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
  }
  updateClient(user: any) {
    this.client = user;
    const centerDetail = this.centers.find((e) => e.project_code === this.client.center_code);
    this.centerCode = centerDetail.project_code;
    this.client.center_id = centerDetail.id;
    this.client.center_name = centerDetail.project_name;
    this.careGivers = centerDetail.caregivers;
    this.careGivers = centerDetail.caregivers.sort(this.compareGivers);
    if (this.careGivers.length > 0) {
      this.careGivers.splice(0, 0, {
        caregiver: {
          cgiver_code: 0,
          cgiver_name: 'Please Select'
        }
      });
      this.giver1 = this.client.client_cgiver1 ? this.client.client_cgiver1 : this.careGivers[0].caregiver.cgiver_code;
      this.giver2 = this.client.client_cgiver2 ? this.client.client_cgiver2 : this.careGivers[0].caregiver.cgiver_code;
      this.giver3 = this.client.client_cgiver3 ? this.client.client_cgiver3 : this.careGivers[0].caregiver.cgiver_code;
    } else {
      this.giver1 = '';
      this.giver2 = '';
      this.giver3 = '';
    }
    this.isUpdate = true;
    this.isAdd = false;
    this.isView = false;
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
  }
  viewClient(user: any) {
    this.client = user;
    const centerDetail = this.centers.find((e) => e.project_code === this.client.center_code);
    this.centerCode = centerDetail.project_code;
    this.client.center_id = centerDetail.id;
    this.client.center_name = centerDetail.project_name;
    this.careGivers = centerDetail.caregivers;
    this.careGivers = centerDetail.caregivers.sort(this.compareGivers);
    if (this.careGivers.length > 0) {
      this.careGivers.splice(0, 0, {
        caregiver: {
          cgiver_code: 0,
          cgiver_name: 'Please Select'
        }
      });
      this.giver1 = this.client.client_cgiver1 ? this.client.client_cgiver1 : this.careGivers[0].caregiver.cgiver_code;
      this.giver2 = this.client.client_cgiver2 ? this.client.client_cgiver2 : this.careGivers[0].caregiver.cgiver_code;
      this.giver3 = this.client.client_cgiver3 ? this.client.client_cgiver3 : this.careGivers[0].caregiver.cgiver_code;
    } else {
      this.giver1 = '';
      this.giver2 = '';
      this.giver3 = '';
    }
    this.isUpdate = false;
    this.isAdd = false;
    this.isView = true;
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
  }
  onClientsCancel() {
    this.isUpdate = false;
    this.isView = false;
    this.centerCode = '';
    this.careGivers = [{
      caregiver: {
        cgiver_code: 0,
        cgiver_name: 'Please Select'
      }
    }];
    this.giver1 = this.careGivers[0].caregiver.cgiver_code;
    this.giver2 = this.careGivers[0].caregiver.cgiver_code;
    this.giver3 = this.careGivers[0].caregiver.cgiver_code;
    this.client = {
      center_code : '',
      center_name : '',
      client_file_number: '',
      center_id: '',
      client_fname : '',
      client_lname : '',
      client_cgiver1 : '',
      client_cgiver2 : '',
      client_cgiver3 : '',
      client_doa : '',
      client_adm_type : '',
      client_age : '',
      client_gender : '',
      client_religion : '',
      client_state : '',
      client_city : '',
      client_district : '',
      client_ps : '',
      client_post : '',
      client_taluk : '',
      client_location : '',
      client_marital : '',
      client_idmark : '',
      client_occupation : '',
      client_education : '',
      client_language : '',
      client_relative_avl : '',
      client_relative_address_1 : '',
      client_relative_address_2 : '',
      client_daff : '',
      client_family_type : '',
      client_family_size : '',
      client_family_phone : '',
      client_referred : '',
      client_active : '',
      client_discharged : '',
      client_height : '',
    };
  }
  onCasemanagerSubmit() {
    if (!this.casemanager.cm_userID) {
      this.toastr.error('Please enter the User Id', 'Error', {
        timeOut: 3000,
      });
      return;
    }
    if (!this.casemanager.cm_password) {
      this.toastr.error('Please enter the Password', 'Error', {
        timeOut: 3000,
      });
      return;
    }
    if (!this.casemanager.cm_Name) {
      this.toastr.error('Please enter the Name', 'Error', {
        timeOut: 3000,
      });
      return;
    }
    if (!this.casemanager.cm_Center) {
      this.toastr.error('Please enter the Center', 'Error', {
        timeOut: 3000,
      });
      return;
    }
    if (!this.casemanager.cm_Contact) {
      this.toastr.error('Please enter the Contact', 'Error', {
        timeOut: 3000,
      });
      return;
    }
    if (this.isAdd) {
      this.userService.addCasemanager(this.casemanager)
      .subscribe(response => {
        this.casemanagers = [];
        this.getCasemanagers(true);
        this.onCasemanagerCancel();
      });
    } else {
      this.userService.updateCasemanager(this.casemanager)
      .subscribe(response => {
        this.casemanagers = [];
        this.getCasemanagers(true);
        this.onCasemanagerCancel();
      });
    }
  }
  onCasemanagerCancel() {
    this.isUpdate = false;
    this.isAdd = false;
    this.isView = false;
    this.casemanager = {
      cm_userID: '',
      cm_password: '',
      cm_Name: '',
      cm_Center: '',
      cm_Contact: '',
      cm_ID_OG: ''
    };
  }
  updateSupervisor(casemanager) {
      const casemanagerDetail = this.casemanagers.find((e) => e.cm_ID === casemanager);
      this.caregiver.rep_officier = casemanagerDetail;
      this.caregiver.cgiver_cm_id = casemanagerDetail.cm_ID;
      this.caregiver.rep_officer_id = casemanagerDetail.id;
  }
  onCaregiverSubmit() {
    if (!this.caregiver.emp_code) {
      this.toastr.error('Please enter the Employee Code', 'Error', {
        timeOut: 3000,
      });
      return;
    }
    if (!this.caregiver.username) {
      this.toastr.error('Please enter the Username', 'Error', {
        timeOut: 3000,
      });
      return;
    }
    if (!this.caregiver.password) {
      this.toastr.error('Please enter the Password', 'Error', {
        timeOut: 3000,
      });
      return;
    }
    if (!this.caregiver.cgiver_code) {
      this.toastr.error('Please enter the code', 'Error', {
        timeOut: 3000,
      });
      return;
    }
    if (!this.caregiver.cgiver_name) {
      this.toastr.error('Please enter the name', 'Error', {
        timeOut: 3000,
      });
      return;
    }
    if (!this.caregiver.cgiver_desig) {
      this.toastr.error('Please enter the Designation', 'Error', {
        timeOut: 3000,
      });
      return;
    }
    if (!this.caregiver.cgiver_mob) {
      this.toastr.error('Please enter the Mobile', 'Error', {
        timeOut: 3000,
      });
      return;
    }
    if (!this.caregiver.rep_officer_id) {
      this.toastr.error('Please select the Supervisor', 'Error', {
        timeOut: 3000,
      });
      return;
    }
    if (!this.caregiver.cgiver_cm_id) {
      this.toastr.error('Please enter the Casemanager', 'Error', {
        timeOut: 3000,
      });
      return;
    }
    // if (!this.caregiver.cgiver_profile_url) {
    //   this.toastr.error('Please upload the Image', 'Error', {
    //     timeOut: 3000,
    //   });
    //   return;
    // }
    this.caregiver.centers = this.centerList.filter((e) => {
      return e.checked === true;
    });
    if (this.caregiver.centers.length === 0) {
      this.toastr.error('Choose Center', 'Error', {
        timeOut: 3000,
      });
      return;
    }
    if (this.isAdd) {
      this.userService.addCaregiver(this.caregiver)
      .subscribe(response => {
        this.careGiversList = [];
        this.getCareGiversList(true);
        this.onCaregiverCancel(false);
      });
    } else {
      this.userService.updateCaregiver(this.caregiver)
      .subscribe(response => {
        this.careGiversList = [];
        this.getCareGiversList(true);
        this.onCaregiverCancel(false);
      });
    }
  }
  onCaregiverCancel(update: any) {
    if (!update) {
      this.isUpdate = false;
    }
    this.isAllChecked = false;
    this.isAdd = false;
    this.isView = false;
    this.centerList.forEach(element => {
      element.checked = false;
    });
    this.caregiver = {
      emp_code: '',
      username: '',
      password: '',
      pin: '',
      cgiver_code: '',
      cgiver_name: '',
      cgiver_desig: '',
      cgiver_mob: '',
      rep_officer_id: '',
      cgiver_cm_id: '',
      cgiver_profile_url: ''
    };
  }
  updateGiver(code: any, type: any) {
    if (type === 1) {
      this.giver1 = code;
    } else if (type === 2) {
      this.giver2 = code;
    } else {
      this.giver3 = code;
    }
  }
  onClientSubmit() {
    if (!this.centerCode) {
      this.toastr.error('Please select the center', 'Error', {
        timeOut: 3000,
      });
      return;
    }
    // let givers = [];
    // givers.push(this.giver1);
    // if (!this.giver1) {
    //   this.toastr.error('Please choose Care Giver 1', 'Error', {
    //     timeOut: 3000,
    //   });
    //   return;
    // }
    // if (!this.giver2) {
    //   this.toastr.error('Please choose Care Giver 1', 'Error', {
    //     timeOut: 3000,
    //   });
    //   return;
    // }
    // if (givers.indexOf(this.giver2) > -1) {
    //   this.toastr.error('Care Giver should be unique', 'Error', {
    //     timeOut: 3000,
    //   });
    //   return;
    // } else {
    //   givers.push(this.giver2);
    // }
    // if (!this.giver3) {
    //   this.toastr.error('Please choose Care Giver 1', 'Error', {
    //     timeOut: 3000,
    //   });
    //   return;
    // }
    // if (givers.indexOf(this.giver3) > -1) {
    //   this.toastr.error('Care Giver should be unique', 'Error', {
    //     timeOut: 3000,
    //   });
    //   return;
    // } else {
    //   givers.push(this.giver3);
    // }
    const clientDetails = JSON.parse(JSON.stringify(this.client));
    clientDetails.center_code = this.centerCode;
    clientDetails.client_cgiver1 = this.giver1 ? this.giver1 : '';
    clientDetails.client_cgiver2 = this.giver2 ? this.giver2 : '';
    clientDetails.client_cgiver3 = this.giver3 ? this.giver3 : '';
    if (this.isAdd) {
      this.userService.addClient(clientDetails)
      .subscribe(response => {
        this.clients = [];
        this.getClients(true);
        this.onClientsCancel();
      });
    } else {
      this.userService.updateClient(clientDetails)
      .subscribe(response => {
        this.clients = [];
        this.getClients(true);
        this.onClientsCancel();
      });
    }
  }
}
