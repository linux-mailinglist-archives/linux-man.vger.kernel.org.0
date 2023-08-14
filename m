Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D341C77BD9C
	for <lists+linux-man@lfdr.de>; Mon, 14 Aug 2023 18:07:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229957AbjHNQHI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Aug 2023 12:07:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231229AbjHNQGn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Aug 2023 12:06:43 -0400
Received: from queue02c.mail.zen.net.uk (queue02c.mail.zen.net.uk [212.23.3.242])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8860412D
        for <linux-man@vger.kernel.org>; Mon, 14 Aug 2023 09:06:37 -0700 (PDT)
Received: from [212.23.1.1] (helo=smarthost01a.sbp.mail.zen.net.uk)
        by queue02c.mail.zen.net.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.90_1)
        (envelope-from <deri@chuzzlewit.myzen.co.uk>)
        id 1qVa5T-0001Ri-So
        for linux-man@vger.kernel.org; Mon, 14 Aug 2023 16:06:35 +0000
Received: from [82.71.22.80] (helo=pip.localnet)
        by smarthost01a.sbp.mail.zen.net.uk with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.90_1)
        (envelope-from <deri@chuzzlewit.myzen.co.uk>)
        id 1qVa5B-0004eW-Dz; Mon, 14 Aug 2023 16:06:17 +0000
From:   Deri <deri@chuzzlewit.myzen.co.uk>
To:     linux-man@vger.kernel.org, Brian.Inglis@shaw.ca
Cc:     Alejandro Colomar <alx@kernel.org>
Subject: Re: No 6.05/.01 pdf book available
Date:   Mon, 14 Aug 2023 17:06:17 +0100
Message-ID: <21985157.EfDdHjke4D@pip>
In-Reply-To: <1b955f49-8181-5bd5-b818-020c6b5287dd@Shaw.ca>
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca> <3258129.44csPzL39Z@pip> <1b955f49-8181-5bd5-b818-020c6b5287dd@Shaw.ca>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="nextPart7564454.EvYhyI6sBW"
Content-Transfer-Encoding: 7Bit
X-Originating-smarthost01a-IP: [82.71.22.80]
Feedback-ID: 82.71.22.80
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_PASS,SPF_PASS,WEIRD_QUOTING autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.

--nextPart7564454.EvYhyI6sBW
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday, 13 August 2023 21:30:34 BST Brian Inglis wrote:
> On 2023-08-12 14:02, Deri wrote:
> > On Saturday, 12 August 2023 18:02:24 BST Brian Inglis wrote:
> >> On 2023-08-07 17:14, Deri wrote:
> >>> On Monday, 7 August 2023 09:45:22 BST Alejandro Colomar wrote:
> >>>> Nevertheless, now I remember Deri told me he hardcoded a lot of stuff
> >>>> for 1.22.4 which should be removed after the release of 1.23.0, so it
> >>>> seems that the time has come to chop a lot of stuff from there.
> >>>> 
> >>>> Deri, would you mind simplifying the scripts assuming a Build-dep of
> >>>> groff(>=1.23.0)?
> >>> 
> >>> Hi Alex, Brian,
> >>> 
> >>> I have done some work on building the pdf. One improvement is any
> >>> warnings
> >>> output by groff, i.e. use of the deprecated .PDF macro, now identify the
> >>> particular man page and line number accurately.
> >>> 
> >>> I have attached two new replacement LinuxManBook directories. The first,
> >>> 1.23.0, will run on a stock groff 1.23.0 system. The second, 1.23.0+,
> >>> runs
> >>> with the latest gropdf which has a number of advantages for this project
> >>> -
> >>> you will find the resulting pdf to be more than 5mb smaller, and the
> >>> page
> >>> numbers in the overview pane match up with the page number at the bottom
> >>> of each page.
> >>> 
> >>> The file NewGropdf.pdf contains description of some of the features in
> >>> the
> >>> new gropdf.
> >>> 
> >>> Both of these should continue to work if the groff version changes,
> >>> thanks
> >>> to Brian's helpful suggestion to include /usr/share/groff/current in the
> >>> font path, but I have achieved this by specifying it in an -F flag
> >>> rather
> >>> than patching gropdf.
> >> 
> >> Nice work Deri!
> >> 
> >> The official 6.05.01 book hyphenates words across page breaks more than
> >> standard 1.23.0 and new 1.23.0+ gropdf books.
> > 
> > I'd like to investigate this to understand why this is happening, please
> > can you give me example page numbers which illustrate this.
> 
> Hi Deri,
> 
> Please see attached awk script and logs showing pages with end of page
> "hyphens" in text of PDFs from `pdftotext -layout`: "official" PDF has 47,
> newer PDFs break only at 5 compound word joins or double dashes.
> 
> >> File sizes are official 6.05.01 ~13.3MB, 200k more than standard 1.23.0
> >> ~13MB, which is >~5MB more than new 1.23.0+ gropdf <~8MB.
> >> 
> >> I now see page footers on all pages!
> >> 
> >> I noticed that new 1.23.0+ seems to set some lines, especially tables, a
> >> little tighter (perhaps because of space handling), but *only* the first
> >> page "intro(1)" has half the normal spacing from the page header to the
> >> first heading!
> > 
> > Yes, I can see the difference in intro(1) and I can see a bug in the
> > version of an.tmac I provided which may affect hyphenation. Also a page
> > number example of the tighter table would be helpful.
> 
> The impression of tighter table spacing seems to be an artifact of more
> consistent text and space rendering by pdftotext as pointed out in the
> diffs, and as you explain below.
> 
> >> [I also noticed that *poppler* `pdf2text -layout` (used to diff the
> >> content
> >> amd layout) prints the .SH NAME and options dashes as en-dash from the
> >> official 6.05.01 book, but prints minus from standard 1.23.0 and new
> >> 1.23.0+ gropdf.]
> > 
> > This is intentional (and probably desirable). The pdf has a mapping so
> > that
> > the groff character \- is displayed as HYPHEN (U+0201) but when text is
> > copy/ pasted from the pdf it is converted to HYPHEN-MINUS (U+002D) which
> > is the character you get when you hit hyphen on the keyboard. This means
> > that if you are copy/pasteing from examples in the man page which
> > includes hyphens then your shell will interpret it correctly.
> > 
> >> I notice a number of widows and orphans, but that may be the man macros
> >> or
> >> groff commands not checking for sufficient space left on the page before
> >> rendering text: allowing 4em before heading spacing, 3em before para
> >> spacing would probably help, at the cost of larger bottom margins; and
> >> groff footers need to allow extra space to prevent widows by allowing
> >> them
> >> to intrude.
> > 
> > This probably needs a bit of tender curation! Bear in mind that the
> > BuildLinuxMan.pl script uses the flags "-dpaper=a4 -P-pa4" so if the man
> > page author has designed for a different page size the widows/orphans may
> > well be different.
> 
> As a Northern-American can I change your uses of "p?a4" to letter in the
> script and expect it to work?
> I added a paper variable, made the changes, it seems to work, and reduces
> end of page hyphens to one compound word instance in mbind(2); log
> attached:

Hi Brian and Alex,

I'm afraid the dangling page hyphens are all my fault. :-(

Line missing in the bespoke an.tmac I provided, new version attached. I know 
Alex wants to run against a stock version of groff, with minimal 
customisation, and, once my branch is merged, there will be further pruning, 
but unless you add to Branden's wish list to include an ability to control the 
hierarchy of the bookmark panel, you will need a customised an.tmac. The 
reason is because the stock an.tmac has a hard coded hierarchy where the .TH 
line is given level 1 but as you want to have separate sections these need to 
be level one and everything else is moved up a level. Of course this just 
means making the starting level configurable on the command line, i.e. 
-r startbkmk=2 or some such. Another change which would need to be accepted is 
to allow a fourth parameter to .MR which is the destination name. Normally the 
name of the destination is derived from the first two parameters concatenated 
with "_", but if the name part of the .MR call to the man page includes non-
ascii characters (such as ".MR my\-lovely\-page 7 ,") then it needs to provide 
a "clean" destination name.

Sorting

I decided to use Sort::Versions (rather than RPM::VersionSort) because it is 
available as a package on my system. Seems to do the job.

Paper

You can now specify the paper size for the book on the command line as "-paper 
size".

Fonts

There are 2 reasons I included fonts in the build environment:-

A) The man pages which define the various iso-8859 pages contain many glyphs 
which are not defined in the standard groff fonts, so I used the Tinos font 
from google which improves the coverage. If you want to get rid of the fonts, 
and rely on just the fonts in groff, you can change line 4 of anmark.tmac to:-

.special S U-TR

Which is an improvement on the standard fonts, and should be available as 
standard if the URW fonts were found when groff was built. You will see 
differences in iso-8859-7 and iso-8859-8 for example.

B) If you build the LinuxManBook using the 1.23.0+ flavour (with the newer 
gropdf that produces a substantially smaller pdf) it requires a slightly 
different font format so needs the embedded font directory. If you have 
installed groff from the deri-gropdf-ng the new format fonts will have been 
installed, so the embedded font directory can be removed.

Makefile

The simplest option would be to add a new rule to the Makefile which is 
dependent on all the man pages have been built, and cd's into the scripts/
LinuxManBook directory and calls the program with the location where the man 
pages exist. However, I suspect Alex fancies something more complicated by 
replacing the perl with a hybrid of shell command and make magic.

I attach a new copy of BuildLinuxMan.pl which is an amalgam of mine and 
Brian's code. This has the new -paper flag.

Alex's MR branch

The new program now recognises existing .MR's in the document and provides the 
"clean" destination name, so it should run against the new branch.

> 	nodemask ... on-
> 	...
> 	line, ...
> 
> There appear to be 24 single word instances of online and 12 outdated
> hyphenated compound word instances of on-line across all man pages.
> 
> UI: I also noticed, while looking for tables to compare, that pages are
> ordered by filename not like rpmvercmp/ls -v/RPM::VersionSort e.g
> ISO_8859-2 is after ISO_8859-16 which may not be as expected.
> Used rpmvercmp in last line of perl sub sortman and works as expected.

I have used Sort::Versions (see above), thanks for the suggestion.

> Tech nitpick: .Z is still recognized by GUIs as compress output
> (UNIX-compressed file) - is there no other file type suffix used for
> ditroff intermediate output? Aha - Alex says .set:
> 
> 	https://lists.gnu.org/archive/html/groff/2023-04/msg00213.html
> 
Well, that's settled.

> Added variables and changed those also in BLM-letter.pl: copy attached.
> 
> > Thanks for your help.
> 
> Happy to help in any way.

Hope you're happy with this version.

Cheers

Deri

--nextPart7564454.EvYhyI6sBW
Content-Disposition: attachment; filename="BuildLinuxMan.pl"
Content-Transfer-Encoding: base64
Content-Type: application/x-perl; name="BuildLinuxMan.pl"

