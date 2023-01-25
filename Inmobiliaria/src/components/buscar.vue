<template>

<div class="search-form">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <form
              id="search-form"
              name="gs"
              method="submit"
              role="search"
              action="#"
            >
              <div class="row">
                <div class="col-lg-4">
                  <fieldset>
                    <label for="searchTitle" class="form-label"
                      >Buscar Ubicación</label
                    >
                    <input
                      type="text"
                      name="searchTitle"
                      class="searchText"
                      placeholder="Buscar: Ciudad, Provincia"
                      autocomplete="on"
                      required
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
                    >
                      <option selected>Escoger Categoría</option>
                      <option
                        type="checkbox"
                        name="option1"
                        value="Interior Design"
                      >
                        Terreno
                      </option>
                      <option value="Exterior Design">Departamento</option>
                      <option value="New Ideas">Casa</option>
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
                    <button class="main-button">BUSCAR</button>
                  </fieldset>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>



</template>
<script setup>
</script>
<style scoped>
</style>