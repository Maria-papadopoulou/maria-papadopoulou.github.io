<template>
    <div id="app">
        <AppHeader />
        <main class="main-container">
            <router-view :key="$route.fullPath" />

        </main>
        <AppFooter />
    </div>
</template>

<script>
    import AppHeader from '@/components/AppHeader.vue';
    import AppFooter from '@/components/AppFooter.vue';
    import { ref, onMounted, provide } from 'vue';
    import { getProductsByCategory } from '@/database';

    export default {
        name: "App",
        components: { AppHeader, AppFooter },

        setup() {
            const variety = ref([]);
            const capsules = ref([]);
            const accessories = ref([]);
            const machines = ref([]);
            const beverages = ref([]);
            const allProducts = ref([]);  

            const fetchData = async (category, targetRef) => {
                try {
                    const products = await getProductsByCategory(category);
                    targetRef.value = products;
                    allProducts.value = [...allProducts.value, ...products]; 
                } catch (error) {
                    console.error(`Error loading ${category}: `, error);
                }
            };

            onMounted(async () => {
                await fetchData("variety", variety);
                await fetchData("capsules", capsules);
                await fetchData("accessories", accessories);
                await fetchData("machines", machines);
                await fetchData("beverages", beverages);
            });

            provide('allProducts', allProducts);  

            return { variety, capsules, accessories, machines, beverages, allProducts };
        },
    };
</script>


<style>
    #app {
        display: flex;
        flex-direction: column;
        min-height: 100vh;
    }

    .main-container {
        flex: 1;
        max-width: calc(1400px - 120px);
        width: 100%;
        margin: auto;
        padding-top: 100px;
    }
</style>
