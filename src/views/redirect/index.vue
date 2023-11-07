<template>
  <div></div>
</template>

<script setup>
import { useRoute, useRouter } from 'vue-router'
//useRoute()获取当前路由信息的函数，路由参数、查询参数
const route = useRoute();
//useRouter()获取路由实例的函数，导航、跳转
const router = useRouter();
//用于从 route 对象中提取 params 和 query 两个属性，并分别赋值给同名的局部变量 params 和 query。
const { params, query } = route
const { path } = params

router.replace({ path: '/' + path, query })
</script>