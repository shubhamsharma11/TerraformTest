<!-- src/components/TaskList.vue -->
<template>
  <div>
    <h2>Task List</h2>
    {{ response }}
  </div>
</template>

<script>
export default {
  data() {
    return {
      response: ""
    };
  },
  mounted() {
    this.fetchTasks();
  },
  methods: {
    async fetchTasks() {
      try {
        const response = await this.$axios.get("http://localhost:3000/");
        console.log(response);
        this.response = response.data;
      } catch (error) {
        console.error("Error fetching tasks", error);
      }
    }
  }
};
</script>

<style scoped>
/* Add your component styles here */
</style>
