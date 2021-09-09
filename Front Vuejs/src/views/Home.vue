<template>
  <div>
    <div><h1>a long time ago in a galaxy far, far away...</h1></div>
    <div class="oldschool">
      <img src="~@/assets/starwarsoldschool.png" width="800" height="400" />
    </div>
    <div><p>your journey begins here</p></div>
    <div><p>create a profil, choose your side</p></div>
    <div><p>and if you deserve it</p></div>
    <div><p>you will access all the knowledges of the galaxy</p></div>
  </div>
  <div class="buttons">
    <div class="button1">
      <button 
        type="submit"
        style="
          font-family: Star jedi;
          font-weight: bold;
          font-size: 20px;
          color: #a4e0f7;
          border-radius: 15px;
          margin: 15px;
          width: 150px;
          height: 40px;
          background: rgba(255, 255, 255, 0);
        "
      > 
      <router-link to="/login" class="router"> Sign in</router-link>
        
      </button>
    </div>
 
    <div class="button2">
     <button
        type="submit"
        style="
          font-family: Star jedi;
          font-weight: bold;
          font-size: 20px;
          color: #a4e0f7;
          border-radius: 15px;
          margin: 15px;
          width: 150px;
          height: 40px;
          background: rgba(255, 255, 255, 0);
          overflow: auto;
         
        "
      >
        <router-link to="/signup" class="router"> Sign up</router-link>
      </button>
    </div>
  </div>

 
</template>
 
<script>
export default {
  name: "Home",
  props: {
    msg: String,
  },
 
};
</script>
 
<style scoped>
h1 {
  text-align: center;
  color: #a4e0f7;
  font-size: 30px;
}
.oldschool {
  text-align: center;
}
p {
  text-align: center;
  color: #a4e0f7;
  font-size: 30px;
}
.buttons {
  text-align: center;
}
.button1 {
  display: inline-block;
  
}
.button2 {
  display: inline-block;
}
::-webkit-scrollbar {
  width: 10px;
}
::-webkit-scrollbar-track {
  background-color: #6fd9ff;
  border-radius: 30px;
}
::-webkit-scrollbar-thumb {
  background-image: linear-gradient(180deg, white 0%, #53a2be 99%);
  border-radius: 30px;
  border: 1px solid rgb(79, 79, 209);
}
.router{
    text-decoration: none;
    color: #a4e0f7;
}
</style>