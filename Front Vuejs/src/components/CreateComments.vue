<template>
  <div class="Create-Comment">
    <h3>Comments</h3>
    <form @submit.prevent="createComments">
      <textarea
        class="form-control-lg"
        type="text"
        v-model="newComment.comment_content"
      /><br />
      <button type="submit" class="btn-btn-success">Add Comment</button>
      <br />
    </form>
  </div>
</template>
 
<script>
export default {
  name: "Create-Comment",
  data: function () {
    return {
      newComment: {
        comment_content: "",
      },
    };
  },
  methods: {
    createComments() {
      this.$emit("create-new-comment", this.newComment);
      this.newComment = {};
    },
  },
};
</script>
 
<style scoped>
form {
  max-width: 780px;
  text-align: center;
}
 
.form-control-lg {
  width: 75%;
  max-width: 600px;
}
 
button.btn-btn-success {
  float: right;
}
</style>