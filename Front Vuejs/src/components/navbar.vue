<template>
  <div class="navbar">
    <ul>
      <li><a href="/home2">Home</a></li>
 
      <li class="dropdown">
        <a href="#" class="dropbtn"> categories</a>
        <div class="dropdown-content">
          <a href="films">Films</a>
          <a href="people">Peoples</a>
          <a href="planetes">Planetes</a>
          <a href="vehicles">Vehicles</a>
        </div>
      </li>
      <div class="login">
        
          <li><a @click="Logout(), redirect()" href="#">Logout</a></li>
      </div>

    </ul>
   
  </div>
</template>
<script>
import axios from 'axios';

export default {

  methods: {
    redirect() {
      this.$router.push({
        name: "Home",
        params: {},
      });
    },

  Logout() {

var config = {
  method: 'post',
  url: (process.env.VUE_APP_ENDPOINT +'/api/logout'),
  headers: { 
    'Authorization': 'Bearer ' + localStorage.getItem('token'),
   'Content-Type': 'text/plain',
  },

};

axios(config)
.then(function (response) {
  console.log(JSON.stringify(response.data));
})
.catch(function (error) {
  console.log(error);
});
localStorage.removeItem("token")


  }
  }
    
  }

</script>

 
<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
}
 
li {
  float: left;
}
 
li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}
 
li a:hover:not(.active) {
  background-color: #6fd9ff;
}
 
.dropdown {
  margin-left: auto;
  min-width: 138px;
}
 
li a,
.dropbtn {
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
.login{
   
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

 
li a:hover,
.dropdown:hover .dropbtn {
  background-color: #6fd9ff;
  border-radius: 10%;
}
 
.dropdown-content {
  display: none;
  position: absolute;
  min-width: 138px;
  border: 1px solid grey;
  border-radius: 10%;
}
 
.dropdown-content a {
  color: rgb(255, 255, 255);
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: center;
}
 
.dropdown:hover .dropdown-content {
  display: block;
}
.login {
    float: right;
    margin-right: 50px;
}
</style>