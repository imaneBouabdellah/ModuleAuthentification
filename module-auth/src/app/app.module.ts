import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import {FormsModule} from '@angular/forms';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { InscriptionComponent } from './inscription/inscription.component';
import { LoginComponent } from './login/login.component';
import { FormInscriptionComponent } from './form-inscription/form-inscription.component';
import { FormLoginComponent } from './form-login/form-login.component';
import { LoginService } from './service/login.service';
import { HTTP_INTERCEPTORS, HttpClientModule } from '@angular/common/http';
import { AuthInterceptorService } from './service/login_register/auth-interceptor.service';
import { AuthGuardService } from './service/login_register/auth-guard.service';
import { LoginGuardService } from './service/login_register/login-guard.service';
import { RegistrationService } from './service/login_register/registration.service';
import { AdministrateurService } from './service/administrateur.service';
import { RouterModule, Routes } from '@angular/router';
import { MainContentComponent } from './main-content/main-content.component';

const appRoutes: Routes = [
  {path: 'home' , component : MainContentComponent, canActivate: [AuthGuardService]},
  {path : 'inscription', component: InscriptionComponent , canActivate: [LoginGuardService]},
  {path : 'login', component : LoginComponent, canActivate: [LoginGuardService]},
  { path: '',   redirectTo: '/home', pathMatch: 'full' }
];
@NgModule({
  declarations: [
    AppComponent,
    InscriptionComponent,
    LoginComponent,
    MainContentComponent,
    FormInscriptionComponent,
    FormLoginComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule, HttpClientModule,
    FormsModule,
    RouterModule.forRoot(appRoutes
     // , { enableTracing: true } // <-- debugging purposes only
     )
  ],
  providers: [  LoginService, {
      provide: HTTP_INTERCEPTORS,
      useClass: AuthInterceptorService,
      multi: true
    },
    AuthGuardService, LoginGuardService,
    RegistrationService  , AdministrateurService ],
  bootstrap: [AppComponent]
})
export class AppModule { }
