#!/bin/bash

echo "⚠️ WARNING: Thao tác này sẽ xóa toàn bộ config Git, SSH key, và tất cả thư mục .git trong thư mục ~"

read -p "Bạn chắc chắn chứ? (yes/no): " confirm

if [ "$confirm" != "yes" ]; then
  echo "❌ Hủy bỏ."
  exit 1
fi

echo "🔹 Đang xóa config Git..."
rm -f ~/.gitconfig
rm -f ~/.gitignore_global

echo "🔹 Đang xóa SSH key..."
rm -rf ~/.ssh

echo "🔹 Đang tìm và xóa tất cả thư mục .git trong ~ ..."
find ~ -type d -name ".git" -exec rm -rf {} +

echo "✅ Đã xóa sạch Git khỏi hệ thống!"
