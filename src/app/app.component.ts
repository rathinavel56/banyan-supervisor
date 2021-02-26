import { Component, OnInit } from '@angular/core';
import { LocationStrategy, PlatformLocation, Location } from '@angular/common';
import { Router } from '@angular/router';

declare const $: any;

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {

     constructor(public location: Location, public router: Router) {
      this.router.events.subscribe((val) => {
        this.setCurrentUrl();
      });
     }

    ngOnInit(){
      $(document).ready(function () {
        setTimeout(function () {
          $(function () {
            $('[data-toggle="tooltip"]').tooltip()
          });
        }, 500);
      });
    }

    setCurrentUrl() {

    }
}
