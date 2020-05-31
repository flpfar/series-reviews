# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categs = %w[Comedy Sci-Fi Horror Romance Action Thriller Drama Mistery Crime Animation Adventure Fantasy Documentary]

categs.each_with_index { |name, priority| Category.create(name: name, priority: priority + 1) }
User.create(name: 'flpfar')

review = User.first.reviews.new
review.categories_ids = [2, 3]
review.image = 'https://img.cinemablend.com/filter:scale/quill/4/6/c/6/2/3/46c6233a4646feb42d9e0dd7d8cba13386b39861.jpg?mw=600'
review.title = "Stranger Things Review: Season 3 Turns The Horror Up To Eleven For Netflix’s Scariest Summer Series"
review.text = "Who's ready to return to the Upside Down? Maybe not the folks of Hawkins, but Stranger Things fans who have been waiting for payoff of the Mind Flayer cliffhanger since all the way back in October 2017 are more than set to find out what comes next. The long hiatus means that viewers have high expectations of Stranger Things Season 3, and the Duffer brothers had plenty of time to craft something truly spine-tingling.

The bad news for the characters and the great news for viewers watching safely from home is that the Duffer brothers and the rest of the Stranger Things team turned the horror up to eleven, and the season may leave you dreaming sweet dreams of the Demogorgon from Season 1 that doesn't seem so terrifying in hindsight.

Unfortunately, the mind-blowing boost of horror came at the cost of some of the heart. Did I laugh, cry, and/or gasp at various parts of Season 3? Yes. Did I feel it as deeply as I could have? Not quite.

Stranger Things Season 3 picks up in the summer of 1985, and everything seems to be going great for everybody except for the folks who aren’t happy about the new Starcourt Mall. The kids aren’t kids anymore, and Eleven (Millie Bobby Brown) is in the mix for the first time since Season 1, much to Mike’s (Finn Wolfhard) delight. A new threat from an old source emerges, and nothing is certain… least of all the safety of the heroes."
review.save

r = User.first.reviews.new
r.categories_ids = [2, 8]
r.image = "https://img.cinemablend.com/filter:scale/quill/9/e/6/3/5/c/9e635c756bb3bc58395fddf5e6be309263877c3a.jpg?mw=600"
r.title = "Dark Review: Netflix's German Answer To Stranger Things Is Appropriately Titled, And Far More Grim"
r.text = "It's no secret that Netflix has forever changed the game of television production. The streaming service has produced original content at an impressively aggressive rate, ranging from successes like Orange is the New Black to critically divisive (and cancelled) shows like The Wachowski's Sense8. Perhaps the most popular show on the service at the moment is the supernatural period piece Stranger Things, and now a new German language series Dark seems to be echoing some of the show's main themes. But unlike the Duffer Brothers' dramedy that featured plenty of moments of levity from the child cast, Dark is appropriately titled, and void of comedy.

Dark was created by the German duo Baran bo Odar and Jantje Friese who previously collaborated on English film Sleepless and German projects The Silence and Who Am I -- No System Is Safe. The series follows a small German suburb, and four separate families who are grappling with interpersonal issues. And while tales of unfaithful spouses was interesting enough, the supernatural and terrifying aspects of the series soon come to light. A child from the community is missing, and once another kid disappears under mysterious circumstances at the end of the first episode, it becomes clear that something insidious is happening in the community.

Dark has an absolutely massive starring cast of German actors, which make up the various denizens of the small town. Some standouts include the brooding teenager Jonas (Louis Hofmann), missing kid Erik (Paul Radom), and cheating husband Ulrich (Oliver Masucci). Because the adults in town are just as important as the teenage protagonists, the series can feel a bit dense at times. There is an entire town of characters to get to know, and given that most of Netflix's audience will be using subtitles to watch the series, it may take a few episodes for you to truly understand everyone's relationships with each other."
r.save

