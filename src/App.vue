<template>
  <!-- <img alt="Vue logo" src="./assets/logo.png"> -->
  <testComponent :msg="forTestComponent"></testComponent>
  <ToDoList :msg="forTestComponent"></ToDoList>
  <!-- <HelloWorld msg="Welcome to Your Vue.js App"/> -->
</template>

<script>
// import HelloWorld from './components/HelloWorld.vue'
import ToDoList from './components/toDoList.vue'
import testComponent from './components/testComponent.vue'
import { ref } from 'vue'

export default {
  name: 'App',
  components: {
    // HelloWorld,
    ToDoList,
    testComponent
  },
  setup () {
    const forTestComponent = ref('toDoList')

    return {
      forTestComponent
    }
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
