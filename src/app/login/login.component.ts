import { Component, OnInit, OnDestroy, Renderer2 } from '@angular/core';
import { LocationStrategy, PlatformLocation, Location } from '@angular/common';
import { Router } from '@angular/router';
import { UserService } from '../api/user.service';
import {ToastrService} from 'ngx-toastr';

@Component({
  selector: 'app-home',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  constructor(public router: Router,
    private userService: UserService,
    public toastr: ToastrService,
    private renderer: Renderer2
    ) { }
    public submitted: Boolean;
    public serviceResponse: any;
    public username: string  = '';
    public password: string  = '';
    screenLoad: any = false;
  ngOnInit() {
    let userDetail = JSON.parse(sessionStorage.getItem('report'));
    if (userDetail) {
      if (userDetail.session_detail.user_group_id === 1 || userDetail.session_detail.user_group_id > 4) {
        this.router.navigate(['/userassign']);
      } else {
        this.router.navigate(['/supervisor']);
      }      
    } else {
      this.screenLoad = true;
    }
    this.renderer.addClass(document.body, 'clsLogin_Page');
  }

  ngOnDestroy() {
    this.renderer.removeClass(document.body, 'clsLogin_Page');
  }

  onSubmit() {
      this.submitted = true;
      if (!this.username) {
        this.toastr.error('Username is required', 'Mandatory', {
          timeOut: 3000,
        });
        return;
      } else if (!this.password) {
        this.toastr.error('Passoword is required', 'Mandatory', {
          timeOut: 3000,
        });
      }
      this.userService.login({
        username: this.username,
        password: this.password
      })
      .subscribe(response => {
          this.submitted = false;
          if (response.status) {
              let loginData = {
                full_name: response.data.full_name,
                id: response.data.id,
                session_detail: response.data
              };
              sessionStorage.setItem('report', JSON.stringify(loginData));
              if (response.data.user_group_id === 3) {
                  this.router.navigate(['/supervisor']);
              } else if (response.data.user_group_id === 1 || response.data.user_group_id > 4) {
                this.router.navigate(['/userassign']);
              } else {
                  this.router.navigate(['/mywork']);
              }
          } else {
            this.toastr.error('Username Or Password is invalid', 'Error', {
              timeOut: 3000,
            });
          }
      });
  }

  onKeydown(event) {
    if (event.key === "Enter") {
      this.onSubmit();
    }
  }

}
