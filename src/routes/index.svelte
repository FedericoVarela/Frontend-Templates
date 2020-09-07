<script lang="ts" >
	let titulo : string = "Template de Sapper"

	const elementos : Array<[string, boolean]> = [
		["Hola", true],
		["Chau", false],
		["Cosa", true],
		["Si", false],
		["AAAAAAAAAAAAAAAA", false],
	]
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
	{#each elementos as [titulo, condition] }
		<b>{titulo}</b> {@html condition ? "<span> ✓ </span>" : ""} <br>
	{/each}
</ul>
