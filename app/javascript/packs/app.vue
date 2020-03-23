<template>
  <v-app>
    <Header/>
    <v-content>
      <router-view></router-view>
    </v-content>
    <Footer/>
  </v-app>
</template>
 
<script>
  import Header from './components/shared/header.vue'
  import Footer from './components/shared/footer.vue'
  
  export default {
    data () {
      return {
        
      }
    },
    components: {
      'Footer': Footer,
      'Header': Header
    }
  }
</script>
 
<style>
  #app{
    background-color: #454545 !important;
  }
</style>