<template>
<navbar/>
  <div class="vehicles">
 
    
    <vehicles-card v-for="(item, index) in listofvehicles" v-bind:key="index" :Vehicles="item"/>
  
  </div>
</template>

<script>
import axios from 'axios';
import VehiclesCard from '@/components/VehiclesCard.vue'
import navbar from '@/components/navbar.vue'
export default {
  name: 'vehicles',
  components: {
    VehiclesCard,
    navbar
  },
  data: function () {
    return {
      listofvehicles: [
      
      ],
    };
  },
  created () {
    this.getAllvehicles();
  },
  methods: {
   
   
  getAllvehicles: function(){
   
   
    axios.get(process.env.VUE_APP_ENDPOINT +'/api/vehicles').then((response) => {
     
    this.listofvehicles = response.data;
      
    });
    },
  }
}
</script>


<style>
</style>