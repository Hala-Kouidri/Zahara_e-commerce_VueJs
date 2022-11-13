<template>
  <div class="app-container">
    <SideBar />
    <router-view
      :inventory="inventory"
      :addInventory = "addInventory"
      :updateInventory = "updateInventory"
      :removeInventory="removeInventory" />
  </div>
</template>

<script>
// @ is an alias to /src
import 'bootstrap/js/dist/button'
import SideBar from '@/components/Sidebar'
import ProductDataService from '@/services/ProductDataService'

export default {
  components: {
    SideBar
  },
  data () {
    return {
      inventory: []
    }
  },
  methods: {
    addInventory (data) {
      this.inventory.push(data)
    },
    updateInventory (index, data) {
      this.inventory[index].name = data.name
      this.inventory[index].photo = data.photo
      this.inventory[index].price = data.price
      this.inventory[index].description = data.description
      this.inventory[index].categorie = data.categorie
    },
    removeInventory (id) {
      this.inventory = [...this.inventory.filter(product => product.id !== id)]
    }
  },
  mounted () {
    ProductDataService.getAll()
      .then(response => {
        this.inventory = response.data
      })
  }
}

</script>
<style>
html,
body,
#app,
.app-container {
  padding: 0;
  margin: 0;
  width: 100%;
  min-height: 100vh;
}

#app,
.app-container {
  display: flex;
  justify-content: flex-start;
}
</style>
