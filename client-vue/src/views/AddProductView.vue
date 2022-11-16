<template>
  <div class="container m-5">
    <h1 class="fs-2">Nouveau produit</h1>

    <!-- Bouton Enregistrer/Annuler -->
    <div class="col-xs-12 d-flex justify-content-end">
      <button type="submit" class="btn btn-outline-primary me-2" @click="saveProduct">
        <i class="bi bi-check fs-5"></i>
      </button>
      <router-link class="btn btn-outline-danger" to="/produits">
        <i class="bi bi-x fs-5"></i>
      </router-link>
    </div>

    <!-- Formulaire d'ajout -->
    <form class="add-form m-5 was-validated" novalidate>

      <input class="form-control form-control-m m-3" type="text" placeholder="Nom" v-model="product.name" required/>

      <select class="form-control form-control-m m-3" placeholder="" v-model="product.categorie" required>
        <option class="option" value="" disabled>Catégorie</option>
        <option class="option" value="Plantes">Plantes</option>
        <option class="option" value="Fleurs">Fleurs</option>
        <option class="option" value="Accessoirs">Accessoirs</option>
      </select>

      <input class="form-control form-control-m m-3" type="number" placeholder="Prix" v-model.number="product.price" required />

      <input class="form-control form-control-m m-3" type="text" placeholder="photo.jpeg" v-model="product.photo" required />

      <textarea class="form-control form-control-m m-3" placeholder="Description" v-model="product.description" required></textarea>

    </form>

  </div>
</template>

<script>
import ProductDataService from '@/services/ProductDataService'
export default {
  props: ['addInventory'],
  data () {
    return {
      product: {
        name: '',
        photo: '',
        price: '',
        description: '',
        categorie: ''
      }
    }
  },
  methods: {
    saveProduct () {
      ProductDataService.create(this.product)
        .then(response => {
          this.product.id = response.data.id
          this.addInventory(this.product)
          this.$router.push({ name: 'catalogue' })
        })
    }
  }
}
</script>

<style>
@import "@/assets/override.css";
</style>
