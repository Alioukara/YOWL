<template>
 <div class="PeopleCard">
    <h1 class="PeopleCard-title">{{ people.name }}</h1>
    <div class="PeopleCard-grid">
      <img
        class="PeopleCard-image"
        :src="require(`@/assets/${people.picture_url}`)"
      />
      <div class="PeopleCard-header">
        <div></div>
        <h4 class="PeopleCard-header">Species: {{ people.species }}</h4>
        <h4 class="PeopleCard-header">Gender: {{ people.gender }}</h4>
        <h4 class="PeopleCard-header">Hair color: {{ people.hair_color }}</h4>
        <h4 class="PeopleCard-header">Eye color: {{ people.eye_color }}</h4>
        <h4 class="PeopleCard-header">Birthyear: {{ people.birthyear }}</h4>
        <h4 class="PeopleCard-header">Height: {{ people.height }}</h4>
        <h4 class="PeopleCard-header">Body mass: {{ people.body_mass }}</h4>
 
        <hr />
        <button class="button" v-on:click="redirect()">Show Comments</button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "PeopleCard",
  props: {
    people: Object,
  },
  methods: {
  redirect() {
      
      this.$router.push({
        name: "PeopleDetails",
        params: {
          id: this.people.id,
          name: this.people.name,
          specie:  this.people.specie,
          gender: this.people.gender,
          hair_color: this.people.hair_color,
          eye_color: this.people.eye_color,
          birthyear: this.people.birthyear,
          height: this.people.height,
          body_mass: this.people.body_mass,
          picturepeople: this.people.picture_url
        
        },
      });
    },
  }
  
  
  
};
</script>
<style scoped>
.PeopleCard {
  max-width: 800px;
  margin: 5px;
  border-radius: 10%;
  padding: 5px;
  box-sizing: border-box;
  background: #6fd9ff;
  color: rgb(0, 0, 0);
  margin-left: auto;
  margin-right: auto;
}
 
.PeopleCard-header {
  font-weight: 600;
  text-align: center;
  margin-bottom: 20px;
}
 
.PeopleCard-crawl {
  text-align: justify;
}
 
.PeopleCard-title {
  text-align: center;
}
 
.PeopleCard-grid {
  display: grid;
  grid-auto-flow: row;
  grid-gap: 10px;
  align-items: center;
  justify-content: center;
}
 
.PeopleCard-image {
  margin-top: 20px;
  margin-right: 150px;
  margin-bottom: 50px;
}
 
.button {
  justify-content: center;
}
 
@media (min-width: 650px) {
  .PeopleCard-grid {
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