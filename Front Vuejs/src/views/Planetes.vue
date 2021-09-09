<template>
<navbar/>
  <div class="planetes">
 
    
    <planetes-card v-for="(item, index) in listofplanetes" v-bind:key="index" :planetes="item"/>
  
  </div>
</template>

<script>
import axios from 'axios';
import PlanetesCard from '@/components/PlanetesCard.vue'
import navbar from '@/components/navbar.vue'
export default {
  name: 'planetes',
  components: {
    PlanetesCard,
    navbar
  },
  data: function () {
    return {
      listofplanetes: [
      
      ],
    };
  },
  created () {
    this.getAllplanetes();
  },
  methods: {
   
   
  getAllplanetes: function(){
   
   
    axios.get(process.env.VUE_APP_ENDPOINT +'/api/planetes').then((response) => {
     
    this.listofplanetes = response.data;
      
    });
    },
  }
}
</script>


<style>
</style>