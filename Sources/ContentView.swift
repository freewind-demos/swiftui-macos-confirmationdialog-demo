import SwiftUI

struct ContentView: View {
    @State private var showingDialog = false
    @State private var selectedAction = ""

    var body: some View {
        VStack(spacing: 20) {
            Text("ConfirmationDialog 示例")
                .font(.headline)

            Button("显示确认对话框") {
                showingDialog = true
            }

            Text("选择的操作：\(selectedAction)")
                .foregroundColor(.secondary)
        }
        .padding()
        .confirmationDialog("选择操作", isPresented: $showingDialog, titleVisibility: .visible) {
            Button("保存") {
                selectedAction = "保存"
            }
            Button("导出") {
                selectedAction = "导出"
            }
            Button("删除", role: .destructive) {
                selectedAction = "删除"
            }
            Button("取消", role: .cancel) {
                selectedAction = "取消"
            }
        }
    }
}