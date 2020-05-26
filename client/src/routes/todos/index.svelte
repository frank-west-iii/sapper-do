<script context="module">
  export async function preload(page, session) {
    const res = await this.fetch('http://localhost:3000/todos');
    const todos = await res.json();

    return { todos };
  }
</script>

<script>
  import Row from './_components/Row.svelte';

  export let todos = [];
</script>

<style>
  .container {
    display: grid;
    grid-template-columns: 1fr 1fr 1fr 1fr;
    grid-column-gap: 2rem;
    grid-row-gap: 2rem;
  }
</style>

<svelte:head>
	<title>Todos</title>
</svelte:head>

<h2>Todos</h2>

<div class="container">
  {#each todos as todo}
    <Row {todo} />
  {/each}
</div>
