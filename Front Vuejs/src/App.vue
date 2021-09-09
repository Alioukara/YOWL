<template>
  <html>
    <div id="nav"><router-link to="/"></router-link></div>
    <router-view />
  </html>
</template>
 
<style>

@import url("https://fonts.googleapis.com/css2?family=Alfa+Slab+One&display=swap");
 
html {
  font-family: Alfa Slab One, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: justify;
  color: white;
 
  background-image: url("~@/assets/blue1.png");
  /* -webkit-background-size: cover; */
  /* -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover; */
  background-position: cover;
  background-color: black;
}
 
::-webkit-scrollbar {
  width: 10px;
}
 
::-webkit-scrollbar-track {
  background-color: #6fd9ff;
  border-radius: 30px;
}
 
::-webkit-scrollbar-thumb {
  background-image: linear-gradient(180deg, white 0%, #53a2be 99%);
  border-radius: 30px;
  border: 1px solid rgb(79, 79, 209);
}
</style>