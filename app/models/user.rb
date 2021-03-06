class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :tasks
  has_many :notifications, through: :tasks

  validates :email, uniqueness: true, presence: true

  def user_name
    name || email
  end

  def categories
    tasks.map(&:category).uniq
  end

  def score
    total_score = 0
    categories.each do |category|
      total_score += category_score(category)
    end
    total_score / categories.size
  end

  def category_score(category)
    category_tasks = tasks.where(category: category)
    total_score = 0
    category_tasks.each do |t|
      total_score += t.score
    end
    total_score / category_tasks.size
  end

  def score_color(category)
    if category_score(category) < 30
      "danger"
    elsif category_score(category) >= 30 && category_score(category) < 70
      "warning"
    else
      "success"
    end
  end
end
