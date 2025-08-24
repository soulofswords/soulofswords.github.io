<script lang="ts">
    import ThemeToggle from "./theme-toggle.svelte";
    import HeaderSeparater from "$lib/components/header-separater.svelte";
</script>

<header
    class="flex flex-col md:flex-row items-center justify-between p-2 pt-4 pr-1 transition-all duration-200 ease-in-out"
>
    <h1
        class="scale-up text-xl md:text-2xl font-bold bg-gradient-to-tr from-primary hover:from-secondary to-secondary hover:to-primary bg-clip-text text-transparent"
    >
        <button
            onclick={() => {
                const viewport = document.querySelector(
                    '[data-slot="scroll-area-viewport"]',
                );
                viewport?.scrollTo({ top: 0, behavior: "smooth" });
            }}
        >
            Souls of Swords
        </button>
    </h1>
    <div class="flex items-center justify-between w-full md:w-fit">
        <p class="text-sm md:text-base md:mr-8 hover:text-secondary">
            I am the collector of lost souls
        </p>
        <ThemeToggle />
    </div>
</header>
<HeaderSeparater />
