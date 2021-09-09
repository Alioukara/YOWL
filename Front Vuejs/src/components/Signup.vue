<template>
  <body>
    <h1>sign up</h1>
    <form class="signin">
      <div class="try">
        <div class="user">
          <label for="username">login</label>
          <br />
          <input type="text" placeholder="login" v-model="newUser.login" />
        </div>
        <div class="mail">
          <label for="email">email</label><br />
          <input type="mail" placeholder="Email" v-model="newUser.email" />
        </div>
 
        <div class="password">
          <label for="password">password</label><br />
          <input
            type="password"
            placeholder="Password"
            v-model="newUser.password"
          />
        </div>
        <div class="cpassword">
          <label for="confirm password">confirm password</label><br />
          <input type="password" placeholder="Confirm Password" />
        </div>
      </div>
 
      <div class="mail">
        <label for="emaim">nickname</label><br />
        <input type="text" placeholder="nickname" v-model="newUser.nickname" />
      </div>
      <div class="dateofbirth">
        <label for="dateofbirth">date of birth</label><br />
        <input
          type="date"
          name="birth"
          placeholder="yyyy-mm-dd"
          min="1901-01-01"
          max="2030-12-31"
          v-model="newUser.birthdate"
        />
      </div>
 
      <div class="button">
        <a type="submit" @click="addUser" href="/login">confirm</a>
       
      </div>
    </form>
  </body>
</template>
 
<script>
import axios from "axios";
 
export default {
  name: "Create-User",
  data: function () {
    return {
      newUser: {
        login: "",
        password: "",
        nickname: "",
        birthdate: "",
        email: "",
      },
    };
  },
  methods: {
    addUser: function () {
      // axios.post(process.env.VUE_APP_ENDPOINT +'/api/register'
      axios
        .post(process.env.VUE_APP_ENDPOINT +"/api/register", {
          login: this.newUser.login,
          password: this.newUser.password,
          nickname: this.newUser.nickname,
          birthdate: this.newUser.birthdate,
          email: this.newUser.email,
        })
        .then((response) => {
          response.data;
          // this.$router.push({name: "Login"}) 
           console.log(response.data);
        });
    },
  },
}
</script>
 
<style scoped>
h1 {
  text-align: center;
  color: #6fd9ff;
}
 
form {
  text-align: center;
  color: white;
  max-width: 500px;
  max-height: 500px;
  margin-left: auto;
  margin-right: auto;
  background-color: #6fd9ff;
 
  border: 1px solid black;
  border-radius: 10px;
 
  box-shadow: #6fd9ff;
}
 
.try {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  grid-gap: 5px;
  margin: 5px auto;
}
 
.user {
  grid-column: 1/2;
  grid-row: 1;
}
.mail {
  grid-column: 2/2;
  grid-row: 1;
}
 
.dateofbirth {
  grid-row: 3;
}
 
input {
  width: 50%;
  display: inline-block;
  margin: 5px auto;
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