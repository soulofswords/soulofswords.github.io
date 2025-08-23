<script lang="ts">
    import { page } from "$app/stores";
</script>

<section
    class="relative min-h-[calc(100dvh-14rem)] md:min-h-[calc(100dvh-10rem)] flex flex-col items-center justify-center py-4 snap-center snap-normal"
>
    <h1
        class="text-8xl font-bold bg-gradient-to-tr from-indigo-300 to-pink-300 bg-clip-text text-transparent mb-2"
    >
        {$page.status}
    </h1>
    <p class="text-3xl">{$page.error?.message}</p>
</section>