IyEvdXNyL2Jpbi9wZXJsIC13CiMKIwlCdWlsZExpbnV4TWFuLnBsCQk6IEJ1aWxkIExpbnV4IG1h
bnBhZ2VzIGJvb2sKIwlEZXJpIEphbWVzICgmIEJyaWFuIEluZ2xpcykJOiAxNSBEZWMgMjAyMgoj
CiMJUGFyYW1zOi0KIwojICAgICAgICAgICAgICAgJDEgPSBEaXJlY3RvcnkgaG9sZGluZyB0aGUg
bWFuIHBhZ2VzCiMKIyAoQykgQ29weXJpZ2h0IDIwMjIsIERlcmkgSmFtZXMKIwojIFRoaXMgcHJv
Z3JhbSBpcyBmcmVlIHNvZnR3YXJlOyB5b3UgY2FuIHJlZGlzdHJpYnV0ZSBpdCBhbmQvb3IKIyBt
b2RpZnkgaXQgdW5kZXIgdGhlIHRlcm1zIG9mIHRoZSBHTlUgR2VuZXJhbCBQdWJsaWMgTGljZW5z
ZQojIGFzIHB1Ymxpc2hlZCBieSB0aGUgRnJlZSBTb2Z0d2FyZSBGb3VuZGF0aW9uOyBlaXRoZXIg
dmVyc2lvbiAyCiMgb2YgdGhlIExpY2Vuc2UsIG9yIChhdCB5b3VyIG9wdGlvbikgYW55IGxhdGVy
IHZlcnNpb24uCiMKIyBUaGlzIHByb2dyYW0gaXMgZGlzdHJpYnV0ZWQgaW4gdGhlIGhvcGUgdGhh
dCBpdCB3aWxsIGJlIHVzZWZ1bCwKIyBidXQgV0lUSE9VVCBBTlkgV0FSUkFOVFk7IHdpdGhvdXQg
ZXZlbiB0aGUgaW1wbGllZCB3YXJyYW50eSBvZgojIE1FUkNIQU5UQUJJTElUWSBvciBGSVRORVNT
IEZPUiBBIFBBUlRJQ1VMQVIgUFVSUE9TRS4gIFNlZSB0aGUKIyBHTlUgR2VuZXJhbCBQdWJsaWMg
TGljZW5zZSBmb3IgbW9yZSBkZXRhaWxzCiMgKGh0dHA6Ly93d3cuZ251Lm9yZy9saWNlbnNlcy9n
cGwtMi4wLmh0bWwpLgojCgp1c2Ugc3RyaWN0Owp1c2UgR2V0b3B0OjpMb25nOwoKbXkgJWFsaWFz
OwpteSAldGFyZ2V0OwpteSAkaW5UUz0wOwpteSAkaW5CbG9jaz0wOwpteSAkZnBhcGVyPScnOwoK
R2V0T3B0aW9ucygncGFwZXI9cycgPT4gXCRmcGFwZXIpOwoKbXkgJVNlY3Rpb25zPQooCiAgICAi
MSIJPT4gIkdlbmVyYWwgQ29tbWFuZHMgTWFudWFsIiwKICAgICIyIgk9PiAiU3lzdGVtIENhbGxz
IE1hbnVhbCIsCiAgICAiMnR5cGUiCT0+ICJTeXN0ZW0gQ2FsbHMgTWFudWFsICh0eXBlcykiLAog
ICAgIjMiCT0+ICJMaWJyYXJ5IEZ1bmN0aW9ucyBNYW51YWwiLAogICAgIjNjb25zdCIJPT4gIkxp
YnJhcnkgRnVuY3Rpb25zIE1hbnVhbCAoY29uc3RhbnRzKSIsCiAgICAiM2hlYWQiCT0+ICJMaWJy
YXJ5IEZ1bmN0aW9ucyBNYW51YWwgKGhlYWRlcnMpIiwKICAgICIzdHlwZSIJPT4gIkxpYnJhcnkg
RnVuY3Rpb25zIE1hbnVhbCAodHlwZXMpIiwKICAgICI0Igk9PiAiS2VybmVsIEludGVyZmFjZXMg
TWFudWFsIiwKICAgICI1Igk9PiAiRmlsZSBGb3JtYXRzIE1hbnVhbCIsCiAgICAiNiIJPT4gIkdh
bWVzIE1hbnVhbCIsCiAgICAiNyIJPT4gIk1pc2NlbGxhbmVvdXMgSW5mb3JtYXRpb24gTWFudWFs
IiwKICAgICI4Igk9PiAiU3lzdGVtIE1hbmFnZXIncyBNYW51YWwiLAogICAgIjkiCT0+ICJLZXJu
ZWwgRGV2ZWxvcGVyJ3MgTWFudWFsIiwKKTsKCm15ICRkaXI9c2hpZnQgfHwgJy4nOwpteSBAYWxp
YXNlcz1gZWdyZXAgLWwgJ15cXC5zbycgJGRpci9tYW4qLypgOwpteSAkU2VjdGlvbj0nJzsKbXkg
JHRlbXA9J0xNQi5tYW4nOwoKTG9hZEFsaWFzKCk7CkJ1aWxkQm9vaygpOwoKbXkgJGZvcm1hdD0n
cGRmJzsKbXkgJHBhcGVyPSRmcGFwZXIgfHwgJ2xldHRlcic7Cm15ICRjbWRzdHJpbmc9Ii1UJGZv
cm1hdCAtayAtcGV0IC1NLiAtRi4gLW1hbmRvYyAtbWFubWFyayAtZHBhcGVyPSRwYXBlciAtUC1w
JHBhcGVyIC1yQzEgLXJDSEVDS1NUWUxFPTMiOwpteSAkZnJvbnQ9J0xNQmZyb250LnQnOwpteSAk
ZnJvbnRkaXQ9J0xNQmZyb250LnNldCc7Cm15ICRtYW5kaXQ9J0xpbnV4TWFuQm9vay5zZXQnOwpt
eSAkYm9vaz0iTGludXhNYW5Cb29rLiRmb3JtYXQiOwoKc3lzdGVtKCJncm9mZiAtVCRmb3JtYXQg
LWRwYXBlcj0kcGFwZXIgLVAtcCRwYXBlciAtbXMgJGZyb250IC1aID4gJGZyb250ZGl0Iik7CnN5
c3RlbSgiZ3JvZmYgLXogLWRQREYuRVhQT1JUPTEgLWRMQUJFTC5SRUZTPTEgJHRlbXAgJGNtZHN0
cmluZyAyPiYxIHwgTENfQUxMPUMgZ3JlcCAnXlxcLiAqZHMnIHwgZ3JvZmYgLVQkZm9ybWF0ICRj
bWRzdHJpbmcgLSAkdGVtcCAtWiA+ICRtYW5kaXQiKTsKc3lzdGVtKCIuL2dybyRmb3JtYXQgLUYu
Oi91c3Ivc2hhcmUvZ3JvZmYvY3VycmVudCAkZnJvbnRkaXQgJG1hbmRpdCAtcCRwYXBlciA+ICRi
b29rIik7CiN1bmxpbmsgIiRtYW5kaXQiLCIkdGVtcCIsIiRmcm9udGRpdCI7ICAjIElmIHlvdSB3
YW50IHRvIGNsZWFuIHVwCgojIEFsaWFzZXMgYXJlIHRoZSBtYW4gcGFnZXMgd2hpY2ggLnNvIGFu
b3RoZXIgbWFuIHBhZ2UsIHNvIGJ1aWxkIGEgaGFzaCBvZiB0aGVtIHNvCiMgdGhhdCB3aGVuIHdl
IGFyZSBwcm9jZXNzaW5nIHJlZmVyZW5jZWQgbWFuIHBhZ2Ugd2UgY2FuIGFkZCB0aGUgdGFyZ2V0
IGZvciB0aGUKIyBib29rbWFyay4KCnN1YiBMb2FkQWxpYXMKewogICAgZm9yZWFjaCBteSAkZm4g
KEBhbGlhc2VzKQogICAgewoJY2hvbXAoJGZuKTsKCW15IChAcHRoKT1zcGxpdCgnLycsJGZuKTsK
CW15ICRubT1wb3AoQHB0aCk7CglteSAkYmttYXJrPSIkMV8kMiIgaWYgJG5tPX5tLyguKilcLihc
dyspLzsKCglpZiAob3BlbihGLCI8JGZuIikpCgl7CgkgICAgd2hpbGUgKDxGPikKCSAgICB7CgkJ
bmV4dCBpZiBtL15cLlxcIi87CgoJCWlmIChtL14uc29ccysobWFuXHcrXC8oLispXC4oLis/KSkk
LykKCQl7CgkJICAgICRhbGlhc3skYmttYXJrfT1bIiQyXyQzIiwkMiwkM107CgkJICAgIHB1c2go
QHskdGFyZ2V0eyIkMl8kMyJ9fSwkYmttYXJrKTsKCQkgICAgbGFzdDsKCQl9CgkJZWxzZQoJCXsK
CQkgICAgcHJpbnQgU1RERVJSICJBbGlhcyBmYWlsOiAkZm5cbiI7CgkJfQoJICAgIH0KCgkgICAg
Y2xvc2UoRik7Cgl9CgllbHNlCgl7CgkgICAgcHJpbnQgU1RERVJSICJPcGVuIGZhaWw6ICRmblxu
IjsKCX0KICAgIH0KfQoKc3ViIEJ1aWxkQm9vawp7CiAgICBvcGVuKEJLLCI+JHRlbXAiKTsKCiAg
ICBwcmludCBCSyAiLnBkZnBhZ2VudW1iZXJpbmcgRCAuIDFcbiI7CgogICAgZm9yZWFjaCBteSAk
Zm4gKHNvcnQgc29ydG1hbiBnbG9iKCIkZGlyL21hbiovKiIpKQogICAgewoJbXkgKCRubSwkc2Vj
LCRzcnQpPUdldE5tU2VjKCRmbik7CgogICAgICAgIG15ICRia21hcms9IiQxXyQyIiBpZiAkbm09
fm0vKC4qKVwuKFx3KykvOwogICAgICAgIG15ICR0aXRsZT0gIiQxXFwoJDJcXCkiOwoKIyBJZiB0
aGlzIGlzIGFuIGFsaWFzLCBqdXN0IGFkZCBpdCB0byB0aGUgb3V0bGluZSBwYW5lbC4KCiAgICAg
ICAgaWYgKGV4aXN0cygkYWxpYXN7JGJrbWFya30pKQogICAgICAgIHsKICAgICAgICAgICAgcHJp
bnQgQksgIi5lb1xuLmRldmljZSBwczpleGVjIFsvRGVzdCAvJGFsaWFzeyRia21hcmt9LT5bMF0g
L1RpdGxlICgkdGl0bGUpIC9MZXZlbCAyIC9PVVQgcGRmbWFya1xuLmVjXG4iOwoJICAgIHByaW50
IEJLICIuaWYgZFBERi5FWFBPUlQgLnRtIC5kcyBwZGY6bG9vaygkYmttYXJrKSAkYWxpYXN7JGJr
bWFya30tPlsxXSgkYWxpYXN7JGJrbWFya30tPlsyXSlcbiI7CgkgICAgbmV4dDsKCX0KCglwcmlu
dCBCSyAiLlxcXCIgPj4+Pj4+ICQxKCQyKSA8PDw8PDxcbi5sZiAwICRia21hcmtcbiI7CgoJaWYg
KG9wZW4oRiwnPCcsJGZuKSkKICAgICAgICB7CiAgICAgICAgICAgIHdoaWxlICg8Rj4pCiAgICAg
ICAgICAgIHsKICAgICAgICAgICAgICAgIGlmIChtL15cLlxcIi8pCiAgICAgICAgICAgICAgICB7
CiAgICAgICAgICAgICAgICAgICAgcHJpbnQgQksgJF87CiAgICAgICAgICAgICAgICAgICAgbmV4
dDsKICAgICAgICAgICAgICAgIH0KCiAgICAgICAgICAgICAgICBjaG9tcDsKCiMgVGhpcyBjb2Rl
IGlzIHRvIGRldGVybWluZSB3aGV0aGVyIHdlIGFyZSB3aXRoaW4gYSB0YmwgYmxvY2sgYW5kIGlu
IGEgdGV4dCBibG9jawojIFR7IGFuZCBUfS4gVGhpcyBpcyBmdWRnZSBjb2RlIHBhcnRpY3VsYXJs
eSBmb3IgdGhlIHN5c2NhbGxzKDcpIHBhZ2UuCgogICAgICAgICAgICAgICAgJGluVFM9MSBpZiBt
L1wuVFMvOwogICAgICAgICAgICAgICAgJGluVFM9MCwkaW5CbG9jaz0wIGlmIG0vXC5URS87Cgog
ICAgICAgICAgICAgICAgcy9cciQvLzsgICAgIyBJbiBjYXNlIGVkaXRlZCB1bmRlciB3aW5kb3dz
IGkuZS4gQ1IvTEYKICAgICAgICAgICAgICAgIHMvXHMrJC8vOwogICAgICAgICAgICAgICAgbmV4
dCBpZiAhJF87CiMgICAgICAgICAgICAgICBzL15ccysvLzsKCiAgICAgICAgICAgICAgICBpZiAo
bS9eXC5CUlxzKyhbLVx3XFwuXSspXHMrXCgoLis/KVwpKC4qKS8gb3IgbS9eXC5NUlxzKyhbLVx3
XFwuXSspXHMrKFx3KylccysoLiopLykKICAgICAgICAgICAgICAgIHsKICAgICAgICAgICAgICAg
ICAgICBteSAkYmttYXJrPSIkMSI7CiAgICAgICAgICAgICAgICAgICAgbXkgJHNlYz0kMjsKICAg
ICAgICAgICAgICAgICAgICBteSAkYWZ0ZXI9JDM7CiAgICAgICAgICAgICAgICAgICAgbXkgJGRl
c3Q9JGJrbWFyazsKICAgICAgICAgICAgICAgICAgICAkZGVzdD1+cy9cXC0vLS9nOwogICAgICAg
ICAgICAgICAgICAgICRfPSIuTVIgXCIkYmttYXJrXCIgXCIkc2VjXCIgXCIkYWZ0ZXJcIiBcIiRk
ZXN0XCIiOwogICAgICAgICAgICAgICAgfQoKICAgICAgICAgICAgICAgIHMvXlwuQkkgXFxmQi8u
QkkgLzsKCQlzL15cLkJSXHMrKFxTKylccyokLy5CICQxLzsKICAgICAgICAgICAgICAgIHMvXlwu
QklccysoXFMrKVxzKiQvLkIgJDEvOwogICAgICAgICAgICAgICAgcy9eXC5JUlxzKyhcUyspXHMq
JC8uSSAkMS87CgojIEZpZGRsaW5nIGZvciBzeXNjYWxscyg3KSA6LSgKCiAgICAgICAgICAgICAg
ICBpZiAoJGluVFMpCiAgICAgICAgICAgICAgICB7CiAgICAgICAgICAgICAgICAgICAgbXkgQGNv
bHM9c3BsaXQoL1x0LywkXyk7CgogICAgICAgICAgICAgICAgICAgIGZvcmVhY2ggbXkgJGMgKEBj
b2xzKQogICAgICAgICAgICAgICAgICAgIHsKICAgICAgICAgICAgICAgICAgICAgICAgJGluQmxv
Y2srPSgpPSRjPX5tL1Rcey9nOwogICAgICAgICAgICAgICAgICAgICAgICAkaW5CbG9jay09KCk9
JGM9fm0vVFx9L2c7CgogICAgICAgICAgICAgICAgICAgICAgICBteSAkbXRjaD0kYz1+cy9ccypc
XGZCKFstXHcuXSspXFxmUFwoKFx3KylcKS9cbi5NUiAkMSAkMiBcXGNcbi9nOwogICAgICAgICAg
ICAgICAgICAgICAgICAkYz0iVHtcbiR7Y31cblR9IiBpZiAkbXRjaCBhbmQgISRpbkJsb2NrOwog
ICAgICAgICAgICAgICAgICAgIH0KCiAgICAgICAgICAgICAgICAgICAgJF89am9pbigiXHQiLEBj
b2xzKTsKICAgICAgICAgICAgICAgICAgICBzL1xuXG4vXG4vZzsKICAgICAgICAgICAgICAgIH0K
CiAgICAgICAgICAgICAgICBpZiAobS9eXC5USFxzKyhbLVx3XFwuXSspXHMrKFx3KykvKQogICAg
ICAgICAgICAgICAgewoKICAgICAgICAgICAgICAgICAgICAjIGlmIG5ldyBzZWN0aW9uIGFkZCB0
b3AgbGV2ZWwgYm9va21hcmsKCiAgICAgICAgICAgICAgICAgICAgaWYgKCRzZWMgbmUgJFNlY3Rp
b24pCiAgICAgICAgICAgICAgICAgICAgewoJCQlwcmludCBCSyAiLm5yIFBERk9VVExJTkUuRk9M
RExFVkVMIDFcbi5mbFxuIjsKCQkJcHJpbnQgQksgIi5wZGZib29rbWFyayAxICRTZWN0aW9uc3sk
c2VjfVxuIjsKCQkJcHJpbnQgQksgIi5uciBQREZPVVRMSU5FLkZPTERMRVZFTCAyXG4iOwoJCQkk
U2VjdGlvbj0kc2VjOwogICAgICAgICAgICAgICAgICAgIH0KCiAgICAgICAgICAgICAgICAgICAg
cHJpbnQgQksgIiRfXG4iOwoKIyBBZGQgYSBsZXZlbCB0d28gYm9va21hcmsuIFdlIGRvbid0IHNl
dCBpdCBpbiB0aGUgVEggbWFjcm8gc2luY2UgdGhlIG5hbWUgcGFzc2VkCiMgbWF5IGJlIGRpZmZl
cmVudCBmcm9tIHRoZSBmaWxlbmFtZSwgaS5lLiBmaWxlID0gdW5pbXBsZW1lbnRlZC4yLCBUSCA9
IFVOSU1QTEVNRU5URUQgMgoKICAgICAgICAgICAgICAgICAgICBwcmludCBCSyAiLnBkZmJvb2tt
YXJrIC1UICRia21hcmsgMiAkMSgkMilcbiI7CgojIElmIHRoaXMgcGFnZSBpcyByZWZlcmVuY2Vk
IGJ5IGFuIGFsaWFzIHBsYW50IGEgZGVzdGluYXRpb24gbGFiZWwgZm9yIHRoZSBhbGlhcy4KCiAg
ICAgICAgICAgICAgICAgICAgaWYgKGV4aXN0cygkdGFyZ2V0eyRia21hcmt9KSkKICAgICAgICAg
ICAgICAgICAgICB7CiAgICAgICAgICAgICAgICAgICAgICAgIGZvcmVhY2ggbXkgJHRhcmcgKEB7
JHRhcmdldHskYmttYXJrfX0pCgkJCXsKCQkJICAgIHByaW50IEJLICIucGRmKmhyZWYuc2V0ICR0
YXJnXG4iOwoJCQl9CgkJICAgIH0KCgkJICAgIG5leHQ7CgkJfQoKCQlwcmludCBCSyAiJF9cbiI7
CgoJICAgIH0KCgkgICAgY2xvc2UoRik7CgoJfQogICAgfQoKICAgIGNsb3NlKEJLKTsKfQoKc3Vi
IEdldE5tU2VjCnsKICAgIG15IChAcHRoKT1zcGxpdCgnLycsc2hpZnQpOwogICAgbXkgJG5tPXBv
cChAcHRoKTsKICAgIG15ICRzZWM9c3Vic3RyKHBvcChAcHRoKSwzKTsKICAgIG15ICRzcnQ9JG5t
OwogICAgJHNydD1+cy9eXysvLzsKICAgICRzcnQ9IiRzZWMvJHNydCI7CiAgICByZXR1cm4oJG5t
LCRzZWMsJHNydCk7Cn0KCiMgYWRkIHJwbXZlcmNtcAojdXNlIFJQTTo6VmVyc2lvblNvcnQ7CnVz
ZSBTb3J0OjpWZXJzaW9uczsKCnN1YiBzb3J0bWFuCnsKIyBTb3J0IC0gaWdub3JlIGNhc2UgYnV0
IGZyaWcgaXQgc28gdGhhdCBpbnRybyBpcyB0aGUgZmlyc3QgZW50cnkuCgogICAgbXkgKHVuZGVm
LCRzMSwkYyk9R2V0Tm1TZWMoJGEpOwogICAgbXkgKHVuZGVmLCRzMiwkZCk9R2V0Tm1TZWMoJGIp
OwoKICAgIG15ICRjbXA9JHMxIGNtcCAkczI7CgogICAgcmV0dXJuICRjbXAgaWYgJGNtcDsKICAg
IHJldHVybiAtMSBpZiAoJGM9fm0vXC9pbnRyby8gYW5kICRkIX5tL1wvaW50cm8vKTsKICAgIHJl
dHVybiAgMSBpZiAoJGQ9fm0vXC9pbnRyby8gYW5kICRjIX5tL1wvaW50cm8vKTsKICAgIHJldHVy
biB2ZXJzaW9uY21wKGxjKCRjKSxsYygkZCkpOwojICAgcmV0dXJuIChsYygkYykgY21wIGxjKCRk
KSk7Cn0K