r = User.first.reviews.new
r.categories_ids = [7, 8, 9]
r.image = "https://img.cinemablend.com/filter:scale/quill/e/c/d/d/4/5/ecdd451fb213cd3d3ed0135c9dbf98a1033713c8.jpg?mw=600"
r.title = "True Detective Season 3 Review: Mahershala Ali Brings Perfection To Enjoyably Familiar Murder Mystery"
r.text = "Mahershala Ali's Wayne Hays doesn't immediately look like the kind of guy who would fill True Detective Season 3 with Rust Cohle-esque observations about the shape and structure of time. However, Ali's varied and measured performance stands head to toe with Matthew McConaughey's standout Season 1 work, and he's the main reason creator Nic Pizzolatto's overtly familiar third season is as powerful and intense as it is. The story is definitely solid enough, but Ali truly transcends.

A True detective is only as good as his or her most difficult cases, and the mysterious disappearances at the heart of Season 3 is something of a breaking point for various characters. A small town in the Arkansas Ozarks is shaken to its core when two young children vanish, and the disquiet only gains momentum as the

Enter Mahershala Ali's war vet Wayne Hays and Stephen Dorff's low-key Roland West, two state police detectives who dive headlong into this case that will dictate the rest of their lives. We know such things because True Detective's third season is split across three different points in the case's timeline, with each timeline made instantly recognizable thanks to noteworthy work from the hair and makeup teams.

As it's hinted at above, Wayne bears much in common with Rustin Cohle, from his deliberate word choices to his underlying obsessions with unsolved cases, though the comparisons are surface-level. The extra timeline allows for Wayne to evolve in ways unique to True Detective, and he later falls victim to memory issues, among other overarching mental troubles. With Wayne known for his unwavering attention to detail, it's easy to understand why he becomes so haunted (figuratively and literally) when his faculties start fading."
r.save

r = User.first.reviews.new
r.categories_ids = [5]
r.image = "https://img.cinemablend.com/filter:scale/quill/e/e/1/7/9/e/ee179e8898af250c3e55c5596e359d524afa70b2.jpg?mw=600"
r.title = "Titans Review: DC Universe's Dark Superhero Drama Is The Opposite Of The Arrow-verse"
r.text = "Part of the joy of comic book characters is that they can quite literally factor into any kind of genre that the storyteller sees fit. The Teen Titans, for example, have effectively been used on the small screen for both traditional superhero narratives (via the titular animated series) and for absurdist musical comedy mayhem (via Teen Titans Go!). DC Universe's opaquely dark flagship series Titans, however, delivers an enjoyably bizarre genre mash-up of moody noir, psychological horror, and bloody-knuckle action. This definitely isn't another Arrow-verse spinoff, kids.

Perhaps the first sign showcasing Titans' more mature approach is the fact that there is only one teenager in the group, while everyone else is rocking more adult sneers and grimaces. 14-year-old Teagan Croft shows a lot of promise as Rachel Roth, whose demonic lineage gives her powers to tap into others' emotions, making her a target for a strange cult. The ensuing hunt drives the story early, on, and in fact, Raven's origin tale is perhaps the most intriguing element of the Titans episodes screened for critics.

Raven's abilities are both mysterious and downright spooky as hell, as Raven's inner demons imbue a genuine horror vibe that DC adaptations don't often tap into. Nothing on par with Heath Ledger's Joker yet, but disturbing stuff nonetheless. Much credit goes to the director for the first two episodes, Brad Anderson, who helmed one of my favorite horror flicks of all time, 2001's unsettling and undervalued Session 9, as well as other solid thrillers like The Machinist and Transsiberian."
r.save

