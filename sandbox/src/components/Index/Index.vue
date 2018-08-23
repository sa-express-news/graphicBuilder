<template>
    <div>
        <div class="graphic">
            <h1>{{ META.graphic_title }}</h1>
            <p class="subtext">{{ META.prose }}</p>

            <div id="graphic-container">
                <div v-for="(row, idx) in DATA" class="block-wrapper" :class="{ title: row.isTitle }" :key="`row-${idx}`">
                    <div class="content">
                        <div class="number">{{ commaSeparate(row.number) }}</div>
                        <div class="desc">{{ row.desc }}</div>
                    </div>
                    <hr v-if="row.isTitle" class="border" />
                </div>
            </div>

            <div class="footer">
                <ul>
                    <li v-if="META.note" class="note">*{{ META.note }}</li>
                    <li v-if="META.source">Source:&nbsp;
                        <a v-if="META.source_url" :href="META.source_url">{{ META.source }}</a>
                        <span v-else>{{ META.source }}</span>
                    </li>
                    <li v-if="META.credit">Credit: {{ META.credit }}</li>
                </ul>
            </div>
        </div>
    </div>
</template>
<script src="./Index.js"></script>
<style src="./Index.scss"></style>