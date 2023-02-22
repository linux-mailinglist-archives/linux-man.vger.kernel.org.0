Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C97D69FE16
	for <lists+linux-man@lfdr.de>; Wed, 22 Feb 2023 23:04:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229755AbjBVWEo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 22 Feb 2023 17:04:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230073AbjBVWEn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 22 Feb 2023 17:04:43 -0500
Received: from mail-io1-xd2e.google.com (mail-io1-xd2e.google.com [IPv6:2607:f8b0:4864:20::d2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C03903D087
        for <linux-man@vger.kernel.org>; Wed, 22 Feb 2023 14:04:39 -0800 (PST)
Received: by mail-io1-xd2e.google.com with SMTP id b5so43231iow.0
        for <linux-man@vger.kernel.org>; Wed, 22 Feb 2023 14:04:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=landley-net.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sRdvNK2AGqX/1ukUO171gB6ZMNmW1uYNAmnXSQPumDo=;
        b=6aYLrTCCNsWcLZwn2+KC9sfgIaHI1b7yYGnfWWbiq9/IH8kd7ltiDFAJgZ9GXvKKJ+
         iPm/JZ/+6MaEnyxweErRfjtNkzMMy6HioWUL4Dgxm6fCgljDdRsgPj1Tqt+cfDPZw/JV
         TSimIZq9/aeBXSqlokj6fGbKP7ZLZ82pwnitSGzptQf4Dumu3wsWEJbl4/+7ujiNrDUv
         Kq6JoVG5rSuTDgPUjRCD2arPc8PY2V6PmNebO20qs0pE52krx68EmJ6s3aMyQhJiAOuZ
         eX136Rm/xhYi+baW3PQSPgaKVUDXGuplAfAvYkSoSpFPujVdSYt8YihFPOiZWRdQ9reD
         qxug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sRdvNK2AGqX/1ukUO171gB6ZMNmW1uYNAmnXSQPumDo=;
        b=Xw6B2wBAs+ZE6H6lisWu+yrood/cX0rsct7+MLKE+mHPVR96vAcVCMNJrHc5c0zYBC
         WalbZktJ69Q2+JaCVAnRPl9mU2KRjXEgLDC2AZFuIny31oIU3D9y8MBx+8LJI9zbOMTs
         coGpyxk/pUK4Dk7ldbv7Mu3Us8qZYKY+NIu4fpGLWhIhVHTKJGZ3v7hF/AbnybRXa+4d
         Ikf/6ts4hyiGhF+muc9b1nTxR+P41PaXN7a2XDddTw2ct3DwMVxbrTAz+BI1Q7mh0v/+
         La5cIQ5Ky+9/GcMMLrRGS3YmiUFy3MVTiZUJyV+5zl1vjq5rOeEuZUkZASGjAqIDc7J8
         ksCA==
X-Gm-Message-State: AO0yUKVEHwsoHojigow4ZlAOKH2EW1K6nU4z7DwZmdt0KorKUo4rciMk
        1TGrSFemdz31znwgLS3MMInqwg==
X-Google-Smtp-Source: AK7set+C6EGtsS4i9rARuxzhoqM/hY+trmLALkA7dlgpVbvGzkZ9X62oi+FxCQTx9eJMpsyB0oC1Qg==
X-Received: by 2002:a05:6602:1612:b0:74c:89c4:8e03 with SMTP id x18-20020a056602161200b0074c89c48e03mr5126959iow.10.1677103478561;
        Wed, 22 Feb 2023 14:04:38 -0800 (PST)
Received: from [172.16.32.78] ([198.232.126.202])
        by smtp.gmail.com with ESMTPSA id f24-20020a6be818000000b00704c767ead9sm1618909ioh.28.2023.02.22.14.04.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Feb 2023 14:04:37 -0800 (PST)
Message-ID: <bd6e1c74-c597-b516-19b0-4aa9598fd2b4@landley.net>
Date:   Wed, 22 Feb 2023 16:18:01 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v3 1/6] man2/: use IEC or ISO multiples to clarify long
 numeric digit strings
Content-Language: en-US
To:     Alex Colomar <alx.manpages@gmail.com>, coreutils@gnu.org,
        Debian Install System Team <debian-boot@lists.debian.org>
Cc:     Brian Inglis <Brian.Inglis@shaw.ca>,
        Linux Man Pages <linux-man@vger.kernel.org>,
        1031275@bugs.debian.org, Stefan Puiu <stefan.puiu@gmail.com>
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
 <4a3350ac873f45df96abf9045cfe1605839f490d.1676489381.git.Brian.Inglis@Shaw.ca>
 <CACKs7VB672Ka6GJQmVozS6n1kR+g8LoDuLtw1XuwSjKsttFBTg@mail.gmail.com>
 <cb47e19b-ba02-da3f-b253-ee8ddec28aa8@gmail.com>
 <CACKs7VDaAX=qZh9fhn9wa5L5c4xegF0q+ZDBbzE9KTY9pPN+mQ@mail.gmail.com>
 <ed3e2487-2b28-e205-b1aa-c65cb54843ce@gmail.com>
 <CACKs7VCWsF+Pvso-H0VhTr2HFWUBs5JJ=m6uCJ7yB_FPY9g5Bg@mail.gmail.com>
 <2c23a82f-4392-2e4d-7aaa-2e2d17264738@gmail.com>
 <ddc963a7-6ce1-9ff5-ea3a-dd0446b69756@landley.net>
 <9c5c5744-dde0-b333-09e0-ba9d92aa96b1@gmail.com>
From:   Rob Landley <rob@landley.net>
In-Reply-To: <9c5c5744-dde0-b333-09e0-ba9d92aa96b1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        URI_DOTEDU autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2/21/23 19:34, Alex Colomar wrote:
> Hi Rob,
> 
> On 2/21/23 18:00, Rob Landley wrote:
>> If you're going to tell people to learn something new: 1<<10 is a kilobyte,
>> 1<<20 is a megabyte, 1<<30 is a gigabyte, and so on. I've sometimes used
>> 16*(1<<30) for clarity.
> 
> That's nice, and for code it might be a good idea (although you have to 
> be careful, since those are all ints, and 16*(1<<30) is going to 
> overflow, so you'll need 16L).  For documentation, I don't think I like 
> it that much.

16LL on 32 bit systems, but from an "explain what the number is" perspective it
neatly avoids needing to specify a base or units. :)

