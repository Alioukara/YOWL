<template>
  <div class="VehiclesCard">
   
     
        <h1 class="VehiclesCard-name">{{planetes.name}}</h1>
        <div class="VehiclesCard-grid">
             <img
        class="VehiclesCard-image"
        :src="require(`@/assets/${planetes.picture_url}`)"
          />
        <div class="VehiclesCard-header">
        <h2>Rotation Period:</h2>
        <h6> {{ planetes.rotation_period}}</h6>
        <h2>Diameter:</h2>
        <h6>{{ planetes.diameter}}</h6>
          <h2>Climate:</h2>
        <h6>{{ planetes.climate}}</h6>
         <h2>population:</h2>
        <h6>{{ planetes.population}}</h6>
        
        <hr>
        <button  v-on:click="redirect()">Show Comments</button>
        </div>
    </div>
  </div>



</template>

<script>
export default {
  name: "PlanetessCard",
  props: {
    planetes: Object,
  },
  methods: {
    redirect() {
      this.$router.push({
        name: "PlanetesDetails",
        params: {
          id: this.planetes.id,
          name: this.planetes.name,
          rotation_period: this.planetes.max_speed,
          diameter: this.planetes.diameter,
          climate: this.planetes.climate,
          population: this.planetes.population,
          
          picture: this.planetes.picture_url,
        },
      });
    },
  },
};
</script>
<style scoped>
.VehiclesCard {
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
 
.VehiclesCard-header {
  font-weight: 600;
  text-align: center;
  margin-bottom: 50px;
}
 
.VehiclesCard-crawl {
  text-align: justify;
}
 
.VehiclesCard-name {
  text-align: center;
}
 
.VehiclesCard-grid {
  display: grid;
  grid-auto-flow: row;
  grid-gap: 10px;
}
 
@media (min-width: 650px) {
  .VehiclesCard-grid {
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