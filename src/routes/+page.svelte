<script lang="ts">
    import soulofswords from "$lib/assets/soulofswords.svg";
    import ScrollDown from "$lib/components/ScrollDown.svelte";
</script>

<section
    class="sos:relative sos:min-h-[calc(100dvh-14rem)] sos:md:min-h-[calc(100dvh-10rem)] sos:flex sos:flex-col sos:items-center sos:justify-center sos:py-4 sos:snap-center sos:snap-normal"
>
    <div
        style="background-image: url({soulofswords})"
        class="sos:flex-1 sos:fade-in sos:size-80 sos:scale-90 sos:hover:scale-100 sos:transition-all sos:duration-400 sos:ease-in-out sos:bg-contain sos:bg-no-repeat sos:bg-center"
        aria-label="soul of swords live2d model"
        role="img"
    ></div>
    <ScrollDown />
</section>

<article
    class="sos:relative sos:min-h-[calc(100dvh-14rem)] sos:md:min-h-[calc(100dvh-12rem)] sos:flex sos:flex-col sos:items-center sos:justify-center sos:py-4 sos:snap-center sos:snap-normal"
>
    <p
        class="sos:max-w-4/5 sos:lg:max-w-2xl sos:text-justify sos:text-sm sos:md:text-xl"
    >
        Once a lost soul in a crumbling city, I was saved by Baimeimo—a magical,
        shapeshifting singer. But peace didn’t last: the Royal Court’s curse
        trapped me in a sword, making me part legend, part weapon. Freed decades
        later by a daring royal, I gained the power to shift forms for those who
        call upon me. My story is shaped by music, magic, and the hope for
        freedom—an ever-evolving tale waiting to be continued
    </p>
    <div
        class="sos:border sos:blur-3xl sos:fade-in sos:absolute sos:-z-10 sos:top-1/2 sos:left-1/2 sos:-translate-x-1/2 sos:-translate-y-1/2"
    >
        <svg
            class="sos:animate-[spin_6s_linear_infinite] sos:opacity-50 sos:w-screen"
            xmlns="http://www.w3.org/2000/svg"
            version="1.1"
            xmlns:xlink="http://www.w3.org/1999/xlink"
            viewBox="0 0 2000 2000"
            ><g
                ><g fill="hsl(341, 100%, 85%)" id="star"
                    ><path
                        d="M 500 500 C 1000 1000 1000 1000 1500 500 C 1000 1000 1000 1000 1500 1500 C 1000 1000 1000 1000 500 1500 C 1000 1000 1000 1000 500 500"
                        stroke-linecap="round"
                        stroke-linejoin="round"
                    ></path></g
                ></g
            ></svg
        >
    </div>
</article>
