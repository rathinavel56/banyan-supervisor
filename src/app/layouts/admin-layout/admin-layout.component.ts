import { Component, OnInit, ViewChild, AfterViewInit } from '@angular/core';
import { Location, LocationStrategy, PathLocationStrategy, PopStateEvent } from '@angular/common';
import 'rxjs/add/operator/filter';
import { NavbarComponent } from '../../shared/navbar/navbar.component';
import { Router, NavigationEnd, NavigationStart } from '@angular/router';
import { Subscription } from 'rxjs/Subscription';
import PerfectScrollbar from 'perfect-scrollbar';
import { Observable } from 'rxjs';

@Component({
  selector: 'app-admin-layout',
  templateUrl: './admin-layout.component.html',
  styleUrls: ['./admin-layout.component.scss']
})
export class AdminLayoutComponent implements OnInit {
  private _router: Subscription;
  private lastPoppedUrl: string;
  private yScrollStack: number[] = [];
  window: any = window;
  userDetail: any;
  isShowMenu: boolean = false;

  constructor( public location: Location, private router: Router) {
    this.router.events.subscribe((val) => {
      let isloginUser = sessionStorage.getItem('report') ? true : false;
      if (isloginUser) {
          this.userDetail = JSON.parse(sessionStorage.getItem('report'));
      } else {
        this.userDetail = '';
      }
    });
  }

  ngOnInit() {
    let thiss = this;
    this.window.top.showMenu = function(check) {
      thiss.isShowMenu = check; 
    };
    this.userDetail = JSON.parse(sessionStorage.getItem('report'));
    if (this.userDetail) {
        if (this.userDetail.session_detail.user_group_id === 1 || this.userDetail.session_detail.user_group_id > 7) {
            this.isShowMenu = true;
        }
    }
  }
  ngAfterViewInit() {
      this.runOnRouteChange();
  }
  switchMenu(type: any) {
      this.isShowMenu = !this.isShowMenu;
      this.window.top.showNav(true);
      this.window.top.switchMenu(type);
  }
  runOnRouteChange(): void {
    if (window.matchMedia(`(min-width: 960px)`).matches && !this.isMac()) {
        const elemMainPanel = <HTMLElement>document.querySelector('.main-panel');
        if (elemMainPanel) {            
            const ps = new PerfectScrollbar(elemMainPanel);
            ps.update();
        }
    }
  }
  isMac(): boolean {
      let bool = false;
      if (navigator.platform.toUpperCase().indexOf('MAC') >= 0 || navigator.platform.toUpperCase().indexOf('IPAD') >= 0) {
          bool = true;
      }
      return bool;
  }

}
