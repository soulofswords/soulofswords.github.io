<script lang="ts">
    import { page } from "$app/state";
    import Footer from "$lib/components/footer.svelte";
    import Header from "$lib/components/header.svelte";
    import { Button } from "$lib/components/ui/button/index.js";
    import { ScrollArea } from "$lib/components/ui/scroll-area/index.js";
    import { cn } from "@/utils";
    import { ModeWatcher } from "mode-watcher";
    import "../app.css";
    import { URL } from "../consts";

    let { children } = $props();
</script>

<svelte:head>
    <title>Soul of Swords {page.data.title && `: ${page.data.title}`}</title>

    <meta
        name="keywords"
        content="Soul of Swords, sos, soul, vtuber, live stream, soulofswords"
    />
    <meta name="author" content="Soul of Swords" />

    <!-- HTML Meta Tags -->
    <meta name="description" content={page.data.description} />
    <meta property="og:logo" content={`${URL}/sos-logo.svg`} />

    <!-- Facebook Meta Tags -->
    <meta property="og:url" content={page.url.href} />
    <meta property="og:type" content="website" />
    <meta property="og:title" content={page.data.title} />
    <meta property="og:description" content={page.data.description} />
    <meta property="og:image" content={`${URL}/sos-og.png`} />

    <!-- Twitter / X Meta Tags -->
    <meta name="twitter:card" content="summary_large_image" />
    <meta property="twitter:domain" content={URL} />
    <meta property="twitter:url" content={page.url.href} />
    <meta name="twitter:title" content={page.data.title} />
    <meta name="twitter:description" content={page.data.description} />
    <meta name="twitter:image" content={`${URL}/sos-og.png`} />
</svelte:head>

<ModeWatcher />
<div class="flex flex-col max-w-11/12 min-h-screen h-full mx-auto">
    <Header />
    <ScrollArea
        id="main"
        class="flex-1 flex flex-col items-center justify-center rounded-lg border md:p-4 h-full w-full max-h-[calc(100vh-210px)] md:max-h-[calc(100vh-140px)] overflow-clip"
    >
        <div
            class="absolute grid grid-cols-2 gap-2 p-4 mx-auto z-50 backdrop-blur-2xl w-full sm:w-fit sm:backdrop-blur-none"
        >
            <Button
                onclick={() => {
                    window.location.href = "/";
                }}
                variant="outline"
                class={cn(
                    "hover:cursor-pointer active:scale-95",
                    page.route.id === "/" &&
                        "shadow-[0px_0px_4px_1px_rgba(240,_105,_180,_0.8)]",
                )}>Home</Button
            >
            <Button
                onclick={() => {
                    window.location.href = "/lore";
                }}
                variant="outline"
                class={cn(
                    "hover:cursor-pointer active:scale-95",
                    page.route.id === "/lore" &&
                        "shadow-[0px_0px_4px_1px_rgba(240,_105,_180,_0.8)]",
                )}>Lore</Button
            >
        </div>
        {@render children?.()}
    </ScrollArea>
    <Footer />
</div>

<style>
    @keyframes scaleUp {
        0% {
            opacity: 0;
            transform: scale(0.9);
        }
        100% {
            opacity: 1;
            transform: scale(1);
        }
    }

    @keyframes fadeIn {
        0% {
            opacity: 0;
        }
        100% {
            opacity: 1;
        }
    }

    @keyframes slideInRighttoLeft {
        0% {
            transform: translateX(10%);
            opacity: 0;
        }
        100% {
            transform: translateX(0);
            opacity: 1;
        }
    }

    @keyframes slideInLefttoRight {
        0% {
            transform: translateX(-10%);
            opacity: 0;
        }
        100% {
            transform: translateX(0);
            opacity: 1;
        }
    }

    :global(.scale-up) {
        animation: scaleUp 0.6s ease-in-out forwards;
        transition: transform 0.6s ease-in-out forwards;
    }

    :global(.fade-in) {
        animation: fadeIn 0.6s ease-in-out forwards;
        transition: transform 0.6s ease-in-out forwards;
    }

    :global(.slide-in-right-to-left) {
        animation: slideInRighttoLeft 1s ease-in-out forwards;
        transition: transform 0.6s ease-in-out forwards;
    }

    :global(.slide-in-left-to-right) {
        animation: slideInLefttoRight 1s ease-in-out forwards;
        transition: transform 0.6s ease-in-out forwards;
    }
</style>
