<script lang="ts">
    import Footer from "$lib/components/footer.svelte";
    import Header from "$lib/components/header.svelte";
    import { ScrollArea } from "$lib/components/ui/scroll-area/index.js";
    import { ModeWatcher } from "mode-watcher";
    import "../app.css";
    let { children } = $props();
</script>

<ModeWatcher />
<div class="flex flex-col md:max-w-11/12 min-h-screen mx-auto">
    <Header />
    <ScrollArea
        class="flex-1 flex flex-col items-center justify-center rounded-lg border p-4 h-full w-full"
    >
        {@render children?.()}
    </ScrollArea>
    <Footer />
</div>
