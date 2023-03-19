import { application } from "./application";
import { definitionsFromContext } from "@stimulus/webpack-helpers";

import HelloController from "./hello_controller";
application.register("hello", HelloController);

import DamagePhotosController from "./damage_photos_controller";
application.register("damage-photos", DamagePhotosController);

const context = require.context(".", true, /\.js$/);
application.load(definitionsFromContext(context));
