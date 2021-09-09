<template>
  <body>
    <h1>Welcome back to the galaxy</h1>
    <form @submit.prevent="loginUser">
      <br />
 
      <div>
        <label for="email">email : </label>
        <br />
        <input
          v-model="email"
          type="email"
          required="required"
          placeholder="enter your email"
        />
      </div>
 
      <div>
        <br />
        <label for="password">password : </label>
        <br />
        <input
          v-model="password"
          type="password"
          placeholder="enter your password"
          required="required"
        />
      </div>
      <br />
 
      <div>
        <a @click="loginUser" type="submit">login</a>
      </div>
    </form>
  </body>
</template>
 
<script>
 
export default {
  name: "loginstyle",
  data() {
    return {
      email: "",
      password: "",
    };
  },
 
  methods: {
    loginUser: function () {
      var axios = require('axios');
      var data = JSON.stringify({
      "username": "ali",
      "password": "ali"
      });

      var config = {
      method: 'post',
      url: 'http://localhost:3000/auth/login',
      headers: { 
      'Content-Type': 'application/json',
      Accept: "*/*",
      },
      data : data
};


      axios(config)
      .then(function (response) {
      console.log(JSON.stringify(response.data.access_token));
      let token = response.data.access_token;
      localStorage.setItem("token", token);
})
.catch(function (error) {
  console.log(error);
})
 
      
    },
  },
};
</script>
<style scoped>
h1 {
  text-align: center;
  color: #ffffff;
}
 
.enter {
  text-align: center;
}
 
form {
  text-align: center;
  color: white;
  max-width: 400px;
  max-height: 500px;
  margin-left: auto;
  margin-right: auto;
  background-color: #6fd9ff;
  border: 1px solid black;
}
 
.container {
  background-color: #6fd9ff;
  width: 800px;
  height: 200px;
  margin-left: auto;
  margin-right: auto;
  align-items: center;
}
a {
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
 
  letter-spacing: 0;
 
  display: block;
  margin: 0 auto;
  text-shadow: 0 0 80px rgba(255, 255, 255, 0.5);
 
 
 
  background: url(https://i.ibb.co/RDTnNrT/animated-text-fill.png) repeat-y;
  -webkit-background-clip: text;
  background-clip: text;
 
  
 
  -webkit-text-fill-color: transparent;
  -webkit-animation: aitf 50s linear infinite;
 
  
 
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