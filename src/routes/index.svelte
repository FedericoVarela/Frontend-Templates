<script lang="ts" >
	let titulo : string = "Sapper Template"

  type TODO = [string, boolean]

	const todos : Array<TODO> = [
		["Clone the template", true],
		["Start the server", true],
		["Finish app", false],
  ]
  
    /* 
    TODO: Docker
    */

</script>

<style>
  h1 {
    text-align: center;
    margin: 0 auto;
  }

  h1 {
    font-size: 2.8em;
    text-transform: uppercase;
    font-weight: 700;
    margin: 0 0 0.5em 0;
  }

  @media (min-width: 480px) {
    h1 {
      font-size: 4em;
    }
  }
</style>

<svelte:head>
  <title>Sapper project template</title>
</svelte:head>

<h1>{titulo}</h1>

<h2>Checklist</h2>
<ul>
	{#each todos as [title, condition] }
		<b>{title}</b> {@html condition ? "<span> ✓ </span>" : ""} <br>
	{/each}
</ul>
