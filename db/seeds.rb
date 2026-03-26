Article.find_or_create_by!(title: "What is Active Record?") do |a|
  a.body = <<~TEXT.strip
    Active Record is Rails’ layer for talking to the database. Models inherit from ApplicationRecord,
    validations run before save, and migrations describe how tables change over time.
  TEXT
end

Article.find_or_create_by!(title: "Routes and REST") do |a|
  a.body = <<~TEXT.strip
    resources :articles in routes.rb gives you index, show, new, create, edit, update, and destroy —
    each mapped to a controller action. That is why this section of the app feels like a small CMS.
  TEXT
end
