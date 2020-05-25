<script context="module">
  export async function preload(page, session) {
    const res = await this.fetch(`http://localhost:3000/todos/${page.params.id}`);
    const todo = await res.json();

    return { todo };
  }
</script>

<script>
  export let todo = {}

  const handleSubmit = () => fetch(`http://localhost:3000/todos/${todo.id}`, {
    method: 'PUT',
    body: JSON.stringify({ todo }),
    headers: {
      'Content-Type': 'application/json'
    }
  })
</script>

<svelte:head>
<title>Todos - Edit - {todo.title}</title>
</svelte:head>

<a href="/todos">Todos</a> &gt;
<a href="/todos/{todo.id}">Show</a> &gt;
Edit

<form on:submit|preventDefault={handleSubmit}>
  <input type="text" bind:value={todo.title} />
  <input type="checkbox" bind:checked={todo.completed} />
  <button primary>Save</button>
</form>
