<template>
  <v-parallax :src="movie.featured_thumbnail_url" height="600">
    <v-layout row wrap>
      <v-flex sm12 md4 offset-md1 class="content" fill-height>
        <v-layout row wrap>
 
          <v-flex sm12 md10>
            <p class="title">{{ movie.title }}</p>
          </v-flex>
 
          <v-flex sm6 md4>
            <v-btn class="btn" large :to="'/watch/' + movie.id">Assistir</v-btn>
          </v-flex>
          <v-flex sm6 md4>
            <v-btn class="btn" large>+ Minha Lista</v-btn>
          </v-flex>
 
          <v-flex sm12 md12>
            <p class="subtitle">{{ movie.description }}</p>
          </v-flex>
        </v-layout>
      </v-flex>
    </v-layout>
  </v-parallax>
</template>
 
<script>
  export default {
    props: {
      movie: {
        type: Object,
        required: true,
      }
    },
    data () {
      return { }
    }
  }
</script>
 
<style scoped>
  .content {
    margin-top: 120px;
  }
  .title {
    font-size: 50px !important;
    font-family: 'Source Sans Pro';
    font-weight: 600;
    margin-bottom: 20px;
    text-shadow: 2px 2px 2px #000;
    line-height: 100%;
  } 
  .subtitle{
    font-size: 22px !important;
    font-family: 'Source Sans Pro';
    font-weight: 600;
    margin-top: 20px;
    text-shadow: 2px 2px 2px #000;
  }
  .btn {
    color: white;
    background-color: #00000080 !important;
  }
</style>