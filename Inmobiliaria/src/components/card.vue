<template>

  <!-- ======= Property Grid ======= -->
  <section class="section-news section-t8 cardd">
    <div class="container">
      <div class="row">
        <div
          class="col-md-4 cardd"
          v-for="product in valorrecibido"
          :key="product.id"
        >
          <div class="card-box-a card-shadow">
            <div class="img-box-a">
              <img :src="product.imagen" alt="" class="img-a img-fluid" />
            </div>
            <div class="card-overlay">
              <div class="card-overlay-a-content">
                <div class="card-header-a">
                  <h2 class="card-title-a">
                    <a href="#"
                      >{{ product.tipo }} <br />
                      {{ product.ubicacion }}</a
                    >
                  </h2>
                </div>
                <div class="card-body-a">
                  <div class="price-box d-flex">
                    <span class="price-a">$ {{ product.precio }}</span>
                  </div>
                  <router-link :to="{name:'Propiedad'}">
                  <a href="property-single.html" class="link-a"
                    >Ver Detalles
                    <span class="bi bi-chevron-right"></span>
                  </a>
                  </router-link>
                </div>
                <div class="card-footer-a">
                  <ul class="card-info d-flex justify-content-around">
                    <li>
                      <h4 class="card-info-title">Area</h4>
                      <span
                        >{{ product.dimension }}m
                        <sup>2</sup>
                      </span>
                    </li>
                    <li>
                      <h4 class="card-info-title">Cuartos</h4>
                      <span>{{ product.cuartos }}</span>
                    </li>
                    <li>
                      <h4 class="card-info-title">Baño</h4>
                      <span>{{ product.baños }}</span>
                    </li>
                    <li>
                      <h4 class="card-info-title">Garages</h4>
                      <span>{{ product.garaje }}</span>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
import axios from "axios";

export default {
  data() {
    return {
      products: [],
      originalProducts: []
    };
  },

  created: function () {
    this.fetchProductData();
  },
  beforeMount(){
    this.fetchProductData();
 },


  methods: {
    fetchProductData: function () {
      let vue = this;
      axios
        .get("https://my-json-server.typicode.com/MarceloIPV/BaseInmo/posts")
        .then(function (response) {
          vue.products = valorrecibido;
          console.log(vue.posts);
        });
    },
    searchProducts: function () {
      if (this.productSearch == "") {
        this.fetchProductData();
      }

      this.originalProducts = this.products.filter(
        (product) => product.id == 1
      );

      this.products = this.originalProducts;

      return this.products;
    },

    updateTitle1(){
      this.$emit('updateTitle1',this.products);
    }
       
  },
props:{
  valorrecibido:null
}
};



</script>

<style scoped>
.cardd {
  margin: 1% 0%;
}
a {
 color:azure;
  text-decoration: none;
}

a:hover {
  color:darkgoldenrod;
  text-decoration: none;
}

h1, h2, h3, h4, h5, h6 {
  font-family: "Playfair Display", serif;
}

</style>