--nextPart7564454.EvYhyI6sBW
Content-Disposition: attachment; filename="anmark.tmac"
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="UTF-8"; name="anmark.tmac"

.nr PDFOUTLINE.FOLDLEVEL 0
.defcolor pdf:href.colour rgb 0.00 0.25 0.75
.pdfinfo /Title "The Linux man-pages Book"
.special S U-TR

--nextPart7564454.EvYhyI6sBW
Content-Disposition: attachment; filename="an.tmac"
Content-Transfer-Encoding: 7Bit
Content-Type: text/troff; charset="UTF-8"; name="an.tmac"

.\" groff implementation of man(7) package
.\"
.\" Copyright (C) 1989-2023 Free Software Foundation, Inc.
.\"      Written by James Clark (jjc@jclark.com)
.\" Enhanced by: Werner Lemberg <wl@gnu.org>
.\"              Larry Kollar <kollar@alltel.net>
.\"              G. Branden Robinson <g.branden.robinson@gmail.com>
.\"
.\" Thanks to Deri James for illustrating PDF bookmark features.
.\"
.\" This file is part of groff.
.\"
.\" groff is free software; you can redistribute it and/or modify it
.\" under the terms of the GNU General Public License as published by
.\" the Free Software Foundation, either version 3 of the License, or
.\" (at your option) any later version.
.\"
.\" groff is distributed in the hope that it will be useful, but WITHOUT
.\" ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
.\" or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public
.\" License for more details.
.\"
.\" You should have received a copy of the GNU General Public License
.\" along with this program.  If not, see
.\" <http://www.gnu.org/licenses/>.
.
.
.\" Put site additions in the file man.local, loaded near the end of
.\" this file.  To add things to TH, use '.am1 TH'.
.
.if !\n(.g \
.  ab groff man macros require groff extensions; aborting
.
.do if d TH .nx
.
.do nr *groff_an_tmac_C \n[.cp]
.cp 0
.
.\" Package-internal names start with "an-" and are subject to change,
.\" such as migration to "an*" (in progress).
.
.\" Define a string for use in diagnostic messages.
.ds an an.tmac\"
.
.\" We use the .stringup request from groff 1.23, but nothing breaks if
.\" it is undefined; the output is unchanged in appearance from earlier
.\" releases.
.if (\n[.x]\n[.y] < 118) \{\
.  ds an-msg \*[an]: groff man macros require groff 1.18 or later,\"
.  as an-msg " but found groff \n[.x].\n[.y]; aborting\"
.  ab \*[an-msg]
.\}
.
.\" === Define macros. ===
.\"
.\" Macros that are part of the external interface (TH, SH, P, etc.) or
.\" that are called by traps of any kind must be defined with `de1`
.\" because they might be called from a context where compatibility mode
.\" is enabled.  For other macros, `de` suffices.
.
.de an-warn
.  tm \*[an]:\\n[.F]:\\n[.c]: warning: \\$*
..
.
.de an-style-warn
.  if \\n[CHECKSTYLE] \
.    tm \*[an]:\\n[.F]:\\n[.c]: style: \\$*
..
.
.de an-deprecation-warn
.  if (\\n[CHECKSTYLE] > 1) \
.    an-style-warn use of deprecated macro: .\\$0
..
.
.de1 an-blank-line-trap
.  if (\\n[CHECKSTYLE] > 2) \
.    an-style-warn blank line in input
.  sp
..
.
.de1 an-leading-space-trap
.  if (\\n[CHECKSTYLE] > 2) \
.    if \\n[.u] \
.      an-style-warn \\n[lsn] leading space(s) on input line
.  br
.  nop \h'\\n[lss]u'\c
..
.
.\" Define alternate requests to handle continuous rendering.
.\"
.\" This .ne replacement avoids page breaks; instead, the page length is
.\" increased to the necessary amount.
.de an-ne
.  ie \\n[.$] .nr an-amount (v;\\$*)
.  el         .nr an-amount 1v
.  if (\\n[an-amount] >= \\n[.t]) \
.    pl +(\\n[an-amount]u - \\n[.t]u + 1v)
.  rr an-amount
..
.
.\" This .bp replacement for continuous rendering mode adjusts the page
.\" length to the current position so that no empty lines are inserted.
.de an-bp
.  pl \\n[nl]u
..
.
.\" We need an end-of-input macro to flush any pending output line and
.\" write the footer for the final man page rendered.  We can also be
.\" called by andoc when switching to an mdoc(7) page, irrespective of
.\" continuous rendering mode.
.de1 an-end
.  if !r an-TH-was-called .return
.  if \\n[cR] \{\
.    \" We might have a pending output line that is not yet broken, and
.    \" also be 1v from the bottom of the page.  If we break (or flush)
.    \" the output line now, the page will get ejected afterward and
.    \" troff will exit because we're in an end-of-input macro--our
.    \" footer will never be output.  So, if that is the case, further
.    \" extend the page length by 1v.
.    if ((\\n[.p] - \\n[nl]) <= \\n[.V]) .pl +1v
.    br
.    pl +1v
.    sp 1v
.    an-footer
.    \" If we're processing multiple documents and have started a new
.    \" one, draw a line between this footer and the next header.
.    if !'\\n[.F]'' \{\
.      pl +1v
.      nf
.      ti 0
.      nop \D'l \\n[LL]u 0'
.      fi
.    \}
.  \}
.  rr an-TH-was-called
.  ch an-header
.  an*break-page-with-new-number
..
.
.\" Move macros into place for continuous rendering.
.de an-set-up-continuous-rendering
.  rn ne an-real-ne
.  rn bp an-real-bp
.  rn an-ne ne
.  rn an-bp bp
.  em an-end
..
.
.de an*reset-hyphenation-mode
.  ie \\n[HY] \{\
.    \" No page breaks occur in continuous rendering.
.    ie \\n[cR] \
.      nr an*hyphenation-mode \\n[\\*[locale]*hyphenation-mode-base]
.    el \
.      nr an*hyphenation-mode \\n[\\*[locale]*hyphenation-mode-trap]
.  \}
.  el \
.    nr an*hyphenation-mode 0
.  hy \\n[an*hyphenation-mode]
..
.
.de an-reset-tab-stops
.  ta T .5i
..
.
.de an-reset-paragraph-spacing
.  ie \\n[.$] .nr PD (v;\\$1)
.  el         .nr PD (.4v >? \n[.V])
..
.
.de an-reset-margin-and-inset-level
.  nr an-inset-level 1
.  nr an-margin \\n[BP]
.  nr an-saved-margin1 \\n[IN]
.  nr an-prevailing-indent \\n[IN]
.  nr an-saved-prevailing-indent1 \\n[IN]
..
.
.\" Break the page and update its number depending on the C (consecutive
.\" numbering) register.
.\"
.\" Corner case: if formatting multiple documents and P (starting page
.\" number) is defined but C is not set, start numbering each document
.\" at \n[P].  Not strictly necessary if not switching macro packages.
.de an*break-page-with-new-number
.  ie \\n[C] .bp (\\n[%] + 1) \" argument NOT redundant before page 1
.  el \{\
.    ie r P .bp \\n[P]
.    el     .bp 1
.  \}
..
.
.\" Localize manual section titles for English.
.de an*localize-strings
.  ds an*section1 General Commands Manual\"
.  ds an*section2 System Calls Manual\"
.  ds an*section3 Library Functions Manual\"
.  ds an*section4 Kernel Interfaces Manual\"
.  ds an*section5 File Formats Manual\"
.  ds an*section6 Games Manual\"
.  ds an*section7 Miscellaneous Information Manual\"
.  ds an*section8 System Manager's Manual\"
.  ds an*section9 Kernel Developer's Manual\"
..
.
.de an*cln
.  ds \\$1
.  als an*cln:res \\$1
.  shift
.  ds an*cln:res \\$*\"
.  ds an*cln:char \\*[an*cln:res]
.  stringdown an*cln:res
.  substring an*cln:char 0 0
.  if '\\*[an*cln:char]'\%' .substring an*cln:res 1
.  rm an*cln:char
..
.
.\" Write a bookmark/anchor/link target $2 at hierarchical depth $1.
.de an*bookmark
.  if \\n[an*is-output-pdf] \{\
.    if (\\n[.$]>2) .an*cln an*page-ref-nm \\$3\"
.    ie (\\$1=1) .pdfbookmark -T "\\*[an*page-ref-nm]" \\$1 \\$2
.    el .pdfbookmark \\$1 \\$2
.  \}
..
.
.\" Begin man page.
.\" .TH topic section[ extra1[ extra2[ extra3]]]
.de1 TH
.  if ((\\n[.$] < 2) : (\\n[.$] > 5)) \
.    an-style-warn .\\$0 expects 2 to 5 arguments, got \\n[.$]
.
.  blm an-blank-line-trap
.  lsm an-leading-space-trap
.
.  \" If batch processing (rendering multiple) man page documents, we
.  \" must handle the end of a previous document.
.  if \\n[an*need-titles-reset] \{\
.    if \\n[cR] .an-end
.
.    \" Clear the page header trap so it is not sprung with stale
.    \" information.
.    ch an-header
.    an*break-page-with-new-number
.  \}
.  if \\n[C] .rr P
.
.  nr an-TH-was-called 1 \" an-end can make certain assumptions.
.
.  \" Set up rendering parameters.  We do this in TH instead of only
.  \" once when initializing the package because when rendering multiple
.  \" pages, a previous page might have changed them.
.
.  fam \\*[an*body-family]
.  ft R
.
.  nr PS    10z \" default type size
.  nr PS-SS 10z
.  nr PS-SH 10.95z
.  nr VS    12p
.
.  \" use sizes similar to LaTeX
.  if t \{\
.    ie (\\n[S] == 11) \{\
.      nr PS    10.95z
.      nr PS-SS 10.95z
.      nr PS-SH 12z
.      nr VS    13.6p
.    \}
.    el \{\
.      if (\\n[S] == 12) \{\
.        nr PS    12z
.        nr PS-SS 12z
.        nr PS-SH 14.4z
.        nr VS    14.5p
.      \}
.    \}
.  \}
.
.  \" The previous document rendered in a batch may have been in a
.  \" different language.  If this one is in English, (re-)init strings.
.  if '\\*[locale]'english' .an*localize-strings
.
.  ps \\n[PS]u
.  vs \\n[VS]u
.  ad \\*[AD]
.  ll \\n[LL]u
.
.  \" We've seen no tbl(1) tables yet in this document.
.  rr TW
.  nr an-was-tbl-failure-reported 0
.
.  an*reset-hyphenation-mode
.  an-reset-tab-stops
.  an-reset-paragraph-spacing
.  an-reset-margin-and-inset-level
.
.  nr an-tag-separation 1n
.  nr an-need-no-space-mode 0
.  nr an-need-break 0
.  nr an-is-in-diversion 0
.  nr an*is-in-example 0
.
.  ds an*topic "\\$1\"
.  if \\n[CT] .stringup an*topic
.  ds an*section "\\$2\"
.  ie (\\n[.$] > 4) .ds an-extra3 "\\$5\"
.  el \{\
.    \" Simulate switch/case in roff.
.          ie '\\$2'1' .ds an-extra3 \\*[an*section1]\"
.    el \{.ie '\\$2'2' .ds an-extra3 \\*[an*section2]\"
.    el \{.ie '\\$2'2type' .ds an-extra3 \\*[an*section2type]\"
.    el \{.ie '\\$2'3' .ds an-extra3 \\*[an*section3]\"
.    el \{.ie '\\$2'3const' .ds an-extra3 \\*[an*section3const]\"
.    el \{.ie '\\$2'3head' .ds an-extra3 \\*[an*section3head]\"
.    el \{.ie '\\$2'3type' .ds an-extra3 \\*[an*section3type]\"
.    el \{.ie '\\$2'4' .ds an-extra3 \\*[an*section4]\"
.    el \{.ie '\\$2'5' .ds an-extra3 \\*[an*section5]\"
.    el \{.ie '\\$2'6' .ds an-extra3 \\*[an*section6]\"
.    el \{.ie '\\$2'7' .ds an-extra3 \\*[an*section7]\"
.    el \{.ie '\\$2'8' .ds an-extra3 \\*[an*section8]\"
.    el \{.ie '\\$2'9' .ds an-extra3 \\*[an*section9]\"
.    el                .ds an-extra3 \" empty
.    \}\}\}\}\}\}\}\}\}\}\}\}
.  \}
.
.  ds an-extra1 "\\$3\"
.  ie (\\n[.$] > 3)    .ds an-extra2 "\\$4\"
.  el                  .ds an-extra2 \" empty; but .AT/.UC can override
.
.  if '\\*[an-extra1]'' \{\
.    ds an-msg .\\$0 missing third argument; suggest document\"
.    as an-msg " modification date in ISO 8601 format (YYYY-MM-DD)\"
.    an-style-warn \\*[an-msg]
.    rm an-msg
.  \}
.
.  if '\\*[an-extra2]'' \{\
.    ds an-msg .\\$0 missing fourth argument; suggest package/project\"
.    \" Yes, that's one double quote, then three, then two.
.    as an-msg " name and version (e.g., """groff 1.23.0"")\"
.    an-style-warn \\*[an-msg]
.    rm an-msg
.  \}
.
.  if '\\$5\\*[an-extra3]'' \{\
.    ds an-msg .\\$0 missing fifth argument and second argument '\\$2'\"
.    as an-msg " not a recognized manual section; specify its title\"
.    an-style-warn \\*[an-msg]
.    rm an-msg
.  \}
.
.  \" Initialize environment for headers and footers.
.  ev an*env-header-and-footer
.  ps \\n[PS]u
.  vs \\n[VS]u
.  lt \\n[LT]u
.  an*abbreviate-page-topic
.  \" If AT or UC is called, we will need to abbreviate again.
.  an*abbreviate-inner-footer
.  ev
.
.  \" HTML gets the topic without any abbreviation, since it's metadata.
.  if \\n[an*is-output-html] \{\
.    DEVTAG-TL
.    nop \\*[an*topic]
.    DEVTAG-EO-TL
.  \}
.
.  \" A bookmark is attached to the page header, but only on the first
.  \" page of the document.
.  nr an*was-TH-bookmark-emitted 0
.  an-header
.
.  if !\\n[cR] \{\
.    wh 0 an-header
.    ie r FT .nr an*footer-location \\n[FT]
.    el      .nr an*footer-location (-.5i)
.    wh \\n[an*footer-location]u an-footer
.    wh (\\n[an*footer-location]u - .5i) an-break-body-text
.    rr an*footer-location
.    \}
.  \}
.
.  nr an*need-titles-reset 1
..
.
.\" Support legacy AT&T and BSD Unix man pages.
.
.\" Designate an AT&T Unix man page.
.\" .AT [system-id[ release-id]]
.de1 AT
.  nop \\*[an-deprecation-warn]\\
.  ds an-extra2 "7th Edition\"
.  if "\\$1"3" .ds an-extra2 "7th Edition\"
.  if "\\$1"4" .ds an-extra2 "System III\"
.  if "\\$1"5" \{\
.    ie "\\$2"" .ds an-extra2 "System V\"
.    el         .ds an-extra2 "System V Release \\$2\"
.  \}
.  ev an*env-header-and-footer
.  an*abbreviate-inner-footer
.  ev
..
.
.\" Designate a BSD Unix man page.
.\" .UC [system-id]
.de1 UC
.  nop \\*[an-deprecation-warn]\\
.  ds an-extra2 "3rd Berkeley Distribution\"
.  if "\\$1"3" .ds an-extra2 "3rd Berkeley Distribution\"
.  if "\\$1"4" .ds an-extra2 "4th Berkeley Distribution\"
.  if "\\$1"5" .ds an-extra2 "4.2 Berkeley Distribution\"
.  if "\\$1"6" .ds an-extra2 "4.3 Berkeley Distribution\"
.  if "\\$1"7" .ds an-extra2 "4.4 Berkeley Distribution\"
.  ev an*env-header-and-footer
.  an*abbreviate-inner-footer
.  ev
..
.
.\" Restore tab stops to defaults.
.de1 DT
.  nop \\*[an-deprecation-warn]\\
.  an-reset-tab-stops
..
.
.\" Restore inter-paragraph spacing to default (or set it to argument).
.\" .PD [distance]
.de1 PD
.  nop \\*[an-deprecation-warn]\\
.  nop \\*[an-reset-paragraph-spacing]\\
..
.
.\" Write the page header; can be redefined by man.local.
.\"
.\" In continuous rendering mode, we need to extend the page length to
.\" accommodate the vertical size of our header (plus any spacing).
.if d PT .ig
.de1 PT
.  ie \\n[cR] .pl +1v
.  el         .sp .5i
.  if !\\n[an*was-TH-bookmark-emitted] \{\
.\" .    an*bookmark 2 \E*[an*page-ref-string]
.    nr an*was-TH-bookmark-emitted 1
.  \}
.  tl '\\*[an-pageref]'\\*[an-extra3]'\\*[an-pageref]'
.  ie \\n[cR] \{\
.    pl +1v
.    sp 1v
.  \}
.  el .sp |1i
..
.
.\" Write the page footer; can be redefined by man.local.
.\"
.\" In continuous rendering mode, we need to extend the page length to
.\" accommodate the vertical size of our footer (plus any spacing).
.if d BT .ig
.de1 BT
.  if \\n[cR] .pl +1v
.  ie \\n[D] \{\
.    if o .tl '\\*[an*ifoot]'\\*[an-extra1]'\\*[an*ofoot]'
.    if e .tl '\\*[an*ofoot]'\\*[an-extra1]'\\*[an*ifoot]'
.  \}
.  el \
.    tl '\\*[an*ifoot]'\\*[an-extra1]'\\*[an*ofoot]'
..
.
.\" Abbreviate the page topic if it's too long for the header.  Leaves
.\" string an-pageref defined for use in .PT and .an-footer.  Also
.\" leaves an*topic-abbv for possible use by .PT and .BT re-definers.
.\" Call this only from within the header/footer environment.
.de an*abbreviate-page-topic
.  ds an*topic-abbv \\*[an*topic]\" might not get abbreviated at all
.  ds an*topic-string \\*[an*topic]\"
.  ds an-ellipsis \|.\|.\|.\|\"
.  \" an*page-ref-string is left unmodified for internal use, such as
.  \" PDF bookmarks.
.  ds an*page-ref-string \\*[an*topic](\\*[an*section])\"
.  ds an-pageref \\*[an*topic-abbv](\\*[an*section])\"
.  an*cln an*page-ref-bm-nm \\*[an*topic]_\\*[an*section]\"
.  stringdown an*page-ref-bm-nm
.  nr an-header-width \\w'\\*[an-pageref]\\*[an-extra3]\\*[an-pageref]'
.  while (\\n[an-header-width] >= \\n[.lt]) \{\
.    \" The page topic is too long; trim some bits out of the middle.
.    length an*topic-length \\*[an*topic-string]
.    \" roff uses truncating division.  Remove an additional character
.    \" on each side of the midpoint to account for the ellipsis we add
.    \" later.
.    nr an-mark1 (\\n[an*topic-length] / 2 - 2)
.    nr an-mark2 (\\n[an*topic-length] / 2 + 2)
.    ds an-prefix \\*[an*topic-string]\"
.    ds an-suffix \\*[an*topic-string]\"
.    \" Use extremum operators to ensure that the first and last
.    \" characters of the topic remain intact (in cases of pathological
.    \" shortening).
.    substring an-prefix 0 (\\n[an-mark1] >? 1)
.    substring an-suffix (\\n[an-mark2] <? \\n[an*topic-length] - 1) -1
.    ds an*topic-string \\*[an-prefix]\\*[an-suffix]\"
.    ds an*topic-abbv \\*[an-prefix]\\*[an-ellipsis]\\*[an-suffix]\"
.    \" Remeasure the formatted topic; give up if we made no progress.
.    length an*topic-new-length \\*[an*topic-string]
.    ie (\\n[an*topic-new-length] >= \\n[an*topic-length]) \
.      break
.    ds an-pageref \\*[an*topic-abbv](\\*[an*section])\"
.    nr an-header-width \
       \\w'\\*[an-pageref]\\*[an-extra3]\\*[an-pageref]'
.  \}
.  ds an-pageref \\*[an-lic]\f[\\*[MF]]\\*[an*topic-abbv]\\*[an-ic]\
\f[R](\\*[an*section])\"
.  rr an*topic-length-prev
.  rr an-mark1
.  rr an-mark2
.  rm an-prefix
.  rm an-suffix
.  rm an*topic-string
.  rr an*topic-length
.  rr an-header-width
.  rm an-ellipsis
..
.
.\" Iterate through concatenation of arguments as a string.  If a bare
.\" backslash is found, make `an*string-contains-backslash` true.  Our
.\" caller should delete this register when done with it.
.de an*scan-string-for-backslash
.  nr an*string-contains-backslash 0
.  nr an*index 0
.  length an*max-index \\$*
.  while (\\n[an*index] < \\n[an*max-index]) \{\
.    ds an*char \\$*
.    substring an*char \\n[an*index] \\n[an*index]
.    ec @
.    \" Use a weird delimiter to reduce lexical colorizer confusion.
.    if _@*[an*char]_\\_ .nr an*string-contains-backslash 1
.    ec
.    if \\n[an*string-contains-backslash] .break
.    nr an*index +1
.  \}
.  rm an*char
.  rr an*max-index
.  rr an*index
..
.
.\" Abbreviate the `an-extra2` string (set by .TH) if it's too long for
.\" the footer.  The formatted width of the inner footer plus half that
.\" of the center footer must be less than half the title width or we
.\" must abbreviate.  By default, `an-extra2` is placed as the inner
.\" footer.  We call its (potential) abbreviation `an*ifoot` here and
.\" leave it defined for .BT use.  (`an*ofoot` is not treated the same
.\" way.  `an-footer` regenerates it on every page because the page
.\" number changes if present.)  Shorten the inner footer if necessary
.\" by trimming characters off the end, replacing them with an ellipsis.
.de an*abbreviate-inner-footer
.  ds an*ifoot \\*[an-extra2]\"
.  nr an*half-title-width (\\n[.lt] / 2u)
.  nr an*half-cfoot-width (\w'\\*[an-extra1]' / 2u)
.  nr an*half-footer-width \
     (\w'\\*[an*ifoot]' + \\n[an*half-cfoot-width])
