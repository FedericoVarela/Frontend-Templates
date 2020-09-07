<script lang="ts">
  import { Router } from "@sveltech/routify";
  import { routes } from "../.routify/routes";

  let hola : string = "Hola"
  enum Si {
    COSO,
    AAAAAAAAA,
    SI,
    V_O_I_D
  }

  const boludeces : Array<Si> = [
    Si.COSO, Si.AAAAAAAAA, Si.AAAAAAAAA, Si.V_O_I_D
  ]
</script>

<style  global>
  @import "../static/global.css";
</style>

<h1>{hola}</h1>
<Router {routes} />

{#each boludeces as b }
  {b}
{/each}