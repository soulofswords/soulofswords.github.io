<script lang="ts">
	import '../app.css';
	let { children } = $props();
</script>

<main class="px-6">
	{@render children()}
</main>
