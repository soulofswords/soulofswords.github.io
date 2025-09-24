<script lang="ts">
    import { ChevronDown } from "@lucide/svelte";
    import { blur, fade, fly } from "svelte/transition";
    import { inview } from "svelte-inview";

    let isInView = $state([false, false, false, false, false]);

    const handleChange = (index: number, event: CustomEvent) => {
        isInView[index] = event.detail.inView;
    };
</script>

<section
    class="flex flex-col gap-6 xl:grid xl:grid-cols-2 items-center justify-center mx-auto lg:max-w-4/5 h-full w-full xl:w-4/5"
>
    <article
        class="w-full h-[calc(100vh-300px)] flex flex-col items-center justify-center gap-4"
    >
        <h2
            class="text-4xl text-center md:text-6xl text-bold lg:text-left text-primary/80 px-6 sm:max-w-2/3 mb-2 scale-up"
        >
            The
            <span class="text-secondary animate-pulse">Soul</span>
            Bound
            <span class="text-secondary">in</span> the
            <span
                class="text-secondary hover:line-through hover:text-foreground transition-all duration-200 ease-in-out"
                >Forgotten</span
            > Song
        </h2>
    </article>

    <div class="block xl:hidden animate-bounce delay-100">
        <ChevronDown
            size={32}
            class="animate-in fade-in duration-700 ease-in"
        />
    </div>

    <article
        use:inview={{ threshold: 0.2 }}
        oninview_change={(e) => handleChange(0, e)}
        class="w-full h-[calc(100vh-200px)] flex flex-col items-center justify-center gap-6"
    >
        {#if isInView[0]}
            <p
                transition:fade={{ duration: 300 }}
                class="sm:text-lg text-justify px-6 sm:max-w-4/5 lg:max-w-full slide-in-left-to-right"
            >
                In the late 1960s, amidst the shadowed alleys of a crumbling
                city, a lone soul drifted aimlessly, its form unseen but longing
                for purpose. That was when Baimeimo, a wandering dragon-born
                singer, found them. She was unlike any other—her songs carried
                enchantments, her shapeshifting a forbidden gift. She whispered
                to the wandering soul, claiming she had found them, not lost
                them.
            </p>

            <p
                transition:fade={{ duration: 300 }}
                class="sm:text-lg text-justify px-6 sm:max-w-4/5 lg:max-w-full slide-in-right-to-left"
            >
                For a time, the soul thrived under her care, learning the art of
                music and the bittersweet nature of human emotions. But peace
                was never meant to last. The Royal Court, guardians of strict
                order, arrested Baimeimo, accusing her of trespassing and
                forbidden magic. In their pursuit, they captured the soul too,
                branding it with a curse that trapped it within a sword—a fate
                worse than death.
            </p>
        {/if}
    </article>

    <article
        use:inview={{ threshold: 0.6 }}
        oninview_change={(e) => handleChange(1, e)}
        class="w-full h-[calc(100vh-200px)] flex flex-col items-center justify-center gap-6"
    >
        {#if isInView[1]}
            <p
                transition:fly={{ y: 60, duration: 1000 }}
                class="sm:text-lg text-justify px-6 sm:max-w-4/5 lg:max-w-full"
            >
                Years passed, until the 1980s, when the soul, now bound within
                its cursed blade, was summoned to the Royal Court once more.
                There, it witnessed Baimeimo fighting not for herself—but for
                the right to exist. Her origins tied to the Demon Army, she was
                caught between worlds, neither fully accepted nor entirely
                condemned.
            </p>

            <p
                transition:fly={{ y: 60, duration: 1000 }}
                class="sm:text-lg text-justify px-6 sm:max-w-4/5 lg:max-w-full"
            >
                Yet, among those who judged her, a royal daughter stood apart,
                intrigued by the cursed blade. She was mischievous yet kind—a
                reckless wielder with an unwavering spirit. Unlike others, she
                did not see the sword as a relic of doom but rather a companion
                with a story untold. In a bold move, she offered a deal: she
                would break the curse, but only if the soul stayed by her side.
            </p>
        {/if}
    </article>

    <article
        use:inview={{ threshold: 0.5 }}
        oninview_change={(e) => handleChange(2, e)}
        class="w-full h-[calc(100vh-200px)] flex flex-col items-center justify-center gap-6"
    >
        {#if isInView[2]}
            <p
                transition:fade={{ duration: 300 }}
                class="sm:text-lg text-justify px-6 sm:max-w-4/5 lg:max-w-full"
            >
                And so began a new journey—a tale not just of survival, but of
                transformation. The soul was no longer just an entity lost to
                history but a living legend, adapting to those who wielded it,
                shifting forms based on the desires of its audience. But even as
                it gained a new identity, the echoes of Baimeimo’s forbidden
                song still lingered, tied to a past that refused to be
                forgotten.
            </p>
        {/if}
    </article>

    <article
        use:inview={{ threshold: 0.5 }}
        oninview_change={(e) => handleChange(3, e)}
        class="w-full h-[calc(100vh-200px)] flex flex-col items-center justify-center gap-6"
    >
        {#if isInView[3]}
            <h2
                transition:blur={{ duration: 600 }}
                class="text-xl md:text-4xl text-bold text-justify lg:text-left text-secondary/80 px-6 sm:max-w-4/5 mb-2"
            >
                Now, bound by both magic and destiny, the soul continues to seek
                its wielder, waiting for the one who will finally set it free.
            </h2>
        {/if}
    </article>

    <article
        use:inview={{ threshold: 0.5 }}
        oninview_change={(e) => handleChange(4, e)}
        class="w-full h-[calc(100vh-200px)] flex flex-col items-center justify-center gap-6"
    >
        {#if isInView[4]}
            <p
                transition:blur={{ duration: 600 }}
                class="sm:text-lg text-justify px-6 sm:max-w-4/5 lg:max-w-full"
            >
                Once a wandering spirit, now a cursed soul bound to a sword,
                this entity's fate is entwined with the remnants of an ancient
                war between humans and demons. In the 1960s, it was saved by
                Baimeimo, a shapeshifting singer, only to be sealed away by the
                Royal Court. Decades later, a royal daughter, fascinated by its
                legend, offers to break the curse—but at a cost.
            </p>

            <p
                transition:blur={{ duration: 600 }}
                class="sm:text-lg text-justify px-6 sm:max-w-4/5 lg:max-w-full"
            >
                The soul, now able to adapt and shift forms, waits for a wielder
                who will set it truly free. Its past is woven into music, war,
                and forgotten ties, making its presence more than just a
                blade—it is a story yet to be completed.
            </p>

            <img
                transition:fly={{ y: 60, duration: 1000, opacity: 0 }}
                class="w-[460px] h-80 scale-90 hover:scale-100 transition-all duration-400 ease-in-out select-none"
                src="sos-logo.svg"
                alt="Soul of Swords"
            />
        {/if}
    </article>
</section>
