<script lang="ts">
    import { page } from "$app/state";
</script>

<section class="flex flex-col items-center justify-center py-4 w-full h-full">
    <h1
        class="animate-pulse hover:animate-none text-8xl font-bold bg-gradient-to-tr from-indigo-300 to-pink-300 bg-clip-text text-transparent mb-2"
    >
        {page.status}
    </h1>
    <p class="text-3xl">{page.error?.message}</p>
    <a
        href="/"
        class="mt-6 px-4 py-2 bg-gradient-to-br from-secondary hover:from-primary to-primary hover:to-secondary text-primary-foreground rounded-xl shadow active:scale-95 transition-all duration-200 ease-in-out"
        >Go back to Home</a
    >
</section>
