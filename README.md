# AccioWork 售卖介绍工作台

> 向客户介绍 AccioWork 是什么、能做什么、怎么用的单页展示工作台。

## 在线访问

通过 GitHub Pages 直接访问：

```
https://jiechief.github.io/Demo-Workbench/
```

## 本地预览

iframe 嵌入的 HTML 素材需要 HTTP 协议才能正常加载，直接双击打开（file://）会有限制。

双击 `启动预览.bat` 即可启动本地服务并自动打开浏览器（端口 8778）。

或手动启动：

```bash
python -m http.server 8778
```

然后访问 `http://localhost:8778/`

## 文件结构

```
├── index.html              # 主页面（单文件 HTML）
├── assets/                 # 演示素材
│   ├── 选品调研素材.html    # 经营链路场景嵌入
│   ├── 采购找货素材.html
│   ├── 内容制作素材.html
│   ├── 客户经营素材.html
│   ├── 数据复盘素材.html
│   ├── 视频生成素材.mp4     # 设计专家视频演示
│   ├── 【智能体】1688生意助手_创建运营计划.mp4
│   ├── 【智能体】1688生意助手.智能客服.mp4
│   └── *.png                # Agent 功能截图
└── 启动预览.bat             # 一键启动本地预览
```

## 技术栈

- 纯单文件 HTML（零后端、零框架）
- CSS 变量设计令牌系统
- 原生 JS + IntersectionObserver
- 可部署到 GitHub Pages / Cloudflare Pages 等静态托管