.  if (\\n[an*half-footer-width] < \\n[an*half-title-width]) \{\
.    rr an*half-footer-width
.    rr an*half-cfoot-width
.    rr an*half-title-width
.    return
.  \}
.  an*scan-string-for-backslash \\*[an*ifoot]
.  if \\n[an*string-contains-backslash] \{\
.    an-warn not abbreviating fourth argument to 'TH' '\\*[an*ifoot]': \
contains unsupported escape sequence
.    rr an*string-contains-backslash
.    rr an*half-footer-width
.    rr an*half-cfoot-width
.    rr an*half-title-width
.    return
.  \}
.  ds an*saved-ifoot \\*[an*ifoot]
.  ds an*ellipsis \|.\|.\|.\|\"
.  \" Remeasure with ellipsis added to inner footer so that henceforth,
.  \" the measured width strictly decreases.
.  nr an*half-footer-width \
     (\w'\\*[an*ifoot]\\*[an*ellipsis]' + \\n[an*half-cfoot-width])
.  nr an*end-index (-2)
.  while (\\n[an*half-footer-width] >= \\n[an*half-title-width]) \{\
.    ds an*ifoot \\*[an*saved-ifoot]
.    substring an*ifoot 0 \\n[an*end-index]
.    \" Measure the string again and give up if we made no progress.
.    nr an*new-half-footer-width \
       (\w'\\*[an*ifoot]\\*[an*ellipsis]' + \\n[an*half-cfoot-width])
.    ie (\\n[an*new-half-footer-width] >= \\n[an*half-footer-width]) \
.      break
.    nr an*half-footer-width \\n[an*new-half-footer-width]
.    nr an*end-index -1
.  \}
.  ds an*ifoot \\*[an*ifoot]\\*[an*ellipsis]\"
.  rr an*end-index
.  rr an*new-half-footer-width
.  rm an*ellipsis
.  rm an*saved-ifoot
.  rr an*string-contains-backslash
.  rr an*half-footer-width
.  rr an*half-cfoot-width
.  rr an*half-title-width
..
.
.\" Prepare the header for a page of the document.
.de1 an-header
.  if \\n[an-suppress-header-and-footer] .return
.  ev an*env-header-and-footer
.  PT
.  ev
.  ns
..
.
.\" Schedule a page break when the next output line is written (not
.\" called if continuously rendering).
.de1 an-break-body-text
'  bp
..
.
.\" Prepare the footer for a page of the document.
.de1 an-footer
.  if \\n[an-suppress-header-and-footer] .return
.  ev an*env-header-and-footer
.  ie \\n[cR] \
.    ds an*ofoot "\\*[an-pageref]\"
.  el \{\
.    ds an*ofoot \\n[%]\"
.    if r X \{\
.      if (\\n[%] > \\n[X]) \{\
.        nr an-page-letter (\\n[%] - \\n[X])
.        ds an*ofoot \\n[X]\\n[an-page-letter]\"
.      \}
.    \}
.  \}
.  BT
.  rm an*ofoot
.  ev
..
.
.\" Output the tag of a tagged paragraph, or of an indented paragraph
.\" (IP) that has a tag.  Whether we break depends on the tag width.
.de an-write-paragraph-tag
.  br
.  di
.  ad \\*[AD]
.  nr an-is-in-diversion 0
.  ll
.  \" We must emit the diversion in a separate environment to ensure
.  \" that a possible margin character is printed correctly.
.  ev an-env-paragraph-tag
.  evc 0
.  mc
.  nf
.  in \\n[an-margin]u
.  \" Prevent page break between the tag and the rest of the paragraph.
.  ne (2v + 1u)
.  \" Does the tag fit within the paragraph indentation?
.  nr an-tag-fits \
     (\\n[dl] + \\n[TS] <= \\n[an-prevailing-indent])
