json.extract! lecture, :id, :title, :content, :course_id, :user_id, :created_at, :updated_at
json.url lecture_url(lecture, format: :json)
