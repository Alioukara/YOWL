<template>
  <div class="detailsCard">
    <a class="back" @click="$router.back()">Back</a>
    <h1 class="detailsCard-title">{{ $route.params.name }}</h1>
    <div class="detailsCard-grid">
      <img
        class="detailsCard-image"
        :src="require(`@/assets/${$route.params.picture}`)"
      />
      <div class="detailsCard-header">
        <h2>
          Max_speed: <br />
          {{ $route.params.max_speed }}
        </h2>
 
        <h2>Manufacturer:</h2>
        <h3>{{ $route.params.manufacturer }}</h3>
         <h2>Cargo Capacity:</h2>
        <h3>{{ $route.params.cargo_capacity }}</h3>
      </div>
    </div>
    <hr/>
    <create-comments @create-new-comment="addcomments($event)" />
 
    <hr />
    <div>
      <comments-card
        v-for="(item, index) in listofcomments"
        :key="index"
        :comment="item"
      />
    </div>
  </div>
</template>
 
<script>
import axios from "axios";
import CommentsCard from "@/components/CommentsCard.vue";
import CreateComments from "@/components/CreateComments.vue";
export default {
  name: "comments",
  data: function () {
    return {
      listofcomments: [],
    };
  },
  created() {
    this.getAllcomments();
  },
  methods: {
    getAllcomments() {
      axios
        .get(
          process.env.VUE_APP_ENDPOINT +
            "/api/comments/search/films/" +
            this.$route.params.id
        )
        .then((response) => {
          this.listofcomments = response.data;
        });
    },
 
    addcomments(newComment) {
      var data = JSON.stringify({
        comment_content: newComment.comment_content,
        films_id: this.$route.params.id,
      });
 
      var config = {
        method: "post",
        url: process.env.VUE_APP_ENDPOINT + "/api/store",
        headers: {
          Authorization: "Bearer " + localStorage.getItem("token"),
          "Content-Type": "application/json",
          Accept: "*/*",
        },
        data: data,
      };
      console.log(data),
        axios(config)
          .then(function (response) {
            console.log(JSON.stringify(response.data));
          })
          .catch(function (error) {
            console.log(error);
          });
    },
  },
  components: {
    CreateComments,
    CommentsCard,
  },
};
</script>
<style scoped>
.detailsCard {
  max-width: 800px;
  margin: 5px;
  border-radius: 10%;
  padding: 10px;
  box-sizing: border-box;
  background: #6fd9ff;
  color: rgb(0, 0, 0);
  margin-left: auto;
  margin-right: auto;
}
 
.detailsCard-header {
  font-weight: 600;
  text-align: center;
  margin-bottom: 50px;
}
 
.detailsCard-crawl {
  text-align: justify;
}
 
.detailsCard-title {
  text-align: center;
}
 
.detailsCard-grid {
  display: grid;
  grid-auto-flow: row;
  grid-gap: 10px;
  margin: 0 auto;
}
 
@media (min-width: 650px) {
  .detailsCard-grid {
    grid-auto-flow: column;
  }
}
h3 {
  text-align: justify;
}
 
img {
  max-width: 190px;
  max-height: 280px;
  margin: 20px;
}
 
img:hover {
  transform: scale(1.25);
  border-radius: 10%;
  position: relative;
  z-index: 5;
}
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