<template>
  <div class="flex-shrink-0 w-20 bg-primary">
    <div class="sticky-top d-flex flex-column p-4 text-white">
      <span class="fs-3">Zahara - Admin</span>
      <hr>
      <ul class="nav nav-pills flex-column mb-auto">
        <li class="nav-item">
          <router-link to="/" class="nav-link text-white fs-6">Accueil</router-link>
        </li>
        <li>
          <router-link to="/produits" class="nav-link text-white fs-6">Produits</router-link>
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
export default {
  name: 'SideBar'
}
</script>
