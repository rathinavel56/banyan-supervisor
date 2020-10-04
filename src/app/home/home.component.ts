import { Component, OnInit, Injectable, ViewChild } from '@angular/core';
import { LocationStrategy, PlatformLocation, Location } from '@angular/common';
import { TreeviewItem, TreeviewConfig } from 'ngx-treeview';
@Injectable()
export class ClientTreeviewConfig extends TreeviewConfig {
  hasAllCheckBox = true;
  hasFilter = true;
  hasCollapseExpand = false;
  maxHeight = 400;
}
@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {
  dropdownEnabled = true;
  items: TreeviewItem[];
  values: number[];
  config = TreeviewConfig.create({
    hasAllCheckBox: false,
    hasFilter: true,
    hasCollapseExpand: true,
    decoupleChildFromParent: false,
    maxHeight: 400
  });
  constructor() { }

  ngOnInit() {
    this.buildTree();
  }

  buildTree() {
    this.items = this.getCgiver();
  }

  getCgiver(): TreeviewItem[] {
    const directservice = new TreeviewItem({
      text: 'Direct Services',
      value: 1,
      children: [
        {
          text: 'Client',
          value: 11,
          children: [
            {
              text: 'Client Care',
              value: 11,
              checked: true
            },
            {
              text: 'Medical Screening',
              value: 11,
              checked: false
            },
            {
              text: 'Medicines',
              value: 11,
              checked: false
            },
            {
              text: 'Diet',
              value: 11,
              checked: false
            }
          ]
        }
      ]
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
