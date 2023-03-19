import { application } from "./application";
import { definitionsFromContext } from "@stimulus/webpack-helpers";

import HelloController from "./hello_controller";
application.register("hello", HelloController);

import DamagePhotosController from "./damage_photos_controller";
application.register("damage-photos", DamagePhotosController);

import InsertInListController from "./insert_in_list_controller"
application.register("insert-in-list", InsertInListController)

const context = require.context(".", true, /\.js$/);
application.load(definitionsFromContext(context));


