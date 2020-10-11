import { Component, OnInit, Injectable, ViewChild } from '@angular/core';
import { LocationStrategy, PlatformLocation, Location } from '@angular/common';
import { TreeviewItem, TreeviewConfig } from 'ngx-treeview';
import { UserService } from '../api/user.service';
@Injectable()
export class ClientTreeviewConfig extends TreeviewConfig {
  hasAllCheckBox = true;
  hasFilter = true;
  hasCollapseExpand = false;
  maxHeight = 400;
}
@Component({
  selector: 'app-home',
  templateUrl: './supervisor.component.html',
  styleUrls: ['./supervisor.component.css']
})
export class SupervisorComponent implements OnInit {
  dropdownEnabled = true;
  items: TreeviewItem[];
  values: number[];
  mdScr: any;
  config = TreeviewConfig.create({
    hasAllCheckBox: false,
    hasFilter: false,
    hasCollapseExpand: false,
    decoupleChildFromParent: false,
    maxHeight: 500
  });
  constructor(private userService: UserService) { }

  ngOnInit() {
    this.buildTree();
  }

  buildTree() {
    this.userService.clientDetail({
      mode: 1
    })
    .subscribe(response => {
      this.mdScr = response;
    });
    this.userService.supervisorTree(null)
    .subscribe(response => {
      if (response.status) {
        const clients = [];
        response.data.forEach((client, index) => {
          clients.push({
              text: client.client_fname + ((client.client_lname && client.client_lname !== 'N/A') ? client.client_lname : ''),
              value: client,
              children: [
                {
                  text: 'Self Care & Hygiene',
                  value: 1,
                  checked: (index === 0) 
                },
                {
                  text: 'Medical Screening',
                  value: 2,
                  checked: false
                },
                {
                  text: 'Medicines',
                  value: 3,
                  checked: false
                },
                {
                  text: 'Diet',
                  value: 4,
                  checked: false
                }
              ]
            });
        });
        this.items = this.getCgiver(clients);
      }      
    });
  }

  getCgiver(clients): TreeviewItem[] {
    const directservice = new TreeviewItem({
      text: 'Direct Services',
      value: 1,
      children: clients
    });
    const internalservice = new TreeviewItem({
      text: 'Internal Service',
      value: 2,
      children: [
        {
          text: 'Housekeeping',
          value: 21,
          checked: false
        },
        {
          text: 'Kitchen',
          value: 22,
          checked: false
        },
        {
          text: 'Dining',
          value: 23,
          checked: false
        }
      ]
    });
    return [directservice, internalservice];
  }

  onFilterChange(value: string): void {
    console.log('filter:', value);
  }

}
