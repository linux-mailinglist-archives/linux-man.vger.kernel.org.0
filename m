Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B15F51E099A
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2020 11:04:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388660AbgEYJEq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 May 2020 05:04:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388182AbgEYJEp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 May 2020 05:04:45 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BCE3C061A0E
        for <linux-man@vger.kernel.org>; Mon, 25 May 2020 02:04:45 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id g9so14398383edw.10
        for <linux-man@vger.kernel.org>; Mon, 25 May 2020 02:04:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=MXjIygFm8dMDb3AXBVA6kGI5tEzaeu1Fv8DH3nGELj8=;
        b=f0jIIcNS3kZpF0CHtjPDjppSqM7RTYatQWokSKGL6PXkrzHdfRaL7/Mw3Iq4FpmUQy
         JyoFI1Bhj/Mz5VdmQ15kcX5KoW6Id1mGkF8NIkloIHmsmsKywzGegjVU8etNo7t0xdVG
         IBD5TPPXfksVwGw7sxhBbj4RaD+anuN/lXZhJo+kg9AtaCI2tXFDitzXAlCXWyg4qpws
         pHvwQn30+Lh5M7iakZBBvL6wnu0i2iiaQj4vaRI0xtO7RYYWRCbxfkeG6+dOrSstEyGs
         HpMMZSZHuXerBH+eUyE2UBoLdoI/H+cbnprHW7okob5iHxEWeNGTo5tWmOQnLvDHGxsl
         yusg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=MXjIygFm8dMDb3AXBVA6kGI5tEzaeu1Fv8DH3nGELj8=;
        b=mcqmJd2sugsYPa7Y2kay5hsp+Q11YwrYSAKQFb6iExBQ9vajuKg1Dr8cU+gWosVRSF
         FzWEM4hJKFTXeBL6STIttwXWtuFmcVsdkOv9JoNeQXmu7YVzLsIXDVOt4vBhZIJMV0/w
         PcDxXAquFrmBOVCd06mz/pOftVo0aGAfzIMiozchVj38vFiqMv5AJDESqGNfyv4baD5s
         PhGBnNYA9oTh5AmR7lMewo/HKR+C4kyYRgpVJ42eovVdMYk3Pr9zQvEUCFzkh4AoH7JO
         s3VxakLuCWyAyChYxjh0QVEUp0ahDaN0ncZoX7/iyGHQyPiI6TbT6t2yyTV+mR5lGoVO
         QrhA==
X-Gm-Message-State: AOAM531tua+NPRyyxw9AGOv/hGjy4g6s+FSxZvfWpknMISswOvGhMaSM
        bgavBP/1EIF3VDcJapGpgZPFlmnGYujhVpgQrtEkU/Ql
X-Google-Smtp-Source: ABdhPJwFAlzvPIlRmLKRUX4SZ+XxG8HjJUFyXhSU+VpXJ6eCIEZ44gT/j8a/a9lpJNk+NO2GIj1MrIdx/f1UvPZgf1o=
X-Received: by 2002:a50:99c9:: with SMTP id n9mr9025225edb.1.1590397483934;
 Mon, 25 May 2020 02:04:43 -0700 (PDT)
MIME-Version: 1.0
References: <501e5e0c-f293-b838-5106-764c6b18e061@gmail.com>
 <875300cf-92ca-c115-c42d-19dda5de5a4a@redhat.com> <87ftbs3zb8.fsf@oldenburg2.str.redhat.com>
In-Reply-To: <87ftbs3zb8.fsf@oldenburg2.str.redhat.com>
From:   Michael Kerrisk <mtk.manpages@gmail.com>
Date:   Mon, 25 May 2020 11:04:31 +0200
Message-ID: <CALxWeYqN+4GeTtE2Cf0ZtHn+eFZa4P9fh709qqXnyqd+nGUF=g@mail.gmail.com>
Subject: Re: The GNU C Library Manual - Authoritative or not?
To:     Florian Weimer <fweimer@redhat.com>
Cc:     "Carlos O'Donell via Libc-alpha" <libc-alpha@sourceware.org>,
        Michael Kerrisk-manpages <mtk.manpages@gmail.com>,
        Martin Sebor <msebor@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[CC +=3D linux-man@]
[Context: https://lwn.net/ml/libc-alpha/875300cf-92ca-c115-c42d-19dda5de5a4=
a@redhat.com/]

