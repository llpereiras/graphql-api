# GraphQL Api


###


rails g resource User username password_digest city state zip:integer email

rails g graphql:object User id:ID! username:String! city:String! state:String! zip:Integer! email:String!

rails g resource Article user:belongs_to name description tags published_at:datetime category photo

rails g graphql:object Article id:ID! user:String! name:String! description:String! tags:Integer! published_at:String! category:String! photo:String!