>>>> Also, for the record, I had no idea what KiB / MiB means and how it's
>>>> different from KB/MB until this discussion.
>> 
>> Very few people do. Some people have been trying to make "fetch" happen for many
>> years, but it didn't.
> 
> What's "fetch"?

A pop culture reference: https://www.youtube.com/watch?v=Pubd-spHN-0

>> (Part of the reason is kibybyte/mebibyte/gibibyte are
>> minor tongue twisters, they're physically harder to say, so nobody does.)
> 
> I rarely talk about this stuff; more often, I write about it.  When I 
> write, the shorthand MiB is nice (I never write mebibyte).

I always read that TLA as "Men in Black", but I know what you mean.

> For talking, 
> I say "megs" (or rather the Spanish equivalent "megas"), so being 
> colloquial I can't be blamed, since I didn't really say megabytes.  If I 
> say the technical term, which is rare, I try to be precise, and say 
> mebibytes instead of megabytes.

I say "binary megabytes" the same way I say "degrees celsius".

>>>> I googled it before
>>>> writing this reply, and found this among the first hits:
>>>> https://ux.stackexchange.com/a/13850.
>>>
>>> That answer was written more than a decade ago.  These days, binary
>>> prefixes are more common.  In fact, I'd say most GNU/Linux commands
>> 
>> "First off, I'd suggest printing out a copy of the GNU coding standards,
>> and NOT read it.  Burn them, it's a great symbolic gesture." - Linus Torvalds
> 
> The GNU coding standards for writing C programs are horrible.  But they 
> have very nice things in their standards.  Their standardization of 
> Makefile targets and variables is quite nice, and I try to follow it 
> closely.

Hence cmake and ninja and so on.

>> (Still there in Documentation/process/coding-style.rst.)
>> 
>> GNU has nothing to do with Linux, and never did. Stallman has a history of
>> taking credit for other people's work:
> 
> I never said so. GNU is a set of userspace programs, Linux is a kernel, 
> and GNU/Linux is the entire OS (or more precisely a relatively important 
> part of it).

A busybox system isn't gnu, which means alpine linux isn't. Android using toybox
with a "no GPL in userspace policy" and built with llvm to avoid even the FSF's
compiler isn't gnu. So Linux on phones, and one of the standard docker distros,
actively _avoid_ using gnu. (These days, "systemd/linux" is probably at least as
accurate as "gnu/linux". I type that from devuan...)

> Most Linux distros are GNU/Linux distros, since user space 
> is mostly GNU.

Not really, no. Stallman constantly takes credit for other people's work (ala
the James Gosling interview video from last time). Here's the glibc maintainer
accusing stallman of a "hostile takeover of glibc development" 20 years ago:

