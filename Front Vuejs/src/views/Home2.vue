<template>
  <div>
    <navbar />
    <div class="image">
      <img id="oldschool" src="~@/assets/Endor.png" width="350" height="350" />
      <img
        id="oldschool"
        src="~@/assets/starwarsoldschool.png"
        width="800"
        height="400"
      />
      <img
        id="oldschool"
        src="~@/assets/DeathStar.png"
        width="350"
        height="350"
      />
    </div>
  </div>
</template>
 
<script>
import navbar from "@/components/navbar.vue";
 
export default {
  components: {
    navbar,
  },
};
</script>
 
<style scoped>
.image {
  text-align: center;
  margin-top: 200px;
  display: grid;
  grid-auto-flow: row;
  grid-gap: 10px;
  margin-left: auto;
  margin-right: auto;
}
 
@media (min-width: 1550px) {
  .image {
    grid-auto-flow: column;
  }
}
 
#oldschool {
  margin-left: auto;
  margin-right: auto;
}
</style>