.  if \\n[an-tag-fits] .DEVTAG-COL 1
.  an-div
.  if \\n[an-tag-fits] .sp -1v
.  ev
.  in (\\n[an-margin]u + \\n[an-prevailing-indent]u)
.  if \\n[an-tag-fits] .DEVTAG-COL 2
.  rr an-tag-fits
..
.
.\" Handle macros that may take an "argument" on the next input line
.\" producing written or drawn output: .SH, .SS, .B, .I, .SM, .SB--and
.\" .TP, which does so mandatorily.
.de1 an-input-trap
.  if \\n[an-devtag-needs-end-of-heading] .DEVTAG-EO-H
.  nr an-devtag-needs-end-of-heading 0
.  if \\n[an-devtag-needs-second-column] .DEVTAG-COL 2
.  nr an-devtag-needs-second-column 0
.  ft R
.  ps \\n[PS]u
.  vs \\n[VS]u
.  if \\n[an-need-break] \{\
.    br
.    nr an-need-break 0
.  \}
.  if \\n[an-need-no-space-mode] \{\
.    ns
.    nr an-need-no-space-mode 0
.  \}
.  if \\n[an-is-in-diversion] .an-write-paragraph-tag
..
.
.\" Break a paragraph.  Restore defaults, except for indentation.
.de an-break-paragraph
.  ft R
.  ps \\n[PS]u
.  vs \\n[VS]u
.  sp \\n[PD]u
.  ns
..
.
.\" Set arguments (or next input line producing written or drawn output
.\" if none) as a section heading.
.de1 SH
.  fam \\*[an*body-family]
.  an-break-paragraph
.  an-reset-margin-and-inset-level
.  fi
.  in \\n[BP]u
.  ti 0
.  nr an-devtag-needs-end-of-heading 1
.  DEVTAG-SH 1
.  it 1 an-input-trap
.  nr an-need-no-space-mode 1
.  nr an-need-break 1
.  ps \\n[PS-SH]u
.  ne (2v + 1u)
.  ft \\*[HF]
.  if \\n[an-remap-I-style-in-headings] .ftr I \\*[an-heading-family]BI
.  if \\n[.$] \{\
.    ds an-section-heading \\$*\"
.    if \\n[CS] .stringup an-section-heading
.    an*bookmark 3 "\\*[an-section-heading]"
\&\\*[an-section-heading]
.  \}
.  if \\n[an-remap-I-style-in-headings] .ftr I I
..
.
.\" Set arguments (or next input line producing written or drawn output
.\" if none) as a subsection heading.
.de1 SS
.  fam \\*[an*body-family]
.  an-break-paragraph
.  an-reset-margin-and-inset-level
.  fi
.  in \\n[BP]u
.  ti \\n[SN]u
.  nr an-devtag-needs-end-of-heading 1
.  DEVTAG-SH 2
.  it 1 an-input-trap
.  nr an-need-no-space-mode 1
.  nr an-need-break 1
.  ps \\n[PS-SS]u
.  ne (2v + 1u)
.  ft \\*[HF]
.  if \\n[an-remap-I-style-in-headings] .ftr I \\*[an-heading-family]BI
.  if \\n[.$] \{\
.    ds an*subsection-heading \\$*\"
.    an*bookmark 4 "\\*[an*subsection-heading]"
.    nop \&\\$*
.  \}
.  if \\n[an-remap-I-style-in-headings] .ftr I I
..
.
.\" Set arguments (or next input line producing written or drawn output
.\" if none) in bold style.
.de1 B
.  it 1 an-input-trap
.  ft B
.  if \\n[.$] \&\\$*
..
.
.\" Set arguments (or next input line producing written or drawn output
.\" if none) in italic style.
.de1 I
.  it 1 an-input-trap
.  ft I
.  if \\n[.$] \,\\$*\/
..
.
.\" Set arguments (or next input line producing written or drawn output
.\" if none) at smaller type size.
.de1 SM
.  it 1 an-input-trap
.  ps -1
.  if \\n[.$] \&\\$*
..
.
.\" Deprecated: Set arguments (or next input line producing written or
.\" drawn output if none) in bold style at smaller type size.
.\"
.\" This is a SunOS 4.0 extension.
.\"
.\" Instead of
.\"   .SB whatever
.\" say
.\"   .SM
.\"   .B whatever
.\" or
.\"   .B
.\"   .SM whatever
.\" to portably get an identical effect.
.\"
.\" .SB [text]
.de1 SB
.  nop \\*[an-deprecation-warn]\\
.  it 1 an-input-trap
.  ps -1
.  ft B
.  if \\n[.$] \&\\$*
..
.
.\" Set an ordinary paragraph.
.de1 P
.  an-break-paragraph
.  in \\n[an-margin]u
.  nr an-prevailing-indent \\n[IN]
..
.
.\" Accommodate ms(7) paragraphing refugees.
.als LP P
.als PP P
.
.\" Set a tagged paragraph.  The tag must be on the next input line
.\" producing written or drawn output.
.\" .TP [indent]
.de1 TP
.  an-break-paragraph
.  if \\n[.$] .nr an-prevailing-indent (n;\\$1)
.  itc 1 an-input-trap
.  in 0
.  if !\\n[an-is-in-diversion] \{\
.    ll -\\n[an-margin]u
.    di an-div
.    na
.  \}
.  nr an-is-in-diversion 1
..
.
.\" Set an indented paragraph.
.\" .IP [marker[ indentation-amount]]
.de1 IP
.  an-break-paragraph
.  ie !\\n[.$] \{\
.    ne (1v + 1u)
.    in (\\n[an-margin]u + \\n[an-prevailing-indent]u)
.  \}
.  el \{\
.    ie (\\n[.$] > 1) .TP "\\$2"
.    el               .TP
.    nop \&\\$1
.  \}
..
.
.\" Set a paragraph with a hanging indentation.
.\" .HP [indent]
.de1 HP
.  if !\\n[mS] \\*[an-deprecation-warn]\\
.  an-break-paragraph
.  ne (1v + 1u)
.  if \\n[.$] .nr an-prevailing-indent (n;\\$1)
.  in (\\n[an-margin]u + \\n[an-prevailing-indent]u)
.  ti \\n[an-margin]u
.  DEVTAG-COL 1
.  nr an-devtag-needs-second-column 1
..
.
.\" === Define alternating font macros. ===
.\"
.\" Implementation notes:
.\"
.\" We always emit a dummy character \& before the first argument.  This
.\" is necessary only when the calling man page is in compatibility
.\" mode; it works around the surprising AT&T semantics of \f escapes at
.\" the beginning of an input line.  See "Implementation differences" in
.\" groff_diff(7) or the groff Texinfo manual.
.\"
.\" The italic correction escapes can be visually confusing.  We apply
.\" the following rules, always on the same input line.
.\"   (1) Before any italic argument, emit a left italic correction \,
.\"       before switching to the italic style.
.\"   (2) After any italic argument, emit an italic correction \/
.\"       before switching to another style.
.\" It is true that these macros cannot know what style is used in the
.\" input stream before or after they are called.  We can make
.\" assumptions based on pragmatics.  In most cases, the caller will not
.\" precede a call to one of these macros with \c, or add it to the
.\" final argument given to one of these calls; when \c is absent, what
.\" is adjacent must be a word space or output line boundary, so italic
.\" corrections don't matter.  If \c _is_ used by the caller, we can
.\" assume that the adjacent glyphs before an IB or IR call, or the
.\" following ones after a BI or RI call, will not be italic (and thus
.\" will benefit from the italic correction we provide); otherwise the
.\" caller would simply have added the relevant characters to the
.\" arguments of the macro call.
.\"
.
.\" Set each argument in bold and italics, alternately.
.de1 BI
.  if (\\n[.$] < 2) \
.    an-style-warn .\\$0 expects at least 2 arguments, got \\n[.$]
.  if \\n[.$] \{\
.    ds an-result \&\"
.    while (\\n[.$] >= 2) \{\
.      as an-result \f[B]\\$1\,\f[I]\\$2\/\"
.      shift 2
.    \}
.    if \\n[.$] .as an-result \f[B]\\$1\"
.    nop \\*[an-result]
.    rm an-result
.    ft R
.  \}
..
.
.\" Set each argument in bold and roman, alternately.
.de1 BR
.  if (\\n[.$] < 2) \
.    an-style-warn .\\$0 expects at least 2 arguments, got \\n[.$]
.  if \\n[.$] \{\
.    ds an-result \&\"
.    while (\\n[.$] >= 2) \{\
.      as an-result \f[B]\\$1\f[R]\\$2\"
.      shift 2
.    \}
.    if \\n[.$] .as an-result \f[B]\\$1\"
.    nop \\*[an-result]
.    rm an-result
.    ft R
.  \}
..
.
.\" Set each argument in italics and bold, alternately.
.de1 IB
.  if (\\n[.$] < 2) \
.    an-style-warn .\\$0 expects at least 2 arguments, got \\n[.$]
.  if \\n[.$] \{\
.    ds an-result \&\"
.    while (\\n[.$] >= 2) \{\
.      as an-result \,\f[I]\\$1\/\f[B]\\$2\"
.      shift 2
.    \}
.    if \\n[.$] .as an-result \,\f[I]\\$1\/\"
.    nop \\*[an-result]
.    rm an-result
.    ft R
.  \}
..
.
.\" Set each argument in italics and roman, alternately.
.de1 IR
.  if (\\n[.$] < 2) \
.    an-style-warn .\\$0 expects at least 2 arguments, got \\n[.$]
.  if \\n[.$] \{\
.    ds an-result \&\"
.    while (\\n[.$] >= 2) \{\
.      as an-result \,\f[I]\\$1\/\f[R]\\$2\"
.      shift 2
.    \}
.    if \\n[.$] .as an-result \,\f[I]\\$1\/\"
.    nop \\*[an-result]
.    rm an-result
.    ft R
.  \}
..
.
.\" Set each argument in roman and bold, alternately.
.de1 RB
.  if (\\n[.$] < 2) \
.    an-style-warn .\\$0 expects at least 2 arguments, got \\n[.$]
.  if \\n[.$] \{\
.    ds an-result \&\"
.    while (\\n[.$] >= 2) \{\
.      as an-result \f[R]\\$1\f[B]\\$2\"
.      shift 2
.    \}
.    if \\n[.$] .as an-result \f[R]\\$1\"
.    nop \\*[an-result]
.    rm an-result
.    ft R
.  \}
..
.
.\" Set each argument in roman and italics, alternately.
.de1 RI
.  if (\\n[.$] < 2) \
.    an-style-warn .\\$0 expects at least 2 arguments, got \\n[.$]
.  if \\n[.$] \{\
.    ds an-result \&\"
.    while (\\n[.$] >= 2) \{\
.      as an-result \f[R]\\$1\,\f[I]\\$2\/\"
.      shift 2
.    \}
.    if \\n[.$] .as an-result \f[R]\\$1\"
.    nop \\*[an-result]
.    rm an-result
.    ft R
.  \}
..
.
.\" Start a relative inset level (by the amount given in the argument).
.\" .RS [inset-amount]
.de1 RS
.  nr an-saved-margin\\n[an-inset-level] \\n[an-margin]
.  nr an-saved-prevailing-indent\\n[an-inset-level] \
     \\n[an-prevailing-indent]
