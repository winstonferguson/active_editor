# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"

pin "@editorjs/editorjs", to: "@editorjs--editorjs.js" # @2.29.0
pin "@editorjs/header", to: "@editorjs--header.js" # @2.8.1
pin "@editorjs/list", to: "@editorjs--list.js" # @1.9.0
