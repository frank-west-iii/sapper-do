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

<div class="max-w-sm rounded overflow-hidden shadow-lg">
  <div class="p-12 flex flex-col items-center">
    <div class="mb-4">
      <a rel=prefetch href="/todos/edit-{todo.id}">{todo.title}</a>
    </div>
    <div>
      <input type="checkbox" bind:checked={todo.completed} on:change={handleChange} />
    </div>
  </div>
</div>
