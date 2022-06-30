<template lang="pug">
.test
	img.opacityTest(alt="Vue logo" src="../assets/logo.png")
	p.opacityTest {{msg}}
</template>

<script>
import { onMounted, ref } from 'vue'

export default {
	name: 'testComponent',
  props: {
    msg: String
  },
	setup () {
		const opacity = ref(0)

		onMounted(() => {
			setInterval(() => {
				opacity.value >= 1 && (opacity.value = 0)
				opacity.value += 0.05
			}, 100)
		})

		return {
			opacity
		}
	}
	
}
</script>

<style lang="scss" scoped>
.opacityTest {
	opacity: v-bind(opacity);
}

</style>
