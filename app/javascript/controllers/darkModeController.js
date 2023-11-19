// app/javascript/controllers/darkModeController.js

import { Controller } from 'stimulus';

export default class extends Controller {
  toggle() {
    document.body.classList.toggle('dark-mode');
  }
}
