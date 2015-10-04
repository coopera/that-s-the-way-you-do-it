lorem = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

User.create(name: "Kent Fowler",
            email: "kent@viu.kent.ve",
            avatar: "https://pbs.twimg.com/profile_images/2556368541/alng5gtlmjhrdlr3qxqv.jpeg")

User.create(name: "Martin Beck",
            email: "kent@viu.kent.ve",
            avatar: "http://nocapes.net/uncle_bob.jpg")

User.create(name: "Aaron Grim",
            email: "aaron@viu.kent.ve",
            avatar: "http://news.mit.edu/sites/mit.edu.newsoffice/files/images/2013/20130318105145-1_0.jpg")

User.create(name: "Avid Patterson",
            email: "avid@viu.kent.ve",
            avatar: "https://upload.wikimedia.org/wikipedia/commons/5/5c/Linus_Torvalds_(cropped).jpg")

User.create(name: "Ronaldinho",
            email: "dibre@viu.kent.ve",
            avatar: "http://netflu.com.br/wp-content/uploads/2014/07/Ronaldinho-gaucho.jpg")

User.create(name: "Chulapa",
            email: "danone@descubra.net",
            avatar: "http://blogs.ne10.uol.com.br/social1/files/2015/04/aloisio-chulapa-e-seus-danones-no-instagram-1401216686773_956x500.jpg")

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
