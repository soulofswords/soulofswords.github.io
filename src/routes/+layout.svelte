<script lang="ts">
	import "../app.css";
	import Header from "../components/Header.svelte";
	import Footer from "../components/Footer.svelte";

	let { children } = $props();
</script>

<div class="flex flex-col gap-4 min-h-dvh min-w-full border p-6">
	<Header />
	<main class="flex-1 border rounded-2xl">
		{@render children()}
	</main>
	<Footer />
</div>
