<script lang="ts">
    import { inview } from "svelte-inview";
    import soulofswords from "$lib/assets/soulofswords.svg";
    import { fly } from "svelte/transition";

    let isInView = $state(false);

    const handleChange = (event: CustomEvent) => {
        isInView = event.detail.inView;
    };
</script>

<section
    class="flex flex-col gap-6 xl:flex-row items-center justify-center mx-auto lg:max-w-2/3 h-full w-full"
>
    <img
        class="w-[340px] h-[calc(100vh-260px)] md:h-[calc(100vh-200px)] scale-90 hover:scale-100 transition-all duration-400 ease-in-out select-none scale-up"
        src={soulofswords}
        alt="Soul of Swords"
    />
    <article
        use:inview={{ threshold: 0.5 }}
        oninview_change={handleChange}
        class="w-full h-[calc(100vh-200px)] flex flex-col items-center justify-center"
    >
        {#if isInView}
            <p
                transition:fly={{ y: 60, duration: 1000, opacity: 0 }}
                class="text-lg text-justify px-6 max-w-4/5 lg:max-w-full"
            >
                Once a lost soul in a crumbling city, I was saved by Baimeimo—a
                magical, shapeshifting singer. But peace didn’t last: the Royal
                Court’s curse trapped me in a sword, making me part legend, part
                weapon. Freed decades later by a daring royal, I gained the
                power to shift forms for those who call upon me. My story is
                shaped by music, magic, and the hope for freedom—an
                ever-evolving tale waiting to be continued
            </p>
        {/if}
    </article>
</section>
