ActiveAdmin.register Lecture do
  permit_params :title, :content, :course_id, :user_id
end