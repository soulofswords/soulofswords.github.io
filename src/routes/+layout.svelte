<script lang="ts">
    import Footer from "$lib/components/footer.svelte";
    import Header from "$lib/components/header.svelte";
    import { Button } from "$lib/components/ui/button/index.js";
    import { ScrollArea } from "$lib/components/ui/scroll-area/index.js";
    import { ModeWatcher } from "mode-watcher";
    import "../app.css";
    import { cn } from "@/utils";
    import { page } from "$app/state";
    let { children } = $props();
</script>

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
