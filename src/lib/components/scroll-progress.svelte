<script lang="ts">
    import { onMount } from "svelte";

    let progress = $state(0);

    function updateProgress() {
        const scrollY = window.scrollY;
        const docHeight = document.documentElement.scrollHeight - window.innerHeight;
        progress = docHeight > 0 ? Math.min((scrollY / docHeight) * 100, 100) : 0;
    }

    onMount(() => {
        window.addEventListener("scroll", updateProgress, { passive: true });
        updateProgress();
        return () => window.removeEventListener("scroll", updateProgress);
    });
</script>

<div
    class="scroll-progress-bar"
    style="width: {progress}%"
    aria-hidden="true"
></div>

<style>
    .scroll-progress-bar {
        position: fixed;
        top: 0;
        left: 0;
        height: 3px;
        background: hsl(var(--secondary));
        transition: width 0.1s linear;
        z-index: 9999;
        box-shadow: 0 0 10px hsl(var(--secondary) / 0.5);
    }
</style>