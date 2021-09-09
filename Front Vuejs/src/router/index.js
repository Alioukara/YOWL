import { createRouter, createWebHistory } from 'vue-router'
import Home from '../views/Home.vue'
import People from '../views/People.vue'
import Films from '../views/Films.vue'
import Vehicles from '../views/Vehicles.vue'
import PeopleDetails from '../views/PeopleDetails.vue'
import FilmsDetails from '../views/FilmsDetails.vue'
import VehiclesDetails from '../views/VehiclesDetails.vue'
import PlanetesDetails from '../views/PlanetesDetails.vue'
import Planetes from '../views/Planetes.vue'

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/people',
    name: 'People',
    component: People
  },
  {
    path: '/planetes',
    name: 'Planetes',
    component: Planetes
  },
  {
    path: '/films',
    name: 'Films',
    component: Films
  },
  {
    path: '/vehicles',
    name: 'Vehicles',
    component: Vehicles,
  },
  {
    path: '/vehiclesDetails/:name/:id',
    name: 'VehiclesDetails',
    component: VehiclesDetails,
  },
  {
    path: '/planetesDetails/:name/:id',
    name: 'PlanetesDetails',
    component: PlanetesDetails,
  },
  {
    path: '/signup',
    name: 'Signup',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/Signup.vue')
  },
  {
    path: '/login',
    name: 'Login',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/Login.vue')
  },
  {
    path: '/peopleDetails/:name/:id',
    name: 'PeopleDetails',
    component: PeopleDetails
  },
  {
    path: '/filmsDetails/:name/:id',
    name: 'FilmsDetails',
    component: FilmsDetails
  },

{
  path: '/home2',
  name: 'Home2',
  // route level code-splitting
  // this generates a separate chunk (about.[hash].js) for this route
  // which is lazy-loaded when the route is visited.
  component: () => import(/* webpackChunkName: "about" */ '../views/Home2.vue')
},

]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router