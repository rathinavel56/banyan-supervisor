function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); return Constructor; }

(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["main"], {
  /***/
  "./node_modules/raw-loader/dist/cjs.js!./src/app/app.component.html":
  /*!**************************************************************************!*\
    !*** ./node_modules/raw-loader/dist/cjs.js!./src/app/app.component.html ***!
    \**************************************************************************/

  /*! exports provided: default */

  /***/
  function node_modulesRawLoaderDistCjsJsSrcAppAppComponentHtml(module, __webpack_exports__, __webpack_require__) {
    "use strict";

    __webpack_require__.r(__webpack_exports__);
    /* harmony default export */


    __webpack_exports__["default"] = "\r\n<router-outlet></router-outlet>\r\n  ";
    /***/
  },

  /***/
  "./node_modules/raw-loader/dist/cjs.js!./src/app/layouts/admin-layout/admin-layout.component.html":
  /*!********************************************************************************************************!*\
    !*** ./node_modules/raw-loader/dist/cjs.js!./src/app/layouts/admin-layout/admin-layout.component.html ***!
    \********************************************************************************************************/

  /*! exports provided: default */

  /***/
  function node_modulesRawLoaderDistCjsJsSrcAppLayoutsAdminLayoutAdminLayoutComponentHtml(module, __webpack_exports__, __webpack_require__) {
    "use strict";

    __webpack_require__.r(__webpack_exports__);
    /* harmony default export */


    __webpack_exports__["default"] = "<div class=\"wrapper\">\r\n    <!-- <div class=\"sidebar\" data-color=\"red\" data-image=\"\">\r\n      <app-sidebar></app-sidebar>\r\n      <div class=\"sidebar-background\" style=\"background-image: url(assets/img/sidebar-5.jpg)\"></div>\r\n  </div>main-panel -->\r\n\r\n    <div class=\"clearfix clsLandingPage\" *ngIf=\"userDetail && isShowMenu\">\r\n        <div class=\"container\">\r\n            <h2> Welcome, {{userDetail.session_detail.full_name}} </h2>\r\n\r\n            <div class=\"row clsFlex\">\r\n                <div class=\"col-sm-4\" *ngIf=\"userDetail.session_detail.user_group_id === 1 || userDetail.session_detail.user_group_id === 5 || userDetail.session_detail.user_group_id === 8 || userDetail.session_detail.user_group_id === 9\" (click)=\"switchMenu(1)\">\r\n                    <div class=\"clsInner\">\r\n                        <div class=\"clearfix\">\r\n                            <img src=\"../../../assets/img/new_img/manageCM.png\" alt=\"\">\r\n                            <p> Manage Case Managers </p>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n\r\n                <div class=\"col-sm-4\" *ngIf=\"userDetail.session_detail.user_group_id === 1 || userDetail.session_detail.user_group_id === 6 || userDetail.session_detail.user_group_id === 8 || userDetail.session_detail.user_group_id === 10\" (click)=\"switchMenu(2)\">\r\n                    <div class=\"clsInner\">\r\n                        <div class=\"clearfix\">\r\n                            <img src=\"../../../assets/img/new_img/manageCG.png\" alt=\"\">\r\n                            <p> Manage Care Givers </p>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n\r\n                <div class=\"col-sm-4\" *ngIf=\"userDetail.session_detail.user_group_id === 1 || userDetail.session_detail.user_group_id === 7 || userDetail.session_detail.user_group_id === 9 || userDetail.session_detail.user_group_id === 10\" (click)=\"switchMenu(3)\">\r\n                    <div class=\"clsInner\">\r\n                        <div class=\"clearfix\">\r\n                            <img src=\"../../../assets/img/new_img/manageClients.png\" alt=\"\">\r\n                            <p> Manage Clients </p>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"main-panel-layout\">\r\n        <navbar-cmp></navbar-cmp>\r\n        <router-outlet></router-outlet>\r\n    </div>\r\n\r\n</div>";
    /***/
  },

  /***/
  "./node_modules/raw-loader/dist/cjs.js!./src/app/login/login.component.html":
  /*!**********************************************************************************!*\
    !*** ./node_modules/raw-loader/dist/cjs.js!./src/app/login/login.component.html ***!
    \**********************************************************************************/

  /*! exports provided: default */

  /***/
  function node_modulesRawLoaderDistCjsJsSrcAppLoginLoginComponentHtml(module, __webpack_exports__, __webpack_require__) {
    "use strict";

    __webpack_require__.r(__webpack_exports__);
    /* harmony default export */


    __webpack_exports__["default"] = "<div class=\"clsFlex\" *ngIf=\"screenLoad\">\r\n    <form class=\"form-signin\">\r\n        <div class=\"clearfix\">\r\n            <div class=\"text-center\"><img src=\"/assets/img/tblogo_red.png\"></div>\r\n            <h1 class=\"h3 mb-3 font-weight-normal\" style=\"color: #f7f7f7;\">Please sign in</h1>\r\n\r\n            <div class=\"form-group\">\r\n                <label for=\"inputEmail\" class=\"sr-only\">Username</label>\r\n                <input type=\"text\" id=\"inputUsername\" class=\"form-control\" [(ngModel)]=\"username\" [ngModelOptions]=\"{standalone: true}\" placeholder=\"Username\" autofocus>\r\n            </div>\r\n\r\n            <div class=\"form-group\">\r\n                <label for=\"inputPassword\" class=\"sr-only\">Password</label>\r\n                <input type=\"password\" id=\"inputPassword\" [(ngModel)]=\"password\" [ngModelOptions]=\"{standalone: true}\" class=\"form-control\" placeholder=\"Password\">\r\n            </div>\r\n\r\n            <div class=\"checkbox mb-3\">\r\n                <label>\r\n               <input type=\"checkbox\" value=\"remember-me\"> <span  style=\"color: #f7f7f7;\">Remember me</span>\r\n            </label>\r\n            </div>\r\n            <button class=\"btn btn-lg btn-danger btn-block\" (click)=\"onSubmit()\" type=\"button\" style=\"background-color: #ac2925; border-color: #761c19; color: #f7f7f7;\">Sign in</button>\r\n        </div>\r\n    </form>\r\n</div>\r\n";
    /***/
  },

  /***/
  "./node_modules/raw-loader/dist/cjs.js!./src/app/shared/footer/footer.component.html":
  /*!*******************************************************************************************!*\
    !*** ./node_modules/raw-loader/dist/cjs.js!./src/app/shared/footer/footer.component.html ***!
    \*******************************************************************************************/

  /*! exports provided: default */

  /***/
  function node_modulesRawLoaderDistCjsJsSrcAppSharedFooterFooterComponentHtml(module, __webpack_exports__, __webpack_require__) {
    "use strict";

    __webpack_require__.r(__webpack_exports__);
    /* harmony default export */


    __webpack_exports__["default"] = "<footer class=\"footer\">\n    <div class=\"container-fluid\">\n        <nav class=\"pull-left\">\n            <ul>\n                <li>\n                    <a href=\"javascript:void(0)\">\n                        Home\n                    </a>\n                </li>\n                <li>\n                    <a href=\"javascript:void(0)\">\n                        Company\n                    </a>\n                </li>\n                <li>\n                    <a href=\"javascript:void(0)\">\n                        Portfolio\n                    </a>\n                </li>\n                <li>\n                    <a href=\"javascript:void(0)\">\n                        Blog\n                    </a>\n                </li>\n            </ul>\n        </nav>\n        <p class=\"copyright pull-right\">\n            &copy; {{test | date: 'yyyy'}} <a href=\"http://www.creative-tim.com\">Creative Tim</a>, made with love for a better web\n        </p>\n    </div>\n</footer>\n";
    /***/
  },

  /***/
  "./node_modules/raw-loader/dist/cjs.js!./src/app/shared/navbar/navbar.component.html":
  /*!*******************************************************************************************!*\
    !*** ./node_modules/raw-loader/dist/cjs.js!./src/app/shared/navbar/navbar.component.html ***!
    \*******************************************************************************************/

  /*! exports provided: default */

  /***/
  function node_modulesRawLoaderDistCjsJsSrcAppSharedNavbarNavbarComponentHtml(module, __webpack_exports__, __webpack_require__) {
    "use strict";

    __webpack_require__.r(__webpack_exports__);
    /* harmony default export */


    __webpack_exports__["default"] = "<nav class=\"navbar navbar-default\" *ngIf=\"showNav && isloginUser\">\r\n    <div class=\"container-fluid\">\r\n        <div class=\"row\">\r\n            <div class=\"col-xs-3\">\r\n                <a class=\"navbar-brand\" href=\"javascript:void(0)\" (click)=\"home()\"><img src=\"/assets/img/home.png\" class=\"img-responsive\"></a>\r\n            </div>\r\n            <div class=\"col-xs-6 text-center\" style=\"padding-top:15px;\">\r\n                <img _ngcontent-rix-c53=\"\" class=\"img-responsive\" style=\"display: inline-block;\"\r\n                    src=\"/assets/img/tblogo_red.png\">\r\n            </div>\r\n            <div class=\"col-xs-3\">\r\n                <ul class=\"nav navbar-nav navbar-right\">\r\n                    <!-- <li  *ngIf=\"userDetail && (userDetail.session_detail.user_group_id === 1 || userDetail.session_detail.user_group_id > 4)\">\r\n                        <ul class=\"nav navbar-nav navbar-left\">\r\n                            <li class=\"dropdown\">\r\n                                <a href=\"javascript:void(0)\" *ngIf=\"userDetail.session_detail.user_group_id === 1 || userDetail.session_detail.user_group_id > 7\" class=\"dropdown-toggle\" (click)=\"showMenu()\" data-toggle=\"dropdown\" style=\"background-color: #da4b50;font-weight: bold;color: white;top: 25px;\">\r\n                                    Menu\r\n                                </a>\r\n                                <a href=\"javascript:void(0)\"  *ngIf=\"userDetail.session_detail.user_group_id > 4 && userDetail.session_detail.user_group_id < 8\" class=\"dropdown-toggle\" (click)=\"refreshMenu()\" data-toggle=\"dropdown\" style=\"background-color: #da4b50;font-weight: bold;color: white;top: 25px;\">\r\n                                    Refresh Detail\r\n                                </a>\r\n                                <ul class=\"dropdown-menu\">\r\n                                    <li *ngIf=\"userDetail.session_detail.user_group_id === 1 || userDetail.session_detail.user_group_id === 5\"><a href=\"javascript:void(0)\" (click)=\"switchMenu(1)\">Casemanagers</a></li>\r\n                                    <li *ngIf=\"userDetail.session_detail.user_group_id === 1 || userDetail.session_detail.user_group_id === 6\"><a href=\"javascript:void(0)\" (click)=\"switchMenu(2)\">Caregivers</a></li>\r\n                                    <li *ngIf=\"userDetail.session_detail.user_group_id === 1 || userDetail.session_detail.user_group_id === 7\"><a href=\"javascript:void(0)\" (click)=\"switchMenu(3)\">Clients</a></li>\r\n                                </ul>\r\n                            </li>\r\n                        </ul>\r\n                    </li> -->\r\n                    <li>\r\n                        <a href=\"javascript:void(0)\" (click)=\"logout()\">\r\n                            <img class=\"img-responsive\" src=\"/assets/img/Logout.png\">\r\n                        </a>\r\n                    </li>\r\n                    <li class=\"separator hidden-lg hidden-md\"></li>\r\n                </ul>\r\n            </div>\r\n        </div>\r\n\r\n    </div>\r\n    <div class=\"container\">\r\n        <div class=\"welcome-box\">\r\n            <div class=\"row\">\r\n                <div class=\"col-sm-6\">\r\n                    <p>Welcome {{userName}}</p>\r\n                </div>\r\n                <div class=\"col-sm-6\">\r\n                    <p class=\"time\">{{clock}}</p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</nav>";
    /***/
  },

  /***/
  "./node_modules/raw-loader/dist/cjs.js!./src/app/sidebar/sidebar.component.html":
  /*!**************************************************************************************!*\
    !*** ./node_modules/raw-loader/dist/cjs.js!./src/app/sidebar/sidebar.component.html ***!
    \**************************************************************************************/

  /*! exports provided: default */

  /***/
  function node_modulesRawLoaderDistCjsJsSrcAppSidebarSidebarComponentHtml(module, __webpack_exports__, __webpack_require__) {
    "use strict";

    __webpack_require__.r(__webpack_exports__);
    /* harmony default export */


    __webpack_exports__["default"] = "\n<div class=\"sidebar-wrapper\">\n    <div class=\"logo\">\n        <a href=\"/\" class=\"simple-text\">\n            <div class=\"logo-img\">\n                <img src=\"/assets/img/banyan.png\"/>\n            </div>\n            Banyan\n        </a>\n    </div>\n    <ul class=\"nav responsive-nav\">\n        <li *ngIf=\"isMobileMenu()\">\n            <a class=\"dropdown-toggle\" data-toggle=\"dropdown\">\n                <i class=\"fa fa-dashboard\"></i>\n\t\t\t\t<p class=\"hidden-lg hidden-md\">Dashboard</p>\n            </a>\n        </li>\n        <li *ngIf=\"isMobileMenu()\">\n            <a (click)=\"logout()\">\n                <p>Log out</p>\n            </a>\n        </li>\n        <li class=\"separator hidden-lg hidden-md\" *ngIf=\"isMobileMenu()\"></li>\n        <li routerLinkActive=\"active\" *ngFor=\"let menuItem of menuItems\" class=\"{{menuItem.class}}\">\n            <a  [routerLink]=\"[menuItem.path]\">\n                <i class=\"{{menuItem.icon}}\"></i>\n                <p>{{menuItem.title}}</p>\n            </a>\n        </li>\n    </ul>\n</div>\n";
    /***/
  },

  /***/
  "./src/$$_lazy_route_resource lazy recursive":
  /*!**********************************************************!*\
    !*** ./src/$$_lazy_route_resource lazy namespace object ***!
    \**********************************************************/

  /*! no static exports found */

  /***/
  function src$$_lazy_route_resourceLazyRecursive(module, exports, __webpack_require__) {
    var map = {
      "./layouts/admin-layout/admin-layout.module": ["./src/app/layouts/admin-layout/admin-layout.module.ts", "layouts-admin-layout-admin-layout-module"]
    };

    function webpackAsyncContext(req) {
      if (!__webpack_require__.o(map, req)) {
        return Promise.resolve().then(function () {
          var e = new Error("Cannot find module '" + req + "'");
          e.code = 'MODULE_NOT_FOUND';
          throw e;
        });
      }

      var ids = map[req],
          id = ids[0];
      return __webpack_require__.e(ids[1]).then(function () {
        return __webpack_require__.t(id, 7);
      });
    }

    webpackAsyncContext.keys = function webpackAsyncContextKeys() {
      return Object.keys(map);
    };

    webpackAsyncContext.id = "./src/$$_lazy_route_resource lazy recursive";
    module.exports = webpackAsyncContext;
    /***/
  },

  /***/
  "./src/app/api/api.service.ts":
  /*!************************************!*\
    !*** ./src/app/api/api.service.ts ***!
    \************************************/

  /*! no static exports found */

  /***/
  function srcAppApiApiServiceTs(module, exports, __webpack_require__) {
    "use strict";

    var __decorate = this && this.__decorate || function (decorators, target, key, desc) {
      var c = arguments.length,
          r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc,
          d;
      if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);else for (var i = decorators.length - 1; i >= 0; i--) {
        if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
      }
      return c > 3 && r && Object.defineProperty(target, key, r), r;
    };

    var __metadata = this && this.__metadata || function (k, v) {
      if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
    };

    var __importDefault = this && this.__importDefault || function (mod) {
      return mod && mod.__esModule ? mod : {
        "default": mod
      };
    };

    Object.defineProperty(exports, "__esModule", {
      value: true
    });

    var core_1 = __webpack_require__(
    /*! @angular/core */
    "./node_modules/@angular/core/__ivy_ngcc__/fesm2015/core.js");

    var http_1 = __webpack_require__(
    /*! @angular/common/http */
    "./node_modules/@angular/common/__ivy_ngcc__/fesm2015/http.js");

    var rxjs_1 = __webpack_require__(
    /*! rxjs */
    "./node_modules/rxjs/_esm2015/index.js");

    var operators_1 = __webpack_require__(
    /*! rxjs/operators */
    "./node_modules/rxjs/_esm2015/operators/index.js");

    var environment_1 = __webpack_require__(
    /*! ../../environments/environment */
    "./src/environments/environment.ts");

    var ApiService =
    /*#__PURE__*/
    function () {
      function ApiService(http) {
        _classCallCheck(this, ApiService);

        this.http = http;
        this.baseUrl = environment_1.environment.apiEndPoint;
        this.windowTop = window.top;
      }

      _createClass(ApiService, [{
        key: "getHeaders",
        value: function getHeaders() {
          var addHeaders = new http_1.HttpHeaders();
          addHeaders = addHeaders.append('Access-Control-Allow-Origin', '*');
          addHeaders = addHeaders.append('Accept', 'application/json');

          if (sessionStorage.getItem('report') !== undefined) {
            var sessionStr = JSON.parse(sessionStorage.getItem('report'));

            if (sessionStr && sessionStr.access_token !== null) {
              addHeaders = addHeaders.append('Authorization', 'Bearer ' + sessionStr.access_token);
            }
          }

          this.httpOptions = {
            headers: addHeaders
          };
        }
      }, {
        key: "httpGet",
        value: function httpGet(url) {
          this.getHeaders();
          return this.http.get(this.baseUrl + url, this.httpOptions).pipe(operators_1.catchError(this.handleNetworkErrors));
        }
        /**
         * Performs a request with `post` http method.
         */

      }, {
        key: "httpPost",
        value: function httpPost(url, body) {
          this.getHeaders();
          return this.http.post(this.baseUrl + url, body, this.httpOptions).pipe(operators_1.catchError(this.handleNetworkErrors));
        }
        /**
         * Performs a request with `put` http method.
         */

      }, {
        key: "httpPut",
        value: function httpPut(url, body) {
          this.getHeaders();
          return this.http.put(this.baseUrl + url, body, this.httpOptions).pipe(operators_1.catchError(this.handleNetworkErrors));
        }
        /**
         * Performs a request with `delete` http method.
         */

      }, {
        key: "httpDelete",
        value: function httpDelete(url, options) {
          this.getHeaders();
          return this.http["delete"](this.baseUrl + url, options).pipe(operators_1.catchError(this.handleNetworkErrors));
        }
        /**
         * Handles all the network errors from the Http methods
         */

      }, {
        key: "handleNetworkErrors",
        value: function handleNetworkErrors(errObject) {
          if (errObject.status === 0) {
            sessionStorage.removeItem('timeSheet');
            sessionStorage.setItem('backend_failure', 'true');
            window.location.href = "/login";
          } else if (errObject.status === 401) {
            sessionStorage.removeItem('timeSheet');
            sessionStorage.setItem('session_expired', 'true');
            window.location.href = "/login";
          } else if (errObject.status === 500) {
            alert(errObject.error.statusMessage);
          }

          return rxjs_1.of(true);
        }
      }]);

      return ApiService;
    }();

    ApiService.ctorParameters = function () {
      return [{
        type: http_1.HttpClient
      }];
    };

    ApiService = __decorate([core_1.Injectable(), __metadata("design:paramtypes", [http_1.HttpClient])], ApiService);
    exports.ApiService = ApiService;
    /***/
  },

  /***/
  "./src/app/api/user.service.ts":
  /*!*************************************!*\
    !*** ./src/app/api/user.service.ts ***!
    \*************************************/

  /*! no static exports found */

  /***/
  function srcAppApiUserServiceTs(module, exports, __webpack_require__) {
    "use strict";

    var __decorate = this && this.__decorate || function (decorators, target, key, desc) {
      var c = arguments.length,
          r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc,
          d;
      if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);else for (var i = decorators.length - 1; i >= 0; i--) {
        if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
      }
      return c > 3 && r && Object.defineProperty(target, key, r), r;
    };

    var __metadata = this && this.__metadata || function (k, v) {
      if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
    };

    var __importDefault = this && this.__importDefault || function (mod) {
      return mod && mod.__esModule ? mod : {
        "default": mod
      };
    };

    Object.defineProperty(exports, "__esModule", {
      value: true
    });

    var core_1 = __webpack_require__(
    /*! @angular/core */
    "./node_modules/@angular/core/__ivy_ngcc__/fesm2015/core.js");

    var api_service_1 = __webpack_require__(
    /*! ./api.service */
    "./src/app/api/api.service.ts");

    var UserService =
    /*#__PURE__*/
    function () {
      function UserService(apiService) {
        _classCallCheck(this, UserService);

        this.apiService = apiService;
      }

      _createClass(UserService, [{
        key: "login",
        value: function login(request) {
          return this.apiService.httpPost('users/login', request);
        }
      }, {
        key: "caregivers",
        value: function caregivers() {
          return this.apiService.httpGet('get-caregivers');
        }
      }, {
        key: "clientList",
        value: function clientList() {
          return this.apiService.httpGet('get-clients');
        }
      }, {
        key: "getCenterCaregiver",
        value: function getCenterCaregiver() {
          return this.apiService.httpGet('get-center-caregiver');
        }
      }, {
        key: "casemanagers",
        value: function casemanagers() {
          return this.apiService.httpGet('get-casemanagers');
        }
      }, {
        key: "updateClient",
        value: function updateClient(request) {
          return this.apiService.httpPost('update-client', request);
        }
      }, {
        key: "updateCaregiver",
        value: function updateCaregiver(request) {
          return this.apiService.httpPost('update-caregivers', request);
        }
      }, {
        key: "addCaregiver",
        value: function addCaregiver(request) {
          return this.apiService.httpPost('add-caregivers', request);
        }
      }, {
        key: "addCasemanager",
        value: function addCasemanager(request) {
          return this.apiService.httpPost('add-casemanager', request);
        }
      }, {
        key: "addClient",
        value: function addClient(request) {
          return this.apiService.httpPost('add-client', request);
        }
      }, {
        key: "deleteCaregiver",
        value: function deleteCaregiver(request) {
          return this.apiService.httpPost('delete-caregivers', request);
        }
      }, {
        key: "deleteCasemanager",
        value: function deleteCasemanager(request) {
          return this.apiService.httpPost('delete-casemanager', request);
        }
      }, {
        key: "deleteClient",
        value: function deleteClient(request) {
          return this.apiService.httpPost('delete-client', request);
        }
      }, {
        key: "updateCasemanager",
        value: function updateCasemanager(request) {
          return this.apiService.httpPost('update-casemanager', request);
        }
      }, {
        key: "centerList",
        value: function centerList() {
          return this.apiService.httpGet('client-list');
        }
      }, {
        key: "centers",
        value: function centers(request) {
          return this.apiService.httpPost('centers', request);
        }
      }, {
        key: "supervisorCenters",
        value: function supervisorCenters(request) {
          return this.apiService.httpPost('supervisor-clients', request);
        }
      }, {
        key: "icpNotes",
        value: function icpNotes(request) {
          return this.apiService.httpPost('add_icp_notes', request);
        }
      }, {
        key: "downloadXls",
        value: function downloadXls(request) {
          return this.apiService.httpPost('download_xls', request);
        }
      }, {
        key: "clients",
        value: function clients(request) {
          return this.apiService.httpPost('clients', request);
        }
      }, {
        key: "clientDetail",
        value: function clientDetail(request) {
          return this.apiService.httpPost('client_detail', request);
        }
      }]);

      return UserService;
    }();

    UserService.ctorParameters = function () {
      return [{
        type: api_service_1.ApiService
      }];
    };

    UserService = __decorate([core_1.Injectable(), __metadata("design:paramtypes", [api_service_1.ApiService])], UserService);
    exports.UserService = UserService;
    /***/
  },

  /***/
  "./src/app/app.component.css":
  /*!***********************************!*\
    !*** ./src/app/app.component.css ***!
    \***********************************/

  /*! exports provided: default */

  /***/
  function srcAppAppComponentCss(module, __webpack_exports__, __webpack_require__) {
    "use strict";

    __webpack_require__.r(__webpack_exports__);
    /* harmony default export */


    __webpack_exports__["default"] = "\n/*# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IiIsImZpbGUiOiJzcmMvYXBwL2FwcC5jb21wb25lbnQuY3NzIn0= */";
    /***/
  },

  /***/
  "./src/app/app.component.ts":
  /*!**********************************!*\
    !*** ./src/app/app.component.ts ***!
    \**********************************/

  /*! no static exports found */

  /***/
  function srcAppAppComponentTs(module, exports, __webpack_require__) {
    "use strict";

    var __decorate = this && this.__decorate || function (decorators, target, key, desc) {
      var c = arguments.length,
          r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc,
          d;
      if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);else for (var i = decorators.length - 1; i >= 0; i--) {
        if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
      }
      return c > 3 && r && Object.defineProperty(target, key, r), r;
    };

    var __metadata = this && this.__metadata || function (k, v) {
      if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
    };

    var __importDefault = this && this.__importDefault || function (mod) {
      return mod && mod.__esModule ? mod : {
        "default": mod
      };
    };

    Object.defineProperty(exports, "__esModule", {
      value: true
    });

    var core_1 = __webpack_require__(
    /*! @angular/core */
    "./node_modules/@angular/core/__ivy_ngcc__/fesm2015/core.js");

    var common_1 = __webpack_require__(
    /*! @angular/common */
    "./node_modules/@angular/common/__ivy_ngcc__/fesm2015/common.js");

    var router_1 = __webpack_require__(
    /*! @angular/router */
    "./node_modules/@angular/router/__ivy_ngcc__/fesm2015/router.js");

    var AppComponent =
    /*#__PURE__*/
    function () {
      function AppComponent(location, router) {
        var _this = this;

        _classCallCheck(this, AppComponent);

        this.location = location;
        this.router = router;
        this.router.events.subscribe(function (val) {
          _this.setCurrentUrl();
        });
      }

      _createClass(AppComponent, [{
        key: "ngOnInit",
        value: function ngOnInit() {}
      }, {
        key: "setCurrentUrl",
        value: function setCurrentUrl() {}
      }]);

      return AppComponent;
    }();

    AppComponent.ctorParameters = function () {
      return [{
        type: common_1.Location
      }, {
        type: router_1.Router
      }];
    };

    AppComponent = __decorate([core_1.Component({
      selector: 'app-root',
      template: __importDefault(__webpack_require__(
      /*! raw-loader!./app.component.html */
      "./node_modules/raw-loader/dist/cjs.js!./src/app/app.component.html"))["default"],
      styles: [__importDefault(__webpack_require__(
      /*! ./app.component.css */
      "./src/app/app.component.css"))["default"]]
    }), __metadata("design:paramtypes", [common_1.Location, router_1.Router])], AppComponent);
    exports.AppComponent = AppComponent;
    /***/
  },

  /***/
  "./src/app/app.module.ts":
  /*!*******************************!*\
    !*** ./src/app/app.module.ts ***!
    \*******************************/

  /*! no static exports found */

  /***/
  function srcAppAppModuleTs(module, exports, __webpack_require__) {
    "use strict";

    var __decorate = this && this.__decorate || function (decorators, target, key, desc) {
      var c = arguments.length,
          r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc,
          d;
      if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);else for (var i = decorators.length - 1; i >= 0; i--) {
        if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
      }
      return c > 3 && r && Object.defineProperty(target, key, r), r;
    };

    var __importDefault = this && this.__importDefault || function (mod) {
      return mod && mod.__esModule ? mod : {
        "default": mod
      };
    };

    Object.defineProperty(exports, "__esModule", {
      value: true
    });

    var animations_1 = __webpack_require__(
    /*! @angular/platform-browser/animations */
    "./node_modules/@angular/platform-browser/__ivy_ngcc__/fesm2015/animations.js");

    var core_1 = __webpack_require__(
    /*! @angular/core */
    "./node_modules/@angular/core/__ivy_ngcc__/fesm2015/core.js");

    var http_1 = __webpack_require__(
    /*! @angular/common/http */
    "./node_modules/@angular/common/__ivy_ngcc__/fesm2015/http.js");

    var router_1 = __webpack_require__(
    /*! @angular/router */
    "./node_modules/@angular/router/__ivy_ngcc__/fesm2015/router.js");

    var app_routing_1 = __webpack_require__(
    /*! ./app.routing */
    "./src/app/app.routing.ts");

    var navbar_module_1 = __webpack_require__(
    /*! ./shared/navbar/navbar.module */
    "./src/app/shared/navbar/navbar.module.ts");

    var footer_module_1 = __webpack_require__(
    /*! ./shared/footer/footer.module */
    "./src/app/shared/footer/footer.module.ts");

    var sidebar_module_1 = __webpack_require__(
    /*! ./sidebar/sidebar.module */
    "./src/app/sidebar/sidebar.module.ts");

    var forms_1 = __webpack_require__(
    /*! @angular/forms */
    "./node_modules/@angular/forms/__ivy_ngcc__/fesm2015/forms.js");

    var app_component_1 = __webpack_require__(
    /*! ./app.component */
    "./src/app/app.component.ts");

    var login_component_1 = __webpack_require__(
    /*! ./login/login.component */
    "./src/app/login/login.component.ts");

    var ngx_toastr_1 = __webpack_require__(
    /*! ngx-toastr */
    "./node_modules/ngx-toastr/__ivy_ngcc__/fesm2015/ngx-toastr.js");

    var admin_layout_component_1 = __webpack_require__(
    /*! ./layouts/admin-layout/admin-layout.component */
    "./src/app/layouts/admin-layout/admin-layout.component.ts");

    var api_service_1 = __webpack_require__(
    /*! ./api/api.service */
    "./src/app/api/api.service.ts");

    var user_service_1 = __webpack_require__(
    /*! ./api/user.service */
    "./src/app/api/user.service.ts");

    var AppModule = function AppModule() {
      _classCallCheck(this, AppModule);
    };

    AppModule = __decorate([core_1.NgModule({
      imports: [animations_1.BrowserAnimationsModule, forms_1.FormsModule, router_1.RouterModule, http_1.HttpClientModule, navbar_module_1.NavbarModule, footer_module_1.FooterModule, sidebar_module_1.SidebarModule, app_routing_1.AppRoutingModule, ngx_toastr_1.ToastrModule.forRoot()],
      declarations: [app_component_1.AppComponent, admin_layout_component_1.AdminLayoutComponent, login_component_1.LoginComponent],
      providers: [api_service_1.ApiService, user_service_1.UserService],
      bootstrap: [app_component_1.AppComponent]
    })], AppModule);
    exports.AppModule = AppModule;
    /***/
  },

  /***/
  "./src/app/app.routing.ts":
  /*!********************************!*\
    !*** ./src/app/app.routing.ts ***!
    \********************************/

  /*! no static exports found */

  /***/
  function srcAppAppRoutingTs(module, exports, __webpack_require__) {
    "use strict";

    var __decorate = this && this.__decorate || function (decorators, target, key, desc) {
      var c = arguments.length,
          r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc,
          d;
      if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);else for (var i = decorators.length - 1; i >= 0; i--) {
        if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
      }
      return c > 3 && r && Object.defineProperty(target, key, r), r;
    };

    var __importDefault = this && this.__importDefault || function (mod) {
      return mod && mod.__esModule ? mod : {
        "default": mod
      };
    };

    Object.defineProperty(exports, "__esModule", {
      value: true
    });

    var core_1 = __webpack_require__(
    /*! @angular/core */
    "./node_modules/@angular/core/__ivy_ngcc__/fesm2015/core.js");

    var common_1 = __webpack_require__(
    /*! @angular/common */
    "./node_modules/@angular/common/__ivy_ngcc__/fesm2015/common.js");

    var platform_browser_1 = __webpack_require__(
    /*! @angular/platform-browser */
    "./node_modules/@angular/platform-browser/__ivy_ngcc__/fesm2015/platform-browser.js");

    var router_1 = __webpack_require__(
    /*! @angular/router */
    "./node_modules/@angular/router/__ivy_ngcc__/fesm2015/router.js");

    var admin_layout_component_1 = __webpack_require__(
    /*! ./layouts/admin-layout/admin-layout.component */
    "./src/app/layouts/admin-layout/admin-layout.component.ts");

    var login_component_1 = __webpack_require__(
    /*! ./login/login.component */
    "./src/app/login/login.component.ts");

    var routes = [{
      path: '',
      component: login_component_1.LoginComponent
    }, {
      path: '',
      component: admin_layout_component_1.AdminLayoutComponent,
      children: [{
        path: '',
        loadChildren: './layouts/admin-layout/admin-layout.module#AdminLayoutModule'
      }]
    }, {
      path: '**',
      redirectTo: 'supervisor'
    }];

    var AppRoutingModule = function AppRoutingModule() {
      _classCallCheck(this, AppRoutingModule);
    };

    AppRoutingModule = __decorate([core_1.NgModule({
      imports: [common_1.CommonModule, platform_browser_1.BrowserModule, router_1.RouterModule.forRoot(routes)],
      exports: []
    })], AppRoutingModule);
    exports.AppRoutingModule = AppRoutingModule;
    /***/
  },

  /***/
  "./src/app/layouts/admin-layout/admin-layout.component.scss":
  /*!******************************************************************!*\
    !*** ./src/app/layouts/admin-layout/admin-layout.component.scss ***!
    \******************************************************************/

  /*! exports provided: default */

  /***/
  function srcAppLayoutsAdminLayoutAdminLayoutComponentScss(module, __webpack_exports__, __webpack_require__) {
    "use strict";

    __webpack_require__.r(__webpack_exports__);
    /* harmony default export */


    __webpack_exports__["default"] = ".clsLandingPage {\n  background: url('background.jpg') no-repeat -2px -2px;\n  background-size: cover;\n  width: 100%;\n  height: 100vh;\n}\n.clsLandingPage h2 {\n  margin: 50px 30px 30px;\n  padding: 15px;\n  background: #ebeaeceb;\n  font-size: 24px;\n  font-weight: 500;\n  display: inline-block;\n  min-width: 300px;\n  border-radius: 2px;\n}\n.clsLandingPage .clsInner {\n  background: #ebeaeceb;\n  border-radius: 2px;\n  padding: 20px;\n  display: flex;\n  align-items: center;\n  justify-content: center;\n  text-align: center;\n  max-width: 300px;\n  margin: 0 auto 30px;\n  cursor: pointer;\n}\n.clsLandingPage .clsInner img {\n  height: 150px;\n  margin-bottom: 20px;\n}\n.clsLandingPage .clsInner p {\n  font-size: 26px;\n  text-transform: capitalize;\n  font-weight: 500;\n  margin: 0;\n  padding: 0 45px;\n}\n.clsLandingPage > .container {\n  height: 100%;\n}\n.clsLandingPage .clsFlex {\n  display: flex;\n  align-items: center;\n  justify-content: center;\n  height: 78%;\n}\n.pt-70 {\n  padding-top: 70px;\n}\n/*# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbInNyYy9hcHAvbGF5b3V0cy9hZG1pbi1sYXlvdXQvRTpcXHByb2plY3RzXFxiYW55YW4tc3VwZXJ2aXNvci9zcmNcXGFwcFxcbGF5b3V0c1xcYWRtaW4tbGF5b3V0XFxhZG1pbi1sYXlvdXQuY29tcG9uZW50LnNjc3MiLCJzcmMvYXBwL2xheW91dHMvYWRtaW4tbGF5b3V0L2FkbWluLWxheW91dC5jb21wb25lbnQuc2NzcyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTtFQUNJLHFEQUFBO0VBQ0Esc0JBQUE7RUFDQSxXQUFBO0VBQ0EsYUFBQTtBQ0NKO0FEQUk7RUFDSSxzQkFBQTtFQUNBLGFBQUE7RUFDQSxxQkFBQTtFQUNBLGVBQUE7RUFDQSxnQkFBQTtFQUNBLHFCQUFBO0VBQ0EsZ0JBQUE7RUFDQSxrQkFBQTtBQ0VSO0FEQUk7RUFDSSxxQkFBQTtFQUNBLGtCQUFBO0VBQ0EsYUFBQTtFQUNBLGFBQUE7RUFDQSxtQkFBQTtFQUNBLHVCQUFBO0VBQ0Esa0JBQUE7RUFDQSxnQkFBQTtFQUNBLG1CQUFBO0VBQ0EsZUFBQTtBQ0VSO0FERFE7RUFDSSxhQUFBO0VBQ0EsbUJBQUE7QUNHWjtBRERRO0VBQ0ksZUFBQTtFQUNBLDBCQUFBO0VBQ0EsZ0JBQUE7RUFDQSxTQUFBO0VBQ0EsZUFBQTtBQ0daO0FEQUk7RUFDSSxZQUFBO0FDRVI7QURBSTtFQUNJLGFBQUE7RUFDQSxtQkFBQTtFQUNBLHVCQUFBO0VBQ0EsV0FBQTtBQ0VSO0FERUE7RUFDSSxpQkFBQTtBQ0NKIiwiZmlsZSI6InNyYy9hcHAvbGF5b3V0cy9hZG1pbi1sYXlvdXQvYWRtaW4tbGF5b3V0LmNvbXBvbmVudC5zY3NzIiwic291cmNlc0NvbnRlbnQiOlsiLmNsc0xhbmRpbmdQYWdlIHtcclxuICAgIGJhY2tncm91bmQ6IHVybCguLi8uLi8uLi9hc3NldHMvaW1nL25ld19pbWcvYmFja2dyb3VuZC5qcGcpIG5vLXJlcGVhdCAtMnB4IC0ycHg7XHJcbiAgICBiYWNrZ3JvdW5kLXNpemU6IGNvdmVyO1xyXG4gICAgd2lkdGg6IDEwMCU7XHJcbiAgICBoZWlnaHQ6IDEwMHZoO1xyXG4gICAgaDIge1xyXG4gICAgICAgIG1hcmdpbjogNTBweCAzMHB4IDMwcHg7XHJcbiAgICAgICAgcGFkZGluZzogMTVweDtcclxuICAgICAgICBiYWNrZ3JvdW5kOiAjZWJlYWVjZWI7XHJcbiAgICAgICAgZm9udC1zaXplOiAyNHB4O1xyXG4gICAgICAgIGZvbnQtd2VpZ2h0OiA1MDA7XHJcbiAgICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xyXG4gICAgICAgIG1pbi13aWR0aDogMzAwcHg7XHJcbiAgICAgICAgYm9yZGVyLXJhZGl1czogMnB4O1xyXG4gICAgfVxyXG4gICAgLmNsc0lubmVyIHtcclxuICAgICAgICBiYWNrZ3JvdW5kOiAjZWJlYWVjZWI7XHJcbiAgICAgICAgYm9yZGVyLXJhZGl1czogMnB4O1xyXG4gICAgICAgIHBhZGRpbmc6IDIwcHg7XHJcbiAgICAgICAgZGlzcGxheTogZmxleDtcclxuICAgICAgICBhbGlnbi1pdGVtczogY2VudGVyO1xyXG4gICAgICAgIGp1c3RpZnktY29udGVudDogY2VudGVyO1xyXG4gICAgICAgIHRleHQtYWxpZ246IGNlbnRlcjtcclxuICAgICAgICBtYXgtd2lkdGg6IDMwMHB4O1xyXG4gICAgICAgIG1hcmdpbjogMCBhdXRvIDMwcHg7XHJcbiAgICAgICAgY3Vyc29yOiBwb2ludGVyO1xyXG4gICAgICAgIGltZyB7XHJcbiAgICAgICAgICAgIGhlaWdodDogMTUwcHg7XHJcbiAgICAgICAgICAgIG1hcmdpbi1ib3R0b206IDIwcHg7XHJcbiAgICAgICAgfVxyXG4gICAgICAgIHAge1xyXG4gICAgICAgICAgICBmb250LXNpemU6IDI2cHg7XHJcbiAgICAgICAgICAgIHRleHQtdHJhbnNmb3JtOiBjYXBpdGFsaXplO1xyXG4gICAgICAgICAgICBmb250LXdlaWdodDogNTAwO1xyXG4gICAgICAgICAgICBtYXJnaW46IDA7XHJcbiAgICAgICAgICAgIHBhZGRpbmc6IDAgNDVweDtcclxuICAgICAgICB9XHJcbiAgICB9XHJcbiAgICA+LmNvbnRhaW5lciB7XHJcbiAgICAgICAgaGVpZ2h0OiAxMDAlO1xyXG4gICAgfVxyXG4gICAgLmNsc0ZsZXgge1xyXG4gICAgICAgIGRpc3BsYXk6IGZsZXg7XHJcbiAgICAgICAgYWxpZ24taXRlbXM6IGNlbnRlcjtcclxuICAgICAgICBqdXN0aWZ5LWNvbnRlbnQ6IGNlbnRlcjtcclxuICAgICAgICBoZWlnaHQ6IDc4JTtcclxuICAgIH1cclxufVxyXG5cclxuLnB0LTcwIHtcclxuICAgIHBhZGRpbmctdG9wOiA3MHB4O1xyXG59IiwiLmNsc0xhbmRpbmdQYWdlIHtcbiAgYmFja2dyb3VuZDogdXJsKC4uLy4uLy4uL2Fzc2V0cy9pbWcvbmV3X2ltZy9iYWNrZ3JvdW5kLmpwZykgbm8tcmVwZWF0IC0ycHggLTJweDtcbiAgYmFja2dyb3VuZC1zaXplOiBjb3ZlcjtcbiAgd2lkdGg6IDEwMCU7XG4gIGhlaWdodDogMTAwdmg7XG59XG4uY2xzTGFuZGluZ1BhZ2UgaDIge1xuICBtYXJnaW46IDUwcHggMzBweCAzMHB4O1xuICBwYWRkaW5nOiAxNXB4O1xuICBiYWNrZ3JvdW5kOiAjZWJlYWVjZWI7XG4gIGZvbnQtc2l6ZTogMjRweDtcbiAgZm9udC13ZWlnaHQ6IDUwMDtcbiAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICBtaW4td2lkdGg6IDMwMHB4O1xuICBib3JkZXItcmFkaXVzOiAycHg7XG59XG4uY2xzTGFuZGluZ1BhZ2UgLmNsc0lubmVyIHtcbiAgYmFja2dyb3VuZDogI2ViZWFlY2ViO1xuICBib3JkZXItcmFkaXVzOiAycHg7XG4gIHBhZGRpbmc6IDIwcHg7XG4gIGRpc3BsYXk6IGZsZXg7XG4gIGFsaWduLWl0ZW1zOiBjZW50ZXI7XG4gIGp1c3RpZnktY29udGVudDogY2VudGVyO1xuICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gIG1heC13aWR0aDogMzAwcHg7XG4gIG1hcmdpbjogMCBhdXRvIDMwcHg7XG4gIGN1cnNvcjogcG9pbnRlcjtcbn1cbi5jbHNMYW5kaW5nUGFnZSAuY2xzSW5uZXIgaW1nIHtcbiAgaGVpZ2h0OiAxNTBweDtcbiAgbWFyZ2luLWJvdHRvbTogMjBweDtcbn1cbi5jbHNMYW5kaW5nUGFnZSAuY2xzSW5uZXIgcCB7XG4gIGZvbnQtc2l6ZTogMjZweDtcbiAgdGV4dC10cmFuc2Zvcm06IGNhcGl0YWxpemU7XG4gIGZvbnQtd2VpZ2h0OiA1MDA7XG4gIG1hcmdpbjogMDtcbiAgcGFkZGluZzogMCA0NXB4O1xufVxuLmNsc0xhbmRpbmdQYWdlID4gLmNvbnRhaW5lciB7XG4gIGhlaWdodDogMTAwJTtcbn1cbi5jbHNMYW5kaW5nUGFnZSAuY2xzRmxleCB7XG4gIGRpc3BsYXk6IGZsZXg7XG4gIGFsaWduLWl0ZW1zOiBjZW50ZXI7XG4gIGp1c3RpZnktY29udGVudDogY2VudGVyO1xuICBoZWlnaHQ6IDc4JTtcbn1cblxuLnB0LTcwIHtcbiAgcGFkZGluZy10b3A6IDcwcHg7XG59Il19 */";
    /***/
  },

  /***/
  "./src/app/layouts/admin-layout/admin-layout.component.ts":
  /*!****************************************************************!*\
    !*** ./src/app/layouts/admin-layout/admin-layout.component.ts ***!
    \****************************************************************/

  /*! no static exports found */

  /***/
  function srcAppLayoutsAdminLayoutAdminLayoutComponentTs(module, exports, __webpack_require__) {
    "use strict";

    var __decorate = this && this.__decorate || function (decorators, target, key, desc) {
      var c = arguments.length,
          r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc,
          d;
      if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);else for (var i = decorators.length - 1; i >= 0; i--) {
        if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
      }
      return c > 3 && r && Object.defineProperty(target, key, r), r;
    };

    var __metadata = this && this.__metadata || function (k, v) {
      if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
    };

    var __importDefault = this && this.__importDefault || function (mod) {
      return mod && mod.__esModule ? mod : {
        "default": mod
      };
    };

    Object.defineProperty(exports, "__esModule", {
      value: true
    });

    var core_1 = __webpack_require__(
    /*! @angular/core */
    "./node_modules/@angular/core/__ivy_ngcc__/fesm2015/core.js");

    var common_1 = __webpack_require__(
    /*! @angular/common */
    "./node_modules/@angular/common/__ivy_ngcc__/fesm2015/common.js");

    __webpack_require__(
    /*! rxjs/add/operator/filter */
    "./node_modules/rxjs-compat/_esm2015/add/operator/filter.js");

    var router_1 = __webpack_require__(
    /*! @angular/router */
    "./node_modules/@angular/router/__ivy_ngcc__/fesm2015/router.js");

    var perfect_scrollbar_1 = __webpack_require__(
    /*! perfect-scrollbar */
    "./node_modules/perfect-scrollbar/dist/perfect-scrollbar.esm.js");

    var AdminLayoutComponent =
    /*#__PURE__*/
    function () {
      function AdminLayoutComponent(location, router) {
        var _this2 = this;

        _classCallCheck(this, AdminLayoutComponent);

        this.location = location;
        this.router = router;
        this.yScrollStack = [];
        this.window = window;
        this.isShowMenu = false;
        this.router.events.subscribe(function (val) {
          var isloginUser = sessionStorage.getItem('report') ? true : false;

          if (isloginUser) {
            _this2.userDetail = JSON.parse(sessionStorage.getItem('report'));
          } else {
            _this2.userDetail = '';
          }
        });
      }

      _createClass(AdminLayoutComponent, [{
        key: "ngOnInit",
        value: function ngOnInit() {
          var thiss = this;

          this.window.top.showMenu = function (check) {
            thiss.isShowMenu = check;
          };

          this.userDetail = JSON.parse(sessionStorage.getItem('report'));

          if (this.userDetail) {
            if (this.userDetail.session_detail.user_group_id === 1 || this.userDetail.session_detail.user_group_id > 7) {
              this.isShowMenu = true;
            }
          }
        }
      }, {
        key: "ngAfterViewInit",
        value: function ngAfterViewInit() {
          this.runOnRouteChange();
        }
      }, {
        key: "switchMenu",
        value: function switchMenu(type) {
          this.isShowMenu = !this.isShowMenu;
          this.window.top.showNav(true);
          this.window.top.switchMenu(type);
        }
      }, {
        key: "runOnRouteChange",
        value: function runOnRouteChange() {
          if (window.matchMedia("(min-width: 960px)").matches && !this.isMac()) {
            var elemMainPanel = document.querySelector('.main-panel');

            if (elemMainPanel) {
              var ps = new perfect_scrollbar_1["default"](elemMainPanel);
              ps.update();
            }
          }
        }
      }, {
        key: "isMac",
        value: function isMac() {
          var bool = false;

          if (navigator.platform.toUpperCase().indexOf('MAC') >= 0 || navigator.platform.toUpperCase().indexOf('IPAD') >= 0) {
            bool = true;
          }

          return bool;
        }
      }]);

      return AdminLayoutComponent;
    }();

    AdminLayoutComponent.ctorParameters = function () {
      return [{
        type: common_1.Location
      }, {
        type: router_1.Router
      }];
    };

    AdminLayoutComponent = __decorate([core_1.Component({
      selector: 'app-admin-layout',
      template: __importDefault(__webpack_require__(
      /*! raw-loader!./admin-layout.component.html */
      "./node_modules/raw-loader/dist/cjs.js!./src/app/layouts/admin-layout/admin-layout.component.html"))["default"],
      styles: [__importDefault(__webpack_require__(
      /*! ./admin-layout.component.scss */
      "./src/app/layouts/admin-layout/admin-layout.component.scss"))["default"]]
    }), __metadata("design:paramtypes", [common_1.Location, router_1.Router])], AdminLayoutComponent);
    exports.AdminLayoutComponent = AdminLayoutComponent;
    /***/
  },

  /***/
  "./src/app/login/login.component.css":
  /*!*******************************************!*\
    !*** ./src/app/login/login.component.css ***!
    \*******************************************/

  /*! exports provided: default */

  /***/
  function srcAppLoginLoginComponentCss(module, __webpack_exports__, __webpack_require__) {
    "use strict";

    __webpack_require__.r(__webpack_exports__);
    /* harmony default export */


    __webpack_exports__["default"] = ".form-signin {\r\n    max-width: 330px;\r\n    width: 330px;\r\n    padding: 15px;\r\n    margin: 0 auto;\r\n}\r\n\r\n.form-signin .form-signin-heading,\r\n.form-signin .checkbox {\r\n    margin-bottom: 10px;\r\n}\r\n\r\n.form-signin .checkbox {\r\n    font-weight: normal;\r\n}\r\n\r\n.form-signin .form-control {\r\n    position: relative;\r\n    font-size: 16px;\r\n    height: auto;\r\n    padding: 10px;\r\n    box-sizing: border-box;\r\n}\r\n\r\n.form-signin .form-control:focus {\r\n    z-index: 2;\r\n}\r\n\r\n.form-signin input[type=\"text\"] {\r\n    margin-bottom: -1px;\r\n    border-bottom-left-radius: 0;\r\n    border-bottom-right-radius: 0;\r\n}\r\n\r\n.form-signin input[type=\"password\"] {\r\n    margin-bottom: 10px;\r\n    border-top-left-radius: 0;\r\n    border-top-right-radius: 0;\r\n}\r\n\r\n.account-wall {\r\n    margin-top: 20px;\r\n    padding: 40px 0px 20px 0px;\r\n    background-color: #f7f7f7;\r\n    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);\r\n}\r\n\r\n.login-title {\r\n    color: #555;\r\n    font-size: 18px;\r\n    font-weight: 400;\r\n    display: block;\r\n}\r\n\r\n.profile-img {\r\n    width: 96px;\r\n    height: 96px;\r\n    margin: 0 auto 10px;\r\n    display: block;\r\n    border-radius: 50%;\r\n}\r\n\r\n.need-help {\r\n    margin-top: 10px;\r\n}\r\n\r\n.new-account {\r\n    display: block;\r\n    margin-top: 10px;\r\n}\r\n\r\n.clsFlex {\r\n    display: flex;\r\n    align-items: center;\r\n    justify-content: center;\r\n    height: 100vh;\r\n}\r\n/*# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbInNyYy9hcHAvbG9naW4vbG9naW4uY29tcG9uZW50LmNzcyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTtJQUNJLGdCQUFnQjtJQUNoQixZQUFZO0lBQ1osYUFBYTtJQUNiLGNBQWM7QUFDbEI7O0FBRUE7O0lBRUksbUJBQW1CO0FBQ3ZCOztBQUVBO0lBQ0ksbUJBQW1CO0FBQ3ZCOztBQUVBO0lBQ0ksa0JBQWtCO0lBQ2xCLGVBQWU7SUFDZixZQUFZO0lBQ1osYUFBYTtJQUdiLHNCQUFzQjtBQUMxQjs7QUFFQTtJQUNJLFVBQVU7QUFDZDs7QUFFQTtJQUNJLG1CQUFtQjtJQUNuQiw0QkFBNEI7SUFDNUIsNkJBQTZCO0FBQ2pDOztBQUVBO0lBQ0ksbUJBQW1CO0lBQ25CLHlCQUF5QjtJQUN6QiwwQkFBMEI7QUFDOUI7O0FBRUE7SUFDSSxnQkFBZ0I7SUFDaEIsMEJBQTBCO0lBQzFCLHlCQUF5QjtJQUd6QiwwQ0FBMEM7QUFDOUM7O0FBRUE7SUFDSSxXQUFXO0lBQ1gsZUFBZTtJQUNmLGdCQUFnQjtJQUNoQixjQUFjO0FBQ2xCOztBQUVBO0lBQ0ksV0FBVztJQUNYLFlBQVk7SUFDWixtQkFBbUI7SUFDbkIsY0FBYztJQUdkLGtCQUFrQjtBQUN0Qjs7QUFFQTtJQUNJLGdCQUFnQjtBQUNwQjs7QUFFQTtJQUNJLGNBQWM7SUFDZCxnQkFBZ0I7QUFDcEI7O0FBRUE7SUFDSSxhQUFhO0lBQ2IsbUJBQW1CO0lBQ25CLHVCQUF1QjtJQUN2QixhQUFhO0FBQ2pCIiwiZmlsZSI6InNyYy9hcHAvbG9naW4vbG9naW4uY29tcG9uZW50LmNzcyIsInNvdXJjZXNDb250ZW50IjpbIi5mb3JtLXNpZ25pbiB7XHJcbiAgICBtYXgtd2lkdGg6IDMzMHB4O1xyXG4gICAgd2lkdGg6IDMzMHB4O1xyXG4gICAgcGFkZGluZzogMTVweDtcclxuICAgIG1hcmdpbjogMCBhdXRvO1xyXG59XHJcblxyXG4uZm9ybS1zaWduaW4gLmZvcm0tc2lnbmluLWhlYWRpbmcsXHJcbi5mb3JtLXNpZ25pbiAuY2hlY2tib3gge1xyXG4gICAgbWFyZ2luLWJvdHRvbTogMTBweDtcclxufVxyXG5cclxuLmZvcm0tc2lnbmluIC5jaGVja2JveCB7XHJcbiAgICBmb250LXdlaWdodDogbm9ybWFsO1xyXG59XHJcblxyXG4uZm9ybS1zaWduaW4gLmZvcm0tY29udHJvbCB7XHJcbiAgICBwb3NpdGlvbjogcmVsYXRpdmU7XHJcbiAgICBmb250LXNpemU6IDE2cHg7XHJcbiAgICBoZWlnaHQ6IGF1dG87XHJcbiAgICBwYWRkaW5nOiAxMHB4O1xyXG4gICAgLXdlYmtpdC1ib3gtc2l6aW5nOiBib3JkZXItYm94O1xyXG4gICAgLW1vei1ib3gtc2l6aW5nOiBib3JkZXItYm94O1xyXG4gICAgYm94LXNpemluZzogYm9yZGVyLWJveDtcclxufVxyXG5cclxuLmZvcm0tc2lnbmluIC5mb3JtLWNvbnRyb2w6Zm9jdXMge1xyXG4gICAgei1pbmRleDogMjtcclxufVxyXG5cclxuLmZvcm0tc2lnbmluIGlucHV0W3R5cGU9XCJ0ZXh0XCJdIHtcclxuICAgIG1hcmdpbi1ib3R0b206IC0xcHg7XHJcbiAgICBib3JkZXItYm90dG9tLWxlZnQtcmFkaXVzOiAwO1xyXG4gICAgYm9yZGVyLWJvdHRvbS1yaWdodC1yYWRpdXM6IDA7XHJcbn1cclxuXHJcbi5mb3JtLXNpZ25pbiBpbnB1dFt0eXBlPVwicGFzc3dvcmRcIl0ge1xyXG4gICAgbWFyZ2luLWJvdHRvbTogMTBweDtcclxuICAgIGJvcmRlci10b3AtbGVmdC1yYWRpdXM6IDA7XHJcbiAgICBib3JkZXItdG9wLXJpZ2h0LXJhZGl1czogMDtcclxufVxyXG5cclxuLmFjY291bnQtd2FsbCB7XHJcbiAgICBtYXJnaW4tdG9wOiAyMHB4O1xyXG4gICAgcGFkZGluZzogNDBweCAwcHggMjBweCAwcHg7XHJcbiAgICBiYWNrZ3JvdW5kLWNvbG9yOiAjZjdmN2Y3O1xyXG4gICAgLW1vei1ib3gtc2hhZG93OiAwcHggMnB4IDJweCByZ2JhKDAsIDAsIDAsIDAuMyk7XHJcbiAgICAtd2Via2l0LWJveC1zaGFkb3c6IDBweCAycHggMnB4IHJnYmEoMCwgMCwgMCwgMC4zKTtcclxuICAgIGJveC1zaGFkb3c6IDBweCAycHggMnB4IHJnYmEoMCwgMCwgMCwgMC4zKTtcclxufVxyXG5cclxuLmxvZ2luLXRpdGxlIHtcclxuICAgIGNvbG9yOiAjNTU1O1xyXG4gICAgZm9udC1zaXplOiAxOHB4O1xyXG4gICAgZm9udC13ZWlnaHQ6IDQwMDtcclxuICAgIGRpc3BsYXk6IGJsb2NrO1xyXG59XHJcblxyXG4ucHJvZmlsZS1pbWcge1xyXG4gICAgd2lkdGg6IDk2cHg7XHJcbiAgICBoZWlnaHQ6IDk2cHg7XHJcbiAgICBtYXJnaW46IDAgYXV0byAxMHB4O1xyXG4gICAgZGlzcGxheTogYmxvY2s7XHJcbiAgICAtbW96LWJvcmRlci1yYWRpdXM6IDUwJTtcclxuICAgIC13ZWJraXQtYm9yZGVyLXJhZGl1czogNTAlO1xyXG4gICAgYm9yZGVyLXJhZGl1czogNTAlO1xyXG59XHJcblxyXG4ubmVlZC1oZWxwIHtcclxuICAgIG1hcmdpbi10b3A6IDEwcHg7XHJcbn1cclxuXHJcbi5uZXctYWNjb3VudCB7XHJcbiAgICBkaXNwbGF5OiBibG9jaztcclxuICAgIG1hcmdpbi10b3A6IDEwcHg7XHJcbn1cclxuXHJcbi5jbHNGbGV4IHtcclxuICAgIGRpc3BsYXk6IGZsZXg7XHJcbiAgICBhbGlnbi1pdGVtczogY2VudGVyO1xyXG4gICAganVzdGlmeS1jb250ZW50OiBjZW50ZXI7XHJcbiAgICBoZWlnaHQ6IDEwMHZoO1xyXG59Il19 */";
    /***/
  },

  /***/
  "./src/app/login/login.component.ts":
  /*!******************************************!*\
    !*** ./src/app/login/login.component.ts ***!
    \******************************************/

  /*! no static exports found */

  /***/
  function srcAppLoginLoginComponentTs(module, exports, __webpack_require__) {
    "use strict";

    var __decorate = this && this.__decorate || function (decorators, target, key, desc) {
      var c = arguments.length,
          r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc,
          d;
      if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);else for (var i = decorators.length - 1; i >= 0; i--) {
        if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
      }
      return c > 3 && r && Object.defineProperty(target, key, r), r;
    };

    var __metadata = this && this.__metadata || function (k, v) {
      if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
    };

    var __importDefault = this && this.__importDefault || function (mod) {
      return mod && mod.__esModule ? mod : {
        "default": mod
      };
    };

    Object.defineProperty(exports, "__esModule", {
      value: true
    });

    var core_1 = __webpack_require__(
    /*! @angular/core */
    "./node_modules/@angular/core/__ivy_ngcc__/fesm2015/core.js");

    var router_1 = __webpack_require__(
    /*! @angular/router */
    "./node_modules/@angular/router/__ivy_ngcc__/fesm2015/router.js");

    var user_service_1 = __webpack_require__(
    /*! ../api/user.service */
    "./src/app/api/user.service.ts");

    var ngx_toastr_1 = __webpack_require__(
    /*! ngx-toastr */
    "./node_modules/ngx-toastr/__ivy_ngcc__/fesm2015/ngx-toastr.js");

    var LoginComponent =
    /*#__PURE__*/
    function () {
      function LoginComponent(router, userService, toastr, renderer) {
        _classCallCheck(this, LoginComponent);

        this.router = router;
        this.userService = userService;
        this.toastr = toastr;
        this.renderer = renderer;
        this.username = '';
        this.password = '';
        this.screenLoad = false;
      }

      _createClass(LoginComponent, [{
        key: "ngOnInit",
        value: function ngOnInit() {
          var userDetail = JSON.parse(sessionStorage.getItem('report'));

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
      }, {
        key: "ngOnDestroy",
        value: function ngOnDestroy() {
          this.renderer.removeClass(document.body, 'clsLogin_Page');
        }
      }, {
        key: "onSubmit",
        value: function onSubmit() {
          var _this3 = this;

          this.submitted = true;

          if (!this.username) {
            this.toastr.error('Username is required', 'Mandatory', {
              timeOut: 3000
            });
            return;
          } else if (!this.password) {
            this.toastr.error('Passoword is required', 'Mandatory', {
              timeOut: 3000
            });
          }

          this.userService.login({
            username: this.username,
            password: this.password
          }).subscribe(function (response) {
            _this3.submitted = false;

            if (response.status) {
              var loginData = {
                full_name: response.data.full_name,
                id: response.data.id,
                session_detail: response.data
              };
              sessionStorage.setItem('report', JSON.stringify(loginData));

              if (response.data.user_group_id === 3) {
                _this3.router.navigate(['/supervisor']);
              } else if (response.data.user_group_id === 1 || response.data.user_group_id > 4) {
                _this3.router.navigate(['/userassign']);
              } else {
                _this3.router.navigate(['/mywork']);
              }
            } else {
              _this3.toastr.error('Username Or Password is invalid', 'Error', {
                timeOut: 3000
              });
            }
          });
        }
      }, {
        key: "onKeydown",
        value: function onKeydown(event) {
          if (event.key === "Enter") {
            this.onSubmit();
          }
        }
      }]);

      return LoginComponent;
    }();

    LoginComponent.ctorParameters = function () {
      return [{
        type: router_1.Router
      }, {
        type: user_service_1.UserService
      }, {
        type: ngx_toastr_1.ToastrService
      }, {
        type: core_1.Renderer2
      }];
    };

    LoginComponent = __decorate([core_1.Component({
      selector: 'app-home',
      template: __importDefault(__webpack_require__(
      /*! raw-loader!./login.component.html */
      "./node_modules/raw-loader/dist/cjs.js!./src/app/login/login.component.html"))["default"],
      styles: [__importDefault(__webpack_require__(
      /*! ./login.component.css */
      "./src/app/login/login.component.css"))["default"]]
    }), __metadata("design:paramtypes", [router_1.Router, user_service_1.UserService, ngx_toastr_1.ToastrService, core_1.Renderer2])], LoginComponent);
    exports.LoginComponent = LoginComponent;
    /***/
  },

  /***/
  "./src/app/shared/footer/footer.component.ts":
  /*!***************************************************!*\
    !*** ./src/app/shared/footer/footer.component.ts ***!
    \***************************************************/

  /*! no static exports found */

  /***/
  function srcAppSharedFooterFooterComponentTs(module, exports, __webpack_require__) {
    "use strict";

    var __decorate = this && this.__decorate || function (decorators, target, key, desc) {
      var c = arguments.length,
          r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc,
          d;
      if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);else for (var i = decorators.length - 1; i >= 0; i--) {
        if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
      }
      return c > 3 && r && Object.defineProperty(target, key, r), r;
    };

    var __importDefault = this && this.__importDefault || function (mod) {
      return mod && mod.__esModule ? mod : {
        "default": mod
      };
    };

    Object.defineProperty(exports, "__esModule", {
      value: true
    });

    var core_1 = __webpack_require__(
    /*! @angular/core */
    "./node_modules/@angular/core/__ivy_ngcc__/fesm2015/core.js");

    var FooterComponent = function FooterComponent() {
      _classCallCheck(this, FooterComponent);

      this.test = new Date();
    };

    FooterComponent = __decorate([core_1.Component({
      selector: 'footer-cmp',
      template: __importDefault(__webpack_require__(
      /*! raw-loader!./footer.component.html */
      "./node_modules/raw-loader/dist/cjs.js!./src/app/shared/footer/footer.component.html"))["default"]
    })], FooterComponent);
    exports.FooterComponent = FooterComponent;
    /***/
  },

  /***/
  "./src/app/shared/footer/footer.module.ts":
  /*!************************************************!*\
    !*** ./src/app/shared/footer/footer.module.ts ***!
    \************************************************/

  /*! no static exports found */

  /***/
  function srcAppSharedFooterFooterModuleTs(module, exports, __webpack_require__) {
    "use strict";

    var __decorate = this && this.__decorate || function (decorators, target, key, desc) {
      var c = arguments.length,
          r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc,
          d;
      if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);else for (var i = decorators.length - 1; i >= 0; i--) {
        if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
      }
      return c > 3 && r && Object.defineProperty(target, key, r), r;
    };

    var __importDefault = this && this.__importDefault || function (mod) {
      return mod && mod.__esModule ? mod : {
        "default": mod
      };
    };

    Object.defineProperty(exports, "__esModule", {
      value: true
    });

    var core_1 = __webpack_require__(
    /*! @angular/core */
    "./node_modules/@angular/core/__ivy_ngcc__/fesm2015/core.js");

    var common_1 = __webpack_require__(
    /*! @angular/common */
    "./node_modules/@angular/common/__ivy_ngcc__/fesm2015/common.js");

    var router_1 = __webpack_require__(
    /*! @angular/router */
    "./node_modules/@angular/router/__ivy_ngcc__/fesm2015/router.js");

    var footer_component_1 = __webpack_require__(
    /*! ./footer.component */
    "./src/app/shared/footer/footer.component.ts");

    var FooterModule = function FooterModule() {
      _classCallCheck(this, FooterModule);
    };

    FooterModule = __decorate([core_1.NgModule({
      imports: [router_1.RouterModule, common_1.CommonModule],
      declarations: [footer_component_1.FooterComponent],
      exports: [footer_component_1.FooterComponent]
    })], FooterModule);
    exports.FooterModule = FooterModule;
    /***/
  },

  /***/
  "./src/app/shared/navbar/navbar.component.ts":
  /*!***************************************************!*\
    !*** ./src/app/shared/navbar/navbar.component.ts ***!
    \***************************************************/

  /*! no static exports found */

  /***/
  function srcAppSharedNavbarNavbarComponentTs(module, exports, __webpack_require__) {
    "use strict";

    var __decorate = this && this.__decorate || function (decorators, target, key, desc) {
      var c = arguments.length,
          r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc,
          d;
      if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);else for (var i = decorators.length - 1; i >= 0; i--) {
        if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
      }
      return c > 3 && r && Object.defineProperty(target, key, r), r;
    };

    var __metadata = this && this.__metadata || function (k, v) {
      if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
    };

    var __importDefault = this && this.__importDefault || function (mod) {
      return mod && mod.__esModule ? mod : {
        "default": mod
      };
    };

    Object.defineProperty(exports, "__esModule", {
      value: true
    });

    var core_1 = __webpack_require__(
    /*! @angular/core */
    "./node_modules/@angular/core/__ivy_ngcc__/fesm2015/core.js");

    var sidebar_component_1 = __webpack_require__(
    /*! ../../sidebar/sidebar.component */
    "./src/app/sidebar/sidebar.component.ts");

    var common_1 = __webpack_require__(
    /*! @angular/common */
    "./node_modules/@angular/common/__ivy_ngcc__/fesm2015/common.js");

    var router_1 = __webpack_require__(
    /*! @angular/router */
    "./node_modules/@angular/router/__ivy_ngcc__/fesm2015/router.js");

    var NavbarComponent =
    /*#__PURE__*/
    function () {
      function NavbarComponent(location, element, router) {
        var _this4 = this;

        _classCallCheck(this, NavbarComponent);

        this.element = element;
        this.router = router;
        this.isloginUser = false;
        this.userName = '';
        this.window = window;
        this.showNav = false;
        this.location = location;
        this.sidebarVisible = false;
        this.router.events.subscribe(function (val) {
          _this4.isloginUser = sessionStorage.getItem('report') ? true : false;

          if (_this4.isloginUser) {
            _this4.userDetail = JSON.parse(sessionStorage.getItem('report'));

            if (_this4.userDetail) {
              if (_this4.userDetail.session_detail.user_group_id === 1 || _this4.userDetail.session_detail.user_group_id === 5 || _this4.userDetail.session_detail.user_group_id === 8 || _this4.userDetail.session_detail.user_group_id === 9) {
                _this4.menuType = 1;
              } else if (_this4.userDetail.session_detail.user_group_id === 6 || _this4.userDetail.session_detail.user_group_id === 10) {
                _this4.menuType = 2;
              } else if (_this4.userDetail.session_detail.user_group_id === 7) {
                _this4.menuType = 3;
              } else {
                _this4.showNav = true;
              }
            }

            _this4.userName = _this4.userDetail.full_name;
            _this4.clockHandle = setInterval(function () {
              _this4.clock = new Date().toLocaleString();
            }, 1000);
          }
        });
      }

      _createClass(NavbarComponent, [{
        key: "ngOnInit",
        value: function ngOnInit() {
          this.isloginUser = sessionStorage.getItem('report') ? true : false;
          this.listTitles = sidebar_component_1.ROUTES.filter(function (listTitle) {
            return listTitle;
          });
          var navbar = this.element.nativeElement;
          this.toggleButton = navbar.getElementsByClassName('navbar-toggle')[0];
          var thiss = this;

          this.window.top.showNav = function (check) {
            thiss.showNav = check;
          };
        }
      }, {
        key: "home",
        value: function home() {
          if (this.userDetail) {
            if (this.userDetail.session_detail.user_group_id === 1 || this.userDetail.session_detail.user_group_id > 4) {
              //this.router.navigate(['/userassign']);
              this.window.top.hideScreen();
              this.showNav = false;
              this.showMenu();
            } else {
              this.router.navigate(['/supervisor']);
              this.showNav = true;
              this.window.top.clearPage();
            }
          } else {
            this.router.navigate(['/']);
            this.showNav = true;
            this.window.top.clearPage();
          }
        }
      }, {
        key: "logout",
        value: function logout() {
          this.isloginUser = false;
          sessionStorage.removeItem('report');
          this.router.navigate(['/login']);
        }
      }, {
        key: "sidebarOpen",
        value: function sidebarOpen() {
          var toggleButton = this.toggleButton;
          var body = document.getElementsByTagName('body')[0];
          setTimeout(function () {
            toggleButton.classList.add('toggled');
          }, 500);
          body.classList.add('nav-open');
          this.sidebarVisible = true;
        }
      }, {
        key: "sidebarClose",
        value: function sidebarClose() {
          var body = document.getElementsByTagName('body')[0];
          this.toggleButton.classList.remove('toggled');
          this.sidebarVisible = false;
          body.classList.remove('nav-open');
        }
      }, {
        key: "sidebarToggle",
        value: function sidebarToggle() {
          // const toggleButton = this.toggleButton;
          // const body = document.getElementsByTagName('body')[0];
          if (this.sidebarVisible === false) {
            this.sidebarOpen();
          } else {
            this.sidebarClose();
          }
        }
      }, {
        key: "switchMenu",
        value: function switchMenu(type) {
          this.menuType = type;
          this.refreshMenu();
        }
      }, {
        key: "refreshMenu",
        value: function refreshMenu() {
          this.window.top.switchMenu(this.menuType);
        }
      }, {
        key: "showMenu",
        value: function showMenu() {
          this.window.top.showMenu(true);
        }
      }, {
        key: "getTitle",
        value: function getTitle() {
          var titlee = this.location.prepareExternalUrl(this.location.path());

          if (titlee.charAt(0) === '#') {
            titlee = titlee.slice(1);
          }

          for (var item = 0; item < this.listTitles.length; item++) {
            if (this.listTitles[item].path === titlee) {
              return this.listTitles[item].title;
            }
          }

          return 'Dashboard';
        }
      }]);

      return NavbarComponent;
    }();

    NavbarComponent.ctorParameters = function () {
      return [{
        type: common_1.Location
      }, {
        type: core_1.ElementRef
      }, {
        type: router_1.Router
      }];
    };

    NavbarComponent = __decorate([core_1.Component({
      selector: 'navbar-cmp',
      template: __importDefault(__webpack_require__(
      /*! raw-loader!./navbar.component.html */
      "./node_modules/raw-loader/dist/cjs.js!./src/app/shared/navbar/navbar.component.html"))["default"]
    }), __metadata("design:paramtypes", [common_1.Location, core_1.ElementRef, router_1.Router])], NavbarComponent);
    exports.NavbarComponent = NavbarComponent;
    /***/
  },

  /***/
  "./src/app/shared/navbar/navbar.module.ts":
  /*!************************************************!*\
    !*** ./src/app/shared/navbar/navbar.module.ts ***!
    \************************************************/

  /*! no static exports found */

  /***/
  function srcAppSharedNavbarNavbarModuleTs(module, exports, __webpack_require__) {
    "use strict";

    var __decorate = this && this.__decorate || function (decorators, target, key, desc) {
      var c = arguments.length,
          r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc,
          d;
      if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);else for (var i = decorators.length - 1; i >= 0; i--) {
        if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
      }
      return c > 3 && r && Object.defineProperty(target, key, r), r;
    };

    var __importDefault = this && this.__importDefault || function (mod) {
      return mod && mod.__esModule ? mod : {
        "default": mod
      };
    };

    Object.defineProperty(exports, "__esModule", {
      value: true
    });

    var core_1 = __webpack_require__(
    /*! @angular/core */
    "./node_modules/@angular/core/__ivy_ngcc__/fesm2015/core.js");

    var common_1 = __webpack_require__(
    /*! @angular/common */
    "./node_modules/@angular/common/__ivy_ngcc__/fesm2015/common.js");

    var router_1 = __webpack_require__(
    /*! @angular/router */
    "./node_modules/@angular/router/__ivy_ngcc__/fesm2015/router.js");

    var navbar_component_1 = __webpack_require__(
    /*! ./navbar.component */
    "./src/app/shared/navbar/navbar.component.ts");

    var NavbarModule = function NavbarModule() {
      _classCallCheck(this, NavbarModule);
    };

    NavbarModule = __decorate([core_1.NgModule({
      imports: [router_1.RouterModule, common_1.CommonModule],
      declarations: [navbar_component_1.NavbarComponent],
      exports: [navbar_component_1.NavbarComponent]
    })], NavbarModule);
    exports.NavbarModule = NavbarModule;
    /***/
  },

  /***/
  "./src/app/sidebar/sidebar.component.ts":
  /*!**********************************************!*\
    !*** ./src/app/sidebar/sidebar.component.ts ***!
    \**********************************************/

  /*! no static exports found */

  /***/
  function srcAppSidebarSidebarComponentTs(module, exports, __webpack_require__) {
    "use strict";

    var __decorate = this && this.__decorate || function (decorators, target, key, desc) {
      var c = arguments.length,
          r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc,
          d;
      if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);else for (var i = decorators.length - 1; i >= 0; i--) {
        if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
      }
      return c > 3 && r && Object.defineProperty(target, key, r), r;
    };

    var __metadata = this && this.__metadata || function (k, v) {
      if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
    };

    var __importDefault = this && this.__importDefault || function (mod) {
      return mod && mod.__esModule ? mod : {
        "default": mod
      };
    };

    Object.defineProperty(exports, "__esModule", {
      value: true
    });

    var core_1 = __webpack_require__(
    /*! @angular/core */
    "./node_modules/@angular/core/__ivy_ngcc__/fesm2015/core.js");

    var router_1 = __webpack_require__(
    /*! @angular/router */
    "./node_modules/@angular/router/__ivy_ngcc__/fesm2015/router.js");

    exports.ROUTES = [// { path: '/user', title: 'User Profile',  icon:'pe-7s-user', class: '' },
    {
      path: '/logout',
      title: 'Logout',
      icon: 'pe-7s-up-arrow icon-roate-90 ',
      "class": ''
    }];

    var SidebarComponent =
    /*#__PURE__*/
    function () {
      function SidebarComponent(router) {
        _classCallCheck(this, SidebarComponent);

        this.router = router;
      }

      _createClass(SidebarComponent, [{
        key: "ngOnInit",
        value: function ngOnInit() {
          this.menuItems = exports.ROUTES.filter(function (menuItem) {
            return menuItem;
          });
        }
      }, {
        key: "logout",
        value: function logout() {
          sessionStorage.removeItem('report');
          this.router.navigate(['/login']);
        }
      }, {
        key: "isMobileMenu",
        value: function isMobileMenu() {
          if ($(window).width() > 991) {
            return false;
          }

          return true;
        }
      }]);

      return SidebarComponent;
    }();

    SidebarComponent.ctorParameters = function () {
      return [{
        type: router_1.Router
      }];
    };

    SidebarComponent = __decorate([core_1.Component({
      selector: 'app-sidebar',
      template: __importDefault(__webpack_require__(
      /*! raw-loader!./sidebar.component.html */
      "./node_modules/raw-loader/dist/cjs.js!./src/app/sidebar/sidebar.component.html"))["default"]
    }), __metadata("design:paramtypes", [router_1.Router])], SidebarComponent);
    exports.SidebarComponent = SidebarComponent;
    /***/
  },

  /***/
  "./src/app/sidebar/sidebar.module.ts":
  /*!*******************************************!*\
    !*** ./src/app/sidebar/sidebar.module.ts ***!
    \*******************************************/

  /*! no static exports found */

  /***/
  function srcAppSidebarSidebarModuleTs(module, exports, __webpack_require__) {
    "use strict";

    var __decorate = this && this.__decorate || function (decorators, target, key, desc) {
      var c = arguments.length,
          r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc,
          d;
      if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);else for (var i = decorators.length - 1; i >= 0; i--) {
        if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
      }
      return c > 3 && r && Object.defineProperty(target, key, r), r;
    };

    var __importDefault = this && this.__importDefault || function (mod) {
      return mod && mod.__esModule ? mod : {
        "default": mod
      };
    };

    Object.defineProperty(exports, "__esModule", {
      value: true
    });

    var core_1 = __webpack_require__(
    /*! @angular/core */
    "./node_modules/@angular/core/__ivy_ngcc__/fesm2015/core.js");

    var common_1 = __webpack_require__(
    /*! @angular/common */
    "./node_modules/@angular/common/__ivy_ngcc__/fesm2015/common.js");

    var router_1 = __webpack_require__(
    /*! @angular/router */
    "./node_modules/@angular/router/__ivy_ngcc__/fesm2015/router.js");

    var sidebar_component_1 = __webpack_require__(
    /*! ./sidebar.component */
    "./src/app/sidebar/sidebar.component.ts");

    var SidebarModule = function SidebarModule() {
      _classCallCheck(this, SidebarModule);
    };

    SidebarModule = __decorate([core_1.NgModule({
      imports: [router_1.RouterModule, common_1.CommonModule],
      declarations: [sidebar_component_1.SidebarComponent],
      exports: [sidebar_component_1.SidebarComponent]
    })], SidebarModule);
    exports.SidebarModule = SidebarModule;
    /***/
  },

  /***/
  "./src/environments/environment.ts":
  /*!*****************************************!*\
    !*** ./src/environments/environment.ts ***!
    \*****************************************/

  /*! no static exports found */

  /***/
  function srcEnvironmentsEnvironmentTs(module, exports, __webpack_require__) {
    "use strict"; // The file contents for the current environment will overwrite these during build.
    // The build system defaults to the dev environment which uses `environment.ts`, but if you do
    // `ng build --env=prod` then `environment.prod.ts` will be used instead.
    // The list of which env maps to which file can be found in `angular-cli.json`.

    var __importDefault = this && this.__importDefault || function (mod) {
      return mod && mod.__esModule ? mod : {
        "default": mod
      };
    };

    Object.defineProperty(exports, "__esModule", {
      value: true
    });
    exports.environment = {
      production: false,
      apiEndPoint: "http://talenttreasury.com/portal/api/"
    };
    /***/
  },

  /***/
  "./src/main.ts":
  /*!*********************!*\
    !*** ./src/main.ts ***!
    \*********************/

  /*! no static exports found */

  /***/
  function srcMainTs(module, exports, __webpack_require__) {
    "use strict";

    var __importDefault = this && this.__importDefault || function (mod) {
      return mod && mod.__esModule ? mod : {
        "default": mod
      };
    };

    Object.defineProperty(exports, "__esModule", {
      value: true
    });

    var core_1 = __webpack_require__(
    /*! @angular/core */
    "./node_modules/@angular/core/__ivy_ngcc__/fesm2015/core.js");

    var platform_browser_dynamic_1 = __webpack_require__(
    /*! @angular/platform-browser-dynamic */
    "./node_modules/@angular/platform-browser-dynamic/__ivy_ngcc__/fesm2015/platform-browser-dynamic.js");

    var app_module_1 = __webpack_require__(
    /*! ./app/app.module */
    "./src/app/app.module.ts");

    var environment_1 = __webpack_require__(
    /*! ./environments/environment */
    "./src/environments/environment.ts");

    if (environment_1.environment.production) {
      core_1.enableProdMode();
    }

    platform_browser_dynamic_1.platformBrowserDynamic().bootstrapModule(app_module_1.AppModule);
    /***/
  },

  /***/
  0:
  /*!***************************!*\
    !*** multi ./src/main.ts ***!
    \***************************/

  /*! no static exports found */

  /***/
  function _(module, exports, __webpack_require__) {
    module.exports = __webpack_require__(
    /*! E:\projects\banyan-supervisor\src\main.ts */
    "./src/main.ts");
    /***/
  }
}, [[0, "runtime", "vendor"]]]);
//# sourceMappingURL=main-es5.js.map