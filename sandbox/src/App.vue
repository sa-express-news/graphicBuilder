<template>
  <div id="app">
    <img alt="Vue logo" src="./assets/logo.png">
    <p>{{ META.prose }}</p>
    <HelloWorld msg="Welcome to Your Vue.js App"/>
  </div>
</template>

<script>
import HelloWorld from './components/HelloWorld.vue';
import data from '../data.json';

export default {
  name: 'app',
  data: function () { return data },
  components: {
    HelloWorld
  }
}
</script>

<style lang="scss">
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
