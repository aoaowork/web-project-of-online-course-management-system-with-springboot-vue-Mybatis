<template>
    <div>
      <el-card>
        <h2>个人信息</h2>
        <el-form label-width="120px">
          <el-form-item label="用户名">
            <span>{{ user.username }}</span>
          </el-form-item>
          <el-form-item label="联系方式">
            <span>{{ user.telephone }}</span>
          </el-form-item>
          <el-form-item label="邮箱">
            <span>{{ user.email }}</span>
          </el-form-item> 
          <el-form-item label="密保问题1">
            <span>{{ user.question1 }}</span>
          </el-form-item>
          <el-form-item label="答案1">
            <span>{{ user.answer1 }}</span>
          </el-form-item>
          <el-form-item label="密保问题2">
            <span>{{ user.question2 }}</span>
          </el-form-item>
          <el-form-item label="答案2">
            <span>{{ user.answer2 }}</span>
          </el-form-item>
        </el-form>
        <el-button type="primary" @click="goBack">返回</el-button>
      </el-card>
    </div>
  </template>
  
  <script>
import { EventBus } from '@/eventBus'; // 确保已正确引入 EventBus

export default {
  name: "UserProfile",
  data() {
    return {
      user: {} // 用于存储用户信息
    };
  },
  created() {
    // 初始化加载用户信息
    this.getUserProfile();

    // 监听用户更新事件（实时更新页面数据）
    EventBus.$on('userUpdated', (updatedUser) => {
      this.user = updatedUser; // 更新当前页面的用户信息
    });
  },
  beforeDestroy() {
    // 清除事件监听，避免内存泄漏
    EventBus.$off('userUpdated');
  },
  methods: {
    // 获取用户信息
    getUserProfile() {
      // 解析路由传递的数据（如果有）
      if (this.$route.query.user) {
        this.user = JSON.parse(this.$route.query.user);
      } else {
        // 如果路由未传递用户信息，则从后端加载
        this.$axios.get('/Users/getUserProfile').then((res) => {
          if (res.data.flag) {
            this.user = res.data.data;
          } else {
            this.$message.error('无法获取用户信息');
          }
        }).catch(() => {
          this.$message.error('网络错误，请稍后重试');
        });
      }
    },
    // 返回到用户主页
    goBack() {
      this.$router.push({ name: 'UserMainPage' });
    }
  }
};
</script>

  
  <style scoped>
  h2 {
    margin-bottom: 20px;
  }
  </style>
  