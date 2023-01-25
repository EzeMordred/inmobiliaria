
import "bootstrap/dist/css/bootstrap.css"

import { createApp, VueElement } from 'vue'
import './style.css'
import App from './App.vue'


import 'aos/dist/aos.css'
import 'aos/dist/aos.js'

import router from "./routes/routes"


import { library } from '@fortawesome/fontawesome-svg-core'


import { faFile as faFileRegular } from '@fortawesome/free-solid-svg-icons'

import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'

library.add(faFileRegular)


createApp(App)
.use(router)
.mount('#app')



import "bootstrap/dist/js/bootstrap.js"