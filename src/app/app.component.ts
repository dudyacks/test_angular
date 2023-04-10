import {Component, OnInit} from '@angular/core';
import {HttpClient} from "@angular/common/http";
import * as http from "http";

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit{
  title = 'demo';

  constructor(private http: HttpClient) {
  }

  ngOnInit(): void {
    this.http.get("localhost:8085/api/demo/hola").subscribe({
      next: value => {
        console.log(value);
      },
      error: err => console.log(err)
      }
    )
  }


}
