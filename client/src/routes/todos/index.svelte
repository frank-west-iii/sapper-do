<script>
  import { onMount } from 'svelte';

  let todos = [];

  onMount(async () => {
    const res = await fetch('http://localhost:3000/todos');
    todos = await res.json();
  });
</script>

{#each todos as todo}
  <p>{todo.title}</p>
{/each}
