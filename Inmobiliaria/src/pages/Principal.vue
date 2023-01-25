<script>
import AOS from "aos";
import CardDestacados from "./../components/cardDestacados.vue";
import Navbar from "./../components/navbar.vue";
import Buscar from "../components/buscar.vue";
import HelloWorld from "../components/HelloWorld.vue";
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'

export default {
  name: "Principal",
  created() {
    AOS.init();
  },
  components: { CardDestacados, Navbar, Buscar, HelloWorld, FontAwesomeIcon },
};
</script>

<template>

<HelloWorld/>



  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center">
    <div
      class="container position-relative text-center text-lg-start"
      data-aos="zoom-in"
      data-aos-duration="1000"
    >
      <div class="row">
        <div class="col-lg-8">
          <h1>Bienvenido a <span>Inmobiliaria Baños</span></h1>
          <h2>Tus sueños convertidos en una propiedad.</h2>

          <h1><FontAwesomeIcon :icon="['far', 'file']" /></h1>

        </div>
      </div>

      <div class="btns">
        <router-link to="/bienes">
        <a class="btn-menu animated fadeInUp">Buscar Propiedad</a>
        </router-link>
      </div>
    </div>
  </section>
  <!-- End Hero -->

  <section id="destacados" class="news-grid grid">
    <div class="container">
      <div class="section-title">
        <h2>Destacados</h2>
        <p>Las propiedades mas cotizadas</p>
      </div>

      <div class="row">
        <CardDestacados />
      </div>
    </div>
  </section>
  <!-- End Blog Grid-->

  <!-- ======= Events Section ======= -->
  <section id="events" class="events">
    <div class="container" data-aos="fade-up">
      <div class="section-title">
        <h2>Buscar</h2>
        <p>Encuentra tu bien inmueble de ensueño</p>
        <Buscar/>
      </div>
    </div>
  </section>
  <!-- End Events Section -->

  <!-- ======= Faq Section ======= -->
  <section id="faq" class="faq">
    <div class="container-fluid">
      <div class="row">
        <div
          class="col-lg-7 d-flex flex-column justify-content-center align-items-stretch order-2 order-lg-1"
        >
          <div class="content">
            <div class="section-title">
              <h2>Sobre Nosotros</h2>
              <p>
                Magnam dolores commodi suscipit. Necessitatibus eius consequatur
                ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam
                quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea.
                Quia fugiat sit in iste officiis commodi quidem hic quas.
              </p>
            </div>
          </div>

          <div class="accordion-list">
            <ul>
              <li>
                <a
                  data-bs-toggle="collapse"
                  class="collapse"
                  data-bs-target="#accordion-list-1"
                  >Non consectetur a erat nam at lectus urna duis?
                  <i class="bx bx-chevron-down icon-show"></i
                  ><i class="bx bx-chevron-up icon-close"></i
                ></a>
                <div
                  id="accordion-list-1"
                  class="collapse show"
                  data-bs-parent=".accordion-list"
                >
                  <p>
                    Feugiat pretium nibh ipsum consequat. Tempus iaculis urna id
                    volutpat lacus laoreet non curabitur gravida. Venenatis
                    lectus magna fringilla urna porttitor rhoncus dolor purus
                    non.
                  </p>
                </div>
              </li>

              <li>
                <a
                  data-bs-toggle="collapse"
                  data-bs-target="#accordion-list-2"
                  class="collapsed"
                  >Feugiat scelerisque varius morbi enim nunc?
                  <i class="bx bx-chevron-down icon-show"></i
                  ><i class="bx bx-chevron-up icon-close"></i
                ></a>
                <div
                  id="accordion-list-2"
                  class="collapse"
                  data-bs-parent=".accordion-list"
                >
                  <p>
                    Dolor sit amet consectetur adipiscing elit pellentesque
                    habitant morbi. Id interdum velit laoreet id donec ultrices.
                    Fringilla phasellus faucibus scelerisque eleifend donec
                    pretium. Est pellentesque elit ullamcorper dignissim. Mauris
                    ultrices eros in cursus turpis massa tincidunt dui.
                  </p>
                </div>
              </li>

              <li>
                <a
                  data-bs-toggle="collapse"
                  data-bs-target="#accordion-list-3"
                  class="collapsed"
                  >Dolor sit amet consectetur adipiscing elit?
                  <i class="bx bx-chevron-down icon-show"></i
                  ><i class="bx bx-chevron-up icon-close"></i
                ></a>
                <div
                  id="accordion-list-3"
                  class="collapse"
                  data-bs-parent=".accordion-list"
                >
                  <p>
                    Eleifend mi in nulla posuere sollicitudin aliquam ultrices
                    sagittis orci. Faucibus pulvinar elementum integer enim. Sem
                    nulla pharetra diam sit amet nisl suscipit. Rutrum tellus
                    pellentesque eu tincidunt. Lectus urna duis convallis
                    convallis tellus. Urna molestie at elementum eu facilisis
                    sed odio morbi quis
                  </p>
                </div>
              </li>
            </ul>
          </div>
        </div>

        <div class="imgFAQ col-lg-5 align-items-stretch order-1 order-lg-2 img">
          &nbsp;
        </div>
      </div>
    </div>
  </section>
  <!-- End Faq Section -->

  <!-- ======= Contact Section ======= -->
  <section id="contact" class="contact">
    <div class="container" data-aos="fade-up">
      <div class="section-title">
        <h2>Contactanos</h2>
        <p>Encuentranos y comunícate con nosotros</p>
      </div>
    </div>

    <div data-aos="fade-up">
      <iframe
        style="border: 0; width: 100%; height: 350px"
        src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12097.433213460943!2d-74.0062269!3d40.7101282!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb89d1fe6bc499443!2sDowntown+Conference+Center!5e0!3m2!1smk!2sbg!4v1539943755621"
        frameborder="0"
        allowfullscreen
      ></iframe>
    </div>

    <div class="container" data-aos="fade-up">
      <div class="row mt-5">
        <div class="col-lg-4">
          <div class="info">
            <div class="address">
              <i class="bi bi-geo-alt"></i>
              <h4>Location:</h4>
              <p>A108 Adam Street, New York, NY 535022</p>
            </div>

            <div class="open-hours">
              <i class="bi bi-clock"></i>
              <h4>Open Hours:</h4>
              <p>
                Monday-Saturday:<br />
                11:00 AM - 2300 PM
              </p>
            </div>

            <div class="email">
              <i class="bi bi-envelope"></i>
              <h4>Email:</h4>
              <p>info@example.com</p>
            </div>

            <div class="phone">
              <i class="bi bi-phone"></i>
              <h4>Call:</h4>
              <p>+1 5589 55488 55s</p>
            </div>
          </div>
        </div>

        <div class="col-lg-8 mt-5 mt-lg-0">
          <form
            action="forms/contact.php"
            method="post"
            role="form"
            class="php-email-form"
          >
            <div class="row">
              <div class="col-md-6 form-group">
                <input
                  type="text"
                  name="name"
                  class="form-control"
                  id="name"
                  placeholder="Your Name"
                  required
                />
              </div>
              <div class="col-md-6 form-group mt-3 mt-md-0">
                <input
                  type="email"
                  class="form-control"
                  name="email"
                  id="email"
                  placeholder="Your Email"
                  required
                />
              </div>
            </div>
            <div class="form-group mt-3">
              <input
                type="text"
                class="form-control"
                name="subject"
                id="subject"
                placeholder="Subject"
                required
              />
            </div>
            <div class="form-group mt-3">
              <textarea
                class="form-control"
                name="message"
                rows="8"
                placeholder="Message"
                required
              ></textarea>
            </div>
            <div class="my-3">
              <div class="loading">Loading</div>
              <div class="error-message"></div>
              <div class="sent-message">
                Your message has been sent. Thank you!
              </div>
            </div>
            <div class="text-center">
              <button type="submit">Send Message</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>
  <!-- End Contact Section -->
</template>

<style scoped>

</style>
