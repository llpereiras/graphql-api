# frozen_string_literal: true

FactoryBot.define do
  factory :article do
    name  { ''}
    description  { ''}
    tags  { ''}
    published_at { DateTime.current }
    category { ''}
    photo { ''}
    user { create(:user)}
  end
end
