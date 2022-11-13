import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '@/views/HomeView.vue'
import ProductsView from '@/views/ProductsView.vue'
import AddProductView from '@/views/AddProductView.vue'
import EditProductView from '@/views/EditProductView.vue'

const routes = [
  {
    path: '/',
    name: 'home',
    component: HomeView
  },
  {
    path: '/produits',
    name: 'catalogue',
    component: ProductsView
  },
  {
    path: '/add-product',
    name: 'ajout-produit',
    component: AddProductView
  },
  {
    path: '/edit-product/:id',
    name: 'modification-produit',
    component: EditProductView
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
