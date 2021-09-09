<template>
  <div class="VehiclesCard">
   
     
        <h1 class="VehiclesCard-name">{{Vehicles.name}}</h1>
        <div class="VehiclesCard-grid">
             <img
        class="VehiclesCard-image"
        :src="require(`@/assets/${Vehicles.picture_url}`)"
          />
        <div class="VehiclesCard-header">
        <h2>Model:</h2>
        <h6> {{ Vehicles.model}}</h6>
        <h2>Max_speed:</h2>
        <h6>{{ Vehicles.max_speed}}</h6>
          <h2>Cost:</h2>
        <h6>{{ Vehicles.cost}}</h6>
         <h2>Manufacturer:</h2>
        <h6>{{ Vehicles.manufacturer}}</h6>
         <h2>Cargo capacity:</h2>
        <h6>{{ Vehicles.cargo_capacity}}</h6>
        <hr>
        <button  v-on:click="redirect()">Show Comments</button>
        </div>
    </div>
  </div>



</template>

<script>
export default {
  name: "VehiclesCard",
  props: {
    Vehicles: Object,
  },
  methods: {
    redirect() {
      this.$router.push({
        name: "VehiclesDetails",
        params: {
          id: this.Vehicles.id,
          name: this.Vehicles.name,
          max_speed: this.Vehicles.max_speed,
          manufacturer: this.Vehicles.manufacturer,
          cargo_capacity: this.Vehicles.cargo_capacity,
          
          picture: this.Vehicles.picture_url,
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