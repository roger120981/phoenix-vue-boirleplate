<template>
  <div class="vue-message">
    <button @click="sayHello()">Click me 2</button>
    <div v-if="showMessage">{{ message }}</div>
	
  </div>
</template>

<script>
export default {
  name: "demo",
  props: {
	title: String,
  },
  data() {
    return {
      message: "HELLOOOOOOOOOOOOOO!",
      showMessage: false
    }
  },
  methods: {
    sayHello() {
      this.showMessage = true
    }
  },
  created() {
    console.log("Vue demo component created");
  }
}
</script>

 
<style>
.vue-message {
  text-align: center;
  font-size: 2em;
}
</style>