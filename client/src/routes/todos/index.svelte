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

<svelte:head>
	<title>Todos</title>
</svelte:head>

<h2>Todos</h2>

{#each todos as todo}
  <Row {todo} />
{/each}
