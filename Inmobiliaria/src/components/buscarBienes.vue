<template>
  <div class="search-form">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div id="search-form">
            <div class="row">
              <div class="col-lg-4">
                <fieldset>
                  <label for="searchTitle" class="form-label"
                    >Buscar Ubicación</label
                  >
                  <input
                    type="text"
                    name="search"
                    v-model="productSearch"
                    placeholder="Ubicación"
                    class="form-control"
                    v-on:keyup="searchProducts"
                  />
                </fieldset>
              </div>  
              <div class="col-lg-4">
                <fieldset>
                  <label for="chooseCategory" class="form-label"
                    >Categoría</label
                  >
                  <select
                    name="Category"
                    class="form-select"
                    aria-label="Default select example"
                    id="chooseCategory"
                    onChange="this.form.click()"
                    v-model="productSearch1"
                  >
                    <option >Escoger Categoría</option>
                    <option selected value="Terreno">
                      Terreno
                    </option>
                    <option value="Departamento">Departamento</option>
                    <option value="Casa">Casa</option>
                  </select>
                </fieldset>
              </div>
              <div class="col-lg-4">
                <fieldset>
                  <label for="chooseprice" class="form-label"
                    >Rango de Precio</label
                  >
                  <select
                    name="Price"
                    class="form-select"
                    aria-label="Default select example"
                    id="chooseCategory"
                    onChange="this.form.click()"
                    v-model="productSearch2"
                  >
                    <option selected>Escoger Precio</option>
                    <option value="$100 - $250">$10000 - $25000</option>
                    <option value="$250 - $500">$25000 - $500000</option>
                    <option value="$500 - $1000">$50000 - $100000</option>
                    <option value="$1000+">$100000+</option>
                  </select>
                </fieldset>
              </div>

              <div class="col-lg-12">
                <fieldset>
                  <button class="main-button" v-on:click="searchnormal">
                    BUSCAR
                  </button>
                </fieldset>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  mount() {
    this.fetchProductData();
  },
  data() {
    return {
      products: [],
      originalProducts: [],
      productSearch: "",
      productSearch1: "",
      productSearch2: "",
    };
  },

  created: function () {
    this.fetchProductData();
  },
  beforeMount() {
    this.fetchProductData();
  },

  methods: {
    fetchProductData: function () {
      let vue = this;
      axios
        .get("https://my-json-server.typicode.com/MarceloIPV/BaseInmo/posts")
        .then(function (response) {
          vue.products = response.data;
          this.originalProducts = this.products;
          this.$emit("updateTitle", this.products);
        });
    },
    searchProducts: function () {
      if (this.productSearch == "") {
        this.fetchProductData();
        this.$emit("updateTitle", this.products);
      }
    },
    searchnormal: function () {
      this.originalProducts = this.products.filter(
        (product) =>
          product.ubicacion == this.productSearch &&
          product.tipo == this.productSearch1
      );
      this.products = this.originalProducts;
      this.$emit("updateTitle", this.products);
    },
  },
};
</script>
<style scoped></style>
