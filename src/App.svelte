<script lang="ts">
  import { Router } from "@sveltech/routify";
  import { routes } from "../.routify/routes";

  let name: string = "World";

  type TODO = [string, boolean];
  const todos: Array<TODO> = [
    ["Clone the template", true],
    ["Run the server", true],
    ["Finish app", false],
  ];
</script>

<style global>
  @import "../static/global.css";
</style>

<Router {routes} />

<main>
  <h1>Hello {name}!</h1>
  <ul>
    {#each todos as t}
      <li>{t[0]}: {t[1] ? '✓' : ''}</li>
    {/each}
  </ul>
</main>
