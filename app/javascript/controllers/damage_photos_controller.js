
import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["photoInput"];

  submit(event) {
    event.preventDefault();

    const formData = new FormData();
    formData.append("damage[description]", this.descriptionInput.value);
    formData.append("damage[photo]", this.photoInputTarget.files[0]);

    Rails.ajax({
      url: event.currentTarget.action,
      type: "POST",
      data: formData,
      success: () => {
        console.log("Damage report created successfully");
      },
      error: () => {
        console.log("Failed to create damage report");
      },
    });
  }

  get descriptionInput() {
    return this.element.querySelector('[name="damage[description]"]');
  }
}
