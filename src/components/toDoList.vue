<template lang="pug">
.test {{msg}}
.inputBox
  input.inputSomeThings(v-model="inputContent" v-on:keyup.enter="addSomeThingInList")
  button(@click="addSomeThingInList") add
div.checkList
  div.eachItem(v-for="(item,index) in checkList")
    input(type="checkbox" v-model="item.isCheck")
    input(v-if="item.isEdit" v-model="item.content" v-on:keyup.enter="(item.isEdit && item.content) ? item.isEdit = !item.isEdit : item.isEdit")
    span(v-else) {{ item.content }}
    .actButton
      .edit(@click="item.isEdit = !item.isEdit") Edit
      .delete(@click="deleteItem(index)") Delete

</template>
<script>
import { ref, reactive } from 'vue'

export default {
  name: 'toDoList',
  props: {
    msg: String
  },
  setup () {
    const checkList = reactive([])
    const inputContent = ref(null)
    const isEdit = ref(false)

    function addSomeThingInList ()  {
      if (inputContent.value) {
        let item = {
          label: '',
          content: inputContent.value,
          isCheck: false,
          isEdit: false
        }
  
        checkList.push(item)
      }

      inputContent.value = null
    }

    // function editItem (item,index) {
    //   item.isEdit = !item.isEdit
    // }

    function deleteItem (index) {
      checkList.splice(index, 1)
    }

    return {
      checkList,
      inputContent,
      isEdit,
      addSomeThingInList,
      // editItem,
      deleteItem
    }
  }
}
</script>

<style lang="scss" scoped>
.checkList {
  display: inline-grid;
}
.eachItem {
  display: inline-flex;
}
.actButton {
  display: flex;
  cursor: pointer;

  .edit {
    color: blue;
  }
  .delete {
    color: red;
  }
}
</style>