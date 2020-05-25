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

<a href="/todos">Todos</a>

<p>{todo.title}</p>
