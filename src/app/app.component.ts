import { Component, OnInit } from '@angular/core';
import { LocationStrategy, PlatformLocation, Location } from '@angular/common';
import { Router } from '@angular/router';

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
    }

    setCurrentUrl() {

    }
}
