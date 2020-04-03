# 2020 - Week 14

Monday kicked off with an email from Twitter, who finally consented to giving [Michael](https://twitter.com/fantasticlife) the API keys he asked for back in [week 8](https://ukparliament.github.io/ontologies/meta/weeknotes/2020/08/). This is a process that's advertised as taking two weeks. So rapid turnaround there guys. These are now plugged into the [Tweaty Twacker](https://twitter.com/TweatyTwacker) application. Which means that, theoretically, next time our team of crack librarians add a treaty to the data platform, a tweet should go out to all three followers. I say theoretically because without the FCO turning up with a new treaty they'd like to ratify, it's all a little difficult to test. We wait with breath baited.

The impact of the Corona Virus continued to make itself felt. Not only sending assorted librarians scattering to dining tables, sofas and beds but forcing an earlier than expected recess. In some ideal world, we'd have a calendar API we could hit with a laid date and a number of sitting days which would return an end date for the approval period. But we do not have this. So approval period end dates are entered by hand. Which usually works fine until we hit an unexpected recess. At which point they all have to be updated. Also by hand. A job which fell this week to poor Librarian Jayne. Sorry Jayne.

On the subject of the blasted virus, the [Secondary Legislation Scrutiny Committee](https://committees.parliament.uk/committee/255/secondary-legislation-scrutiny-committee/) have been hard at work, publishing [a list of all Statutory Instruments (subject to parliamentary procedure) that have been laid to tackle the coronavirus pandemic](https://committees.parliament.uk/committee/255/secondary-legislation-scrutiny-committee/news/145773/scrutiny-of-secondary-legislation-laid-to-tackle-coronavirus-pandemic/). Top work, Journal Office Jane.

Monday also saw Jayne and Michael get their comeuppance for being a little over eager with their procedure mapping work. If our reader was following along [last week](https://ukparliament.github.io/ontologies/meta/weeknotes/2020/13/), they'll know that Jayne and Michael did some telephone tinkering with reporting steps for the SLSC, changing some [step](https://ukparliament.github.io/ontologies/procedure/procedure-ontology.html#d4e175) labels and removing some preclusion [routes](https://ukparliament.github.io/ontologies/procedure/procedure-ontology.html#d4e164). Unfortunately, they'd forgotten to check in with Jane first. They will endeavour to keep their enthusiasm suitably curbed in the future. An email ensued. And then an attempted conference call that failed at the first hurdle. So they tag teamed a call to Jane and reached agreement on [rectifying the situation](https://trello.com/c/qHRVX7uh/99-slsc-change-outcome-steps-back-to-concerns-no-concerns). Preclusion routes remain unchanged because they aim never to use preclusions except where they're explicitly stated somewhere or where doing otherwise would be logically incoherent. But step names have been reverted. They came to the conclusion that an earlier decision to reuse the 'concerns raised' step to describe further correspondence by the committee had been a bad one. So they've now [introduced a further information step](https://trello.com/c/Ie37QpqZ/100-slsc-add-new-further-information-step) that can be seen in the wild on the [Merchant Shipping (International Load Line Convention) (Amendment) Regulations 2018](https://statutoryinstruments.parliament.uk/timeline/0mLY2Jkl/SI-2018155) [work package](https://ukparliament.github.io/ontologies/procedure/procedure-ontology.html#d4e259). Jayne has gone back over all SIs and treaties and reindexed all occurrences of that step. She's also written a handy little [SPARQL](https://en.wikipedia.org/wiki/SPARQL) query to return [all work packages where the 'further information' step has been actualised](https://api.parliament.uk/sparql#query=PREFIX+rdfs%3A+%3Chttp%3A%2F%2Fwww.w3.org%2F2000%2F01%2Frdf-schema%23%3E%0APREFIX+%3A+%3Chttps%3A%2F%2Fid.parliament.uk%2Fschema%2F%3E%0APREFIX+id%3A+%3Chttps%3A%2F%2Fid.parliament.uk%2F%3E%0Aselect+%3Fproc+%3FSI+%3FSIname++%3FworkPackage+%3FprocStepName+%3Fdate+where+%7B%0A+%3FSI+a+%3AStatutoryInstrumentPaper+.++%0A+++++%3FSI+rdfs%3Alabel+%3FSIname+.%0A+++%09%3FSI+%3AworkPackagedThingHasWorkPackage+%3FworkPackage+.%0A++%09%3FworkPackage+%3AworkPackageHasProcedure%2Frdfs%3Alabel+%3Fproc%0A+FILTER(%3Fproc+IN+(%22Draft+affirmative%22%2C+%22Draft+negative%22%2C+%22Made+affirmative%22%2C+%22Made+negative%22))%0A++%3FworkPackage+%3AworkPackageHasBusinessItem+%3FprocStep+.%0A+++++%3FprocStep+%3AbusinessItemDate+%3Fdate+.%0A++%3FprocStep+%3AbusinessItemHasProcedureStep+id%3AJ2CIHOQv+.%0A++%3FprocStep+%3AbusinessItemHasProcedureStep%2Frdfs%3Alabel+%3FprocStepName.+++%0A%0A%7D&contentTypeConstruct=text%2Fturtle&contentTypeSelect=application%2Fsparql-results%2Bjson&endpoint=https%3A%2F%2Fapi.parliament.uk%2Fsparql&requestMethod=POST&tabTitle=All+statutory+instruments&headers=%7B%7D&outputFormat=table
 ).

Jayne and Michael have also been looking at how they'd handle [the depositing of papers ahead of SIs introducing criminal offences](https://trello.com/c/MdQvaYMW/22-deposited-papers-ahead-of-laying-sis-introducing-criminal-offences). Which has been sat on the backlog since the days of [Journal Office Jack](https://twitter.com/jackpdent). Yet another telephone call saw them make a [made affirmative play pen](https://github.com/ukparliament/ontologies/blob/master/procedure/flowcharts/sis/play-pen-made-affirmative.pdf) map with a new starting point and a couple of deposits. This has now gone off to Jane for approval.

In non-procedural news, Robert and Michael dived back into ontology comment editing. A job that's been ongoing since forever. They slowly chipped away and tightened the [treaty model](https://ukparliament.github.io/ontologies/treaty/treaty-ontology.html) comments and were quite pleased with the results.

On Friday, Jayne and Michael reopened the [play pen](https://github.com/ukparliament/ontologies/blob/master/procedure/flowcharts/sis/play-pen-made-affirmative.pdf) picture and attempted to deal with the edge case of SIs laid under the [Sanctions and Anti-Money Laundering Act 2018](http://www.legislation.gov.uk/ukpga/2018/13/contents/enacted). These SIs are made affirmatives but with a slight quirk. Instead of the approval clock starting when a minister makes the instrument, the clock doesn't start until a provision of the regulation comes into force. Another new start point has been introduced to the map. And now awaits sign off from Jane before adding to the data.




