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
	<div class="px-6 py-4">
		<a rel=prefetch href="/todos/{todo.id}">{todo.title}</a>
		<input type="checkbox" bind:checked={todo.completed} on:change={handleChange} />
	</div>
</div>