.  ie \\n[.$] .nr an-margin +(n;\\$1)
.  el         .nr an-margin +\\n[an-prevailing-indent]
.  in \\n[an-margin]u
.  nr an-prevailing-indent \\n[IN]
.  nr an-inset-level +1
..
.
.\" End relative inset level, backing up by one level (or to the level
.\" given by the argument).
.\" .RE [inset-level]
.de1 RE
.  ie \\n[.$] .nr an-RE-requested-level \\$1
.  el         .nr an-RE-requested-level (\\n[an-inset-level] - 1)
.  ie \\n[.$] \{\
.    if (\\n[an-RE-requested-level] = \\n[an-inset-level]) \
.      ds an-RE-problem already at level \\n[an-inset-level]\"
.    if (\\n[an-RE-requested-level] > \\n[an-inset-level]) \
.      ds an-RE-problem too large\"
.    if (\\n[an-RE-requested-level] < 1) \
.      ds an-RE-problem too small\"
.    if d an-RE-problem \
.      an-style-warn argument """\\$1""" to .\\$0 \\*[an-RE-problem]
.    rm an-RE-problem
.  \}
.  el .if !(\\n[an-RE-requested-level]) .an-style-warn unbalanced .\\$0
.  rr an-RE-requested-level
.  ie \\n[.$] .nr an-inset-level ((;\\$1) <? \\n[an-inset-level])
.  el         .nr an-inset-level -1
.  nr an-inset-level (1 >? \\n[an-inset-level])
.  nr an-margin \\n[an-saved-margin\\n[an-inset-level]]
.  nr an-prevailing-indent \
     \\n[an-saved-prevailing-indent\\n[an-inset-level]]
