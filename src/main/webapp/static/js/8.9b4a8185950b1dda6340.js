webpackJsonp([8],{Fwgn:function(e,t){},p0Q3:function(e,t,a){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var l=a("YaEn"),n=(a("PJh5"),a("mtWM")),r=a.n(n),i={data:function(){return{search:"",currentPage:1,totalPage:1,departmentList:[{label:"部门1",value:"0"},{label:"部门2",value:"1"},{label:"部门3",value:"2"}],department:"",degreeList:[{label:"博士研究生",value:"1"},{label:"本科毕业生",value:"3"},{label:"硕士研究生",value:"2"},{label:"专科毕业生",value:"4"},{label:"其他",value:"5"}],degree:"",tableData:[]}},created:function(){this.getList()},mounted:function(){},watch:{department:function(e,t){this.getList()},degree:function(e,t){this.getList()},search:function(e,t){this.getList()}},methods:{getList:function(){var e=this;r()({url:"/xclist",params:{department:e.department,degree:e.degree,search:e.search,currentPage:e.currentPage}}).then(function(t){var a=t.data;e.tableData=a.data,e.totalPage=a.totalPage}).catch(function(e){console.log(e)})},filterSex:function(e,t){return t.sex===e},add:function(){l.a.push({name:"tabs",params:{data:"0"}})},handleEdit:function(e,t){l.a.push({name:"tabs",params:{data:t,index:2}})},handleCurrentChange:function(){this.getList()}}},o={render:function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",[a("el-main",[a("div",{staticClass:"select"},[a("el-select",{attrs:{clearable:"",filterable:"",placeholder:"部门"},model:{value:e.department,callback:function(t){e.department=t},expression:"department"}},e._l(e.departmentList,function(e){return a("el-option",{key:e.value,attrs:{label:e.label,value:e.value}})}),1),e._v(" "),a("el-select",{attrs:{clearable:"",filterable:"",placeholder:"学历"},model:{value:e.degree,callback:function(t){e.degree=t},expression:"degree"}},e._l(e.degreeList,function(e){return a("el-option",{key:e.value,attrs:{label:e.label,value:e.value}})}),1),e._v(" "),a("el-input",{attrs:{placeholder:"姓名",clearable:""},model:{value:e.name,callback:function(t){e.name=t},expression:"name"}})],1),e._v(" "),a("el-table",{ref:"multipleTable",staticStyle:{width:"100%"},attrs:{id:"out-table",border:"","tooltip-effect":"dark","header-cell-style":{background:"#f5f7fa"},"default-sort":{prop:"wid",order:"descending"},data:e.tableData},on:{"selection-change":e.handleSelectionChange}},[a("el-table-column",{attrs:{prop:"wid",label:"工号","min-width":"100",sortable:""}}),e._v(" "),a("el-table-column",{attrs:{prop:"name",label:"姓名","min-width":"100"}}),e._v(" "),a("el-table-column",{attrs:{prop:"sex",label:"性别","min-width":"100",filters:[{text:"男",value:"0"},{text:"女",value:"1"}],"filter-method":e.filterSex,"filter-placement":"bottom-end"},scopedSlots:e._u([{key:"default",fn:function(t){return[a("el-tag",{attrs:{type:"0"===t.row.sex?"primary":"warning","disable-transitions":""}},[e._v(e._s("1"==t.row.sex?"女":"男"))])]}}])}),e._v(" "),a("el-table-column",{attrs:{prop:"degree",label:"学历","min-width":"100"}}),e._v(" "),a("el-table-column",{attrs:{prop:"department",label:"部门","min-width":"100"}}),e._v(" "),a("el-table-column",{attrs:{prop:"baseWage",label:"基本工资(月)","min-width":"100"}}),e._v(" "),a("el-table-column",{attrs:{"min-width":"130",label:"操作"},scopedSlots:e._u([{key:"default",fn:function(t){return[a("el-button",{attrs:{size:"mini",type:"primary"},on:{click:function(a){return e.handleEdit(t.$index,t.row)}}},[e._v("编辑")])]}}])})],1),e._v(" "),a("el-pagination",{staticStyle:{float:"right","margin-top":"8px"},attrs:{background:"","current-page":e.currentPage,layout:"prev, pager, next","page-size":7,total:e.totalPage},on:{"update:currentPage":function(t){e.currentPage=t},"update:current-page":function(t){e.currentPage=t},"current-change":e.handleCurrentChange}})],1)],1)},staticRenderFns:[]};var u=a("VU/8")(i,o,!1,function(e){a("Fwgn")},"data-v-049b66de",null);t.default=u.exports}});
//# sourceMappingURL=8.9b4a8185950b1dda6340.js.map