<template>
<div>
<form class="form-horizontal">
  <div class="form-group">
    <label for="selectType" class="col-sm-2 control-label">类&nbsp;&nbsp;&nbsp;&nbsp;型</label>
    <div class="col-sm-10">
      <div class="form-inline form-group">
        <select id="selectType" v-model="type" class="dropdown form-control item" @change="changeOptions">
          <option v-for="(type,index) in types" :key="index" :value="type.id">{{type.typer}}</option>
        </select>
      </div>
    </div>
  </div>
  <!--题目-->
  <div class="form-group">
    <label for="question" class="col-sm-2 control-label">题&nbsp;&nbsp;&nbsp;&nbsp;目</label>
    <div class="col-sm-10">
      <div class="form-group" >
        <input type="text" class="form-control item" id="question" placeholder="请输入题目" v-model="question">
      </div>
    </div>
  </div>
  <div class="form-group">
    <label for="sec_question" class="col-sm-2 control-label">总比重</label>
    <div class="col-sm-10">
      <div class="form-group" >
        <input type="text" class="form-control item" id="sec_question" placeholder="输入总比重值" v-model="rows">
        </input>
      </div>
    </div>
  </div>
  <!--<div class="form-group">
    <label for="sec_question" class="col-sm-2 control-label">列标题</label>
    <div class="col-sm-10">
      <div class="form-group" >
        <textarea type="text" class="form-control item" id="sec_question" placeholder="输入列标题,换行分割" v-model="columns">
        </textarea>
      </div>
    </div>
  </div>-->
  <!--选项-->
  <div class="form-group">
    <label for="inputText" class="col-sm-2 control-label">选&nbsp;&nbsp;&nbsp;&nbsp;项</label>
    <div class="col-sm-10">
      <div class="form-inline form-group" v-for="(option,index) in options" :key="index" >
        <input type="text" class="form-control item" id="inputText" placeholder="请输入选项"
               :value="option.content"
               v-model="option.content">
        <button type="button" class="btn btn-default" @click="delOption(index)">删除选项</button>
      </div>
    </div>
  </div>
  <!--插槽-->
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label"></label>
    <slot></slot>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label"></label>
    <!--按钮-->
    <!--<button type="button" class="btn btn-success btn-sm" @click="addQuestion()">增加题目</button>-->
    <button type="button" class="btn btn-success btn-sm" @click="addOption()">增加选项</button>
    <button type="button" class="btn btn-primary btn-sm" @click="submitRadio">完成提交</button>
    </div>
</form>
</div>
</template>

<script>
export default {
  data () {
    return {
      options: [
        {
          content: '',
          isAddition: false
        },
        {
          content: '',
          isAddition: false
        }
      ],
      add_form: {},
      question: '',
      sec_question: '',
      description: '',
      rows: '',
      columns: '',
      type: this.$route.params.type,
      isRequired: true,
      selectContent: [],
      additional: '',
      types: [
        {
          id: 13,
          typer: '比重题',
          label: '比重题'
        }
      ]
    }
  },
  methods: {
    changeOptions () {
      if (this.type === 6) {
        this.options.splice(0)
      } else {
        const tempoptions = [
          {
            content: '',
            isAddition: false
          },
          {
            content: '',
            isAddition: false
          }
        ]
        this.options = tempoptions
      }
    },
    addOption () {
      const tempdata = {
        content: '',
        isAddition: false
      }
      this.options.push(tempdata)
    },
    addQuestion () {
      const tempdata = {
        content: ''
      }
      this.question.push(tempdata)
    },
    delOption (index) {
      this.options.splice(index, 1)
    },
    submitRadio () {
      this.add_form.question = this.question
      this.add_form.options = this.options
      this.add_form.description = this.description
      this.add_form.type = this.type
      this.add_form.isRequired = this.isRequired
      this.add_form.additioal = this.additional
      this.add_form.selectContent = this.selectContent
      const rowsData = this.rows ? this.rows.split('\n') : []
      // 重构rowsData
      this.add_form.rows = rowsData.map(item => ({
        content: item
      }))
      const columnsData = this.columns ? this.columns.split('\n') : []
      this.add_form.columns = columnsData.map(item => ({
        content: item
      }))
      const data = Object.assign({}, this.add_form)
      this.$store.dispatch('addQuestion', data)
      const optionsTemp = [
        {
          content: '',
          isAddition: false
        },
        {
          content: '',
          isAddition: false
        }
      ]
      this.add_form = {}
      this.options = optionsTemp
    }
  },
  watch: {
    $route: function (value) {
      this.type = value.params.type * 1
    }
  }
}
</script>

<style>
  .item {
    width: 200px;
    margin: 5px;
  }
</style>
