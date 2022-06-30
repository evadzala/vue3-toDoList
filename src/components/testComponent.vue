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
			// 控制JS變數使其產生閃爍效果
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
	// css利用v-bind綁定JS變數
	opacity: v-bind(opacity);
}

</style>
