<template>
<a class="back" @click="$router.back()">HOME</a>
  <Signin />
</template>
<script>
import Signin from "@/components/Signin.vue";
 
export default {
  name: "Home",
  components: {
    Signin,
  },
};
</script>
 
<style scoped>
.back{
   
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
 
  letter-spacing: 0;
 
  display: block;
  margin: 0 auto;
  text-shadow: 0 0 80px rgba(255, 255, 255, 0.5);
 
  /* Clip Background Image */
 
  background: url(https://i.ibb.co/RDTnNrT/animated-text-fill.png) repeat-y;
  -webkit-background-clip: text;
  background-clip: text;
 
  /* Animate Background Image */
 
  -webkit-text-fill-color: transparent;
  -webkit-animation: aitf 50s linear infinite;
 
  /* Activate hardware acceleration for smoother animations */
 
  -webkit-transform: translate3d(0, 0, 0);
  -webkit-backface-visibility: hidden;
}
 
@-webkit-keyframes aitf {
  0% {
    background-position: 0% 50%;
  }
  100% {
    background-position: 100% 50%;
  }
}
</style>