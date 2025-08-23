<script lang="ts">
    import ThemeToggle from "./theme-toggle.svelte";
</script>

<header class="flex flex-col md:flex-row items-center justify-between p-4 pr-2 transition-all duration-200 ease-in-out">
    <h1
        class="text-xl md:text-2xl font-bold bg-gradient-to-tr from-primary hover:from-secondary to-secondary hover:to-primary bg-clip-text text-transparent"
    >
        Souls of Swords
    </h1>
    <p class="text-sm md:text-base">I am the collector of lost souls</p>
    <ThemeToggle />
</header>
