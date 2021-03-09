# 2021 - Week 7

## Enabling enabling Acts

Much like [week 6](https://ukparliament.github.io/ontologies/meta/weeknotes/2021/06/), week 7 saw our cast of crack librarians and computational experts continue to plod through work as if through treacle. Librarians [Anya](https://twitter.com/bitten_) and Jayne and chief printer fixer [Michael](https://twitter.com/fantasticlife) decided enough was enough and took the opportunity to take short vacations. Separately, we want you to understand. We wouldn't want the world thinking we'd upped sticks en masse to decamp to our favoured static caravan site just north of Prestatyn.

[Jianhan](https://twitter.com/jianhanzhu) alone showed the gumption and wherewithal to keep nose pressed firmly to grindstone, as he continued to make magnificent progress on linking both [statutory instruments](https://en.wikipedia.org/wiki/Statutory_instrument_(UK)) and [proposed negative statutory instruments](https://www.parliament.uk/site-information/glossary/proposed-negative-statutory-instrument/) to the Acts of Parliament that enable them. Since we last spoke, he has added a couple of [new](https://trello.com/c/3pfr3hys/83-staging-new-table-enablingact) [tables](https://trello.com/c/zENbz46u/82-staging-new-table-actofparliament) and a [sprinkling of foreign keys](https://trello.com/c/M1H68gxg/84-staging-add-foreign-keys) to our procedure editor database and written a script to [pull Act details from the Search and Indexing SOLR endpoint](https://trello.com/c/cNBQ3vKk/90-staging-import-acts-of-parliament-from-search-and-indexing-solr-to-staging-database). There is still work to do to [tidy what we store in Search and Indexing](https://trello.com/c/YaG2NXxQ/91-which-legislationgovuk-urls-are-we-putting-in-solr), [build an interface to associate (PN)SIs with Acts](https://trello.com/c/xegiulnz/92-staging-procedure-editor-link-a-work-package-to-an-act-or-acts), [update our ontology](https://trello.com/c/kpfT84td/85-staging-ts-ontology-changes) and slurp both [Acts](https://trello.com/c/8E6YQ8mD/88-staging-orchestration-import-acts-of-parliament) and their [enablings](https://trello.com/c/Ov8hlDOr/89-staging-orchestration-import-enabling-acts) into the data platform. But we are well on our way to being able to differentiate instruments by the Acts that enable them on the [SI website](https://statutoryinstruments.parliament.uk/). Which we hope will keep JO Jane sweet for a while.

On Saturday morning Anya wandered Walthamstow with her dog confirming that the pubs are indeed still closed, as Michael wended his way around Weybridge in search of a pair of lost headphones. Notorious multi-taskers both, they took to their telephones to wonder if we might save a little librarian effort and hit the data representations on [legislation.gov.uk](https://www.legislation.gov.uk/) with URIs for SIs, and return a ready made array of enabling Acts. Because Michael is congenitally lazy he followed up on this thought swiftly, foregoing legwork and [tweeting](https://twitter.com/fantasticlife/status/1363129509302718466) [John](https://twitter.com/johnlsheridan) and [Catherine](https://twitter.com/CathTabone). Tune in next week if you're eager to know the answer.

## In furtherance of uniqueness

A couple of weeks back, Michael asked Jianhan if it might be possible to generate a couple of thousand new data platform identifiers in the hope of adding them to our [standing order application](https://standing-orders.herokuapp.com/) and eventually slurping all that lovely data into the platform. Jianhan was kind enough to generate the IDs but with the caveat that they wouldn't be reserved and might be regenerated to identify something completely different. So that put paid to that plan. Back in the very early days of our data platform adventure, Jianhan put [much thought and effort into ensuring our IDs were unique](https://www.slideshare.net/UKParliData/data-platform-id-generation). But we already have some platform IDs in the procedure editor database that have not yet found their way to the platform. Which is a precarious position. So this week, he busied himself with creating a view of all tables in the database containing a platform ID. Now, every time we generate a new ID, we can check this view and discard any duplicates. There is little point wearing a belt if one does not also don braces.

## Logicifying the procedure model

We are happy to report that the [fully logicified draft negative SI procedure](https://ukparliament.github.io/ontologies/procedure/flowcharts/sis/logic-gates/draft-negative.pdf) is now [inside the machines](https://trello.com/c/FqYcItxC/19-enter-draft-negative-routes-to-staging). So far the machines have not choked and have even been good enough to [draw us a picture of the resulting mess](https://ukparliament.github.io/ontologies/meta/weeknotes/2021/06/draft-negative.png). Which is nice. Whilst week 6 was all about fighting back boredom as Librarian Jayne and Michael entered the data, week 7 upped the tedium as they spent several hours checking it all. It is now checked. They are happy. Job done.

In the course of checking they realised that they'd missed off adding self-preclusions to both the 'instrument cannot become law' and the 'instrument comes into force as law' steps. And had forgotten to do the same for the 'instrument stops being law' and the 'instrument remains law' steps in its close cousin, the [made negative procedure](https://ukparliament.github.io/ontologies/procedure/flowcharts/sis/logic-gates/made-negative.pdf). Self-preclusion being the thing that tells the machines that this thing having happened, it cannot happen again. And things like not being able to become law, coming into force as law, stopping being law and remaining law, all fall firmly into the 'can't really happen again' camp. So a handful of new routes, tying together a smattering of AND and NOT steps, have been added and [that problem is fixed](https://trello.com/c/7LiOASlg/96-add-self-preclusion-to-stops-being-law-in-made-neg).

## Map parsing

On the subject of telling the machines what to do, Michael has been stretching his limited brain around how the parsing code should work. With limited success so far. Taking a tip from [Samu](https://twitter.com/langsamu), he put away the [pseudocode](https://ukparliament.github.io/ontologies/procedure/flowcharts/meta/parsing/step-types/) as a growing child turns away from their toys. He has adopted the attitude of a grown up and is trying his hand at some actual code. [SQL Server](https://en.wikipedia.org/wiki/Microsoft_SQL_Server) to [Postgres](https://en.wikipedia.org/wiki/PostgreSQL) migration not being a tool we have at our disposal, Jianhan kindly exported CSV files of the [procedure editor staging database](https://github.com/ukparliament/ontologies/blob/master/procedure/meta/editor/schema.pdf) and Michael set about loading them into his favoured, freer database. [Free as in open](https://en.wikipedia.org/wiki/Gratis_versus_libre). Not beer. At this point, the import exploded. Young Robert jumped in to lend a hand but even his considerable synaptic aptitude could not help. So Michael took to his tried and tested approach of [whining on Twitter](https://twitter.com/fantasticlife/status/1361313072833527808) and [James](https://twitter.com/jamesjefferies) came riding to the rescue. That very eve, James [reported back](https://twitter.com/jamesjefferies/status/1361426981045346305). Microsoft - being Microsoft - embeds a [BOM](https://en.wikipedia.org/wiki/Byte_order_mark) in CSV exports from SQL Server. And BOMs - being BOMs - tend to explode. All easy enough to fix, and one wonders about the utility of adding invisible characters. Nevertheless, thanks James.

Ambition undiminished, Michael set about writing some [Rails code to parse a work package](https://github.com/fantasticlife/procedure/blob/master/app/controllers/work_package_controller.rb#L22) in the context of a parliamentary procedure. Again taking a tip from Samu - and finding himself at gunpoint from Anya's requirement to distinguish the not yet possible from the not now possible - he stepped away from the brute force option of parsing routes in any order and instead started at the start. And worked downwards. In some clumsy approximation of a [depth first graph traversal](https://en.wikipedia.org/wiki/Depth-first_search). Things were going swimmingly until he added multiple pass parsing across the outputs of AND and OR steps. At which point the whole thing exploded again.

Face sooty and eyebrows singed, Michael persevered, switching his efforts from a Rails web app to a [rake task](https://github.com/fantasticlife/procedure/blob/master/lib/tasks/parse.rake). This uncovered a schoolboy error in one of his queries, of joining to a table that he didn't use. Oops. Another bug squashed, he rewrote the step parsing code, spent quite some time on comments and pressed the parse button. Only to watch in horror as the machine made 2466 attempts to parse 466 routes. And [exploded](https://twitter.com/fantasticlife/status/1363080947340611584). The code, if one can call it that, [is here](https://github.com/fantasticlife/procedure). It's currently in more pieces than a Lego set on a child's bedroom floor. Cross the room unshod at your peril. 

## Procedure mapping

This week's other venture into procedure mapping was one of those happy moments where the correct answer turns out to be 'do nothing'. Back in December, Librarian Emma spotted that the [Economic Affairs Committee](https://committees.parliament.uk/committee/175/economic-affairs-committee/) were planning to report on the [Social Security Contributions (Intermediaries) (Miscellaneous Amendments) Regulations 2020](https://statutoryinstruments.parliament.uk/timeline/nYBsCLnw/SI-20201220/). At the time we weren't sure whether this was part of the scrutiny procedure that we should try to map, or the parliamentary equivalent of a [botanical sport](https://en.wikipedia.org/wiki/Sport_(botany)). Upon further investigation, it turned out that the report focused on an aspect of policy included in the SI that was known by all parties to be 'defective'. And that the Government made a written ministerial statement shortly after the SI was laid to say they'd make a technical change to the SI using the next Finance Bill, before the SI comes into force in April 2021. So all agreed the report was not in fact part of the procedure and [our maps remain unchanged](https://trello.com/c/E8YgOzZL/329-jw-economic-affairs-committee-report).

## All about the collaboration

On Monday, Librarians Anya, Liz and Ned and computational experts Robert and Michael were joined in pixels by the aforementioned Catherine and also by [Simon](https://twitter.com/Tagishsimon) to chat all things [thesaurus](https://explore.data.parliament.uk/?endpoint=terms), SI and [Wikidata](https://www.wikidata.org/wiki/Wikidata:Main_Page) related. Catherine has promised to look into whether [TNA](https://www.nationalarchives.gov.uk/) might pick up the work currently done by Simon's screen scraper and push all new SIs directly into Wikidata. Our lockdown hobby of tying wikidata items to thesaurus terms has reached a landmark moment - [just over 20,000 terms matched](https://twitter.com/tagishsimon/status/1362028578779652099?s=12). Never ones to rest on our laurels, we hatched a plan for phase two. We'll retire the current [Mix'n'Match](https://mix-n-match.toolforge.org/#/catalog/1229), import the Wikidata IDs of all matched concepts into our thesauri, export a fresh  copy of the thesuarus and set up a brand new Mix'n'Match. Thanks for your time Catherine and Simon.

## In continuence of our limited education

On Thursday, Anya, Jayne, Robert and Michael took [Luke](https://twitter.com/Lenorbury) up on his offer of an introduction to statutory interpretation for dunces. Many things were learnt. Particularly around the scope of definitions. Luke was also kind enough to dip into a couple of our questions - whether Parliament is precluded from acting before the scrutiny clock kicks off, and whether a PNSI is in fact just a manifestation of an SI. Some questions are unanswerable until a judge passes judgement, and it's probably bad form to take one's employer to court simply to get to the bottom of an if / else statement. Especially when your employer is Parliament. Sometimes one has to accept that there are known unknowns and learn to live with that. Thanks Luke. We may well be back with further noddy questions.

## Always the last place you look

The headphones turned up in his garden shed.
