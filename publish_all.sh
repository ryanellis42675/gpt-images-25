#!/usr/bin/env bash
set -e

echo "=========================================================="
echo "  GPT images 2.5 (https://images25.art) 全生态发包发布脚本"
echo "=========================================================="
echo ""

# 1. GitHub 仓库推送与 pkg.go.dev / Packagist 准备
echo "==> [1/7] 检查 GitHub 仓库与 Tag..."
if [ ! -d ".git" ]; then
    git init
    git branch -M main
    git add .
    git commit -m "feat: initial polyglot release v0.1.0 for GPT images 2.5"
    echo "创建远程 GitHub 仓库: ryanellis42675/gpt-images-25..."
    gh repo create ryanellis42675/gpt-images-25 --public --source=. --remote=origin --push || true
fi

git tag -f v0.1.0
git push origin main --tags || true

echo "==> [2/7] 触发 Go (pkg.go.dev, DR 93) 自动索引..."
curl -s "https://proxy.golang.org/github.com/ryanellis42675/gpt-images-25/@v/v0.1.0.info" > /dev/null && echo "✓ Go 模块缓存触发成功！访问: https://pkg.go.dev/github.com/ryanellis42675/gpt-images-25"

echo "==> [3/7] PHP Packagist (packagist.org, DR 88):"
echo "  请登录 https://packagist.org/packages/submit 粘贴: https://github.com/ryanellis42675/gpt-images-25"

echo "==> [4/7] 发布 Node.js (NPM, DR 92)..."
if npm whoami >/dev/null 2>&1; then
    npm publish --access public && echo "✓ NPM 发布成功！访问: https://www.npmjs.com/package/gpt-images-25"
else
    echo "  ! NPM 尚未登录，请先执行 'npm login' 后再执行 'npm publish --access public'"
fi

echo "==> [5/7] 发布 Python (PyPI, DR 93)..."
if command -v python3 >/dev/null 2>&1; then
    python3 -m pip install --upgrade --quiet build twine || true
    python3 -m build
    echo "  执行发布: python3 -m twine upload dist/* (需要 PyPI API Token)"
fi

echo "==> [6/7] 发布 Rust (crates.io DR 88 + docs.rs DR 85)..."
if command -v cargo >/dev/null 2>&1; then
    cargo publish && echo "✓ Crates.io 发布成功！docs.rs 将在 3 分钟内构建生成。"
else
    echo "  ! 本机未检测到 cargo，可在 crates.io 获取 token 后安装 cargo 执行 'cargo publish'"
fi

echo "==> [7/7] 发布 Ruby (RubyGems, DR 89)..."
if command -v gem >/dev/null 2>&1; then
    gem build gpt_images_25.gemspec
    echo "  执行发布: gem push gpt_images_25-0.1.0.gem (需要 RubyGems 账号登录)"
fi

echo ""
echo "=========================================================="
echo "  发布指导完成！"
echo "=========================================================="
