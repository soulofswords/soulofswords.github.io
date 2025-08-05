<script lang="ts">
	import "../app.css";
	import ArrowUp from "../components/ArrowUp.svelte";
	import Footer from "../components/Footer.svelte";
	import Header from "../components/Header.svelte";
	import { page } from "$app/state";
	import { goto } from "$app/navigation";

	let { children } = $props();
</script>

<svelte:head>
	<title>Soul of Swords</title>
</svelte:head>

<div class="flex flex-col mx-auto gap-4 md:max-w-4/5 max-h-dvh p-6">
	<Header />
	<main
		class="relative flex-1 flex flex-col gap-12 border rounded-2xl overflow-x-hidden overflow-y-scroll scroll-smooth snap-y snap-mandatory min-h-[calc(100dvh-14rem)] md:min-h-[calc(100dvh-12rem)] max-h-1/2"
		id="main-content"
	>
		<ul
			class="sticky top-0 left-0 fade-in flex flex-col items-center gap-4 w-fit p-4 z-9"
		>
			<button
				onclick={() => {
					const main = document.querySelector("main");
					main?.scrollTo({
						top: 0,
						behavior: "smooth",
					});

					goto("/");
				}}
				class="cursor-pointer"
				aria-label="Home"
			>
				<li
					class="scale-95 hover:scale-100 hover:text-indigo-300 transition-all duration-200"
				>
					<svg
						xmlns="http://www.w3.org/2000/svg"
						width="24"
						height="24"
						viewBox="0 0 32 32"
						><path
							fill="currentColor"
							d="M16.81 4.3a1.25 1.25 0 0 0-1.62 0l-9.75 8.288a1.25 1.25 0 0 0-.44.953V26.5a.5.5 0 0 0 .5.5h5a.5.5 0 0 0 .5-.5v-7a2.5 2.5 0 0 1 2.5-2.5h5.004a2.5 2.5 0 0 1 2.5 2.5v7a.5.5 0 0 0 .5.5H26.5a.5.5 0 0 0 .5-.5V13.54a1.25 1.25 0 0 0-.44-.952zm-2.915-1.523a3.25 3.25 0 0 1 4.21 0l9.75 8.287A3.25 3.25 0 0 1 29 13.54V26.5a2.5 2.5 0 0 1-2.5 2.5h-4.996a2.5 2.5 0 0 1-2.5-2.5v-7a.5.5 0 0 0-.5-.5H13.5a.5.5 0 0 0-.5.5v7a2.5 2.5 0 0 1-2.5 2.5h-5A2.5 2.5 0 0 1 3 26.5V13.54a3.25 3.25 0 0 1 1.145-2.476z"
						/></svg
					>
				</li>
			</button>

			<button
				onclick={() => {
					const main = document.querySelector("main");
					main?.scrollTo({
						top: 0,
						behavior: "smooth",
					});

					goto("/lore");
				}}
				class="cursor-pointer"
				aria-label="Lore"
			>
				<li
					class="scale-95 hover:scale-100 hover:text-indigo-300 transition-all duration-200"
				>
					<svg
						xmlns="http://www.w3.org/2000/svg"
						width="24"
						height="24"
						viewBox="0 0 24 24"
						><path
							fill="currentColor"
							d="M0 3.75A.75.75 0 0 1 .75 3h7.497c1.566 0 2.945.8 3.751 2.014A4.5 4.5 0 0 1 15.75 3h7.5a.75.75 0 0 1 .75.75v15.063a.75.75 0 0 1-.755.75l-7.682-.052a3 3 0 0 0-2.142.878l-.89.891a.75.75 0 0 1-1.061 0l-.902-.901a3 3 0 0 0-2.121-.879H.75a.75.75 0 0 1-.75-.75Zm12.75 15.232a4.5 4.5 0 0 1 2.823-.971l6.927.047V4.5h-6.75a3 3 0 0 0-3 3ZM11.247 7.497a3 3 0 0 0-3-2.997H1.5V18h6.947c1.018 0 2.006.346 2.803.98Z"
						/></svg
					>
				</li>
			</button>
		</ul>
		{@render children()}
	</main>
	<Footer>
		<button
			onclick={() => {
				const main = document.querySelector("main");

				if (page.url.pathname === "/") {
					main?.scrollTo({
						top: 0,
						behavior: "smooth",
					});
				} else {
					goto("/");
				}
			}}
			class="flex items-center cursor-pointer"
		>
			Go to Top
			<ArrowUp class="h-5" />
		</button>
	</Footer>
</div>

<style>
	@keyframes fade-in {
		from {
			transform: scale(0.96);
			opacity: 0;
		}
		to {
			transform: scale(1);
			opacity: 1;
		}
	}

	@keyframes fade-out {
		from {
			transform: scale(1);
			opacity: 1;
		}
		to {
			transform: scale(0.96);
			opacity: 0;
		}
	}

	@keyframes slideInLeft {
		from {
			transform: translateX(10%);
			opacity: 0;
		}
		to {
			transform: translateX(0);
			opacity: 1;
		}
	}

	@keyframes slideInRight {
		from {
			transform: translateX(-10%);
			opacity: 0;
		}
		to {
			transform: translateX(0);
			opacity: 1;
		}
	}

	:global(.fade-in) {
		animation: fade-in 1s ease-in-out forwards;
	}

	:global(.fade-out) {
		animation: fade-out 1s ease-in-out forwards;
	}

	:global(.slide-in-left) {
		animation: slideInLeft 1s ease-in-out forwards;
	}

	:global(.slide-in-right) {
		animation: slideInRight 1s ease-in-out forwards;
	}
</style>
