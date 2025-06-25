# Mongolian

欢迎使用 Mongolian Gem！本 Gem 打包了一些蒙古文处理常用的操作，例如分词、蒙古文转换为拉丁转写等。

## 安装

安装 Gem 并添加到应用的 Gemfile 可以通过执行：

```bash
bundle add mongolian
```

如果没有使用 bundler 管理依赖，可以通过：

```bash
gem install mongolian
```
直接安装。

## 用法

由于本 Gem 扩展了 String 类，所以可以直接使用各种方法：

```bash
"Text".is_mongolian?
```

## 开发

查看代码库，运行 `bin/setup` 安装依赖库。运行 `rake test` 进行测试。运行 `bin/console` 启用提示互动体验程序功能。

本地安装 Gem，运行 `bundle exec rake install`。发布新版本，更新 `version.rb` 中的版本号，然后运行 `bundle exec rake release`，这将基于版本号创建一个 Git Tag，推送 Git 提交和创建 Tag，推送 `.gem` 文件到 [rubygems.org](https://rubygems.org)。

## 贡献

欢迎到 GitHub 的 https://github.com/hfl/mongolian 代码库提交问题报告和提交软件修正。

## 许可

本 Gem 基于[MIT 许可](https://opensource.org/licenses/MIT)分发。

## Code of Conduct

Everyone interacting in the Mongolian project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/hfl/mongolian/blob/main/CODE_OF_CONDUCT.md).
