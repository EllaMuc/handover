import { application } from "./application";
import { definitionsFromContext } from "@stimulus/webpack-helpers";

import HelloController from "./hello_controller";
application.register("hello", HelloController);

import DamagePhotosController from "./damage_photos_controller";
application.register("damage-photos", DamagePhotosController);

import InsertInListController from "./insert_in_list_controller"
application.register("insert-in-list", InsertInListController)

<<<<<<< HEAD
const context = require.context(".", true, /\.js$/);
application.load(definitionsFromContext(context));
=======
const context = require.context(".", true, /\.js$/)
application.load(definitionsFromContext(context))
>>>>>>> 94718bbcc35d6d368055c42ec6d28160ad09b574