Hello Florian, Carlos, et al.

On Fri, May 22, 2020 at 3:22 PM Florian Weimer via Libc-alpha
<libc-alpha@sourceware.org> wrote:
>
> * Carlos O'Donell via Libc-alpha:
>
> > "What is the authoritative source for public glibc APIs?"
> > https://sourceware.org/glibc/wiki/FAQ#What_is_the_authoritative_source_=
for_public_glibc_APIs.3F
>
> Current text:
>
> | The GNU C Library manual is the authoritative place for such
> | information that is related to the implementation of functions in
> | glibc.
> |
> | The Linux Man Pages are non-authoritative, but they are incredibly
> | useful, easy to use, and often the first source of such information.
> |
> | The Linux Man Pages is generally authoritative on kernel syscalls, and
> | we have worked hard in cases like futex to ensure the documentation is
> | clear enough for all C libraries.
> |
> | We should all work together to keep both the manual (glibc manual) and
> | the shorter form API references (linux man pages) up to date with the
> | most accurate information we have.
> |
> | Where you find issues with the manual or the linux man pages please
> | reach out to discuss the issue.
>
> > "What other sources of documentation about glibc are available?"
> > https://sourceware.org/glibc/wiki/FAQ#What_other_sources_of_documentati=
on_about_glibc_are_available.3F
>
> | The glibc manual is part of glibc, it is also available online.
> |
> | The Linux man-pages project documents the Linux kernel and the C
> | library interfaces.
> |
> | The Open Group maintains the POSIX Standard which is the authoritative
> | reference for the POSIX APIs.
> |
> | The ISO JTC1 SC22 WG14 maintains the C Standard which is the
> | authoritative reference for the ISO C APIs.
> |
> | The official home page of glibc is at http://www.gnu.org/software/libc.
> |
> | The glibc wiki is at http://sourceware.org/glibc/wiki/HomePage.
> |
> | For bugs, the glibc project uses the sourceware bugzilla with
> |component 'glibc'.
>
> I don't think this is very helpful.  It paints a simple picture which is
> turns out to be rather misleading when inspected closely.  For example,
> POSIX often claims that ISO C takes precedence, but then proceeds to
> specify conflicting requirements with ISO C.  What does that even mean?
> After fall, it's not possible to have multiple authoritative sources for
> the behavior of a single function.
>
> Practically speaking, I see the following problems.
>
> The GNU C Library manual is not often consulted by developers.  I don't
> know why.  One reason may be that it is not readily installable from
> package repositories on Debian or Ubuntu (at least not in current
> versions from the main archive).  But our experience at Red Hat suggests
> that our developers do not read the manual, either, although we do ship
> it.  I base this on the paucity of bug reports against the manual
> compared to what we receive for the man-pages package (which are often
> misfiled initially against glibc).  In my opinion, a manual that is not
> actually used by the people who benefit from the information in it has
> at best a dubious claim to authority.
>
> Reading our manual requires considerable skill.  You need to know the
> history of the project, the lingering Linux vs Hurd conflict, the late
> arrival of threading support in UNIX-like environments, the tension
> between the POSIX and C standards, the lack of maintenance of both, and
> so on.  Without such knowledge, it is often not possible to reach the
> right conclusions.  Even senior developers can easily get confused.
> (For a recent example, consider Kees Cook's misinterpretation of the
> O_EXEC documentation in the manual.)  Part of the problem here is that
> we do not have a team that combs through the manual from time to time
> and keeps it up to date, as our understanding of the documented matter
> evolves.
>
> When it comes to Linux interfaces, any claim about authority of the
> manual is very misleading.  It does not matter if the system call is
> described by POSIX.  For example, if Linux developers change the signal
> that waitpid reports after a failed execve, and our manual documents
> something else, then the manual is now wrong.  And not the kernel.  If
> the manual were authoritative, it would be the other way round.  (The
> man-pages project is not authoritative in that sense, either=E2=80=94it d=
id
> document the SIGKILL signal and had to be updated.)

Thanks. I find a lot of wisdom in what you say and do not disagree
with any of it. I just want to add a few thoughts and observations.

"The GNU C Library manual is not often consulted by developers"