r = User.first.reviews.new
r.categories_ids = [2]
r.image = "http://atdigital.com.br/blognroll/wp-content/uploads/2020/01/WESTWORLD-1024x512.jpg"
r.title = "Westworld: Season 3 Finale, Episode 8 Recap / Review"
r.text = "Now that it’s over, do we know what Westworld’s third season was about? At first it seemed a story of vengeance and redemption: The haunted veteran, Caleb, was looking for his place in the world, while the jaded android, Dolores, was looking to burn it to the ground. As the season progressed, other questions were posed, new concerns were introduced, and simple matters were further complicated — so that as we hurtled toward the finale, we were variously invested in a robot’s multiple clone personalities, an artificial intelligence program whose predictions guide the future, and the deteriorating sanity of a violent septuagenarian embroiled somehow in a scheme to destroy mankind. It was a lot of story to develop, and after eight episodes, I think the season was simply overwhelmed by too much plot. What’s the takeaway, ultimately? This doesn’t feel concluded so much as hastily wrapped up.

The Man in Black strikes me as a typical example of what I mean by the problem of narrative excess. What was his purpose this season, besides the nominal star power provided by Ed Harris? We learned about his sociopathic tendencies as a child in a series of flashbacks that had effectively no bearing on other events and in fact detracted from the advancement of the rest of the story. He was rescued from bogus hospitalization by two characters who had no real motivation to help him, only to turn on them, predictably, before running away and turning up later to make quips and drink expensive scotch. He’s intent to “save the f#@king world,” apparently by eradicating the last remaining hosts from existence. But when the climax arrives he isn’t anywhere near the action, and only turns up once more, in another post-credits scene, to be dispatched handily. So what?"
r.save

r = User.first.reviews.new
r.categories_ids = [1, 7]
r.image = "https://cdn1.thr.com/sites/default/files/imagecache/landscape_928x523/2020/05/dead_to_me_-_publicity_still_-_h_2020_.jpg"
r.title = "'Dead to Me' Season 2: TV Review"
r.text = "When Netflix's Dead to Me debuted last spring, the series seemed to hinge, like so many murder mysteries before it, on a single-season premise. Starring Christina Applegate and Linda Cardellini, the comedy-thriller admittedly wasn't a traditional murder mystery. All signs pointed — correctly — toward the inevitable reveal that boho drifter Judy (Cardellini) befriended recent widow Jen (Applegate) via their grief support group because Judy killed Jen's husband in a hit-and-run and felt desperately guilty about it. The mystery was less about the whodunnit and more about how the lonely, explosively angry Jen would react to such a crazy-making betrayal.

