<template>
  <div 
    class="floating-assistant" 
    :style="{ top: position.y + 'px', left: position.x + 'px' }"
    @mousedown="startDrag"
  >
    <!-- 小助手图标 -->
    <img 
      src="@/assets/assistant.png" 
      alt="AI 小助手" 
      @click="toggleChat"
      class="assistant-icon"
    />

    <!-- 对话框 -->
    <div class="chat-dialog" v-if="showChat">
      <div class="dialog-header">
        <span>AI 小助手</span>
        <button @click="toggleChat" class="close-btn">×</button>
      </div>
      <div class="dialog-body">
        <div v-for="(message, index) in messages" :key="index" :class="message.sender">
          <p>{{ message.text }}</p>
        </div>
      </div>
      <div class="dialog-footer">
        <input 
          v-model="userInput" 
          @keyup.enter="sendMessage" 
          placeholder="输入消息..." 
        />
        <button @click="sendMessage">发送</button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      position:{ x: 100, y: 100 }, // 悬浮窗位置
      dragging: false, // 是否正在拖动
      showChat: false, // 是否显示对话框
      messages: [], // 对话内容
      userInput: "", // 用户输入
    };
  },
  methods: {
    startDrag(event) {
      this.dragging = true;
      const offsetX = event.clientX - this.position.x;
      const offsetY = event.clientY - this.position.y;

      const onMouseMove = (moveEvent) => {
        if (this.dragging) {
          this.position.x = moveEvent.clientX - offsetX;
          this.position.y = moveEvent.clientY - offsetY;
        }
      };

      const onMouseUp = () => {
        this.dragging = false;
        window.removeEventListener("mousemove", onMouseMove);
        window.removeEventListener("mouseup", onMouseUp);
      };

      window.addEventListener("mousemove", onMouseMove);
      window.addEventListener("mouseup", onMouseUp);
    },
    toggleChat() {
      this.showChat = !this.showChat;
    },
    async sendMessage() {
      if (!this.userInput.trim()) return;

      this.messages.push({ sender: "user", text: this.userInput });
      const userMessage = this.userInput;
      this.userInput = "";

      try {
        // 调用后端接口
        const response = await this.$axios.post("/ai/chat", {"msg": userMessage });
        
        // 显示 AI 回复
        this.messages.push({ sender: "ai", text: response.data });
      } catch (error) {
        console.error("请求失败：", error);
        this.messages.push({ sender: "ai", text: "抱歉，服务器出错，请稍后再试。" });
      }
    },
  },
};
</script>

<style>
.floating-assistant {
  position: fixed;
  z-index: 1000;
  cursor: move;
}

.assistant-icon {
  width: 60px;
  height: 60px;
  border-radius: 50%;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
  cursor: pointer;
}

.chat-dialog {
  position: absolute;
  top: 70px;
  left: 0;
  width: 300px;
  background-color: white;
  border: 1px solid #ccc;
  border-radius: 8px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.dialog-header {
  padding: 10px;
  background-color: #f4f4f4;
  border-bottom: 1px solid #ccc;
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.close-btn {
  background: none;
  border: none;
  font-size: 18px;
  cursor: pointer;
}

.dialog-body {
  max-height: 300px;
  overflow-y: auto;
  padding: 10px;
}

.dialog-footer {
  padding: 10px;
  display: flex;
  gap: 5px;
  border-top: 1px solid #ccc;
}

.dialog-footer input {
  flex: 1;
  padding: 5px;
  border: 1px solid #ccc;
  border-radius: 4px;
}

.dialog-footer button {
  padding: 5px 10px;
  background-color: #5a5ace;
  color: white;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
</style>
