import { Controller } from "@hotwired/stimulus"
import EditorJS from '@editorjs/editorjs'; 
import Header from '@editorjs/header'; 
import List from '@editorjs/list'; 


export default class extends Controller {
  connect() {
    new EditorJS({
      /**
       * Id of Element that should contain Editor instance
       */
      autofocus: true,
      holder: this.element.querySelector('section').id ,
      tools: { 
        header: {
          class: Header, 
          inlineToolbar: ['link'] 
        }, 
        list: { 
          class: List, 
          inlineToolbar: true 
        } 
      }, 
    });
  }
}