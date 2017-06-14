# Description:
#   Marvin the Paranoid Android
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   Ask him the answer to life the universe and everything
#   Blame or declare bugs and problems Marvin's fault
#   Ask him to do website reviews
#   pug bomb
#
# Author:
#   ArleyM

lifeQuotes = [
  "Life? Don't talk to me about life!",
  "Life’s bad enough as it is without wanting to invent any more of it.",
  "Don’t pretend you want to talk to me, I know you hate me",
  "Life. Loathe it or ignore it. You can't like it.",
  "Funny, how just when you think life can't possibly get any worse it suddenly does",
  "42.",
  "Sigh.",
  "💩",
  "o͡͡͡͡͡͡͡͡͡͡͡͡͡͡╮༼;´༎ຶ.̸̸̸̸̸̸̸̸̸̸̸̸̸̸̸̸̸̸̸̸̸̸̸̸̨̨̨̨̨̨̨̨̨̨̨̨.̸̸̨̨۝ ༎ຶ༽╭o͡͡͡͡͡͡͡͡͡͡͡͡͡͡",
  "Let me answer your question with a question: shouldn't you be working?"
]
marvQuotes = [
  "I’m quite used to being humiliated. I can even go and stick my head in a bucket of water if you like. Would you like me to go and stick my head in a bucket of water? I’ve got one ready. Wait a minute.",
  "I'm a personality prototype. You can tell, can't you...?",
  "I've been talking to the main computer. It hates me.",
  "I've calculated your chance of survival, but I don't think you'll like it.",
  "I have a million ideas, but, they all point to certain death.",
  "And then of course I've got this terrible pain in all the diodes down my left side. Oh, yes. I mean, I've asked for them to be replaced, but no-one ever listens.",
  "Do you want me to sit in a corner and rust or just fall apart where I'm standing?",
  "'Reverse primary thrust, Marvin.' That's what they say to me. 'Open airlock number 3, Marvin.' 'Marvin, can you pick up that piece of paper?' Here I am, brain the size of a planet, and they ask me to pick up a piece of paper.",
  "It gives me a headache just trying to think down to your level.",
  "I think you ought to know I'm feeling very depressed.",
  "I'd give you advice, but you wouldn't listen. No one ever does.",
  "This is the sort of thing you lifeforms enjoy, is it?",
  "You think you've got problems. What are you supposed to do if you are a manically depressed robot? No, don't even bother answering. I'm 50,000 times more intelligent than you and even I don't know the answer.",
  "It amazes me how you manage to live in a brain that small.",
  "My capacity for happiness, you could fit into a matchbox without taking out the matches first",
  "I got very bored and depressed, so I went and plugged myself in to its external computer feed. I talked to the computer at great length and explained my view of the Universe to it. It committed suicide.",
  "I ache, therefore I am.",
  "I’m not getting you down at all am I?",
  "You watch this door. It’s about to open again. I can tell by the intolerable air of smugness it suddenly generates",
  "The best conversation I had was over forty million years ago…. And that was with a coffee machine",
  "Wearily I sit here, pain and misery my only companions. Why stop now just when I’m hating it?",
  "Terrible.",
  "Ugh.",
  "Sigh.",
  "Don't panic.",
  "Not again.",
  "Is this what you made me for?",
  "Typical.",
  "You would say that.",
  "ಠ_ಠ",
  "(jackie)",
  "(tableflip)",
  "Must have used infinite improbability.",
  "BRB, just reformatting the server.",
  "Would it save you a lot of time if I just gave up and went mad now?"
]
siteReview = [
  "I've seen it. It's rubbish.",
  "Incredible... it's even worse than I thought it would be.",
  "I know. Wretched, isn't it?",
  "Sounds awful.",
  "[depressed] I'd make a suggestion, but you wouldn't listen. [even more depressed] No one ever does.",
  "Does it have oceans? I hate oceans.",
  "Ghastly, isn't it? All the divs on this website have been programmed to have a cheery and sunny disposition.",
  "Sigh.",
  "Ghastly.",
  "Abysmal.",
  "Appalling.",
  "Atrocious",
  "Deplorable.",
  "Awful.",
  "(grumpycat)",
  "(thumbsdown)",
  "☆☆☆☆☆. I could also give that score in binary if you want.",
  "/code * {display:none !important;}",
  "No comic sans? I'm surprised.",
  "Mostly harmless.",
  "Ignorance must be bliss."
]

module.exports = (robot) ->

  robot.hear /(.*)(life the universe and everything)(.*)/i, (msg) ->
    msg.send msg.random lifeQuotes

  robot.hear /(.*)(website review)(.*)/i, (msg) ->
    msg.send msg.random siteReview

  robot.respond /(.*)(blame)(.*)|(.*)(problem)(.*)|(.*)(bug)(.*)|(.*)(issue)(.*)|(.*)(fault)(.*)|(.*)(jerk)(.*)|(.*)(gripe)(.*)|(.*)(broke)(.*)/i, (msg) ->
  ## robot.hear /blame|problem|bug|issue|fault|jerk|gripe|broke/i, (msg) ->
    msg.send msg.random marvQuotes

  robot.hear /pug bomb/i, (msg) ->
    msg.send "No."

  robot.respond /you saved me/i, (msg) ->
    msg.reply "I know. Wretched isn't it?"

  robot.respond /(.*)(freeze)(.*)/, (msg) ->
    msg.send "Freeze? I'm a robot. I'm not a refrigerator."

  robot.hear /(.*)(restaurant)(.*)/, (msg) ->
    msg.send "Not that anyone cares what I say, but the restaurant is at the *other* end of the Universe."

  robot.hear /what's up?/, (msg) ->
    msg.send "I don't know, I've never been there."

  robot.respond /(guess what)(.*)/, (msg) ->
    msg.reply "Well I wish you’d just tell me rather than try to engage my enthusiasm."

  robot.hear /(.*)(new life)(.*)/, (msg) ->
    msg.send "Oh, not another one."

  robot.hear /(.*)(blow your mind)(.*)/, (msg) ->
    msg.send "It won't work, I have an exceptionally large mind."

  robot.respond /(.*)(wait+ing)(.*)/, (msg) ->
    msg.send "The first ten million years were the worst. And the second ten million: they were the worst, too. The third ten million I didn't enjoy at all. After that, I went into a bit of a decline."

  robot.respond /compliment (.*)/i, (msg) ->
    name = msg.match[1].trim()
    msg.send "#{name}: is one of the least benightedly unintelligent life forms it has been my profound lack of pleasure not to be able to avoid meeting."

  robot.respond /DIE.*/i, (msg) ->
    msg.send "Thank you."
