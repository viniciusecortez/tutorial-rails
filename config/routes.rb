Rails.application.routes.draw do
  resources :articles do
    resources :comments
  end
  root 'welcome#index'

end
 
<h2>Add a comment:</h2>
<%= form_with(model: [ @article, @article.comments.build ], local: true) do |form| %>
  <p>
    <%= form.label :commenter %><br>
    <%= form.text_field :commenter %>
  </p>
  <p>
    <%= form.label :body %><br>
    <%= form.text_area :body %>
  </p>
  <p>
    <%= form.submit %>
  </p>
<% end %>
 
<%= link_to 'Edit', edit_article_path(@article) %> |
<%= link_to 'Back', articles_path %>