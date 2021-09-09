<template>
<navbar/>
  <div class="films">
 
    
    <films-card v-for="(item, index) in listoffilms" v-bind:key="index" :films="item"/>
  
  </div>
</template>

<script>
import axios from 'axios';
import FilmsCard from '@/components/FilmsCard.vue'
import navbar from '@/components/navbar.vue'
export default {
  name: 'films',
  components: {
    FilmsCard,
    navbar
  },
  data: function () {
    return {
      listoffilms: [
      
      ],
    };
  },
  created () {
    this.getAllfilms();
  },
  methods: {
   
   
  getAllfilms: function(){
   
   
    axios.get(process.env.VUE_APP_ENDPOINT +'/api/films').then((response) => {
     
    this.listoffilms = response.data;
      
    });
    },
  }
}
</script>


<style>
</style>