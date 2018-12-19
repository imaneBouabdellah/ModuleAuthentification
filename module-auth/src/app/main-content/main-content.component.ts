import { Component, OnInit } from '@angular/core';
import { LoginService } from '../service/login.service';

@Component({
  selector: 'app-main-content',
  templateUrl: './main-content.component.html',
  styleUrls: ['./main-content.component.css']
})
export class MainContentComponent implements OnInit {

  constructor(private authService: LoginService) { }
  logout() {
    this.authService.logout();
    sessionStorage.removeItem('notificationArray');
    sessionStorage.removeItem('administrateur');
  }
  ngOnInit() {
  }

}