Each year I come into contact with quite a large number of developers
(some few hundred each year) in many locations in my day job (or, at
least what used to be my day job until COVID-19 landed), and I think
*very* few of them are aware of the existence of the glibc manual.
Most are aware of manual pages. (However, they mostly aren't aware
that there is an project entity called "Linux man-pages"; rather, they
just know that they get a pile of manual pages on their systems, and
many of them consult those pages.)

And then there is the "info" thing. As a complete document (i.e.,
PDF), the glibc manual is quite a handsome document with a lot of good
information, but not the thing one wants to reach for when facing a
specific API problem. What is one then left with? "info". I think in
all of the years that I have been around Linux, I cannot recall
meeting anyone who had a kind word to say about this format/interface.
People generally don't understand how to navigate in "info", and I
think the whole idea of hyperlinking in a textual UI is one that
doesn't work well from a usability perspective. https://xkcd.com/912/
is funny for a reason.

"I base this on the paucity of bug reports against the manual compared
to what we receive for the man-pages package"

I want to add some further perspective here. Linux man-pages roughly
follows the release frequency of the kernel [1], thus a new release
every 10 weeks or so. The next release will feature changes resulting
from input from more than *70* people (email bug reporters, patch
submitters, reviewers, people who sent me random email that gave me
ideas, bugzilla reporters).

I put that high number of contributors [2] down to many factors:

* As you (Florian) observe, I think it's true that (many) more people know
about manual pages (than the glibc manual/"info").

* I try to make it easy for people to know how to report bugs.
Notably, since 2007, each manual page in the released set has a
COLOPHON [3] that has some minimal information about the origin of the
page *and how to report bugs*.

* That there is someone who actually responds to the documentation bug
reports. And here I paint myself in a good and bad light. When I am
very active, I do notice more bug reports start coming in. When I am
less active (e.g. in the last couple of years), there is a noticeable
fall in bug reports and contributions. (These observations are
subjective/anecdotal, but I think there is a real trend underneath,
since I've been  through this cycle a few times..)

* I try to make it easy for people to contribute. There's a website
with a fair amount of information about how people should send patches
[4], and I get a surprising number of random patches that actually
follow the guidelines [5]. By contrast, even among those who are aware
of the glibc manual, I estimate that few are aware of how to
contribute to it.

And on that last point, I circle back to an issue that I've banged on
about before. The CLA. It's just a huge barrier to contribution (and,
I remain convinced, A Bad Thing [TM], even if its motivation is well
intentioned [6]). Just in the last day or two, there's someone doing
what seems natural to so many in this (FOSS) world:

https://lwn.net/ml/libc-alpha/20200523191809.19663-1-aurelien.aptel%40gmail=
.com/

I presume this patch submitter has no idea of the existence of the
CLA. Once that person learns of it, will they bother doing the
paperwork, or will they just never bother submitting another patch? I
know which way I would bet my money.

> Many of these issues are beyond our control.  Some of the issues which
> are in our area would need a tremendous amount of work to address.

Yes. Writing good documentation is a lot of work. I know for sure that
man-pages could be a full-time (end even enjoyable!) job for me (or
someone else)--there is that much work that *could* be done--but
something else must pay the bills.

Cheers,

Michael

[1] This is a somewhat arbitrary decision that I made a few years ago,
simply to avoid the "big minor version numbers" problem, which was
roughly the problem that Linus Torvalds was also trying to avoid with
the kernel, although he came to that decision a few years earlier than
me.

[2] The high contribution rate is something of a local maxima in the
last couple of years. See my comments in the other thread about
contribution by others in relation to my own activity elsewhere.
(Turns out that lockdown has some positive effects not just for the
environment, but also for man-pages.)

[3] Example: https://man7.org/linux/man-pages/man7/user_namespaces.7.html#C=
OLOPHON

[4] https://www.kernel.org/doc/man-pages/patches.html

[5] I don't want to paint too rosy a picture here. I still write the
majority of the commits that go into manual pages, and I remain the
reviewer of last resort for the majority of patches, which clearly
does not scale well. And far too many things fall on the floor when my
time is limited. (@Carlos, you probably have too rosy a picture of my
efficiency, because I am usually fairly responsive to input from you
and Florian. But that's because I know from past experience that I can
be fairly confident that what I receive from you will be of a quality
that is typically effortless for me to process.)

[6] https://lwn.net/Articles/529522/
