// ==UserScript==
// @name         HSLO ~davi~ [PROD]
// @description  HSLO
// @version      6.1.8
// @author       2CL투샤르
// @match        *://agar.io/*
// @run-at       document-start
// @grant        none
// ==/UserScript==

if (location.host === 'agar.io' && location.href !== 'https://agar.io/hslo') {
  location.href = 'https://agar.io/hslo';
  return;
}

const HSLO = new class {
  constructor() {
    this.method = 'GET';
    this.URL = 'https://hslo.ml/';
    this.HTML = ``;
  }

  load() {
    this.setMessage();
    this.fetch();
  }

  setMessage() {
    document.body.innerHTML = "LOADING...";
  }

  fetch() {
    const request = new XMLHttpRequest();
    request.open(this.method, this.URL, true);
    request.onload = () => {
      this.HTML = request.responseText;
      this.write();
    };
    request.onerror = () => {
      document.body.innerHTML = "<div style='width: 100%; text-align: center; font-size: 24px; font-family: sans-serif;'>Failed to fetch HSLO files.</div>";
    }
    request.send();
  }

  write() {
    document.open();
    document.write(this.HTML);
    document.close();
  }
}

HSLO.load();