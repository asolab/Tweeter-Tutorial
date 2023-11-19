// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "trix"
import "@rails/actiontext"


import { Application } from "stimulus";
import DarkModeController from "./controllers/darkModeController";

const application = Application.start();
application.register("dark-mode", DarkModeController);