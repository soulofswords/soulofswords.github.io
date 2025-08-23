<script lang="ts">
    import { page } from '$app/stores';
</script>

<section
    class="sos:relative sos:min-h-[calc(100dvh-14rem)] sos:md:min-h-[calc(100dvh-10rem)] sos:flex sos:flex-col sos:items-center sos:justify-center sos:py-4 sos:snap-center sos:snap-normal"
>
    <h1 class="sos:text-8xl sos:font-bold sos:bg-gradient-to-tr sos:from-indigo-300 sos:to-pink-300 sos:bg-clip-text sos:text-transparent sos:mb-2">{$page.status}</h1>
    <p class="sos:text-3xl">{$page.error?.message}</p>
</section>
