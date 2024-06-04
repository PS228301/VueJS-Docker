<template>
  <div>
    <p v-if="isTrue">The value is true!</p>
    <p v-else>The value is false!</p>
  </div>
</template>

<script>
export default {
  data() {
    return {
      isTrue: true,
    };
  },
};
</script>
