<script setup>
window.onscroll = function () {
  scrollFunction();
  scrollFunctionBTT(); // back to top button
};

function scrollFunction() {
  let intViewportWidth = window.innerWidth;
  if (
    document.body.scrollTop > 30 ||
    (document.documentElement.scrollTop > 30) & (intViewportWidth > 991)
  ) {
    document.getElementById("header").classList.add("topbar-scrolled");
    document.getElementById("header").classList.add("header-scrolled");
  } else if (
    document.body.scrollTop < 30 ||
    (document.documentElement.scrollTop < 30) & (intViewportWidth > 991)
  ) {
    document.getElementById("header").classList.remove("topbar-scrolled");
    document.getElementById("header").classList.remove("header-scrolled");
  }
}
</script>

<template>
  <header id="header" class="fixed-top d-flex align-items-cente">
    <nav class="navbar navbar-dark navbar-expand-lg fixed-top" id="mainNav">
        <div class="container"><a class="navbar-brand" href="#page-top">Brand</a><button data-bs-toggle="collapse" data-bs-target="#navbarResponsive" class="navbar-toggler navbar-toggler-right" type="button" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto text-uppercase">
                    <li class="nav-item"><a class="nav-link" href="#services">Services</a></li>
                    <li class="nav-item"><a class="nav-link" href="#portfolio">Portfolio</a></li>
                    <li class="nav-item"><a class="nav-link" href="#about">About</a></li>
                    <li class="nav-item"><a class="nav-link" href="#team">Team</a></li>
                    <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
                </ul>
            </div>
        </div>
    </nav>
  </header>
  <!-- End Header -->
</template>

<style scoped>

a {
 
  text-decoration: none;
}

a:hover {
  
  text-decoration: none;
}

h1, h2, h3, h4, h5, h6 {
  font-family: "Playfair Display", serif;
}
</style>
