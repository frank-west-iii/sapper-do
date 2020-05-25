<script>
	export let todo;

  const handleChange = () =>
    fetch(`http://localhost:3000/todos/${todo.id}`, {
      method: 'PUT',
      body: JSON.stringify({ todo }),
      headers: {
        'Content-Type': 'application/json'
      }
    })
</script>


  <div>
    <a rel=prefetch href="/todos/{todo.id}">{todo.title}</a>
    <input type="checkbox" bind:checked={todo.completed} on:change={handleChange} />
  </div>
