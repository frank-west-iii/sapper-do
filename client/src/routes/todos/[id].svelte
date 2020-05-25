<script context="module">
  export async function preload(page, session) {
    const res = await this.fetch(`http://localhost:3000/todos/${page.params.id}`);
    const todo = await res.json();

    return { todo };
  }
</script>

<script>
  export let todo = {}
</script>

<svelte:head>
<title>Todos - {todo.title}</title>
</svelte:head>

<a href="/todos">Todos</a> &gt; Show

<div>
  <a href="/todos/edit-{todo.id}">{todo.title}</a>
</div>
