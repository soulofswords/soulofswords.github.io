<script lang="ts">
    import ScrollDown from "../components/ScrollDown.svelte";
</script>

<section
    class="relative min-h-[calc(100dvh-14rem)] md:min-h-[calc(100dvh-10rem)] flex flex-col items-center justify-center py-4 snap-center snap-normal"
>
    <div
        class="flex-1 fade-in size-80 scale-90 hover:scale-100 md:brightness-0 md:hover:brightness-[initial] transition-all duration-400 ease-in-out bg-[url('/soulofswords.svg')] bg-contain bg-no-repeat bg-center"
        aria-label="soul of swords live2d model"
        role="img"
    ></div>
    <span class="absolute bottom-6">
        <ScrollDown />
    </span>
</section>

<article
    class="relative min-h-[calc(100dvh-14rem)] md:min-h-[calc(100dvh-12rem)] flex flex-col items-center justify-center py-4 snap-center snap-normal"
>
    <p class="max-w-4/5 lg:max-w-2xl text-justify text-sm md:text-xl">
        Once a lost soul in a crumbling city, I was saved by Baimeimo—a magical,
        shapeshifting singer. But peace didn’t last: the Royal Court’s curse
        trapped me in a sword, making me part legend, part weapon. Freed decades
        later by a daring royal, I gained the power to shift forms for those who
        call upon me. My story is shaped by music, magic, and the hope for
        freedom—an ever-evolving tale waiting to be continued
    </p>
    <div
        class="border blur-3xl fade-in absolute -z-10 top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2"
    >
        <svg
            class="animate-[spin_6s_linear_infinite] opacity-50 w-screen"
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
