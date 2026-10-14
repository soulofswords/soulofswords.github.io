<script lang="ts">
    import { vtuberApp } from '$lib/app-showcase';
    import { Button } from '$lib/components/ui/button';

    let playingVideos = $state<string[]>([]);
</script>

<section class="mx-auto w-full max-w-5xl px-6 pt-24 pb-12 sm:px-10">
    <p class="text-sm font-medium tracking-widest text-secondary uppercase">Made by Soul of Swords</p>
    <h2 class="mt-3 text-4xl font-bold text-primary sm:text-6xl">Apps</h2>
    <p class="mt-4 max-w-2xl text-lg text-muted-foreground">Explore what I'm creating beyond the stream.</p>

    <article class="mt-8 rounded-2xl border bg-card p-6 text-card-foreground sm:p-10">
        <p class="text-sm font-medium text-secondary">AI companion · VTuber tools · Windows beta</p>
        <h3 class="mt-2 text-2xl font-bold sm:text-3xl">{vtuberApp.name}</h3>
        <p class="mt-4 max-w-3xl leading-relaxed">{vtuberApp.description}</p>
        {#if vtuberApp.projectUrl}
            <div class="mt-6 flex flex-wrap gap-3">
                <Button href={vtuberApp.downloadUrl} target="_blank" rel="noopener noreferrer">Download for Windows</Button>
                <Button href={vtuberApp.projectUrl} variant="outline" target="_blank" rel="noopener noreferrer">Read more on GitHub</Button>
                <Button href={vtuberApp.communityUrl} variant="outline" target="_blank" rel="noopener noreferrer">Join the Sakura Discord</Button>
            </div>
        {/if}
        <div class="mt-8 grid gap-6 sm:grid-cols-2">
            {#each vtuberApp.features as feature}
                <div class="rounded-xl border bg-background/50 p-5">
                    <h4 class="font-semibold text-primary">{feature.title}</h4>
                    <p class="mt-2 text-sm leading-relaxed text-muted-foreground">{feature.description}</p>
                </div>
            {/each}
        </div>
        <div class="mt-8 border-t pt-6 text-sm leading-relaxed text-muted-foreground">
            <h4 class="font-semibold text-foreground">Before you start</h4>
            <p class="mt-2">Available for Windows 10/11 x64 and currently in beta. Bring your own character models; models are not bundled. Gemini needs your own API key and an internet connection. Local AI models are optional downloads.</p>
            <p class="mt-2">Start with 8 GB RAM and 5 GB free storage, plus room for your assets. 16 GB RAM and a dedicated GPU are recommended for complex avatars or streaming; local AI may need more resources. These are suggested targets, not tested minimums.</p>
        </div>
    </article>

    <section class="mt-10" aria-labelledby="app-videos">
        <h3 id="app-videos" class="text-2xl font-bold">Watch the app in action</h3>
        <p class="mt-3 text-muted-foreground">See VTuber Mode and Companion Mode below. Sakura Companion includes both.</p>
        {#if vtuberApp.videos.length}
            <div class="mt-6 grid gap-6 md:grid-cols-2">
                {#each vtuberApp.videos as video (video.id)}
                    <article class="overflow-hidden rounded-xl border bg-card">
                        {#if playingVideos.includes(video.id)}
                        <iframe
                            class="aspect-video w-full border-0"
                            src={`https://www.youtube-nocookie.com/embed/${video.id}?autoplay=1${video.start ? `&start=${video.start}` : ''}`}
                            title={video.title}
                            loading="lazy"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                            referrerpolicy="strict-origin-when-cross-origin"
                            allowfullscreen
                        ></iframe>
                        {:else}
                            <button
                                type="button"
                                class="group relative block aspect-video w-full cursor-pointer overflow-hidden bg-muted focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-primary"
                                aria-label={`Play ${video.title}`}
                                onclick={() => playingVideos = [...playingVideos, video.id]}
                            >
                                <img
                                    src={`https://i.ytimg.com/vi/${video.id}/hqdefault.jpg`}
                                    alt=""
                                    width="480"
                                    height="360"
                                    loading="lazy"
                                    decoding="async"
                                    class="h-full w-full object-cover"
                                />
                                <span class="absolute inset-0 flex items-center justify-center bg-black/20 group-hover:bg-black/30">
                                    <span class="rounded-full bg-primary p-4 text-primary-foreground shadow-lg">
                                        <svg width="28" height="28" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true"><path d="M8 5v14l11-7z" /></svg>
                                    </span>
                                </span>
                            </button>
                        {/if}
                        <div class="p-5">
                            <h4 class="font-semibold">{video.title}</h4>
                            <a class="mt-2 inline-block text-sm text-primary underline underline-offset-4" href={`https://www.youtube.com/watch?v=${video.id}${video.start ? `&t=${video.start}s` : ''}`} target="_blank" rel="noopener noreferrer">Watch on YouTube</a>
                        </div>
                    </article>
                {/each}
            </div>
        {:else}
            <p class="mt-4 text-muted-foreground">App videos will be shared here.</p>
        {/if}
    </section>
</section>
