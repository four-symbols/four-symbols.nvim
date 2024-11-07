<!-- Vue Language Feature Coverage Example -->
<template>
  <!-- 1. Data Binding and Interpolation -->
  <div class="counter">
    <h1>{{ title }}</h1>
    <p>{{ message }}</p>

    <!-- 2. Event Handling -->
    <button @click="increment">Increment Count</button>
    <button @click="handleClick">Show Count</button>

    <!-- 3. Conditional Rendering -->
    <p v-if="count > 5">Count is greater than 5!</p>
    <p v-else-if="count > 0">Count is positive but 5 or less.</p>
    <p v-else>Count is zero or negative.</p>

    <!-- 4. List Rendering -->
    <ul>
      <li v-for="(item, index) in items" :key="index">Item: {{ item }}</li>
    </ul>

    <!-- 5. Two-way Binding -->
    <input v-model="name" placeholder="Enter your name" />

    <!-- 6. Computed Properties -->
    <p>Double Count: {{ doubleCount }}</p>

    <!-- 7. Watchers -->
    <p>Last Updated Name: {{ lastUpdatedName }}</p>

    <!-- 8. Components and Slots -->
    <ComponentWithSlot>
      <template #header>This is the header slot content</template>
      <template #default>This is the default slot content</template>
      <template #footer>This is the footer slot content</template>
    </ComponentWithSlot>
  </div>
</template>

<script lang="ts">
import { ref, computed, watch } from "vue";
import ComponentWithSlot from "./ComponentWithSlot.vue";

export default {
  name: "App",

  // 9. Define Component Props
  props: {
    color: {
      type: String,
      default: "blue",
    },
  },

  components: {
    ComponentWithSlot,
  },

  setup() {
    // 10. Reactive Variables and Data Properties
    const title = ref("Vue 3 Feature Coverage Example");
    const count = ref(0);
    const name = ref("");
    const lastUpdatedName = ref("");
    const items = ref([1, 2, 3, 4, 5]);

    // 11. Methods and Event Handling
    const increment = () => {
      count.value += 1;
    };

    const handleClick = () => {
      alert(`Clicked! Count is now ${count.value}`);
    };

    // 12. Computed Properties
    const doubleCount = computed(() => count.value * 2);

    // 13. Watchers
    watch(name, (newValue) => {
      lastUpdatedName.value = newValue;
    });

    return {
      title,
      count,
      name,
      lastUpdatedName,
      items,
      increment,
      handleClick,
      doubleCount,
    };
  },
};
</script>

<style scoped>
/* 14. Scoped CSS */
.counter {
  display: flex;
  flex-direction: column;
  align-items: center;
}

button {
  margin: 5px;
  padding: 10px;
  background-color: #eee;
  border: none;
  cursor: pointer;
}
</style>
