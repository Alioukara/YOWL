<template>
  <div class="FilmsCard">
   
     
        <h1 class="FilmsCard-title">{{ films.episode_id }}: {{films.title}}</h1>
        <div class="FilmsCard-grid">
             <img
        class="FilmsCard-image"
        :src="require(`@/assets/${films.picture_url}`)"
          />
        <div class="FilmsCard-header">
        <h2>Director:</h2>
        <h6> {{ films.director}}</h6>
        <h2>Crawl:</h2>
        <h6>{{ films.opening_crawl}}</h6>
        <hr>
        <button  v-on:click="redirect()">Show Comments</button>
        </div>
    </div>
  </div>



</template>

<script>
export default {
  name: "FilmsCard",
  props: {
    films: Object,
  },
  methods: {
    redirect() {
      this.$router.push({
        name: "FilmsDetails",
        params: {
          id: this.films.id,
          name: this.films.title,
          opening: this.films.opening_crawl,
          director: this.films.director,
          picture: this.films.picture_url,
        },
      });
    },
  },
};
</script>
<style scoped>
.FilmsCard {
  max-width: 800px;
  margin: 5px;
  border-radius: 10%;
  padding: 10px;
  box-sizing: border-box;
  background: #6fd9ff;
  color: rgb(0, 0, 0);
  margin-left: auto;
  margin-right: auto;
}
 
.FilmsCard-header {
  font-weight: 600;
  text-align: center;
  margin-bottom: 50px;
}
 
.FilmsCard-crawl {
  text-align: justify;
}
 
.FilmsCard-title {
  text-align: center;
}
 
.FilmsCard-grid {
  display: grid;
  grid-auto-flow: row;
  grid-gap: 10px;
}
 
@media (min-width: 650px) {
  .FilmsCard-grid {
    grid-auto-flow: column;
  }
}
 
div {
  display: block;
}
 
img {
  max-width: 200px;
  margin: 20px;
}
 
img:hover {
  transform: scale(1.25);
  border-radius: 10%;
  position: relative;
  z-index: 5;
}
</style>