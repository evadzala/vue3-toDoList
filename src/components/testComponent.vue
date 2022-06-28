<template lang="pug">
.test testComponent
	p {{msg}}
</template>
<script>
export default {
	name: 'testComponent',
  props: {
    msg: String
  }
	
}
</script>
