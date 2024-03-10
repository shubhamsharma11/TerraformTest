import { createApp } from "vue";
import App from "./App.vue";
import axios from "axios";

const app = createApp(App);

// Set up Axios as a plugin
app.config.globalProperties.$axios = axios;

app.mount("#app");
