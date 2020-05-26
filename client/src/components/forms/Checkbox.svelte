<script>
  export let checked = false;
  export let label = "";
</script>

<div class="md:flex md:items-center mb-6">
  <div class="md:w-1/3"></div>
  <label class="md:w-2/3 block text-gray-500 font-bold">
    <input class="mr-2 leading-tight" type="checkbox" bind:checked>
    <span class="text-sm">
      {label}
    </span>
  </label>
</div>
