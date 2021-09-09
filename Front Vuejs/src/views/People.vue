<template>
<navbar/>

  <div class="home">
    
    
    <people-card v-for="(item, index) in listofpeople" 
    v-bind:key="index" :people="item"/>
    <!-- {{getAllpeople}} -->
  </div>
</template>

<script>
import axios from 'axios';
import PeopleCard from '@/components/PeopleCard.vue'
import navbar from '@/components/navbar.vue'
export default {
  name: 'Home',
  components: {
    PeopleCard,
    navbar
  },
  data: function () {
    return {
      listofpeople: [
      
      ],
    };
  },
  created () {
    this.getAllpeople();
  },
  methods: {
   
   
   getAllpeople: function(){
   
   
      axios.get(process.env.VUE_APP_ENDPOINT +'/api/people').then((response) => {
     
      this.listofpeople = response.data;
     
      
      
      
      });
    },
  }
}
</script>


<style>
</style>