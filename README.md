# SwiftUI macOS ConfirmationDialog

## 简介

演示 SwiftUI 中 ConfirmationDialog（确认对话框）的用法。

## 快速开始

```bash
cd swiftui-macos-confirmationdialog-demo
xcodegen generate
open SwiftUIConfirmationDialogDemo.xcodeproj
# Cmd+R 运行
```

## 概念讲解

### ConfirmationDialog

```swift
.confirmationDialog("选择操作", isPresented: $showingDialog) {
    Button("保存") { }
    Button("取消", role: .cancel) { }
}
```

## 完整讲解（中文）

### ConfirmationDialog 用途

- 弹出确认对话框
- 提供多个操作选项
- 支持 destructive 和 cancel 角色