Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 06C11781EE2
	for <lists+linux-man@lfdr.de>; Sun, 20 Aug 2023 18:51:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231500AbjHTQvM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Aug 2023 12:51:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231497AbjHTQvK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 20 Aug 2023 12:51:10 -0400
Received: from smarthost01a.sbp.mail.zen.net.uk (smarthost01a.sbp.mail.zen.net.uk [212.23.1.1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFA6E30DA
        for <linux-man@vger.kernel.org>; Sun, 20 Aug 2023 09:48:20 -0700 (PDT)
Received: from [82.71.22.80] (helo=pip.localnet)
        by smarthost01a.sbp.mail.zen.net.uk with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.90_1)
        (envelope-from <deri@chuzzlewit.myzen.co.uk>)
        id 1qXlb7-0002df-KL; Sun, 20 Aug 2023 16:48:17 +0000
From:   Deri <deri@chuzzlewit.myzen.co.uk>
To:     linux-man@vger.kernel.org, Brian.Inglis@shaw.ca
Cc:     Alejandro Colomar <alx@kernel.org>
Subject: Re: No 6.05/.01 pdf book available
Date:   Sun, 20 Aug 2023 17:48:12 +0100
Message-ID: <2704680.mvXUDI8C0e@pip>
In-Reply-To: <ff61b155-ce0b-6a57-01e2-5d41b902233d@Shaw.ca>
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <21985157.EfDdHjke4D@pip> <ff61b155-ce0b-6a57-01e2-5d41b902233d@Shaw.ca>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="nextPart12278677.O9o76ZdvQC"
Content-Transfer-Encoding: 7Bit
X-Originating-smarthost01a-IP: [82.71.22.80]
Feedback-ID: 82.71.22.80
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.

--nextPart12278677.O9o76ZdvQC
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, 15 August 2023 01:34:16 BST Brian Inglis wrote:
> On 2023-08-14 10:06, Deri wrote:
> > I'm afraid the dangling page hyphens are all my fault. :-(
> > 
> > Line missing in the bespoke an.tmac I provided, new version attached. I
> > know Alex wants to run against a stock version of groff, with minimal
> > customisation, and, once my branch is merged, there will be further
> > pruning, but unless you add to Branden's wish list to include an ability
> > to control the hierarchy of the bookmark panel, you will need a
> > customised an.tmac. The reason is because the stock an.tmac has a hard
> > coded hierarchy where the .TH line is given level 1 but as you want to
> > have separate sections these need to be level one and everything else is
> > moved up a level. Of course this just means making the starting level
> > configurable on the command line, i.e. -r startbkmk=2 or some such.
> > Another change which would need to be accepted is to allow a fourth
> > parameter to .MR which is the destination name. Normally the name of the
> > destination is derived from the first two parameters concatenated with
> > "_", but if the name part of the .MR call to the man page includes non-
> > ascii characters (such as ".MR my\-lovely\-page 7 ,") then it needs to
> > provide a "clean" destination name.
> > 
> > Sorting
> > 
> > I decided to use Sort::Versions (rather than RPM::VersionSort) because it
> > is available as a package on my system. Seems to do the job.
> > 
> > Paper
> > 
> > You can now specify the paper size for the book on the command line as
> > "-paper size".
> > 
> > Fonts
> > 
> > There are 2 reasons I included fonts in the build environment:-
> > 
> > A) The man pages which define the various iso-8859 pages contain many
> > glyphs which are not defined in the standard groff fonts, so I used the
> > Tinos font from google which improves the coverage. If you want to get
> > rid of the fonts, and rely on just the fonts in groff, you can change
> > line 4 of anmark.tmac to:-
> > 
> > .special S U-TR
> > 
> > Which is an improvement on the standard fonts, and should be available as
> > standard if the URW fonts were found when groff was built. You will see
> > differences in iso-8859-7 and iso-8859-8 for example.
> > 
> > B) If you build the LinuxManBook using the 1.23.0+ flavour (with the newer
> > gropdf that produces a substantially smaller pdf) it requires a slightly
> > different font format so needs the embedded font directory. If you have
> > installed groff from the deri-gropdf-ng the new format fonts will have
> > been
> > installed, so the embedded font directory can be removed.
> > 
> > Makefile
> > 
> > The simplest option would be to add a new rule to the Makefile which is
> > dependent on all the man pages have been built, and cd's into the scripts/
> > LinuxManBook directory and calls the program with the location where the
> > man pages exist. However, I suspect Alex fancies something more
> > complicated by replacing the perl with a hybrid of shell command and make
> > magic.
> > 
> > I attach a new copy of BuildLinuxMan.pl which is an amalgam of mine and
> > Brian's code. This has the new -paper flag.
> > 
> > Alex's MR branch
> > 
> > The new program now recognises existing .MR's in the document and provides
> > the "clean" destination name, so it should run against the new branch.> 
> >> 	nodemask ... on-
> >> 	...
> >> 	line, ...
> 
> Looking forward to trying out the new spiffy macros and scripts.
> 
> >> There appear to be 24 single word instances of online and 12 outdated
> >> hyphenated compound word instances of on-line across all man pages.
> >> 
> >> UI: I also noticed, while looking for tables to compare, that pages are
> >> ordered by filename not like rpmvercmp/ls -v/RPM::VersionSort e.g
> >> ISO_8859-2 is after ISO_8859-16 which may not be as expected.
> >> Used rpmvercmp in last line of perl sub sortman and works as expected.
> > 
> > I have used Sort::Versions (see above), thanks for the suggestion.
> > 
> >> Tech nitpick: .Z is still recognized by GUIs as compress output
> >> (UNIX-compressed file) - is there no other file type suffix used for
> >> 
> >> ditroff intermediate output? Aha - Alex says .set:
> >> 	https://lists.gnu.org/archive/html/groff/2023-04/msg00213.html
> > 
> > Well, that's settled.
> > 
> >> Added variables and changed those also in BLM-letter.pl: copy attached.
> >> 
> >>> Thanks for your help.
> >> 
> >> Happy to help in any way.
> > 
> > Hope you're happy with this version.
> 
> Unlikely as versioncmp treats underscores as special rather than ignoring
> them as in rpmvercmp and sortman: see attached diffs for comparisons. ;^>
> 
> Had to drop more details as got bounced with too many attachments - retrying
> with only diffs: official-order is 6.05.01.

