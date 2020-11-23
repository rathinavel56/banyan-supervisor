import { Component, OnInit, ElementRef } from '@angular/core';
import { ROUTES } from '../../sidebar/sidebar.component';
import {Location, LocationStrategy, PathLocationStrategy} from '@angular/common';
import { Router } from '@angular/router';
@Component({
    selector: 'navbar-cmp',
    templateUrl: 'navbar.component.html'
})

export class NavbarComponent implements OnInit {
    private listTitles: any[];
    location: Location;
    private toggleButton: any;
    private sidebarVisible: boolean;
    isloginUser = false;
    userName = '';
    clockHandle: any;
    clock: any;
    window: any;

    constructor(location: Location,
        private element: ElementRef,
        public router: Router) {
        this.location = location;
        this.sidebarVisible = false;
        router.events.subscribe((val) => {
            this.isloginUser = sessionStorage.getItem('report') ? true : false;
            if (this.isloginUser) {
                let userDetail = JSON.parse(sessionStorage.getItem('report'));
                this.userName = userDetail.full_name;
                this.clockHandle = setInterval(()=>{
                    this.clock = new Date().toLocaleString();
                  },1000);
            }
        });
    }

    ngOnInit() {
        this.isloginUser = sessionStorage.getItem('report') ? true : false;
        this.listTitles = ROUTES.filter(listTitle => listTitle);
        const navbar: HTMLElement = this.element.nativeElement;
        this.toggleButton = navbar.getElementsByClassName('navbar-toggle')[0];        
    }
    home() {
        this.window.top.clearPage();
    }
    logout() {
        this.isloginUser = false;
        sessionStorage.removeItem('report');
        this.router.navigate(['/login']);
    }
    sidebarOpen() {
        const toggleButton = this.toggleButton;
        const body = document.getElementsByTagName('body')[0];
        setTimeout(function(){
            toggleButton.classList.add('toggled');
        }, 500);
        body.classList.add('nav-open');

        this.sidebarVisible = true;
    };
    sidebarClose() {
        const body = document.getElementsByTagName('body')[0];
        this.toggleButton.classList.remove('toggled');
        this.sidebarVisible = false;
        body.classList.remove('nav-open');
    };
    sidebarToggle() {
        // const toggleButton = this.toggleButton;
        // const body = document.getElementsByTagName('body')[0];
        if (this.sidebarVisible === false) {
            this.sidebarOpen();
        } else {
            this.sidebarClose();
        }
    };

    getTitle(){
      var titlee = this.location.prepareExternalUrl(this.location.path());
      if(titlee.charAt(0) === '#'){
          titlee = titlee.slice( 1 );
      }

      for(var item = 0; item < this.listTitles.length; item++){
          if(this.listTitles[item].path === titlee){
              return this.listTitles[item].title;
          }
      }
      return 'Dashboard';
    }
}
