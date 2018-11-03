<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
<title>登录</title>
<link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
<style>
  .el-row {
    margin-bottom: 20px;
    &:last-child {
      margin-bottom: 0;
    }
  }
  .el-col {
    border-radius: 4px;
  }
  .bg-purple-dark {
    background: #99a9bf;
  }
  .bg-purple {
    background: #d3dce6;
  }
  .bg-purple-light {
    background: #e5e9f2;
  }
  .grid-content {
    border-radius: 4px;
    min-height: 36px;
  }
  .row-bg {
    padding: 10px 0;
    background-color: #f9fafc;
  }
</style>
</head>
<body>
<div id="app" v-cloak>
<div>
<div class="el-box">
<el-row class="el-row-first">
<el-col :span="3">
ROW1: 
</el-col>
<el-col :span="21">
<el-input v-model="phone" placeholder="请输入手机号"></el-input>
</el-col>
</el-row>
<el-row>
<el-col :span="3">
ROW2: 
</el-col>
<el-col :span="21">
<el-input type="password" v-model="password" placeholder="密码"></el-input>
</el-col>
</el-row>
<el-button :loading="loading" class="btn" type="primary" @click="onSubmit" size="small">{{loginText}}</el-button>
<div class="link-group">
<a href="#" class="register">注册</a>
<a href="#" class="forget-pw">忘记密码</a>
</div>
</div>
</div>
<hr/>
<div style="border: 1px #ccc solid; width: 500px;">
<el-row>
<el-col :span="10">
<el-tree
  :data="data2"
  show-checkbox
  node-key="id"
  :default-expanded-keys="[2, 3]"
  :default-checked-keys="[5]"
  :props="defaultProps">
</el-tree>
</el-col>
<el-col :span="5">
<el-row>
<el-button type="primary" icon="el-icon-arrow-right"></el-button>
</el-row>
<el-row>
<el-button type="primary" icon="el-icon-arrow-left"></el-button>
</el-row>
</el-col>
<el-col :span="9">
<el-table
    :data="tableData3" 
    height="300px"
    tooltip-effect="dark"
    style="width: 100%"
    @selection-change="handleSelectionChange">
    <el-table-column
      type="selection"
      width="55">
    </el-table-column>
    <el-table-column
      prop="name"
      label="姓名"
      width="120">
    </el-table-column>
  </el-table>
</el-col>
</el-row>
</div>
<hr/>
<div>
<el-row>
  <el-col :span="8"><div class="grid-content bg-purple"></div></el-col>
  <el-col :span="8"><div class="grid-content bg-purple-light"></div></el-col>
  <el-col :span="8"><div class="grid-content bg-purple"></div></el-col>
</el-row>
</div>
</div>
</body>
<script src="https://unpkg.com/vue/dist/vue.js"></script>
<script src="https://unpkg.com/element-ui/lib/index.js"></script>
<script>
new Vue({
el: '#app',
data: {
phone: '',
password: '',
loading:false,
loginText:'登录',
data2: [{
    id: 1,
    label: '一级 1',
    children: [{
      id: 4,
      label: '二级 1-1',
      children: [{
        id: 9,
        label: '三级 1-1-1'
      }, {
        id: 10,
        label: '三级 1-1-2'
      }]
    }]
  }, {
    id: 2,
    label: '一级 2',
    children: [{
      id: 5,
      label: '二级 2-1',
      children: [{
    	  id: 51,
          label: '三级 2-1-1',
      }, {
    	  id: 52,
          label: '三级 2-1-2',
      }]
    }, {
      id: 6,
      label: '二级 2-2'
    }]
  }, {
    id: 3,
    label: '一级 3',
    children: [{
      id: 7,
      label: '二级 3-1'
    }, {
      id: 8,
      label: '二级 3-2'
    }]
  }],
  defaultProps: {
    children: 'children',
    label: 'label'
  }, 
  tableData3: [{
      date: '2016-05-03',
      name: '王小虎1',
      address: '上海市普陀区金沙江路 1518 弄'
    }, {
      date: '2016-05-02',
      name: '王小虎2',
      address: '上海市普陀区金沙江路 1518 弄'
    }, {
      date: '2016-05-04',
      name: '王小虎3',
      address: '上海市普陀区金沙江路 1518 弄'
    }, {
      date: '2016-05-01',
      name: '王小虎4',
      address: '上海市普陀区金沙江路 1518 弄'
    }, {
      date: '2016-05-08',
      name: '王小虎5',
      address: '上海市普陀区金沙江路 1518 弄'
    }, {
      date: '2016-05-06',
      name: '王小虎6',
      address: '上海市普陀区金沙江路 1518 弄'
    }, {
      date: '2016-05-07',
      name: '王小虎7',
      address: '上海市普陀区金沙江路 1518 弄'
    }, {
        date: '2016-05-07',
        name: '王小虎7',
        address: '上海市普陀区金沙江路 1518 弄'
      }, {
          date: '2016-05-07',
          name: '王小虎7',
          address: '上海市普陀区金沙江路 1518 弄'
        }, {
            date: '2016-05-07',
            name: '王小虎7',
            address: '上海市普陀区金沙江路 1518 弄'
          }, {
              date: '2016-05-07',
              name: '王小虎7',
              address: '上海市普陀区金沙江路 1518 弄'
            }],
    multipleSelection: [], 
},
methods:{
onSubmit:function(){

}, 
toggleSelection(rows) {
    if (rows) {
      rows.forEach(row => {
        this.$refs.multipleTable.toggleRowSelection(row);
      });
    } else {
      this.$refs.multipleTable.clearSelection();
    }
  },
  handleSelectionChange(val) {
    this.multipleSelection = val;
  }, 
}
});
</script>
</html>