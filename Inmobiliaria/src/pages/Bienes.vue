<script>
import Navbar from "./../components/navbar.vue";
import Card from "./../components/card.vue";
import Buscar from "../components/buscar.vue";
import BuscarBienes from "../components/buscarBienes.vue";

import axios from "axios";

export default {
  data() {
    return {
      products: [],
    };
  },
  created: function () {
    this.fetchProductData();
  },
beforeMount(){
   
 },

  methods: {
    
    fetchProductData: function () {
      let vue = this;
      axios
        .get("https://my-json-server.typicode.com/MarceloIPV/BaseInmo/posts")
        .then(function (response) {
          vue.products = response.data;
          this.originalProducts = this.products;
        });

    },

    



  }
  ,
    components: { Navbar, Card, BuscarBienes }


};
</script>

<template>
  <Navbar/>

  <!-- ======= Events Section ======= -->
  <section id="bienes" class="bienes">
    <div class="container" data-aos="fade-up"></div>
  </section>
  <!-- End Events Section -->

  <section class="news-grid1 grid">
    <BuscarBienes @updateTitle="products = $event" />


    <div class="container">
      <div class="row">

        <Card :valorrecibido="products" />
      </div>
    </div>
  </section>
</template>

<style scoped>

</style>
