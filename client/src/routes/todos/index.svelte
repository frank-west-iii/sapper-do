<script context="module">
  export async function preload(page, session) {
    const res = await this.fetch('http://localhost:3000/todos');
    const todos = await res.json();

    return { todos };
  }
</script>

<script>
  export let todos = [];
</script>

{#each todos as todo}
  <div><a rel=prefetch href="{`/todos/${todo.id}`}">{todo.title}</a></div>
{/each}
