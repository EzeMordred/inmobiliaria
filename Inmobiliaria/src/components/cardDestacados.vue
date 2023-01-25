<template>
  <section class="section-news section-t8">
    <div class="container">
      <swiper
        :modules="modules"
        :slides-per-view="3"
        :space-between="20"
        navigation
        @swiper="onSwiper"
        @slideChange="onSlideChange"
      >
        <swiper-slide v-for="product in products" :key="product.id">
          <div class="card-box-b card-shadow news-box">
            <div class="img-box-b">
              <img :src="product.imagen" alt="" class="img-b img-fluid" />
            </div>
            <div class="card-overlay">
              <div class="card-header-b">
                <div class="card-category-b">
                  <a href="#" class="category-b">{{ product.tipo }} </a>
                </div>
                <div class="card-title-b">
                  <h2 class="title-2">
                    <a href="blog-single.html">{{ product.ubicacion }}</a>
                  </h2>
                </div>
                <div class="card-date">
                  <span class="date-b">{{ product.precio }}</span>
                </div>
              </div>
            </div>
          </div>

          <!-- End carousel item -->
        </swiper-slide>
      </swiper>
    </div>


    <div class="carrousel">
    <!--contenedor de las imagenes o las cardsl-->
    <div class="carrousel_items" >
        <!--Cada una de las imagenes o cards-->
        <div class="item" v-for="product in products" :key="product.id">
          <div class="card card-box-b card-shadow news-box">
            <div class="img-box-b">
              <img :src="product.imagen" alt="" class="img-b img-fluid" />
            </div>
            <div class="card-overlay">
              <div class="card-header-b">
                <div class="card-category-b">
                  <a href="#" class="category-b">{{ product.tipo }} </a>
                </div>
                <div class="card-title-b">
                  <h2 class="title-2">
                    <a href="blog-single.html">{{ product.ubicacion }}</a>
                  </h2>
                </div>
                <div class="card-date">
                  <span class="date-b">{{ product.precio }}</span>
                </div>
              </div>
            </div>
          </div>
        </div>
        
    </div>
    <!--Contenedor de botones-->
    <div class="buttons">
        <!--botón anterior-->
        <button class="carrousel_button previus"><i class="large material-icons">keyboard_arrow_left</i></button>
        <!--botón siguiente-->
        <button class="carrousel_button next"><i class="large material-icons">keyboard_arrow_right</i></button>
    </div>
</div>


  </section>
  <!-- End Latest News Section -->
</template>
<script>
import axios from "axios";

// import Swiper core and required modules
import { Navigation, Pagination, Scrollbar, A11y } from "swiper";

// Import Swiper Vue.js components
import { Swiper, SwiperSlide } from "swiper/vue";

// Import Swiper styles
import "swiper/css";
import "swiper/css/navigation";
import "swiper/css/pagination";
import "swiper/css/scrollbar";

// Import Swiper styles
export default {
  data() {
    return {
      products: [],
    };
  },
  
  mounted() {
    let vue = this;
    axios
      .get("https://my-json-server.typicode.com/MarceloIPV/BaseInmo/posts")
      .then(function (response) {
        vue.products = response.data;
        console.log(vue.posts);
      });

      carrousel({
    contenedor: '.carrousel',
    btnPrevius: '.previus',
    btnNext: '.next',
    card: '.item'
 });
  },
  components: {
    Swiper,
    SwiperSlide,
  },
  setup() {
    const onSwiper = (swiper) => {
      console.log(swiper);
    };
    const onSlideChange = () => {
      console.log("slide change");
    };
    return {
      onSwiper,
      onSlideChange,
      modules: [Navigation, Pagination, Scrollbar, A11y],
    };
  },
};


const carrousel = ({ contenedor, card, btnPrevius, btnNext }) => {
    const d = document, $contenedor = d.querySelectorAll(contenedor);
 
    $contenedor.forEach(slide => {
       slide.addEventListener('click', (e) => {
          let cardWidth = slide.querySelector(card).offsetWidth; //devuelve el ancho de las cards
          const slider = slide.children[0];
          (e.target.matches(btnPrevius) || e.target.matches(`${btnPrevius} *`)) ? slider.scrollLeft += -cardWidth - 15 : slider.scroll(0, 0);
          if (e.target.matches(btnNext) || e.target.matches(`${btnNext} *`)) slider.scrollLeft += cardWidth + 15;
       });
    })
 }
 
 


</script>
