<template>
  <v-app-bar flat short color="black" dark app>
    <v-toolbar-title>
      <img :src='logo' class="logo"/>
    </v-toolbar-title>
    <v-spacer/>
    <v-toolbar-items>
      <v-text-field
        label="Search"
        prepend-icon="search"
        class="hidden-sm-and-down pt-3 pr-5"
        color="red"
        clearable
      ></v-text-field>
      <v-menu top>
        <template v-slot:activator="{ on }">
          <v-btn icon v-on="on">
            <v-icon>account_box</v-icon>
          </v-btn>
        </template>
        <v-list dark>
          <v-list-item>
            <v-list-item-title>
              <a href="/users/edit">Details</a>
            </v-list-item-title>
          </v-list-item>
          <v-list-item>
            <v-list-item-title>
              <a href="/users/sign_out">Logout</a>
            </v-list-item-title>
          </v-list-item>
        </v-list>
      </v-menu>
    </v-toolbar-items>
  </v-app-bar>
</template>
  
<script>
 import Logo from '../../assets/logo.png';
 export default {
  data () {
   return {
    logo: Logo
   }
  }
}
</script>
 
<style scoped>
 .logo {
  width: 120px !important;
  margin-top: 15px;
 }

 a {
    text-decoration:none;
    color: white;
 }
</style>