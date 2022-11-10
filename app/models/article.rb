class Article < ApplicationRecord
  belongs_to :user

  # This not work
  validates :published_at, comparison: { greater_than_or_equal_to: DateTime.current.beginning_of_day }
  validates_comparison_of :published_at, greater_than_or_equal_to: Date.today

  validates_comparison_of :published_at, greater_than: Date.today - 1.day
  validates :published_at, comparison: { greater_than: DateTime.current.beginning_of_day - 1.day }


  # This work
  validate :published_at_validate
  def published_at_validate
    return true if published_at >= DateTime.current.beginning_of_day

    errors.add(:published_at, 'cannot be in the past')
  end
end
