# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin "@editorjs/editorjs", to: "https://cdn.jsdelivr.net/npm/@editorjs/editorjs@latest"
pin_all_from "app/javascript/controllers", under: "controllers"