Though largely shaped around its clockwork rhythm and predetermined twists, the debut season of Dead to Me was an addictive watch for its proudly raw edges. Created by Liz Feldman, the show quickly and smartly filled in all the unhappy details in Jen's probably doomed marriage: her husband's infidelity, their many fights and, most compellingly, the fallout from her double mastectomy (inspired by Applegate's own history with breast cancer and the procedure).

Judy was beset by her own female troubles — five miscarriages, a diagnosis of infertility and, finally, a broken engagement to the emotionally abusive Steve (James Marsden). All this angst was the backdrop for the Molotov cocktail that was Jen's grief-soaked rage — a still relatively rare depiction of female complexity."
r.save

r = User.first.reviews.new
r.categories_ids = [7]
r.image = "https://www.denofgeek.com/wp-content/uploads/2012/06/untitled-1_4.jpg?resize=640%2C380"
r.title = "Looking back at House, M.D."
r.text = "When FOX’s astonishingly successful and influential medical drama, House M.D., drew to a close a couple of weeks ago, the TV landscape got just a little bit gloomier. Though the announcement that the show would be ending after its then-airing eighth season inspired no great furore or campaigning to keep it on air, there was still a quiet mourning apparent amongst long-time fans who are all too aware how rarely a show like House emerges from the yearly crop of procedurals and workplace dramas. Veterans of the genre David Shore and Paul Attanasio took the police procedural schedule saturated with countless different versions of CSI and lit a fire under it, a rarely taken risk that paid off spectacularly for everyone involved.
But the lack of retort to news of its departure may also have had something to do with the decreasing quality, freshness, and fan favour the show had adopted over the final few seasons (when it happened depends on which group of viewers you speak to), and it’s an unfortunate legacy for Gregory House (Hugh Laurie) and his various fellows to leave behind. We can argue that the show should never have been allowed to run for so many seasons, but people were still watching in their droves, and there’ll always be viewers who want their favourite show to carry on indefinitely. An average procedural can do just that, but House was no ordinary mystery show, and its commitment to character development and pushing television boundaries inadvertently gave it a limited shelf-life."
r.save

r = User.first.reviews.new
r.categories_ids = [9]
r.image = "https://i.guim.co.uk/img/media/2d0853d650afb24469fbb89cd2af221889705eb4/167_0_1667_1000/master/1667.jpg?width=620&quality=85&auto=format&fit=max&s=34c44e4c1666b6f83d9908bfceb804c5"
r.title = "When good TV goes bad: how Sons of Anarchy took us all for a ride"
r.text = "There has always been something faintly hilarious about Hells Angels. Perhaps it’s the unholy combination of dodgy leatherwear, comedy helmets and unrestrained beards, but they always look a little bit “midlife crisis spinning wildly out of control”, a little bit “minor members of the Def Leppard road crew”. It’s for this reason that Hells Angels are almost always deployed filmically for comic effect nowadays; indeed, up until recently the last major Hells Angels on-screen moment was 2007’s execrable midlife-crisis comedy Wild Hogs.
I say “until recently” because, of course, one year after Wild Hogs tried its hardest to ruin the biker gang’s mystique for generations to come, along came Sons of Anarchy to show us all the true face of the American Hells Angel, a serious, scowling, organised-criminal face, albeit still with a dodgy beard. These Hells Angels were not about to be pushed around by John Travolta and Tim Allen in “humorous” bandanas and unflattering trousers.
I have no idea if Sons of Anarchy is a realistic depiction of the biker subculture, but even if it is a grotesque exaggeration of everyday petty malfeasance, its early skirmishes were given a touch of class by faultless casting. It is pretty difficult, really, to balls up anything that has Ron Perlman in it. Damn near impossible. Sons of Anarchy managed it, though."
r.save

r = User.first.reviews.new
r.categories_ids = [6]
r.image = "https://www.nme.com/wp-content/uploads/2020/04/LCDP_311_Unit_00063.jpg"
r.title = "‘Money Heist’ season four review: addictive thriller is the most underrated show on Netflix"
r.text = "Heist movies have a bad reputation. They can be overly complex, repetitive in terms of plot and sometimes clichéd. In fact, they’re so derided that shows like Rick and Morty and Community have made whole episodes with the format as a punchline. The heist hasn’t fared much better on TV either – which is why it’s so refreshing when a series like Money Heist comes along.
La Casa De Papel (literally ‘The House of Paper’), as it’s known in its original and more catchy Spanish title, follows a gang of mysterious robbers who occupy and ‘steal’ buildings on the orders of their nameless boss, the Professor (Alvaro Morte). The target of this crew’s heists across the four series so far is the government. Clad in crimson overalls and wearing creepy masks made in the form of surrealist icon Salvador Dali’s face, the cast’s striking outfit has been copied by protestors in real-life political movements too."
r.save

r = User.first.reviews.new
r.categories_ids = [7]
r.image = "https://i.guim.co.uk/img/media/702ae8f250d3680f24ca099f7d9fc799336edd59/969_9_2316_1390/master/2316.jpg?width=620&quality=85&auto=format&fit=max&s=99026c623c2ceac3c74df614a34486b9"
r.title = "Homeland finale review – Claire Danes thriller goes out with a bang"
r.text = "It took a while for Homeland (Channel 4) to realise its true calling as a showcase for TV’s greatest surrogate father-daughter relationship, but it finished the series, after eight seasons and 96 episodes, with that pairing very much at its heart.
The final episode was titled Prisoners of War, a homage to the Israeli series on which it was based, and a reference to the endless cycle of strike and counterstrike, confidence and betrayal, in which the intelligence officer Carrie (Claire Danes) and her long-time mentor, Saul (Mandy Patinkin), are trapped.
It’s been quite a journey. Many viewers didn’t get beyond the divisive season-one finale and more still left after the departure of Damian Lewis when Carrie’s lover/nemesis Sgt Nicholas Brody died at the end of season three. More fool them. They missed the show’s transformation into a fortune teller, eerily predicting contemporary news. Troll farms, Islamist attacks on European capitals, fake news, Russian electoral interference and a US president-elect at war with the intelligence services – all were covered. No other show has had a better handle on world events."
r.save

r = User.first.reviews.new
r.categories_ids = [9]
r.image = "https://cdn1.thr.com/sites/default/files/2017/03/pb_sc71_0022_hires2-h_2017.jpg"
r.title = "'Prison Break' Review: A Return To All Things Crazy and Fun"
r.text = "During it’s original run, Prison Break went from being a very grounded show with character driven roots that threw just the right curveball at the right time to keep audiences engaged, to a maddening ride of convoluted conspiracy. Through it all, the show maintained fans thanks to the strength of its commitment to the ride. Everyone from the writers to the actors committed to the outlandish nature of the show’s later years, and this is where the newest run of episodes squarely lives… and unlike The X-Files, this conspiracy is fun to watch.

Prison Break picks up seven years after the conclusion of the original series. T-Bag is released from prison, and upon collecting his intake items, he stumbles on an envelope he didn’t walk in with. Upon opening the letter, he sees a modern photograph of the supposedly deceased Michael Scofield. From that point, Lincoln Burrows is off and running on an adventure that will take him halfway around the world to find his brother."
r.save

r = User.first.reviews.new
r.categories_ids = [7]
r.image = "https://pyxis.nymag.com/v1/imgs/16c/6af/7fbd4e1de477668b2f821d7bdae0bb57e8-18-emmy-greys-anatomy.rhorizontal.w700.jpg"
r.title = "Grey’s Anatomy Is a Much Better Show Than It Gets Credit For"
r.text = "Perhaps more than any other show on TV today, Grey’s Anatomy is the one that, when you mention it, practically forces conversationalists to reply, “That show is still on?” I’ve seen it happen countless times, to myself and to the dedicated troop of people I know who still watch the show without fail every week. The question is always asked with its condescension not just intact but proudly on display; there is steel in the detractors’ voices, a surety that something so populist, so long-running must have long ago caved to an inevitable decline in quality or relevance."
r.save

r = User.first.reviews.new
r.categories_ids = [12]
r.image = "https://i0.wp.com/mixdeseries.com.br/wp-content/uploads/2018/03/game-of-thrones-wallpaper-ned-stark-hd-1080p-12.jpg?fit=1049%2C600&ssl=1"
r.title = "Game of Thrones: the series review"
r.text = "Imagine if Lord of the Rings ended with Aragorn riding out into the abandoned wastes of Mordor, his crown forsaken, his throne left to an uncertain fate. Imagine, growing from out of the ashes of Sauron’s dominion, tender blades of green grass. That’s where David Benioff and D.B. Weiss’ Game of Thrones left us: the messianic king-who-wasn’t, Jon Snow, riding out of Westeros in company with the Free Folk to bring life back to death’s frozen domain. The throne, over which so much blood was shed, melted to slag; the queen who never got a chance to take it for her own killed in its shadow; the dragon that set fire to tens of thousands at her command flying away into the falling ash toward no-one-knows-where.

What’s left is a council of misfits, a wise and peaceful king, and a broken kingdom remade a little different, perhaps a little better, than before. No locked-in golden age, no heroic promised one to wear the crown, no satisfaction at seeing people good and bad receive their karmic sentences. Game of Thrones leaves all that to cleaner, lighter fiction."
r.save

Vote.create(user_id: 1, review_id: 13)