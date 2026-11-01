<script lang="ts">
	import { onMount, onDestroy } from 'svelte';

	let isVisible = $state(false);
	let cursorX = $state(-100);
	let cursorY = $state(-100);

	// Sparkle particles
	let particles = $state<
		Array<{
			id: number;
			x: number;
			y: number;
			color: string;
			size: number;
			life: number;
		}>
	>([]);

	let particleId = 0;
	let lastEmit = 0;

	// Spring animation
	function spring(current: number, target: number, stiffness: number, damping: number) {
		const dt = 1 / 60;
		const force = (target - current) * stiffness;
		const velocity = (force - current * damping) * dt;
		return current + velocity;
	}

	function updatePhysics() {
		// Particle lifecycle - move and fade
		particles = particles
			.filter((p) => p.life > 0)
			.map((p) => ({ ...p, life: p.life - 16, x: p.x + (Math.random() - 0.5) * 0.5, y: p.y + (Math.random() - 0.5) * 0.5 }));

		requestAnimationFrame(updatePhysics);
	}

	onMount(() => {
		// Only enable on desktop pointer devices
		if (window.matchMedia('(pointer: coarse)').matches) return;

		const handleMouseMove = (e: MouseEvent) => {
			cursorX = e.clientX;
			cursorY = e.clientY;
			if (!isVisible) isVisible = true;

			// Emit sparkle particles on movement (throttled)
			const now = performance.now();
			if (now - lastEmit > 60) {
				lastEmit = now;
				const colors = ['#ff6ea7', '#ffb6c1', '#fff0f5', '#ffd1dc'];
				const newParticles = Array.from({ length: 2 }, () => ({
					id: particleId++,
					x: e.clientX,
					y: e.clientY,
					color: colors[Math.floor(Math.random() * colors.length)],
					size: 3 + Math.random() * 4,
					life: 500,
				}));
				particles = [...particles, ...newParticles].slice(-12);
			}
		};

		const handleMouseLeave = () => {
			isVisible = false;
		};

		window.addEventListener('mousemove', handleMouseMove);
		document.addEventListener('mouseleave', handleMouseLeave);

		updatePhysics();

		onDestroy(() => {
			window.removeEventListener('mousemove', handleMouseMove);
			document.removeEventListener('mouseleave', handleMouseLeave);
			cancelAnimationFrame((requestAnimationFrame as any).id);
		});
	});
</script>

{#if isVisible}
	<!-- Main cursor follower -->
	<div
		class="custom-cursor-follower"
		style="transform: translate3d({cursorX - 14}px, {cursorY - 14}px, 0)"
		aria-hidden="true"
	>
		<div class="cursor-inner-ring"></div>
	</div>

	<!-- Sparkle particles -->
	{#each particles as p}
		<div
			class="cursor-sparkle"
			style="transform: translate3d({p.x}px, {p.y}px, 0); width: {p.size}px; height: {p.size}px; background: {p.color}; box-shadow: 0 0 6px {p.color}; opacity: {p.life / 500}"
			aria-hidden="true"
		/>
	{/each}
{/if}

<style>
	.custom-cursor-follower {
		position: fixed;
		top: 0;
		left: 0;
		width: 28px;
		height: 28px;
		border-radius: 50%;
		border: 2px solid hsl(var(--secondary));
		background: rgba(255, 110, 167, 0.12);
		pointer-events: none;
		z-index: 9999;
		box-shadow:
			0 0 10px hsl(var(--secondary)),
			0 0 20px hsl(var(--secondary) / 0.5),
			inset 0 0 8px rgba(255, 255, 255, 0.3);
		transition: width 180ms ease, height 180ms ease, background 180ms ease, border-color 180ms ease;
		will-change: transform;
		animation: cursorPulse 2s ease-in-out infinite;
	}

	.custom-cursor-follower:hover {
		width: 46px;
		height: 46px;
		background: rgba(255, 110, 167, 0.25);
		border-color: #ffffff;
		box-shadow:
			0 0 16px #ffffff,
			0 0 30px hsl(var(--secondary)),
			0 0 50px hsl(var(--secondary) / 0.5),
			inset 0 0 12px rgba(255, 255, 255, 0.4);
	}

	.cursor-inner-ring {
		position: absolute;
		top: 50%;
		left: 50%;
		width: 14px;
		height: 14px;
		border-radius: 50%;
		border: 1px solid rgba(255, 255, 255, 0.6);
		animation: cursorRingSpin 3s linear infinite;
		transform: translate(-50%, -50%);
	}

	.cursor-sparkle {
		position: fixed;
		top: 0;
		left: 0;
		border-radius: 50%;
		pointer-events: none;
		z-index: 9998;
		will-change: transform, opacity;
	}

	@keyframes cursorPulse {
		0%, 100% {
			box-shadow:
				0 0 8px hsl(var(--secondary)),
				0 0 16px hsl(var(--secondary) / 0.5),
				inset 0 0 6px rgba(255, 255, 255, 0.2);
		}
		50% {
			box-shadow:
				0 0 14px hsl(var(--secondary)),
				0 0 28px hsl(var(--secondary) / 0.5),
				inset 0 0 10px rgba(255, 255, 255, 0.35);
		}
	}

	@keyframes cursorRingSpin {
		from { transform: rotate(0deg); }
		to { transform: rotate(360deg); }
	}

	@media (pointer: coarse), (prefers-reduced-motion: reduce) {
		.custom-cursor-follower,
		.cursor-sparkle {
			display: none;
		}
	}
</style>