Hi Brian,

Please can you check if this sort order is acceptable.

Cheers 

Deri


--nextPart12278677.O9o76ZdvQC
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
Oi91c3Ivc2hhcmUvZ3JvZmYvY3VycmVudC9mb250ICRmcm9udGRpdCAkbWFuZGl0IC1wJHBhcGVy
ID4gJGJvb2siKTsKI3VubGluayAiJG1hbmRpdCIsIiR0ZW1wIiwiJGZyb250ZGl0IjsgICMgSWYg
eW91IHdhbnQgdG8gY2xlYW4gdXAKCiMgQWxpYXNlcyBhcmUgdGhlIG1hbiBwYWdlcyB3aGljaCAu
c28gYW5vdGhlciBtYW4gcGFnZSwgc28gYnVpbGQgYSBoYXNoIG9mIHRoZW0gc28KIyB0aGF0IHdo
ZW4gd2UgYXJlIHByb2Nlc3NpbmcgcmVmZXJlbmNlZCBtYW4gcGFnZSB3ZSBjYW4gYWRkIHRoZSB0
YXJnZXQgZm9yIHRoZQojIGJvb2ttYXJrLgoKc3ViIExvYWRBbGlhcwp7CiAgICBmb3JlYWNoIG15
ICRmbiAoQGFsaWFzZXMpCiAgICB7CgljaG9tcCgkZm4pOwoJbXkgKEBwdGgpPXNwbGl0KCcvJywk
Zm4pOwoJbXkgJG5tPXBvcChAcHRoKTsKCW15ICRia21hcms9IiQxXyQyIiBpZiAkbm09fm0vKC4q
KVwuKFx3KykvOwoKCWlmIChvcGVuKEYsIjwkZm4iKSkKCXsKCSAgICB3aGlsZSAoPEY+KQoJICAg
IHsKCQluZXh0IGlmIG0vXlwuXFwiLzsKCgkJaWYgKG0vXi5zb1xzKyhtYW5cdytcLyguKylcLigu
Kz8pKSQvKQoJCXsKCQkgICAgJGFsaWFzeyRia21hcmt9PVsiJDJfJDMiLCQyLCQzXTsKCQkgICAg
cHVzaChAeyR0YXJnZXR7IiQyXyQzIn19LCRia21hcmspOwoJCSAgICBsYXN0OwoJCX0KCQllbHNl
CgkJewoJCSAgICBwcmludCBTVERFUlIgIkFsaWFzIGZhaWw6ICRmblxuIjsKCQl9CgkgICAgfQoK
CSAgICBjbG9zZShGKTsKCX0KCWVsc2UKCXsKCSAgICBwcmludCBTVERFUlIgIk9wZW4gZmFpbDog
JGZuXG4iOwoJfQogICAgfQp9CgpzdWIgQnVpbGRCb29rCnsKICAgIG9wZW4oQkssIj4kdGVtcCIp
OwoKICAgIHByaW50IEJLICIucGRmcGFnZW51bWJlcmluZyBEIC4gMVxuIjsKCiAgICBmb3JlYWNo
IG15ICRmbiAoc29ydCBzb3J0bWFuIGdsb2IoIiRkaXIvbWFuKi8qIikpCiAgICB7CglteSAoJG5t
LCRzZWMsJHNydCk9R2V0Tm1TZWMoJGZuKTsKCiAgICAgICAgbXkgJGJrbWFyaz0iJDFfJDIiIGlm
ICRubT1+bS8oLiopXC4oXHcrKS87CiAgICAgICAgbXkgJHRpdGxlPSAiJDFcXCgkMlxcKSI7Cgoj
IElmIHRoaXMgaXMgYW4gYWxpYXMsIGp1c3QgYWRkIGl0IHRvIHRoZSBvdXRsaW5lIHBhbmVsLgoK
ICAgICAgICBpZiAoZXhpc3RzKCRhbGlhc3skYmttYXJrfSkpCiAgICAgICAgewogICAgICAgICAg
ICBwcmludCBCSyAiLmVvXG4uZGV2aWNlIHBzOmV4ZWMgWy9EZXN0IC8kYWxpYXN7JGJrbWFya30t
PlswXSAvVGl0bGUgKCR0aXRsZSkgL0xldmVsIDIgL09VVCBwZGZtYXJrXG4uZWNcbiI7CgkgICAg
cHJpbnQgQksgIi5pZiBkUERGLkVYUE9SVCAudG0gLmRzIHBkZjpsb29rKCRia21hcmspICRhbGlh
c3skYmttYXJrfS0+WzFdKCRhbGlhc3skYmttYXJrfS0+WzJdKVxuIjsKCSAgICBuZXh0OwoJfQoK
CXByaW50IEJLICIuXFxcIiA+Pj4+Pj4gJDEoJDIpIDw8PDw8PFxuLmxmIDAgJGJrbWFya1xuIjsK
CglpZiAob3BlbihGLCc8JywkZm4pKQogICAgICAgIHsKICAgICAgICAgICAgd2hpbGUgKDxGPikK
ICAgICAgICAgICAgewogICAgICAgICAgICAgICAgaWYgKG0vXlwuXFwiLykKICAgICAgICAgICAg
ICAgIHsKICAgICAgICAgICAgICAgICAgICBwcmludCBCSyAkXzsKICAgICAgICAgICAgICAgICAg
ICBuZXh0OwogICAgICAgICAgICAgICAgfQoKICAgICAgICAgICAgICAgIGNob21wOwoKIyBUaGlz
IGNvZGUgaXMgdG8gZGV0ZXJtaW5lIHdoZXRoZXIgd2UgYXJlIHdpdGhpbiBhIHRibCBibG9jayBh
bmQgaW4gYSB0ZXh0IGJsb2NrCiMgVHsgYW5kIFR9LiBUaGlzIGlzIGZ1ZGdlIGNvZGUgcGFydGlj
dWxhcmx5IGZvciB0aGUgc3lzY2FsbHMoNykgcGFnZS4KCiAgICAgICAgICAgICAgICAkaW5UUz0x
IGlmIG0vXC5UUy87CiAgICAgICAgICAgICAgICAkaW5UUz0wLCRpbkJsb2NrPTAgaWYgbS9cLlRF
LzsKCiAgICAgICAgICAgICAgICBzL1xyJC8vOyAgICAjIEluIGNhc2UgZWRpdGVkIHVuZGVyIHdp
bmRvd3MgaS5lLiBDUi9MRgogICAgICAgICAgICAgICAgcy9ccyskLy87CiAgICAgICAgICAgICAg
ICBuZXh0IGlmICEkXzsKIyAgICAgICAgICAgICAgIHMvXlxzKy8vOwoKICAgICAgICAgICAgICAg
IGlmIChtL15cLkJSXHMrKFstXHdcXC5dKylccytcKCguKz8pXCkoLiopLyBvciBtL15cLk1SXHMr
KFstXHdcXC5dKylccysoXHcrKVxzKyguKikvKQogICAgICAgICAgICAgICAgewogICAgICAgICAg
ICAgICAgICAgIG15ICRia21hcms9IiQxIjsKICAgICAgICAgICAgICAgICAgICBteSAkc2VjPSQy
OwogICAgICAgICAgICAgICAgICAgIG15ICRhZnRlcj0kMzsKICAgICAgICAgICAgICAgICAgICBt
eSAkZGVzdD0kYmttYXJrOwogICAgICAgICAgICAgICAgICAgICRkZXN0PX5zL1xcLS8tL2c7CiAg
ICAgICAgICAgICAgICAgICAgJF89Ii5NUiBcIiRia21hcmtcIiBcIiRzZWNcIiBcIiRhZnRlclwi
IFwiJGRlc3RcIiI7CiAgICAgICAgICAgICAgICB9CgogICAgICAgICAgICAgICAgcy9eXC5CSSBc
XGZCLy5CSSAvOwoJCXMvXlwuQlJccysoXFMrKVxzKiQvLkIgJDEvOwogICAgICAgICAgICAgICAg
cy9eXC5CSVxzKyhcUyspXHMqJC8uQiAkMS87CiAgICAgICAgICAgICAgICBzL15cLklSXHMrKFxT
KylccyokLy5JICQxLzsKCiMgRmlkZGxpbmcgZm9yIHN5c2NhbGxzKDcpIDotKAoKICAgICAgICAg
ICAgICAgIGlmICgkaW5UUykKICAgICAgICAgICAgICAgIHsKICAgICAgICAgICAgICAgICAgICBt
eSBAY29scz1zcGxpdCgvXHQvLCRfKTsKCiAgICAgICAgICAgICAgICAgICAgZm9yZWFjaCBteSAk
YyAoQGNvbHMpCiAgICAgICAgICAgICAgICAgICAgewogICAgICAgICAgICAgICAgICAgICAgICAk
aW5CbG9jays9KCk9JGM9fm0vVFx7L2c7CiAgICAgICAgICAgICAgICAgICAgICAgICRpbkJsb2Nr
LT0oKT0kYz1+bS9UXH0vZzsKCiAgICAgICAgICAgICAgICAgICAgICAgIG15ICRtdGNoPSRjPX5z
L1xzKlxcZkIoWy1cdy5dKylcXGZQXCgoXHcrKVwpL1xuLk1SICQxICQyIFxcY1xuL2c7CiAgICAg
ICAgICAgICAgICAgICAgICAgICRjPSJUe1xuJHtjfVxuVH0iIGlmICRtdGNoIGFuZCAhJGluQmxv
Y2s7CiAgICAgICAgICAgICAgICAgICAgfQoKICAgICAgICAgICAgICAgICAgICAkXz1qb2luKCJc
dCIsQGNvbHMpOwogICAgICAgICAgICAgICAgICAgIHMvXG5cbi9cbi9nOwogICAgICAgICAgICAg
ICAgfQoKICAgICAgICAgICAgICAgIGlmIChtL15cLlRIXHMrKFstXHdcXC5dKylccysoXHcrKS8p
CiAgICAgICAgICAgICAgICB7CgogICAgICAgICAgICAgICAgICAgICMgaWYgbmV3IHNlY3Rpb24g
YWRkIHRvcCBsZXZlbCBib29rbWFyawoKICAgICAgICAgICAgICAgICAgICBpZiAoJHNlYyBuZSAk
U2VjdGlvbikKICAgICAgICAgICAgICAgICAgICB7CgkJCXByaW50IEJLICIubnIgUERGT1VUTElO
RS5GT0xETEVWRUwgMVxuLmZsXG4iOwoJCQlwcmludCBCSyAiLnBkZmJvb2ttYXJrIDEgJFNlY3Rp
b25zeyRzZWN9XG4iOwoJCQlwcmludCBCSyAiLm5yIFBERk9VVExJTkUuRk9MRExFVkVMIDJcbiI7
CgkJCSRTZWN0aW9uPSRzZWM7CiAgICAgICAgICAgICAgICAgICAgfQoKICAgICAgICAgICAgICAg
ICAgICBwcmludCBCSyAiJF9cbiI7CgojIEFkZCBhIGxldmVsIHR3byBib29rbWFyay4gV2UgZG9u
J3Qgc2V0IGl0IGluIHRoZSBUSCBtYWNybyBzaW5jZSB0aGUgbmFtZSBwYXNzZWQKIyBtYXkgYmUg
ZGlmZmVyZW50IGZyb20gdGhlIGZpbGVuYW1lLCBpLmUuIGZpbGUgPSB1bmltcGxlbWVudGVkLjIs
IFRIID0gVU5JTVBMRU1FTlRFRCAyCgogICAgICAgICAgICAgICAgICAgIHByaW50IEJLICIucGRm
Ym9va21hcmsgLVQgJGJrbWFyayAyICQxKCQyKVxuIjsKCiMgSWYgdGhpcyBwYWdlIGlzIHJlZmVy
ZW5jZWQgYnkgYW4gYWxpYXMgcGxhbnQgYSBkZXN0aW5hdGlvbiBsYWJlbCBmb3IgdGhlIGFsaWFz
LgoKICAgICAgICAgICAgICAgICAgICBpZiAoZXhpc3RzKCR0YXJnZXR7JGJrbWFya30pKQogICAg
ICAgICAgICAgICAgICAgIHsKICAgICAgICAgICAgICAgICAgICAgICAgZm9yZWFjaCBteSAkdGFy
ZyAoQHskdGFyZ2V0eyRia21hcmt9fSkKCQkJewoJCQkgICAgcHJpbnQgQksgIi5wZGYqaHJlZi5z
ZXQgJHRhcmdcbiI7CgkJCX0KCQkgICAgfQoKCQkgICAgbmV4dDsKCQl9CgoJCXByaW50IEJLICIk
X1xuIjsKCgkgICAgfQoKCSAgICBjbG9zZShGKTsKCgl9CiAgICB9CgogICAgY2xvc2UoQkspOwp9
CgpzdWIgR2V0Tm1TZWMKewogICAgbXkgKEBwdGgpPXNwbGl0KCcvJyxzaGlmdCk7CiAgICBteSAk
bm09cG9wKEBwdGgpOwogICAgbXkgJHNlYz1zdWJzdHIocG9wKEBwdGgpLDMpOwogICAgbXkgJHNy
dD0kbm07CiAgICAkc3J0PX5zL1wuLis/JC8vOwogICAgJHNydD1+cy9eXysvLzsKICAgICRzcnQ9
IiRzZWMvJHNydCI7CiAgICByZXR1cm4oJG5tLCRzZWMsJHNydCk7Cn0KCiMgYWRkIHJwbXZlcmNt
cAojdXNlIFJQTTo6VmVyc2lvblNvcnQ7CiN1c2UgU29ydDo6VmVyc2lvbnM7CgpzdWIgc29ydG1h
bgp7CiMgU29ydCAtIGlnbm9yZSBjYXNlIGJ1dCBmcmlnIGl0IHNvIHRoYXQgaW50cm8gaXMgdGhl
IGZpcnN0IGVudHJ5LgoKICAgIG15ICh1bmRlZiwkczEsJGMpPUdldE5tU2VjKCRhKTsKICAgIG15
ICh1bmRlZiwkczIsJGQpPUdldE5tU2VjKCRiKTsKCiAgICBteSAkY21wPSRzMSBjbXAgJHMyOwoK
ICAgIHJldHVybiAkY21wIGlmICRjbXA7CiAgICByZXR1cm4gLTEgaWYgKCRjPX5tL1wvaW50cm8v
IGFuZCAkZCF+bS9cL2ludHJvLyk7CiAgICByZXR1cm4gIDEgaWYgKCRkPX5tL1wvaW50cm8vIGFu
ZCAkYyF+bS9cL2ludHJvLyk7CiAgICAkYz1+dHJbXyhdWyEgXTsKICAgICRkPX50cltfKF1bISBd
OwogICAgJGNtcD1sYygkYykgY21wIGxjKCRkKTsKICAgIHByaW50IFNUREVSUiAiJGNcdCRkXHQk
Y21wXG4iOwogICAgcmV0dXJuKCRjIGNtcCAkZCkgaWYgJGNtcCA9PSAwOwogICAgcmV0dXJuKCRj
bXApOwp9Cg==


--nextPart12278677.O9o76ZdvQC--



