<script lang="ts">
	import "../app.css";
	import Header from "../components/Header.svelte";
	import Footer from "../components/Footer.svelte";

	let { children } = $props();
</script>

<div class="flex flex-col mx-auto gap-4 min-h-dvh max-w-4/5 p-6">
	<Header />
	<main class="flex-1 border rounded-2xl">
		{@render children()}
	</main>
	<Footer />
</div>
