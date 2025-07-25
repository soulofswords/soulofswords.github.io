<script lang="ts">
	import "../app.css";
	import ArrowUp from "../components/ArrowUp.svelte";
	import Footer from "../components/Footer.svelte";
	import Header from "../components/Header.svelte";

	let { children } = $props();
</script>

<svelte:head>
	<title>Soul of Swords</title>
</svelte:head>

<div class="flex flex-col mx-auto gap-4 md:max-w-4/5 max-h-screen p-6">
    <Header />
    <main
        class="flex-1 flex flex-col gap-12 border rounded-2xl overflow-x-hidden overflow-y-scroll scroll-smooth snap-y snap-mandatory min-h-[calc(100dvh-14rem)] md:min-h-[calc(100dvh-12rem)] max-h-1/2"
        id="main-content"
    >
        {@render children()}
    </main>
    <Footer>
        <button
            onclick={() => {
                const main = document.querySelector("main");
                main?.scrollTo({
                    top: 0,
                    behavior: "smooth",
                });
            }}
            class="flex items-center cursor-pointer"
        >
            Scroll to Top
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
