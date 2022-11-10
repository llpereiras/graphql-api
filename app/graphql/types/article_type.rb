# frozen_string_literal: true

module Types
  class ArticleType < Types::BaseObject
    field :id, ID, null: false
    field :user_id, Integer, null: false
    field :name, String
    field :description, String
    field :tags, String
    field :published_at, GraphQL::Types::ISO8601DateTime
    field :category, String
    field :photo, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :user, Types::UserType
    # , null: true do
    #   argument :id, ID, required: true
    # end
    # def user(id:)
    #   User.where(id: id).first
    # end
  end
end
