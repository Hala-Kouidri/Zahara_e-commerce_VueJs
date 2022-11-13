<template>
  <div class="container m-5">
    <h1 class="fs-2">Produits</h1>

    <!-- Bouton d'ajout -->
    <div className="col-xs-12 d-flex justify-content-end">
      <router-link className="btn btn-outline-primary" to="/add-product">
        <i className="bi bi-plus fs-5"></i>
      </router-link>
    </div>

    <!-- Tableau de produits -->
    <table className="table mt-5">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col" className="pe-4">Image</th>
          <th scope="col" className="pe-4">Nom</th>
          <th scope="col" className="pe-4">Catégorie</th>
          <th scope="col" className="pe-4">Description</th>
          <th scope="col" className="ps-3 pe-5">Prix</th>
          <th scope="col"></th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="product in inventory" :key="product.id">
          <th scope="row">{{ product.id }}</th>
          <td class="img-td-container"><img class="img-thumbnail" :src="'/img/' + product.photo" alt="" /></td>
          <td>{{ product.name }}</td>
          <td>{{ product.categorie }}</td>
          <td>{{ product.description }}</td>
          <td className="text-nowrap ps-3">{{ product.price }} $</td>
          <td className="align-middle">
            <div className="d-flex justify-content-end align-items-center">
              <!-- bouton modification-->
              <router-link className="btn btn-outline-primary me-2" :to="'/edit-product/'+product.id" @click="editProduct">
                <i className="bi bi-pencil-fill"></i>
              </router-link>
              <!-- bouton suppression -->
              <button className="btn btn-outline-danger" @click="deleteProduct(product.id)">
                <i className="bi bi-trash-fill"></i>
              </button>
            </div>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</template>
<script>
import ProductDataService from '@/services/ProductDataService'

export default {
  props: ['inventory', 'removeInventory'],

  methods: {
    deleteProduct (id) {
      ProductDataService.delete(id)
        .then(() => {
          this.removeInventory(id)
        })
    },
    product () {
      const product = this.inventory.find((p) => {
        return p.name === this.$route.params.id
      })
      return product
    }
  },
  computed: {
    productIndex () {
      const index = this.inventory.findIndex((p) => {
        return p.name === this.$route.params.id
      })
      return index
    }
  }
}

</script>
