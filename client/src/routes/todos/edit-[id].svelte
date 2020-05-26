<script context="module">
  export async function preload(page, session) {
    const res = await this.fetch(`http://localhost:3000/todos/${page.params.id}`);
    const todo = await res.json();

    return { todo };
  }
</script>

<script>
	import Button from '../../components/Button.svelte';
	import Checkbox from '../../components/forms/Checkbox.svelte';
	import TextInput from '../../components/forms/TextInput.svelte';

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
Edit

<form on:submit|preventDefault={handleSubmit}>
  <TextInput bind:value={todo.title} label="Title" name="title" />
  <Checkbox bind:checked={todo.completed} label="Completed?" />
  <div class="flex justify-end">
    <Button text="Save" />
  </div>
</form>
