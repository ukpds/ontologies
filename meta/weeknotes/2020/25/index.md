# 2020 - Week 25

## Procedure mapping

We had some bad news this week. News that confirmed our very worst fears. We'd been led into a false sense of security by a sentence in the [Guide to Procedure](https://guidetoprocedure.parliament.uk/collections/AAS0LGpw/super-affirmative-procedure) which reads, the "super-affirmative procedure involves an additional stage of scrutiny where Parliament considers a proposal for a [statutory instrument](https://www.parliament.uk/site-information/glossary/statutory-instruments-sis/) before the statutory instrument is formally presented ('laid')." Which we hoped meant [Legislative Reform Orders](https://www.parliament.uk/business/committees/committees-archive/regulatory-reform-committee/regulatory-reform-orders/), which are subject to a flavour of the super affirmative procedure, went through two distinct parliamentary procedures. First off, a proposed instrument would be laid subject to committee scrutiny. The committees might propose changes to the instrument itself and recommend a procedure to be followed for the next stage. And a House or Houses might act to overrule the committee recommendations. Depending on the outcome of this first stage, the instrument would be laid subject to a slightly modified negative or affirmative procedure. Or indeed a super affirmative procedure. This two stage, two laying approach would have been ideal from our point of view. We'd have been able to use the two [layings](https://ukparliament.github.io/ontologies/laying/laying-ontology.html) as a starting point to draw four distinct if interwingled procedures. But, dear reader, an LRO is subject to a different type of super affirmative procedure and has but a single laying. Which means we now have to draw out a single, humungous map with committee draft scrutiny, the Houses objecting, most of the negative procedure, most of the affirmative procedure and a whole new super-affirmative procedure. On Tuesday, Librarian Jayne and [Michael](https://twitter.com/fantasticlife) re-opened the start they made last week on the [LRO procedure](https://github.com/ukparliament/ontologies/blob/master/procedure/flowcharts/proposed-sis/legislative-reform-order.pdf). But it was all too off-putting. So they closed it again, virtually unchanged. They become more and more convinced that the drafters of legislation should be able to type anything they feel fit. But not before they've sat down and drawn a map of it.

Some weeks back, Jayne and Michael made a new version of the [made affirmative map](https://ukparliament.github.io/ontologies/procedure/flowcharts/sis/play-pen/made-affirmative.pdf) as a first attempt at coping with instruments laid under the [Sanctions and Anti-Money Laundering Act 2018](http://www.legislation.gov.uk/ukpga/2018/13/contents/enacted). This differs from the [usual made affirmative](https://ukparliament.github.io/ontologies/procedure/flowcharts/sis/made-affirmative.pdf) in that the Parliament scrutiny clock does not start upon the making of the instrument but upon a provision coming into force. Journal Office Jane had declared herself happy with their attempts and suggested they also talk it through with an [FCO](https://www.gov.uk/government/organisations/foreign-commonwealth-office) lawyer before committing bits to data. So on Friday morning, Jayne and Michael had a call with three of the FCO's finest who declared themselves happy with the proposal. They suggested some label changes to better reflect the legislation that governed these tweaks. Bubbles were rearranged slightly but no lines were changed. If all goes to plan, next week, Jayne and Michael hope to update both the made affirmative map and the [procedure data](https://procedures.azurewebsites.net/Procedures/1/graph) it illustrates. Our librarians had wondered how we'd know when the provision comes into force, as the commencement order is not laid before Parliament. But our FCO colleagues offered to get in touch when that happens. So that solves that problem. All four SIs are expected to be commenced by a single order sometime in December. At which point, we'll flip some switches and parliamentary procedure will kick off.

A tiny tweak was made to the made affirmative procedure. Really just to keep our hand in and tick at least one box in another disappointing week. After checking with both JO Jane and Mr Evans, it was established that a made affirmative would always be laid into both Houses. Or at least no one could remember anything else ever having happened. So what was an allows route from making to Lords laying is now a causes route and everything is a little tighter.

## All about the collaboration

Monday saw a call with [our friends in Oxford](https://parlrulesdata.org/). [Anya](https://twitter.com/bitten_), Jayne, Michael and Robert were joined by [Rad](https://radoslawzubek.com/), [Tom](https://twitter.com/tomgfleming) and [Niels](https://ngoet.com/) to push around pixels and make plans for future collaboration. They agreed to investigate the licensing of both the code and the data, collaborate on a data model for Standing Orders and make a start on mapping procedure routes and steps to [Standing Orders](https://parlrulesdata.org/root_ukhcso_184.html#1972-08-08) and [Standing Order fragments](http://standing-orders.herokuapp.com/standing-order-fragments/481). To prepare the way for the latter, Jayne and Michael spent part of Tuesday making a first pass attempt at [putting together a spreadsheet](https://docs.google.com/spreadsheets/d/1HkFYQ2bJeYGCnbTNBv-bQAiFL33n7fx1kgY30R5Gbz4/edit?usp=sharing). Which Jayne and Tom plan to start populating next week. They also chatted briefly about meeting in person but hit the problem that under soical distancing rules our office can only accomodate 15% of the people we'd normally expect to be there. And Oxford University can only hold 20%. So possibly we need to buy a picnic and find a park. With a whiteboard.

Michael had pencilled in a couple of hours on Thursday to take a look at Nick's spreadsheet for the Participation team's outreach efforts. By teatime he was still noodling around. In the intervening hours he [accidentally made a website](https://participation-crm.herokuapp.com/) and then turned that into a new more normalised spreadsheet. He suspects this might not be of much use and a spreadsheet is not ideal for this job. Investigations into CRM support continue.

Anya, [Liz](https://twitter.com/greensideknits) and Michael spent 30 minutes on Thursday going back over the [Rush database](https://membersafter1832.historyofparliamentonline.org) [Trello](https://trello.com/b/4JA1hW6I/rush-data-2020) and making sure they know what had happened and what needs to happen. Liz agreed to create some test data for the website for [one last check of our new uploading tool](https://trello.com/c/E6x5AU5n/65-test-importer-with-fake-data). We look forward to closing another Trello board soon.

## Your weekly egg timer update

Last week we reported that the [egg timer](http://parliament-calendar.herokuapp.com/) code was now complete. Or complete to the best of our knowledge. Which is not to say it's working. Working is a feature yet to be delivered but working is definitely on our roadmap. The basic problem is that, whilst the code will now return dates for the end of scrutiny periods for assorted types of instrument and styles of procedure, the dates returned are not in fact correct. Michael spent a large part of Saturday night peering at Google calendars, [syncing scripts](https://github.com/fantasticlife/egg-timer/blob/master/lib/tasks/sync.rake), [calculator controllers](https://github.com/fantasticlife/egg-timer/blob/master/app/controllers/calculator_controller.rb) and [monkey patched](https://en.wikipedia.org/wiki/Monkey_patch) [date models](https://github.com/fantasticlife/egg-timer/blob/master/lib/monkey_patching/date.rb) and found a problem with how we'd entered sitting days into the calendars. Remarkable what can be achieved with enough red wine. Multiday events were only supposed to be used for sittings where one or other House had sat through the night and wiped out the next days sitting. These continuation days are treated differently by different procedures, with SIs being merely interested in the presence of bottoms on benches and [Proposed negative statutory instruments](https://www.parliament.uk/site-information/glossary/proposed-negative-statutory-instrument/) and Treaties taking a more nuanced and more parliamentary view of what constitutes a sitting day. So where we should have had multiple separate sitting days we ended up with single sitting days lasting several days. Which threw out all our maths. Librarian Jayshree is in the process of re-entering data. At which point the egg-timer will either be declared working, or we'll find another bug. Our money being firmly on the latter.

## Tiny chisel news

First thing Wednesday morning, Anya, Robert and Michael were once more joined by [Lorna](https://twitter.com/loneshepherds), [Cassie](https://twitter.com/cassier_barton), Phillip and [Oli](https://twitter.com/olihawkins) to chat all things library model related. The plan had been to take the [picture of economic indicators](https://github.com/ukparliament/ontologies/blob/master/meta/library-information-architecture/economic-indicators/economic-indicators.png) drawn last week and map it to our [publisher](https://ukparliament.github.io/ontologies/publisher/publisher-ontology.html), [record](https://ukparliament.github.io/ontologies/record/record-ontology.html) and [contribution](https://ukparliament.github.io/ontologies/contribution/contribution-ontology.html) models. But the assorted pictures proved rather too large and the shared screens too small to make much progress. Michael now plans to give up on computers and take to paper. There are outstanding questions here about how the world of monthly reports map to the world of [FRBR](https://en.wikipedia.org/wiki/Functional_Requirements_for_Bibliographic_Records) and whether it's acceptable to collapse them into a single work. If there are any FRBR people reading, we'd love to chat.

Model editing continued on Friday with Anya, Robert and Michael re-opening the record model and revisiting the [revision](https://ukparliament.github.io/ontologies/record/record-ontology.html#d4e197) part. Which is now a first class object. More thinking is still required around review, revision, retention, archiving and the messaging thereof here. But really we need a policy before we need a model. A matter which has been flagged to managers.
