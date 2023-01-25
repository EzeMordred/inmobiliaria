import { createRouter, createWebHistory } from "vue-router";
import Principal from "./../pages/Principal.vue"
import Bienes from "./../pages/Bienes.vue"
import Propiedad from "./../pages/Propiedad.vue"

const routes = [
    {
        path:'/',
        name:"Principal",
        component: Principal
    },
    {
        path:'/bienes',
        name:"Bienes",
        component: Bienes
    },
    {
        path:'/propiedad',
        name:"Propiedad",
        component: Propiedad
    }
]

const router = createRouter({
    history: createWebHistory(),
    routes
})

export default router