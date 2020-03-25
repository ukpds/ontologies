# 2020 - Week 12

In the interests of something like normality, we've decided we'll continue to churn out weeknotes. We've long suspected the audience for [semantic web and parliamentary procedure](https://www.slideshare.net/UKParliData/what-would-erskine-may-do) to be somewhat niche. And we're guessing people have other things on their minds right now. Nevertheless, we intend to keep typing.

We asked around for memories of what happened on Monday. [Michael](https://twitter.com/fantasticlife) recollects a phone call with [John](https://twitter.com/jb_tweets), a research fellow at [Royal Holloway](https://www.royalholloway.ac.uk/). John's leading the team for an [SSRC funded project](https://www.ssrc.org/fellowships/view/social-media-and-democracy-research-grants/grantees/), 'How Does Facebook Influence Parliament?'. [Anya's](https://twitter.com/bitten_) provided him with subject indexed Hansard data, which he's been using to track trends. Now he'd like more of it, and with more background and structure. Michael put him in touch with [Librarian Liz](https://twitter.com/greensideknits) for taxonomy guidelines, and with Sarah from DevOps who's looking to extract more data from more systems. Ever a social butterfly, Michael didn't stop there. He also introduced John to Emma, a clerk with the [Petitions Committee](https://committees.parliament.uk/committee/326/petitions-committee/), and to [Cristina](https://twitter.com/estrangeirada) for the public engagement expertise. So that started the week well.

Tuesday saw a couple of very useful meetings. In a room. With actual human people. This might be something we all look back on with fondness. 

On Tuesday morning, Anya and Michael took a stroll across the park to Richmond House to meet Daniel, Vanessa and Klara from the Office of the Speaker's Counsel. Librarian Jayne joined by phone. As if practicing for a world with less human contact. The meeting resulted from some questions Jayne had raised about unexpected happenings in the world of [Statutory Instrument procedure](https://ukparliament.github.io/ontologies/procedure/procedure-ontology.html#flowcharts). There was a suspicion that the team had made a mistake in their procedure mappings, perhaps requiring an update to their maps and data. But, it turned out a handful of SIs had dropped through gaps somewhere, and expected procedure had not quite been followed as expected. Jayne continues to [write SPARQL queries](https://ukparliament.github.io/ontologies/procedure/meta/queries/) to help the Speaker's Counsel folks ensure the SI scrutiny train stays firmly on procedural tracks. The team have long advanced the idea that [accurate maps of procedure](https://ukparliament.github.io/ontologies/procedure/procedure-ontology.html#flowcharts) and well managed information brings benefits for procedural and associated offices. And Jayne's queries are a pretty good sign of what the future might offer. 

On Tuesday afternoon, Anya and Michael went for one last nose round our mock-gothic palace. They met Christine, fount of knowledge for all things [Church Measure](https://www.parliament.uk/site-information/glossary/church-of-england-measures/) related. Unfortunately, Jayne couldn't join in person or by phone or in pixels. Fortunately, Journal Office Jane popped her head in from the office next door. Which was nice. Back in [week 4](https://ukparliament.github.io/ontologies/meta/weeknotes/2020/04/) Jane, Jayne and Michael made a first stab at mapping [assorted types of delegated legislation to parliamentary procedures](https://github.com/ukparliament/ontologies/blob/master/legislation/delegated-legislation/delegated-legislation.pdf). And no one was sure how Church Measures fitted. Twenty minutes with Christine left all concerned convinced that they didn't fit. Although Church Measures rely on the [Church of England Assembly (Powers) Act 1919](http://www.legislation.gov.uk/ukpga/Geo5/9-10/76/contents) for their existence, they are in fact more like primary legislation. And not like delegated legislation at all. Michael has now removed Church Measures from the map. Which felt like a small breakthrough. At least up and until Jayne pointed out that Michael had misunderstood the actual question. He wasn't supposed to ask about the primariness or secondariness of Church Measures, but about SI like things that take delegated powers from Church Measures. More emails may follow. Michael apologises to Christine. And Jayne.

The rest of week was a tad more chaotic as librarians and computational experts dispersed from Westminster in search of new working environments at kitchen tables, sofas and occasionally from beds. Michael spent part of Wednesday drafting a personal schedule, to add something resembling structure to his days. It builds in time for emails, phone calls and bird feeding. So far he's not quite stuck to it but that's not so different to usual office life.

There have been more phone calls than usual this week. Whilst Skype may be here, it is not evenly distributed. Luckily Anya came across a brief guide on [how to set up a conference call on an iPhone](https://support.bell.ca/Mobility/Smartphones_and_mobile_internet/How_to_set_up_a_conference_call_on_an_iPhone). Various other back channels have surfaced which seem to have helped keep people connected and sane. We'd like to draw our reader's attention to [The Confined Kitchen](https://confinedkitchen.blogspot.com). Liz has taken to the blogosphere, to share her own and others' stories of cooking in confinement. We applaud Liz's [lentils](https://confinedkitchen.blogspot.com/2020/03/lentils-and-nostalgia.html).

Anya, Jayne and Michael used their newly acquired conference call skills on Wednesday, running through how to use [Lode](https://essepuntato.it/lode/) to transform [Turtle](https://en.wikipedia.org/wiki/Turtle_(syntax)) ontologies to HTML, and the various bits of finicky hacking that accompany that. Our description ontology - which we intend to use to link procedures and [procedure routes](https://ukparliament.github.io/ontologies/procedure/procedure-ontology.html#d4e164) to the [Standing Orders](http://standing-orders.herokuapp.com/) or items of legislation that describe them - is now available for [humans](https://ukparliament.github.io/ontologies/description/description-ontology.html) as well as [machines](https://ukparliament.github.io/ontologies/description/description-ontology.ttl).

Jayne and Michael were back on their mobile phones on Thursday, this time to adapt procedure maps and data to take account of the feedback Daniel, Vanessa and Klara provided on Tuesday. Daniel had expressed concerns about the committee consideration steps. Committee consideration steps are now stripped out of the [PNSI](https://ukparliament.github.io/ontologies/procedure/flowcharts/proposed-negative-sis/proposed-negative-sis.pdf), the SI and the [treaty](https://ukparliament.github.io/ontologies/procedure/flowcharts/crag-treaties/crag-treaties.pdf) procedures and everything is a little neater. Daniel also noted that the wording of the committee outcome steps - 'concerns' and 'no concerns' - doesn't align with the language of committee reports. Never proponents of obscuring the machinery, Jayne and Michael have updated the step names to 'reported' or 'not reported'. Except for the [SLSC](https://committees.parliament.uk/committee/255/secondary-legislation-scrutiny-committee/) which has different wording again.

In other semantic news, [David](https://twitter.com/clerkly) emailed with an answer to a query as to the distinction between a motion being 'negatived' and a motion being 'disagreed to'. Apparently, at least in the House of Lords, 'negatived' is used when the motion is not agreed to without being pressed to division. Or 'on the voices', as we say around here. And 'disagreed to' is used when the motion is not agreed to on division. So that cleared that up. The procedure maps the team have drawn to date distinguish between the outcome of a decision, and don't distinguish the mechanism for getting there. So a compromise of 'agreed to' and 'not agreed to' was almost arrived at. At which point Mr Evans chipped in to say that this distinction doesn't hold in the House of Commons, and that there are at least three other forms to take into account. Thinking through such things is made tricky by our sudden separation from our whiteboards. Parsing Paul's email might have to wait for yet more phone calls next week.

So that then was week one of our new lives. Nice at least to see people. If only in pixels. Take good care of each other, everyone.