import { Controller } from "@hotwired/stimulus"
import '@editorjs/editorjs'; 

export default class extends Controller {
  connect() {
    console.log(this.element);
    new EditorJS({
      /**
       * Id of Element that should contain Editor instance
       */
      holder: this.element.id
    });
  }
}