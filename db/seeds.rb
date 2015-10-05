lorem = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

User.create(name: "Kent Fowler",
            email: "kent@viu.kent.ve",
            avatar: "https://s3.amazonaws.com/uifaces/faces/twitter/jsa/128.jpg")

User.create(name: "Martin Beck",
            email: "kent@viu.kent.ve",
            avatar: "https://s3.amazonaws.com/uifaces/faces/twitter/sauro/128.jpg")

User.create(name: "Aaron Grim",
            email: "aaron@viu.kent.ve",
            avatar: "https://s3.amazonaws.com/uifaces/faces/twitter/jadlimcaco/128.jpg")

User.create(name: "Avid Patterson",
            email: "avid@viu.kent.ve",
            avatar: "https://s3.amazonaws.com/uifaces/faces/twitter/brad_frost/128.jpg")

User.create(name: "Ronaldinho",
            email: "dibre@viu.kent.ve",
            avatar: "https://s3.amazonaws.com/uifaces/faces/twitter/mlane/128.jpg")

User.create(name: "Chulapa",
            email: "danone@descubra.net",
            avatar: "https://s3.amazonaws.com/uifaces/faces/twitter/motherfuton/128.jpg")

Doc.create(title: "How to export a page in pdf",
           description: "This tutorial will teach you how to [...]",
           implementation: lorem,
           user_id: User.first.id,
           tag_list: "ruby, rails, pdf, export, wicked_pdf")

Doc.create(title: "How to use devise to send password recovery emails",
           description: "This tutorial will teach you how to [...]",
           implementation: lorem,
           user_id: User.first.id,
           tag_list: "ruby, rails, devise, authentication, email, password")

Doc.create(title: "How to test models with rspec",
           description: "This tutorial will teach you how to [...]",
           implementation: lorem,
           user_id: User.first.id,
           tag_list: "ruby, rails, rspec, test, model")

Doc.create(title: "How to use translations in rails",
          description: "This tutorial will teach you how to [...]",
          implementation: lorem,
          user_id: User.first.id,
          tag_list: "ruby, translation, locale")

Like.create(user_id: 1, doc_id: 1)
Like.create(user_id: 2, doc_id: 1)
Like.create(user_id: 3, doc_id: 1)
Like.create(user_id: 4, doc_id: 1)
Like.create(user_id: 5, doc_id: 1)
Like.create(user_id: 6, doc_id: 1)

Like.create(user_id: 1, doc_id: 2)
Like.create(user_id: 2, doc_id: 2)
Like.create(user_id: 3, doc_id: 2)
Like.create(user_id: 4, doc_id: 3)
Like.create(user_id: 5, doc_id: 3)
Like.create(user_id: 6, doc_id: 3)
