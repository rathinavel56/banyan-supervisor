import { Component, OnInit } from '@angular/core';
import { LocationStrategy, PlatformLocation, Location } from '@angular/common';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { UserService } from '../api/user.service';
import { ToastMessage } from '../api/toast-message';

@Component({
  selector: 'app-home',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  constructor(public router: Router,
    private formBuilder: FormBuilder,
    private userService: UserService,
    private toastMessage: ToastMessage) { }
    public loginForm: FormGroup;
    public submitted: Boolean;
    public serviceResponse: any;
  ngOnInit() {
    this.loginForm = this.formBuilder.group({
        username: ['', Validators.required],
        password: ['', Validators.required]
    });
  }

  get f() {
      return this.loginForm.controls;
  }

  onSubmit() {
      this.submitted = true;
      setTimeout(() => {
          if (this.loginForm.invalid && document.getElementsByClassName('invalid-feedback-show').length > 0) {
              return;
          }
          this.userService.login(this.loginForm)
              .subscribe(response => {
                  this.submitted = false;
                  if (response.status) {
                      this.toastMessage.success(null, response.message);
                      sessionStorage.setItem('report', JSON.stringify(response));
                      if (this.serviceResponse.role === 'supervisor') {
                          this.router.navigate(['/dashboard']);
                      } else {
                          this.router.navigate(['/mywork']);
                      }
                  } else {
                      this.toastMessage.error(null, response.message);
                  }
              });
      }, 100);
  }

  onKeydown(event) {
    if (event.key === "Enter") {
      this.onSubmit();
    }
  }

}
