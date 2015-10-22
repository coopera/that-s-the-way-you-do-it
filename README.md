# Simplify the way you write tutorials for your team based on code available on GitHub!

[![Code Climate](https://codeclimate.com/github/IgorMarques/that-s-the-way-you-do-it/badges/gpa.svg)](https://codeclimate.com/github/IgorMarques/that-s-the-way-you-do-it)
[![wercker status](https://app.wercker.com/status/20d893068e04bda23d6d78c1ab3e1c24/s/master "wercker status")](https://app.wercker.com/project/bykey/20d893068e04bda23d6d78c1ab3e1c24)

*Now look at them yo-yo's that's the way you do it*

**Money For Nothing - Dire Straits**

Check out this awesome trailer/ demo!

<a href="http://www.youtube.com/watch?feature=player_embedded&v=CnR7QDZOcWk
" target="_blank"><img src="http://img.youtube.com/vi/CnR7QDZOcWk/0.jpg" 
alt="youtube trailer" width="400" height="300" border="10" /></a>

**That's The Way You Do It** is a tutorials catalog for software development teams.

Are you tired of repeating the same explanations over and over for your interns? Solved a bug that you couldn't find the answer anywhere on Stack Overflow? Found an awesome way to code a feature? Show to your team: "hey, **That's The Way You Do It**!"

## Answering a few questions

### What can I do with this?

I'm glad you asked! With **That's The Way You Do It** you can create beautiful markdown tutorials in a fast way, focusing on the writing instead of on the copying and pasting.

### Just it? What differs this project from other markdown editors?

Oh, silly person on the other side of the screen, there's one key feature that make **That's The Way You Do It** unique!

You can **import code from GitHub to the editor seamlessly**!

### Whaaaaaaaat!?

Yeah, on **That's The Way You Do It** you can import code from:

- **Files** hosted on GitHub repos (or just some lines of it)
- **Changes** from commits
- And even changes from **pull requests**

### And how can I do that?

Simple:

**paste the link of what you whant and the editor grabs the code for you**

Types of links that are supported at the moment:

- A file:
  - https://github.com/coopera/that-s-the-way-you-do-it/blob/master/app/models/doc.rb
- Line interval from a file:
  - https://github.com/coopera/that-s-the-way-you-do-it/blob/master/app/models/doc.rb#L5-L7
- A line from a file:
  - https://github.com/coopera/that-s-the-way-you-do-it/blob/master/app/models/doc.rb#L1
- A commit:
  - https://github.com/coopera/that-s-the-way-you-do-it/commit/d7f365db9777b4cb6e1c5799a2e431c58aaf3a19
- A pull request
  - https://github.com/coopera/that-s-the-way-you-do-it/pull/7

Types of links that are *expected* to be supported (someday):

- Gists
- Issues

If you want to take code from private repos, just authenticate with your GitHub account!

### OMG, That's awesome!

No, **That's The Way You Do It** :sunglasses:

## Running

Create a new app here:

https://github.com/settings/applications/new

And copy the ID and secret of the app and paste them at your .env file.

Remember:

**DON'T COMMIT THE .ENV FILE TO THE VCS**

## Contact

Found any bugs? Have any suggestion? Just create an issue or send me an e-mail.

Cheers! :beers:
