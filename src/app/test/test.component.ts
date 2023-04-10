import { Component, OnInit } from '@angular/core';
import {HttpClient} from "@angular/common/http";

@Component({
  selector: 'app-test',
  templateUrl: './test.component.html',
  styleUrls: ['./test.component.css']
})
export class TestComponent implements OnInit {
  test: string = "";
  constructor(private http: HttpClient) {
  }

  ngOnInit(): void {
    this.http.get("https://test-gateway-dudyacks94-dev.apps.sandbox-m3.1530.p1.openshiftapps.com/api/demo/hola").subscribe({
      next: value => {
        console.log(value);
      },
      error: err => console.log(err)
      }
    )
  }

}