.  in \\n[an-margin]u
..
.
.\" Deprecated: Style an option with an argument (mandatory if
.\" specified) for a command synopsis.
.\"
.\" This is a Documenter's Workbench troff extension.  It is not
.\" flexible enough to handle GNU-style options like
.\" `--input=file-name`.  Use font alternation macros instead.
.\"
.\" .OP flag [option-parameter]
.de1 OP
.  nop \\*[an-deprecation-warn]\\
.  if ((\\n[.$] < 1) : (\\n[.$] > 2)) \
.    an-style-warn .\\$0 expects 1 or 2 arguments, got \\n[.$]
.  ie (\\n[.$] > 1) \
.    RI [\\f[B]\\$1\f[] \~\\$2 ]
.  el \
.    RB [ \\$1 ]
..
.
.\" Begin an example (typically of source code or shell input).
.de1 EX
.  br
.  if \\n[an*is-in-example] \{\
.    an-style-warn ignoring .\\$0 while already in example
.    return
.  \}
.  ds an*saved-family \\n[.fam]
.  nr an*saved-font \\n[.f]
.  nr an*saved-paragraph-distance \\n[PD]
.  nr PD 1v
.  nf
.  \" If using the DVI output device, we have no constant-width fonts of
.  \" bold weight and, relatedly, no constant-width family (because that
.  \" requires all four styles).  Remap the bold styles to normal ones.
.  ie '\*[.T]'dvi' \{\
.    ftr R CW
.    ftr B CW
.    ftr I CWI
.    ftr BI CWI
.  \}
.  el .fam \\*[an*example-family]
.  ft R
.  nr an*is-in-example 1
..
.
.\" End example.
.de EE
.  br
.  if !\\n[an*is-in-example] \{\
.    an-style-warn ignoring .\\$0 while not in example
.    return
.  \}
.  \" Undo the remappings from `EX`.
.  ie '\*[.T]'dvi' \{\
.    ftr R
.    ftr B
.    ftr I
.    ftr BI
.  \}
.  fam \\*[an*saved-family]
.  ft \\n[an*saved-font]
.  nr PD \\n[an*saved-paragraph-distance]
.  fi
.  rr an*saved-paragraph-distance
.  rr an*saved-font
.  rm an*saved-family
.  nr an*is-in-example 0
..
.
.\" Store the argument and begin a diversion for link text.
.de an*begin-hyperlink
.  ds an*hyperlink \\$1\"
.  \" We want the diversion to format as if it has an indentation of
.  \" zero (that comes for free when we switch environments), and we
.  \" want the line length reduced by the amount of indentation that
.  \" obtains when we output it.
.  nr an*saved-line-length \\n[.l]
.  nr an*saved-indentation \\n[.i]
.  \" We can only hyperlink if we're not in a diversion.
.  \" XXX: There's no fundamental reason for that, just a simple matter
.  \" of macro programming.
.  nr an*is-in-link-text-diversion 0
.  if '\\n(.z'' .nr an*is-in-link-text-diversion 1
.  if (\\n[an*is-in-link-text-diversion] & \\n[an*do-hyperlink]) \{\
.    \" Start diversion in a new environment.
.    ev an*link-text-env
.    di an*link-text-div
.    ll (\\n[an*saved-line-length]u - \\n[an*saved-indentation]u)
.  \}
.  rr an*saved-indentation
.  rr an*saved-line-length
..
.
.\" Emit hyperlinked text with optional trailing text.
.\"
.\" The caller should set the `an*prefix` string if the hyperlink should
.\" be prefixed with a scheme; for example, email addresses get
.\" "mailto:", but this need not be visible when rendering an email
.\" address on a device incapable of hyperlinking.
.de an*end-hyperlink
.  ie (\\n[an*is-in-link-text-diversion] & \\n[an*do-hyperlink]) \{\
.    br
.    di
.    ev
.
.    \" Was any link text present?
.    ie \\n[dn] \{\
.      if \\n[an*is-output-html] \
.        nop \X^html:<a href="\\*[an*prefix]\\*[an*hyperlink]">^\c
.      if \\n[an*is-output-terminal] \
.        nop \X^tty: link \\*[an*prefix]\\*[an*hyperlink]^\c
.      \" Strip off the final newline of the diversion and emit it.
.      chop an*link-text-div
.      an*link-text-div
\c\" XXX: If we .nop this, HTML output is corrupted (Savannah #63470).
.      if \\n[an*is-output-html] \
.        nop \X^html:</a>^\c
.      if \\n[an*is-output-terminal] \
.        nop \X^tty: link^\c
.    \}
.    \" If there was no link text, format URI as its own link text.  We
.    \" don't add angle brackets here.
.    el \{\
.      if \\n[an*is-output-html] \
.        nop \X^html:<a href="\\*[an*prefix]\\*[an*hyperlink]">\
\\*[an*hyperlink]</a>^\c
.      if \\n[an*is-output-terminal] \
.        nop \X^tty: link \\*[an*prefix]\\*[an*hyperlink]^\
\\*[an*hyperlink]\X^tty: link^\c
.    \}
.    nop \&\\$1\"
.  \}
.  \" If not hyperlinking, format URI in angle brackets.  There was no
.  \" diversion, so the link text has already been formatted normally.
.  el \{\
.    nh
.    nop \\[la]\\*[an*hyperlink]\\[ra]\\$1
.    hy \\n[an*hyphenation-mode]
.  \}
.
.  rr an*is-in-link-text-diversion
..
.
.\" Begin email hyperlink.  Input until the next `ME` call is stored in
.\" a diversion; it becomes the link text for the hyperlinked address.
.\" .MT nobody@example.com
.de1 MT
.  if !(\\n[.$] = 1) \
.    an-style-warn .\\$0 expects 1 argument, got \\n[.$]
.  ds an*prefix mailto:
.  an*begin-hyperlink \\$1
..
.
.\" End email hyperlink.  The optional argument supplies trailing
.\" punctuation (or, rarely, other text) after link text.
.\" .ME [trailing-text]
.de1 ME
.  an*end-hyperlink \\$1
.  rm an*prefix
..
.
.\" Begin web hyperlink.  Input until the next `UE` call is stored in
.\" a diversion; it becomes the link text for the hyperlinked address.
.\" .UR nobody@example.com
.de1 UR
.  if !(\\n[.$] = 1) \
.    an-style-warn .\\$0 expects 1 argument, got \\n[.$]
.  ds an*prefix \" empty
.  an*begin-hyperlink \\$1
..
.
.\" End web hyperlink.  The optional argument supplies trailing
.\" punctuation (or, rarely, other text) after link text.
.\" .UE [trailing-text]
.de1 UE
.  an*end-hyperlink \\$1
.  rm an*prefix
..
.
.\" There is no standardized format for man page URLs, but the default
.\" is expected to work (or be harmlessly ignored) everywhere except
.\" macOS.  Override in man.local if desired.
.nr an*MR-URL-format 1
.
.\" Set a man page cross reference.
.\" .MR page-topic page-section [trailing-text]
.de1 MR
.  if ((\\n[.$] < 2) : (\\n[.$] > 4)) \
.    an-style-warn .\\$0 expects 2 to 4 arguments, got \\n[.$]
.  ie \\n[an*is-output-pdf] \{\
.    nr mj \n[.hy]
.    nh
.    ds an*title \\\\$4
.    if '\\\\*[an*title]'' .ds an*title \\\\$1
.    ie \\n(.$=1 \
.      I \\$1
.    el \{\
.      an*cln an*page-ref-nm \\*[an*title]_\\$2
.      ie d pdf:look(\\*[an*page-ref-nm]) .pdfhref L -D \\*[an*page-ref-nm] -A "\\$3" -- \fI\\$1\fP(\\$2)
.      el .IR \\$1 (\\$2)\\$3
.    \}
.    hy \\n(mJ
.  \}
.  el \{\
.    ds an*url man:\\$1(\\$2)\" used everywhere but macOS
.    if (\\n[an*MR-URL-format] = 2) \
.      ds an*url x-man-page://\\$2/\\$1\" macOS/Mac OS X since 10.3
.    if (\\n[an*MR-URL-format] = 3) \
.      ds an*url man:\\$1.\\$2\" Bwana (Mac OS X)
.    if (\\n[an*MR-URL-format] = 4) \
.      ds an*url x-man-doc://\\$2/\\$1\" ManOpen (Mac OS X pre-2005)
.    nh
.    if \\n[an*do-hyperlink] \{\
.      if \\n[an*is-output-html] \
.        nop \X^html:<a href="\\*[an*url]">^\c
.      if \\n[an*is-output-terminal] \
.        nop \X^tty: link \\*[an*url]^\c
.    \}
.        nop \&\\*[an-lic]\f[\\*[MF]]\\$1\\*[an-ic]\f[R](\\$2)\c
.    if \\n[an*do-hyperlink] \{\
.      if \\n[an*is-output-html] \
.        nop \X^html:</a>^\c
.      if \\n[an*is-output-terminal] \
.        nop \X^tty: link^\c
.    \}
.    nop \&\\$3
.  \}
.  hy \\n[an*hyphenation-mode]
..
.
.\" tbl(1) table support
.
.\" Start table.
.de1 TS
.  \" If continuous rendering, tell tbl not to use keeps.
.  ie \\n[cR] .nr 3usekeeps 0
.  el         .nr 3usekeeps 1
.  if \\n[an*is-output-html] \{\
.    nr an-TS-ll \\n[.l]
.    ll 1000n
.  \}
.  HTML-IMAGE
..
.
.\" Start another table in the same region (ignored).
.de1 T&
..
.
.\" End table.
.de1 TE
.  HTML-IMAGE-END
.  if \\n[an*is-output-html] .ll \\n[an-TS-ll]u
.  if !r TW .if !\\n[an-was-tbl-failure-reported] \{\
.    ds an-msg tbl preprocessor failed, or it or soelim was not run;\"
.    as an-msg " table(s) likely not rendered\"
.    as an-msg " (TE macro called with TW register undefined)\"
.    an-warn \\*[an-msg]
.    rm an-msg
.    nr an-was-tbl-failure-reported 1
.  \}
..
.
.\" eqn(1) equation support
.
.\" Start equation.
.de1 EQ
.  if \\n[an*is-output-html] \{\
.    nr an-EQ-ll \\n[.l]
.    ll 1000n
.  \}
.  HTML-IMAGE
..
.
.\" End equation.
.de1 EN
.  HTML-IMAGE-END
.  if \\n[an*is-output-html] .ll \\n[an-EQ-ll]u
..
.
.
.\" === Define strings. ===
.\"
.\" These strings must work in compatibility mode also.
.
.ds S \s'\\n(PSu'\"
.ie c\[rg] .ds R \(rg\"
.el        .ds R (Reg.)\"
.ie c\[tm] .ds Tm \(tm\"
.el        .ds Tm (TM)\"
.ie c\[lq] .ds lq \(lq\"
.el        .ds lq ""\"
.ie c\[rq] .ds rq \(rq\"
.el        .ds rq ""\"
.
.\" === Define/remap characters. ===
.
.\" For UTF-8, map the minus sign to the hyphen-minus to facilitate
.\" copy and paste of code examples, file names, and URLs embedding it.
.if '\*[.T]'utf8' \
.  char \- \N'45'
.
.\" === Initialize. ===
.
.mso devtag.tmac
.nr an-devtag-needs-end-of-heading 0
.nr an-devtag-needs-second-column 0
.
.\" Track whether the strings that set header and footer text need to be
.\" reconfigured.  This happens when batch-rendering and starting a new
.\" page.
.nr an*need-titles-reset 0
.
.nr an*is-output-html 0
.if '\*[.T]'html' .nr an*is-output-html 1
.nr an*is-output-pdf 0
.if '\*[.T]'pdf' .nr an*is-output-pdf 1
.nr an*is-output-terminal 0
.if '\*(.T'ascii'  .nr an*is-output-terminal 1
.if '\*(.T'cp1047' .nr an*is-output-terminal 1
.if '\*(.T'latin1' .nr an*is-output-terminal 1
.if '\*(.T'utf8'   .nr an*is-output-terminal 1
.
.nr an*can-hyperlink 0
.if (  \n[an*is-output-html] \
     : \n[an*is-output-pdf] \
     : \n[an*is-output-terminal]) \
.  nr an*can-hyperlink 1
.
.ds an*body-family \n[.fam]
.ds an*example-family C \" Courier
.
.\" Map monospaced fonts to standard styles for groff's nroff devices.
.if n \{\
.  ftr CR R
.  ftr CI I
.  ftr CB B
.  ftr CBI BI
.\}
.
.\" undocumented register; unset to test an-ext.tmac extension macros
.if !r mG \
.  nr mG 1
.
.\" Load man macro extensions.
.mso an-ext.tmac
.
.\" Load site modifications.
.msoquiet man.local
.
.\" Set each rendering parameter only if its -[dr] option or man.local
.\" did not.
.
.if \n[an*is-output-pdf] \{\
.  \" FIXME: The following registers are documented only in pdf.tmac.
.  if !r PDFOUTLINE.FOLDLEVEL .nr PDFOUTLINE.FOLDLEVEL 1
.  if !r PDFHREF.VIEW.LEADING .nr PDFHREF.VIEW.LEADING 10p
.\}
.
.\" base paragraph indentation
.if !r BP \
.  nr BP 5n
.
.\" continuous rendering (one long page)
.if !r cR \{\
.  ie n .nr cR 1
.  el   .nr cR 0
.\}
.
.\" consecutive page numbering across multiple documents
.\"
.\" We must use consecutive page numbers when using PostScript to
.\" generate HTML images; we must not reset the page number at the
.\" beginning of each document (the 'ps4html' register is automatically
.\" added to the command line by the pre-HTML preprocessor).
.ie !r C \
.  nr C 0
.el \
.  if !\n[C] \
.    if \n[an*is-output-html] \{\
.       tm \*[an]: consecutive page numbering required for HTML output
.       nr C 1
.    \}
.if \n[an*is-output-html] \
.  nr C 1
.if r ps4html \
.  nr C 1
.
.\" diagnostics desired for man page style problems
.if !r CHECKSTYLE \
.  nr CHECKSTYLE 0
.
.\" full capitalization of section headings
.if !r CS \
.  nr CS 0
.
.\" full capitalization of page topic
.if !r CT \
.  nr CT 0
.
.\" double-sided layout
.ie !r D \
.  nr D 0
.el \
.  if \n[D] \
.    if \n[an*is-output-html] \{\
.       tm \*[an]: ignoring double-sided layout in HTML output
.       nr D 0
.    \}
.
.\" footer distance
.\"
.\" Unlike most of these parameters, we do not set a default for FT; the
.\" TH macro places page location traps only if not continuously
.\" rendering.
.if r FT \{\
.  \" Validate it.  Continuous rendering ignores FT.  Measuring a footer
.  \" distance from the page top isn't done.  A footer distance of over
.  \" half the page length is unlikely.  A footer distance of less than
.  \" one line height is too.
.  ie \n[cR] \
.    ds an-msg footer distance when continuously rendering\"
.  el \{\
.    nr an*tmp 1v
.    ds an*help " (1v=\n[an*tmp]u)\"
.    ie (\n[FT] : (\n[FT] = 0)) \
.      ds an-msg non-negative footer distance: \n[FT]u\*[an*help]\"
.    el \{\
.      ie (-(\n[FT]) > (\n[.p] / 2)) \{\
.        ds an-msg implausibly large footer distance:\"
.        as an-msg " \n[FT]u\*[an*help]\"
.      \}
.      el \
.        if (-(\n[FT]) < 1v) \{\
.          ds an-msg implausibly small footer distance:\"
.          as an-msg " \n[FT]u\*[an*help]\"
.        \}
.    rm an*help
.    rr an*tmp
.    \}
.  \}
.  if d an-msg \{\
.    tm \*[an]: ignoring \*[an-msg]
.    rr FT
.    rm an-msg
.  \}
.\}
.
.\" hyphenation enablement
.if !r HY \
.  nr HY 1
.
.\" standard indentation
.if !r IN \{\
.  \" We select an integer indentation value in nroff mode because this
.  \" value is used additively for multiple purposes; rounding of
.  \" accumulating fractions would produce inconsistent results.
.  ie t .nr IN 7.2n
.  el   .nr IN 7n
.\}
.
.\" line length
.if !r LL \{\
.  \" If in troff mode, respect device default.
.  ie t .nr LL \n[.l]
.  \" Otherwise, override nroff mode default of 65n.
.  el   .nr LL 78n
.\}
.
.\" title (header, footer) length
.if !r LT \
.  nr LT \n[LL]u
.
.\" starting page number
.\"
.\" Unlike most of these parameters, we do not set a default for P;
.\" troff supplies a default starting page number (1).  When rendering
.\" for the HTML output device, page numbers are concealed and used for
.\" internal purposes like image embedding.  Page numbers are not
.\" rendered at all in continuous rendering mode.
.if r P \{\
.  if \n[an*is-output-html] \
.    if !(\n[P] = 1) \
.      ds an-msg in HTML output\"
.  if \n[cR] \
.    ds an-msg when continuously rendering
.\}
.if d an-msg \{\
.  tm \*[an]: ignoring starting page number \*[an-msg]
.  rr P
.  rm an-msg
.\}
.
.\" Setting the page number turns out to be tricky when batch rendering
.\" and switching macro packages.  We must use different techniques
.\" depending on whether the transition to the first output page has
.\" happened yet.  If it has not, `nl` will be `-1` and we use `pn`.  If
.\" it has, we set `%`.  Technically this is fragile since in theory a
.\" page could assign a negative value to `nl`.  We might then be
.\" justified in saying they've broken the macro package and they get to
.\" keep both pieces.  But if not, consider using a nonce register,
.\" initially set but then permanently cleared adjacent to this logic,
.\" and whose state is shared with mdoc (and andoc.tmac, if necessary).
.\"
.\" Also, we can't use the `P` register with grohtml at all.
.ie r ps4html \{\
.  if r P \{\
.     tm \*[an]: ignoring starting page number in HTML output
.     rr P
.  \}
.\}
.el \{\
.  if r P \{\
.    ie (\n[nl] = -1) .pn 0\n[P]
.    el               .nr % 0\n[P]
.  \}
.\}
.
.\" page offset
.if r PO \
.  po \n[PO]u
.
.\" type size
.if !r S \{\
.  nr S 10
.  if '\*[.T]'X75-12' \
.    nr S 12
.  if '\*[.T]'X100-12' \
.    nr S 12
.\}
.
.\" required paragraph tag separation
.if !r TS \
.  nr TS 2n
.
.\" subsection indentation
.if !r SN \
.  nr SN 3n
.
.\" URI enablement desired
.if !r U \
.  nr U 1
.
.nr an*do-hyperlink 0
.if (\n[U] & \n[an*can-hyperlink]) .nr an*do-hyperlink 1
.
.\" page number after which to apply letter suffixes
.\"
.\" Unlike most of these parameters, we do not set a default for X; only
.\" the macro an-footer uses it.  Page numbers are not rendered at all
.\" in continuous rendering mode.
.if r X \{\
.  af an-page-letter a
.  if \n[an*is-output-html] \
.    ds an-msg in HTML output\"
.  if \n[cR] \
.    ds an-msg when continuously rendering
.\}
.if d an-msg \{\
.  tm \*[an]: ignoring page number suffix \*[an-msg]
.  rr X
.  rm an-msg
.\}
.
.\" adjustment mode
.if !d AD \
.  ds AD b\"
.
.\" (sub)section heading font
.if !d HF \
.  ds HF B\"
.
.\" If HF is a bold style, use bold italics for italics in headings.
.ds an-heading-style \*[HF]\"
.substring an-heading-style -1 -1
.ds an-heading-family \" empty
.length an-HF-length \*[HF]
.if (\n[an-HF-length] > 1) \{\
.  as an-heading-family \*[HF]\"
.  substring an-heading-family 0 -2
.\}
.if '\*[an-heading-style]'B' \
.  if F \*[an-heading-family]BI \
.    nr an-remap-I-style-in-headings 1
.rr an-HF-length
.rm an-heading-style
.
.\" man page topic font
.if !d MF \
.  ds MF I\"
.
.\" Define italic correction strings.  Initially, they are empty.  If MF
.\" is an oblique style, append the corrections.
.ds an-lic \" left italic correction
.ds an-ic \" italic correction
.ds an*topic-style \*[MF]\"
.substring an*topic-style -1 -1
.if '\*[an*topic-style]'I' \{\
.  as an-lic \,\"
.  as an-ic \/\"
.\}
.rm an*topic-style
.
.if \n[cR] \
.  an-set-up-continuous-rendering
.
.\" If rendering HTML, suppress headers and footers.
.nr an-suppress-header-and-footer 0
.if \n[an*is-output-html] .nr an-suppress-header-and-footer 1
.if r ps4html             .nr an-suppress-header-and-footer 1
.
.cp \n[*groff_an_tmac_C]
.do rr *groff_an_tmac_C
.
.\" Local Variables:
.\" mode: nroff
.\" fill-column: 72
.\" End:
.\" vim: set filetype=groff textwidth=72:

--nextPart7564454.EvYhyI6sBW--



