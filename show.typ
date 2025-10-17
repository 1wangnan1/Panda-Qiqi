#import "@preview/touying:0.6.1": *
#import themes.simple: *
#import "@preview/cetz:0.3.2"
#import "@preview/fletcher:0.5.5" as fletcher: edge, node
#import "@preview/numbly:0.1.0": numbly
#import "@preview/theorion:0.3.2": *
#import cosmos.clouds: *
#show: show-theorion

// cetz and fletcher bindings for touying
#let cetz-canvas = touying-reducer.with(reduce: cetz.canvas, cover: cetz.draw.hide.with(bounds: true))
#let fletcher-diagram = touying-reducer.with(reduce: fletcher.diagram, cover: fletcher.hide)

// Set Chinese fonts for the presentation
// If the fonts are not installed, you can find new fonts to replace them. by the `typst fonts`.
// #set text(
//   font: (
//     "Source Han Serif SC", // Alternative Chinese serif font
//   ),
//   // lang: "zh",
//   // region: "cn",
// )

// Color shorthand functions
#let redt(content) = text(fill: red, content)
#let bluet(content) = text(fill: blue, content)
#let greent(content) = text(fill: green, content)
#let yellowt(content) = text(fill: yellow, content)
#let oranget(content) = text(fill: orange, content)
#let purplet(content) = text(fill: purple, content)
#let greyt(content) = text(fill: gray, content)
#let grayt(content) = text(fill: gray, content)

// Additional font customization options:
// For headings, you can use a different font:
// #show heading: set text(font: "Source Han Serif SC", weight: "bold")
// #show raw: set text(font: "Source Han Mono SC")

#show: simple-theme.with(aspect-ratio: "16-9", footer: [Emotion Maze])

#title-slide[
  = Little Panda Qiqi's Bedtime Routine
  #v(2em)

  An Interactive Storybook App for Children's Habit Formation

  #v(1em)

  ID: 24517089

  #v(2em)
  #datetime.today().display()
]


== Project Overview

*Target Audience:* Toddlers aged 2-4 and their parents

*Core Concept:* "Guiding Habits through Interaction"

*Key Features:*
- Four interactive bedtime scenes
- Simple touch mechanics (tap, drag, swipe)
- Positive feedback reinforcement
- Character-driven narrative (Little Panda Qiqi)


// Addresses parenting challenge: bedtime routine resistance. Children help Qiqi instead of being instructed. Immediate feedback creates intrinsic motivation for real-life habit transfer.


== Scene 1: Tidy Up Toys

#slide(composer: (1fr, 1fr))[
  #align(center)[
    #image("extracted/image_8.png", width: 90%)
  ]
][
  *Interaction Mechanic:* Drag & Drop

  *Task:* Place scattered toys into bouncing toy chest

  *UX Highlights:*
  - Direct manipulation fosters sense of control
  - Bouncing chest provides clear visual target
]

// Establishes interaction pattern: visual cue (bouncing chest) → action (drag) → layered reward (sparkle, sound, Qiqi's applause). No text needed. Makes tidying magical.


== Scene 2: Brush Teeth

#slide(composer: (1fr, 1fr))[
  #align(center)[
    #image("extracted/image_6.png", width: 70%)
  ]
][
  *Interaction :* Swipe Gesture

  *Task:* Brush Qiqi's teeth (5-6 horizontal swipes)

  *UX Highlights:*
  - Mirror reflection creates identification
  - Foam bubbles provide real-time feedback
]

// Embodied interaction creates muscle memory. Mirror setup builds identification and self-efficacy. Progress visible through bubbles. Transforms hygiene into mini-game with clear win state.


== Scene 3: Bubble Bath

#slide(composer: (1fr, 1fr))[
  #align(center)[
    #image("extracted/image_5.png", width: 80%)
  ]
][
  *Interaction :* Tap to Activate

  *Task:* Add bubbles to bathtub + optional rubber duck play

  *UX Highlights:*
  - Single tap triggers dramatic bubble cascade
  - Colorful bubbles create sensory delight
]

// Balances task with exploration. Immediate visual payoff (bubble cascade) plus optional play (rubber duck) reduces pressure. Addresses bath anxiety by modeling enjoyment. Qiqi's giggle reframes bath as fun.


== Scene 4: Goodnight Story

#slide(composer: (1fr, 1fr))[
  #align(center)[
    #image("extracted/image_3.png", width: 90%)
  ]
][
  *Interaction :* Swipe to Turn Pages

  *Task:* Read bedtime story with Qiqi (3 storybook choices)

  *UX Highlights:*
  - Three books provide autonomy
  - Smooth page-turn animation mimics real books
  - Qiqi's yawn signals wind-down
]

// Dual purpose: wind-down + closure. Book choice honors autonomy. Page-swipe creates meditative rhythm. Layered sleep cues: dimming → yawn → closing eyes → snoring. Mirrors natural sleep prep. Credits reinforce success.
