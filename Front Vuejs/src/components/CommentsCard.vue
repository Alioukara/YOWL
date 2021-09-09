<template>
  <div id="CommentCard">
    <label>{{ comment.user_nickname }} : </label>
    <div class="CommentCard-header">
      {{ comment.comment_content }}
     
      <img @click="deleteComment($comment)"
        class="comment-btn-delete"
        src="https://img.icons8.com/emoji/48/000000/cross-mark-button-emoji.png"
      />
    </div>
  </div>
</template>
 
<script>
import axios from 'axios'
export default {
  name: "commentsCard",
  props: {
    comment: Object,
  },
  methods: {
    deleteComment() {
      var config = {
  method: 'delete',
  url: process.env.VUE_APP_ENDPOINT +'/api/comments/'+ this.comment.id,
  withCredentials: false,
  headers: { 
   
    Authorization: 'Bearer ' + localStorage.getItem('token'), 
    'Content-Type': 'application/json',
    
  },
  
};

axios(config)
.then(function (response) {
  console.log(JSON.stringify(response.data));
})
.catch(function (error) {
  console.log(error);
});
    }
  },
};
</script>
<style scoped>
.CommentCard {
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
 
label {
  margin-left: 20px;
}
 
.CommentCard-header {
  font-weight: 600;
  text-align: center;
  margin-bottom: 50px;
  background-color: white;
  border-radius: 20px;
  width: 90%;
  margin-left: auto;
  margin-right: auto;
}
 
.CommentCard-title {
  text-align: center;
}
 
.CommentCard-grid {
  display: grid;
  grid-auto-flow: row;
  grid-gap: 10px;
}
 
@media (min-width: 650px) {
  .FilmsCard-grid {
    grid-auto-flow: column;
  }
}
 
.comment-btn-delete {
  max-height: 25px;
  max-width: 25px;
  vertical-align: middle;
}
 
div {
  display: block;
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
</style>