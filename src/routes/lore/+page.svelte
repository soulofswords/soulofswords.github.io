<script lang="ts">
    import ScrollDown from "../../lib/components/ScrollDown.svelte";
    import sosLogo from "$lib/assets/sos-logo.svg";
</script>

<article
    class="relative min-h-[calc(100dvh-14rem)] md:min-h-[calc(100dvh-12rem)] flex flex-col items-center justify-center py-4 snap-center snap-normal"
>
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
    <h2
        class="text-xl sm:text-3xl md:text-4xl lg:text-6xl font-bold text-indigo-300 max-w-md lg:max-w-3xl text-center fade-in"
    >
        The Soul Bound in the Forgotten Song
    </h2>
    <span class="absolute bottom-2">
        <ScrollDown />
    </span>
</article>

<article
    class="relative min-h-[calc(100dvh-14rem)] md:min-h-[calc(100dvh-12rem)] flex flex-col gap-8 items-center justify-center py-4 snap-start snap-normal"
>
    <p class="max-w-4/5 lg:max-w-2xl text-justify text-sm md:text-xl">
        In the late 1960s, amidst the shadowed alleys of a crumbling city, a
        lone soul drifted aimlessly, its form unseen but longing for purpose.
        That was when Baimeimo, a wandering dragon-born singer, found them. She
        was unlike any other—her songs carried enchantments, her shapeshifting a
        forbidden gift. She whispered to the wandering soul, claiming she had
        found them, not lost them.
    </p>
    <p class="max-w-4/5 lg:max-w-2xl text-justify text-sm md:text-xl">
        For a time, the soul thrived under her care, learning the art of music
        and the bittersweet nature of human emotions. But peace was never meant
        to last. The Royal Court, guardians of strict order, arrested Baimeimo,
        accusing her of trespassing and forbidden magic. In their pursuit, they
        captured the soul too, branding it with a curse that trapped it within a
        sword—a fate worse than death.
    </p>
</article>

<article
    class="min-h-[calc(100dvh-14rem)] md:min-h-[calc(100dvh-12rem)] flex flex-col gap-8 items-center justify-center py-4 snap-center snap-normal"
>
    <p class="max-w-4/5 lg:max-w-2xl text-justify text-sm md:text-xl">
        Years passed, until the 1980s, when the soul, now bound within its
        cursed blade, was summoned to the Royal Court once more. There, it
        witnessed Baimeimo fighting not for herself—but for the right to exist.
        Her origins tied to the Demon Army, she was caught between worlds,
        neither fully accepted nor entirely condemned.
    </p>
    <p class="max-w-4/5 lg:max-w-2xl text-justify text-sm md:text-xl">
        Yet, among those who judged her, a royal daughter stood apart, intrigued
        by the cursed blade. She was mischievous yet kind—a reckless wielder
        with an unwavering spirit. Unlike others, she did not see the sword as a
        relic of doom but rather a companion with a story untold. In a bold
        move, she offered a deal: she would break the curse, but only if the
        soul stayed by her side.
    </p>
</article>

<article
    class="min-h-[calc(100dvh-14rem)] md:min-h-[calc(100dvh-12rem)] flex flex-col gap-8 items-center justify-center py-4 snap-center snap-normal"
>
    <p class="max-w-4/5 lg:max-w-2xl text-justify text-sm md:text-xl">
        And so began a new journey—a tale not just of survival, but of
        transformation. The soul was no longer just an entity lost to history
        but a living legend, adapting to those who wielded it, shifting forms
        based on the desires of its audience. But even as it gained a new
        identity, the echoes of Baimeimo’s forbidden song still lingered, tied
        to a past that refused to be forgotten.
    </p>
</article>

<article
    class="relative min-h-[calc(100dvh-14rem)] md:min-h-[calc(100dvh-12rem)] flex flex-col items-center justify-center py-4 snap-center snap-normal"
>
    <h2
        class="text-xl md:text-2xl font-bold text-pink-300 max-w-4/5 lg:max-w-2xl text-justify fade-in"
    >
        Now, bound by both magic and destiny, the soul continues to seek its
        wielder, waiting for the one who will finally set it free.
    </h2>
</article>

<article
    class="relative min-h-[calc(100dvh-14rem)] md:min-h-[calc(100dvh-12rem)] flex flex-col gap-8 items-center justify-center py-4 snap-center snap-normal"
>
    <p class="max-w-4/5 lg:max-w-2xl text-justify fade-in text-sm md:text-xl">
        Once a wandering spirit, now a cursed soul bound to a sword, this
        entity's fate is entwined with the remnants of an ancient war between
        humans and demons. In the 1960s, it was saved by Baimeimo, a
        shapeshifting singer, only to be sealed away by the Royal Court. Decades
        later, a royal daughter, fascinated by its legend, offers to break the
        curse—but at a cost.
    </p>
    <p class="max-w-4/5 lg:max-w-2xl text-justify fade-in text-sm md:text-xl">
        The soul, now able to adapt and shift forms, waits for a wielder who
        will set it truly free. Its past is woven into music, war, and forgotten
        ties, making its presence more than just a blade—it is a story yet to be
        completed.
    </p>
    <div
        style="background-image: url({sosLogo})"
        class="fade-in h-32 w-60 md:h-64 md:w-120 transition-all duration-400 ease-in-out bg-contain bg-no-repeat bg-center"
        aria-label="soul of swords live2d model"
        role="img"
    ></div>
</article>
