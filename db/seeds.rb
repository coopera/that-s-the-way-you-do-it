lorem = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

User.create(name: "Kent Fowler",
            email: "kent@viu.kent.ve",
            avatar: "https://pbs.twimg.com/profile_images/2556368541/alng5gtlmjhrdlr3qxqv.jpeg")

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