https://sourceware.org/legacy-ml/libc-announce/2001/msg00000.html#:~:text=And%20now

There were similar political shenanigans to bring EGCS back under FSF control
back in the day (resulting in bad blood at the time), which is why projects like
LLVM carefully avoid having any FSF contamination in them.

When I was researching for a computer history book back in 2001 (ala
https://landley.net/history/mirror) I drove to Boston and interviewed Stallman
at MIT. He claimed credit for BSD having defended itself from AT&T's lawsuits,
which is not something anybody who was actually involved wrote in any of their
histories:

  https://www.oreilly.com/library/view/open-sources/1565925823/ch04.html

Free software was the NORM before 1983. 1970s computer magazines had BASIC
source code listings in the back, the CP/M users group northwest started its
public domain library in 1981 (ala
https://landley.net/history/mirror/cpm/cpmug.html), I learned C to participate
in the WWIV modding community (we didn't even have "patch", we had english
descriptions of what to do (really! https://landley.net/history/wwiv/ ). Project
Gutenberg was founded in 1971. The Hercules emultor runs that last public domain
release of OS/360 ala http://www.hercules-390.eu/hercfaq.html#2.02

In reality, copyright was extended to cover source code by the Berne convention
in 1976... which meant people published MORE source because binaries weren't
copyrightable and source had at least a little traction. Copyright was extended
to cover binaries by the 1983 Apple vs Franklin lawsuit, before which there WAS
no non-free software. (There was bespoke software, but that's not the same
thing.) Everybody suddenly closed up after that because the law had changed.
Here's IBM's 1983 "Object Code Only" announcement for example:


https://www.ibm.com/common/ssi/ShowDoc.wss?docURL=/common/ssi/rep_ca/6/897/ENUS283-016/index.html

Here's a 1980 audio recording of Bill Gates whining at a journalist that his
lobbying of congress to change copyright law hadn't produced results:

Context: http://maltedmedia.com/books/papers/sf-gates.html
transcript:
https://features.slashdot.org/story/00/01/20/1316236/b-gates-rants-about-software-copyrights---in-1980
Audio: https://landley.net/history/mirror/ms/gates.mp3

Gates couldn't do it (despite his widely mocked 1976 "letter to hobbyists"
trying to bluff people into doing what he wanted), but Steve Jobs could, and
then Gates benefitted more than  Jobs...

(The main difference between Gates and Jobs is William H Gates III had rich
parents and his mom was on the board of director of the Red Cross with the CEO
of IBM, so it was ok to give a lucrative contract to "Mary's Boy", but Steve was
an adopted kid working out of a garage who had to take venture capital to get
manufacturing off the ground, meaning Jobs lost control of his company within 5
years and Gates still owned 45% of microsoft's shared after the IPO. Also, Jobs
was good at industrial design and William H Gates III ("Trey" to his friends)
was a harvard law school dropout who specialized in negotiating exploitative
business contracts and monopoly leverage, so it didn't matter how terrible their
software was if motherboard manufacturers literally couldn't sell hardware that
did NOT come bundled with DOS+Windows.)

Anyway, Unix had already been cloned by then. The first clone passed an IP
challenge by AT&T's legal department somewhere around 1980:

  https://en.wikipedia.org/wiki/Coherent_(operating_system)
  https://groups.google.com/g/alt.folklore.computers/c/_ZaYeY46eb4/m/5B41Uym6d4QJ

AT&T's breakup shortly after Apple vs Franklin (to escape the 1953 consent
decree it operated under and thus commercialize its non-phone technology,
prominently including Unix) also denied Andrew Tanenbaum access to Unix V6 and
the Lions Book as a teaching tool (more or less following in Ken Thompson's
footsteps from his year off to teach at Berkeley in 1975 that gave rise to BSD),
so Tanenbaum wrote his own from-scratch clone called Minix was was not just
ready but self-hosting (including a kernel, compiler, shell, and command line
utilities, and it could rebuild itself under itself) in 3 years. And of course
the complete source code was on a floppy in the back of the textbook, because
that was the POINT...

Stallman's me-too announcement that he was gonna do the same thing as Coherent
and Minix and BSD-Tahoe and so on didn't really make much of a splash? Minix 1.0
came out in 1987, BSD-Tahoe came out in 1988, and a zillion others like
https://en.wikipedia.org/wiki/UNETix and https://en.wikipedia.org/wiki/DNIX and
so on happened long before Linux. GNU never shipped anything usable. Linux was
designed and built under Minix, its first filesystem format was minix, etc.

What stallman DID have was ftp.ai.mit.edu, back when commercial access to the
internet was forbidden due to the DARPA funding, and thus hosting a site
required a government, military, or educational connection. That's why Larry
wall handed over his "patch" program to gnu, despite happily supporting perl on
windows for decades. He didn't care about Stallman's crusade, he just jumped
through the hoops necessary to get hosting back when that wasn't something you
could purchase.

When the NSF's 1993 change to its Acceptable Use Policy allowed commercial
access to the internet (resulting in AOL jumping online and the "september that
never ended"), Stallman's importance RAPIDLY receded. The FSF has collapsed like
a balloon since 1993 because it turns out most people just wanted their code on
an FTP server, and all that nonsense about signing over your copyrights wasn't
worth it once geocities existed. (Let alone sourceforge. Let alone github.)

The "Cathedral" in the 1997 usenix paper "The Cathedral And The Bazaar" was the
FSF's GNU project. No really, the abstract of the paper says as much
(https://www.usenix.org/conference/1998-usenix-annual-technical-conference/software-development-models-cathedral-and-bazaar)
and the paper's author was the maintainer of the Emacs LISP library, who found
himself on the "outside" of the project and unable to sufficiently participate
because he hadn't gone to MIT and didn't live in Boston.

> I CCed GNU coreutils so that they feel alluded and maybe improve their 
> utils :)

I'm still on that mailing list until they merge cut -DF.

I'm not generally trying to improve coreutils, I'm working to replace it. I have
some history here myself: I used to maintain busybox, currently maintain toybox
(which became Android's command line in 2015), started the first GPL enforcement
suits in the USA, got invited by Eben Moglen to come to NYC to speak with a
bunch of lawyers about copyleft licensing in 2008, have spoken on this topic at
various conferences (Kirk McKusick was in the audience for
https://archive.org/details/OhioLinuxfest2013/24-Rob_Landley-The_Rise_and_Fall_of_Copyleft.flac
and said he quite enjoyed it)...

I wince at people saying "gnu/linux" because I still feel a somewhat responsible
for the gnu/linux crusade that Stallman's been on since I tried to explain
marketing to him back in 1998 and it... didn't go in the direction I expected:
http://www.kerneltraffic.org/kernel-traffic/kt20020805_178.html#1

At least three times in my career I basically yodeled and could not control the
resulting avalanche...

>> https://functional.cafe/@tfb/109897415359142549
>> 
>>> respect them (an important exception being GNU coreutils (for example
>>> ls(1)).  But many programs use prefixes accurately, such as fdisk(8).
>>>
>>> In the Linux man-pages we have units(7), which documents these.  Maybe
>>> that page should be more known.
>> 
>> FYI Michael Kerrisk last updated https://github.com/mkerrisk in 2021.
> 
> That repo is just a mirror of the official repo at
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/>,
> which I maintain.

You've taken over from Michael Kerrisk then? I should inform
https://www.openwall.com/lists/musl/2022/11/30/2#:~:text=biggest%20problem and
friends...

>> It is now
>> 2023. He still posts monthly proof-of-life to
>> https://twitter.com/mkerrisk/with_replies but hasn't replied to man-pages email
>> in the past year that I am aware of?
>> 
>> Dunno why.
> 
> He's busy with his own business, and doesn't have time to continue 
> maintaining the project.  It's a voluntary thing, so it's reasonable to 
> be able to step out at any time.
> 
> Since 2020, I comaintained the project with Michael, and now I'm the 
> only maintainer of the project.  To be more precise, let's quote the README:
> 
> Maintainers
>         Alejandro Colomar <alx@kernel.org> 
> <http://www.alejandro-colomar.es/>
>               2020 - present (5.09 - HEAD)
>         Michael Kerrisk <mtk.manpages@gmail.com> <https://man7.org/>
>               2004 - 2021 (2.00 - 5.13)
>         Andries Brouwer <aeb@cwi.nl> <https://www.win.tue.nl/~aeb>
>               1995 - 2004    (1.6  - 1.70)
>         Rik Faith <https://www.cs.unc.edu/~faith/>
>               1993 - 1995    (1.0  - 1.5)

Good to know. (I just randomly stopped getting the emailed updates...)

Ah, there you are on https://www.kernel.org/doc/man-pages/maintaining.html

>> I emailed to ask, but...
>> 
>>> BTW, that answer is inaccurate (at least today): drive manufacturers
>>> have the distinction pretty clear, and use it precisely (with lawsuits
>>> won thanks to this); they use metric prefixes, because they mean it.
>>> They can sell you 1 TB instead of 1 TiB, and most people won't even
>>> know, but those who know, will know that 1 TB is 1'000'000'000'000 B,
>>> which is what you get.
>> 
>> Remember when the dictionaries gave in on "literally" meaning "an emphatic form
>> of figuratively"? What's the "kibybyte" equivalent we all switched to there for
>> clarity?
>> 
>> We say "metric ton" and "imperial ton". We say "degrees farenheit" and "degrees
>> celsius". The celsius people didn't come up with a different word for degree,
>> yet somehow we all survived...
> 
> Or you can say Kelvin ;)

And when the weather reports start giving temperatures in kelvin... they would
still say "degrees", wouldn't they? It's 267 degrees in Minneapolis today...

Gigabytes can be in base 10 or base 2. They're still gigabytes.

> In colloquial texts, or more appropriately in colloquial talking, 
> degrees (without specifying), tons (same), or "megs", are fine, but for 
> a manual, where we want precision (especially since we do mix decimal 
> and binary multipliers often), I would strongly avoid misusing terms.

*shrug* If you're maintainer, it's your call. I've said my piece.

>> "They'll google it" is the modern version of "they'll read the documentation".
>> They will not, you're just delegating blame.
> 
> I can't imagine someone reading MiB in a manual page and not searching 
> what that means (unless the reader doesn't care about that specific value).

It's _possible_ the man page maintainer is not, in isolation, a fully rounded
representative sample on this issue?

>> Rob
>> 
>> P.S. Maybe this is a generational thing? Are the kids saying "kibibyte" in high
>> school these days?
> 
> I don't think so.  Teachers usually don't know these prefixes either, I 
> guess.

Do you expect to change global language usage patterns or just make the man
pages less relevant to their intended audience?

>> I know that "hacker means computer breakin specialist" is
>> something a small number of boomers will resist to the death despite a google
>> news search only pulling up one meaning in general usage. And the "two spaces
>> after period" thing old hands cling to will only end when they die despite the
>> chicago manual of style, the AP stylebook, the MLA handbook, and the APA
>> publication manual all agreeing its' been one space after a period for decades
>> now.
> 
> They'll have to remove the second space from my cold dead fingers.

That's exactly how the change will happen, yes. This was published 9 years ago:

https://www.cultofpedagogy.com/two-spaces-after-period/

> All 
> those style guides are plain wrong.  I've read their rationales, and 
> they make no sense at all.  Using one space is discarding information, 
> and that is bad.

Blame Tim Berners-Lee. The cultural shift started when HTML rendered all runs of
whitespace as a single space back in 1991. People write what they read.

The web's S-curve of adoption went vertical by 1993 (the NSF AUP switch was
actually a trailing indicator by at least a year, "the well" and such were
already doing grey-zone dialup ISPs as "nonprofits with donations to cover
expenses", and lots of people maintained alumni accounts at college or dialed in
to work after work; AOL suddenly becoming the biggest ISP was noticeable, but
not causative), kellog's started putting its URL on its cereal boxes in 1995.
Shortly before McNeil retired from the McNeil/Lehrer news hour, the ending
credits about sending letters to the editor apologized for having said "snail
mail" the previous day when introducing their email address as a way to contact
them, that was also 1995 I believe? The first phone with web access was the
Nokia 9000 in 1996, Yahoo went public in 1996. (I was apparently the first
financial journalist to cover Google in 1998 and I still have the stickers they
sent me.) The dot-com crash was big news in 2001. The "one billion people
online" articles were ~2005. The first modern smartphones ~2008. The UN report
about more people having smartphones than flush toilets was 2013.

People who learned to type before Y2K had two spaces drilled into them, often on
a manual typewriter, but that stopped being the case about the start of the
dubyah administration, and the standards bodies caught up to normal practice a
few years later. I had to retrain myself to stop doing it in... let's see,
https://landley.net/notes-2011.html has two spaces in the last entry, and
https://landley.net/notes-2012.html had one. So just over 10 years ago. And I am
a VERY late adopter of this sort of thing...

*shrug* Computer history's been a hobby of mine since the 1990s. I like to root
cause things, and dig up WHY they happened, to have proper context to decide
what to do about them.

> Let's list their reasons (AFAICS):

People got used to reading web pages, which rendered with one space.

There may have been additional justifications for the decision already made, but
those were basically excuses.

> 	I guess the "problems" are the consistency thing referred in the second 
> sentence...  Well, it's not inconsistency, it's just that different 
> things are different.  I don't like oranges and tomatoes because they're 
> inconsistent; one fruit is red and the other is orange...  Nonsense.

I got an english minor in college, and one of the things it drilled into me is
if it's correct and nobody does it, it's not correct. The divergence between
"proper" and "common usage" only persists when it's a class-based indicator used
to exclude "those people" from "polite society". You could or couldn't afford to
get the silver ring with the skull on it, and thus know how to point your pinky
and sort forks when having tea with toffs.

Sometimes there were reasons: Latin physically CAN'T split infinitives (they're
not multiple words), so anything translated from latin looks more like the latin
when it keeps the two words together, and when reading things in "the original
latin" is a valuable skill splitting infinitives sticks out as uneducated in a
"you don't know how it works" way, and is held in place by inertia for a while
after that...

Then a single television show goes "to boldly split infinitives that no man has
split before" and goes into constant reruns (desilu productions = desi arnez +
lucille ball, VERY good at the syndication thing) and then has a hit movie come
out where a character who just died recites it as a poignant memorial to himself
just before the closing credits, and THEN a successor/revival series changes
"man" to "one" but does not move the "boldly"... and the rule is quietly retired
because it _lost_.

English! It's a mess. We jettisoned the second person singular because british
nobility started copying the queen (who spoke for the nation, thus always in the
"we are not amused" plural) and it moved downhill until eventually addressing
someone else as thou was fighting words because it meant you considered the
person you were addressing your social inferior (yes the Amish got physically
attacked for this, it's part of the reason they moved). This is also one of
those subtleties in shakespeare, the way he uses "thou" as an insult, because
the transition was ongoing in his time:

https://drmarkwomack.com/engl-3306/handouts/shakespeares-language/thou-and-you-in-shakespeare/

The "great vowel shift" was similar (albeit less well documented) class-based
shenanigans.

> -  "Old English used 3-em space after period, but old Spanish or French 
> didn't, in fact they often used 0 spaces after punctuation".
> 	So what?  Were they more readable thanks to that?  No.

https://en.wikipedia.org/wiki/Scriptio_continua

It was an invention.

> -  "2-spacers are just imitating previous writers; they don't know what 
> they're doing".
> 	Imitating wise old customs without knowing the rationale is not bad per 
> se.  Deviating from them without a rationale is even worse.

Which is why I study history.

And I go back and correct my old stuff when I learn better:
https://www.osnews.com/story/25556/understanding-the-bin-sbin-usrbin-usrsbin-split/
was written off the top of my head and I got a couple details wrong (the fast
system disk was 0.5 mb, the 2 rk05 disk packs were 2.5 mb each), and when
https://landley.net/writing/hackermonthly-issue022-pg33.pdf asked to republish
the article I sent them an updated version with bibliographic references. :)

But when I can say WHY something shifted, and that what's already happened at
_best_ underwent a hysteresis transition between metastable states and is now
firmly entrenched in a different local minima... I generally don't waste TOO
much effort trying to push it back all by myself?

I cannot stop people from saying "nucyoolar".
(https://www.nytimes.com/2002/10/13/weekinreview/confronting-noo-kyuh-luhr-proliferation.html
blames eisenhower but he learned it from classified military briefings, meaning
there's a specific military idiot who broke it and we dunno who. Oh well. I
haven't found a recording of Truman saying nuclear, he said "atomic".) Then
again Gigabyte beat out "jigawatt". Gif and Jif are basically soda vs pop
regional variants. Linus Torvalds literally sent people a RECORDING to move
"lienux" to "linux" (which was Red Hat's audio test during setup back when they
had over 50% desktop market share, before the people brought in for the IPO
explained how to eat Sun's lunch).

But do I expect kibibytes to take off? Not really, no. Could be wrong, but...

Rob
