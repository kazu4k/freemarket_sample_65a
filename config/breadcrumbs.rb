
# ルート
crumb :root do
  link "トップページ", root_path
end

# マイページ
crumb :mypage do
  link "マイページ", mypage_user_path(:id)
end

crumb :profile do
  link "プロフィール", profile_user_path(:id)
  parent :mypage
end

crumb :logout do
  link "ログアウト", logout_user_path(:id)
  parent :mypage
end

crumb :credit do
  link "支払い方法", credit_user_path(:id)
  parent :mypage
end

crumb :identification do
  link "本人情報の登録", identification_user_path(:id)
  parent :mypage
end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).