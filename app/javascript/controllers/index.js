import { application } from "./application";
import { definitionsFromContext } from "@stimulus/webpack-helpers";

<<<<<<< HEAD
import { application } from "./application"
import { definitionsFromContext } from "@stimulus/webpack-helpers"

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import DamagePhotosController from "./damage_photos_controller"
application.register("damage-photos", DamagePhotosController)

const context = require.context(".", true, /\.js$/)
application.load(definitionsFromContext(context))
=======
import HelloController from "./hello_controller";
application.register("hello", HelloController);

import DamagePhotosController from "./damage_photos_controller";
application.register("damage-photos", DamagePhotosController);

// import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"
import DamagePhotosController from "./damage_photos_controller"

// const application = Application.start()
const context = require.context(".", true, /\.js$/)
application.load(definitionsFromContext(context))
application.register("damage-photos", DamagePhotosController)
import InsertInListController from "./insert_in_list_controller"
application.register("insert-in-list", InsertInListController)

const context = require.context(".", true, /\.js$/);
application.load(definitionsFromContext(context));


>>>>>>> 3be49c4e905363e89e943dc22822096d73578db9
