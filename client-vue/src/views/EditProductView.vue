<template>
  <div class="container m-5">
    <h1 class="fs-2">Modification produit #{{ product.id }}</h1>

    <!-- Bouton Enregistrer/Annuler -->
    <div className="col-xs-12 d-flex justify-content-end">
      <button type="submit" className="btn btn-outline-primary me-2" @click="updateProduct">
        <i className="bi bi-check fs-5"></i>
      </button>
      <router-link className="btn btn-outline-danger" to="/produits">
        <i className="bi bi-x fs-5"></i>
      </router-link>
    </div>

    <!-- Formulaire d'ajout -->
    <form className="add-form m-5">

      <!-- <div className="input-group mb-3"> -->
      <input className="form-control form-control-m m-3" type="text" placeholder="Nom" v-model="product.name" required />
      <!-- <input className="form-control form-control-m m-3" type="text" placeholder="Catégorie" v-model="product.categorie" required /> -->
      <select
        class="form-control form-control-m m-3"
        placeholder=""
        v-model="product.categorie"
        required
      >
        <option class="option" value="" disabled>Catégorie</option>
        <option class="option" value="Plantes">Plantes</option>
        <option class="option" value="Fleurs">Fleurs</option>
        <option class="option" value="Accessoirs">Accessoirs</option>
      </select>
      <!-- </div> -->
      <!-- <div className="input-group mb-3"> -->
      <input className="form-control form-control-m m-3" type="number" placeholder="Prix" v-model.number="product.price" required />
      <input className="form-control form-control-m m-3" type="text" placeholder="photo.jpeg" v-model="product.photo" required />
      <!-- </div> -->
      <textarea className="form-control form-control-m m-3" placeholder="Description" v-model="product.description" required></textarea>

    </form>

  </div>
</template>

<script>
import ProductDataService from '@/services/ProductDataService'
export default {
  props: ['inventory', 'updateInventory'],
  data () {
    return {
      product: {},
      id: parseInt(this.$route.params.id)
    }
  },
  methods: {
    updateProduct () {
      ProductDataService.update(this.id, this.product)
        .then(() => {
          this.updateInventory(this.productIndex, this.product)
          this.$router.push({ name: 'catalogue' })
        })
    }
  },
  computed: {
    productIndex () {
      const index = this.inventory.findIndex((p) => {
        return p.id === this.id
      })
      return index
    }
  },
  mounted () {
    ProductDataService.get(this.id)
      .then(response => {
        this.product = response.data
      })
  }
}
</script>
