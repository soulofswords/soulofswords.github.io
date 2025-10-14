import type { PageLoad } from './$types';

export const load = (async () => {
    return {
        title: "Lore",
        description: "The Soul Bound in the Forgotten Song.. Read the lore of VTuber Soul of Swords !",
    };
}) satisfies PageLoad;
