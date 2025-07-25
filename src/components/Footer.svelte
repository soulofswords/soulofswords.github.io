<script>
    const year = new Date().getFullYear();
</script>

<footer class="flex items-center justify-between px-2 text-sm md:text-base">
    <p>&copy;{year} Soul of Swords</p>
    <slot />
</footer>
