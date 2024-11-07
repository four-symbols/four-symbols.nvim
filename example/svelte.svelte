<!-- Svelte Language Feature Coverage Example -->
<script lang="ts">
    // 1. Basic Variables and Reactive Statements
    let count: number = 0;
    let name: string = "Svelte";

    // Reactive statement - `$:` 表示依赖更新
    $: greeting = `Hello, ${name}! Count is ${count}`;

    // 2. Functions and Event Handlers
    function increment() {
        count += 1;
    }

    function handleClick() {
        alert(`Clicked! Count is now ${count}`);
    }

    // 3. Reactive Stores
    import { writable, derived } from 'svelte/store';

    const score = writable(0);
    const doubleScore = derived(score, $score => $score * 2);

    function updateScore() {
        score.update(n => n + 1);
    }

    // 4. Custom Events
    import { createEventDispatcher } from 'svelte';

    const dispatch = createEventDispatcher();

    function notify() {
        dispatch('message', { text: 'Hello from Svelte!' });
    }

    // 5. Component Props
    export let color: string = "blue";
</script>

<style>
    /* 6. Scoped CSS */
    h1 {
        color: var(--color, blue);
    }

    .counter {
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    button {
        margin: 5px;
        padding: 10px;
        background-color: #eee;
        border: none;
        cursor: pointer;
    }
</style>

<div class="counter">
    <!-- 7. HTML and Bindings -->
    <h1>{greeting}</h1>
    <input bind:value={name} placeholder="Enter your name" />

    <!-- 8. Event Handling -->
    <button on:click={increment}>Increment Count</button>
    <button on:click={handleClick}>Show Count</button>

    <!-- 9. Custom Events -->
    <button on:click={notify}>Notify Parent</button>

    <!-- 10. Two-way Binding with Stores -->
    <div>
        <p>Score: {$score}</p>
        <p>Double Score: {$doubleScore}</p>
        <button on:click={updateScore}>Increase Score</button>
    </div>
</div>

<!-- 11. If Block -->
{#if count > 5}
    <p>Count is greater than 5!</p>
{:else if count > 0}
    <p>Count is positive but 5 or less.</p>
{:else}
    <p>Count is zero or negative.</p>
{/if}

<!-- 12. Each Block -->
<ul>
    {#each [1, 2, 3, 4, 5] as item}
        <li>Item: {item}</li>
    {/each}
</ul>

<!-- 13. Await Block (Async Data Handling) -->
{#await new Promise(resolve => setTimeout(() => resolve("Data loaded!"), 2000))}
    <p>Loading...</p>
{:then data}
    <p>{data}</p>
{:catch error}
    <p>Error loading data: {error}</p>
{/await}

<!-- 14. Slot Usage for Component Composition -->
<ComponentWithSlot>
    <span slot="header">This is the header slot content</span>
    <p>This is the default slot content</p>
    <span slot="footer">This is the footer slot content</span>
</ComponentWithSlot>

<script>
    // 15. Importing Components
    import ComponentWithSlot from './ComponentWithSlot.svelte';
</script>
