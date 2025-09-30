Return-Path: <linux-man+bounces-4015-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD79BAE7BE
	for <lists+linux-man@lfdr.de>; Tue, 30 Sep 2025 21:57:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 90A761942F0A
	for <lists+linux-man@lfdr.de>; Tue, 30 Sep 2025 19:57:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6840D2641C3;
	Tue, 30 Sep 2025 19:57:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=aarsen.me header.i=@aarsen.me header.b="S18C7zVe"
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [80.241.56.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 648C72581
	for <linux-man@vger.kernel.org>; Tue, 30 Sep 2025 19:57:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.151
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759262230; cv=none; b=Tlb6YGoDPr8gVc8WL7adAkcGXOrF/CcD9M8IGBJkA0EIc5cZ8zFuAIPc/1sILYyya4NuUcuo/sp6rJ7n0TTWYtq/VJBb9OTaOj4eXMIECYK/WX8io3tfQLbkUV4GEfrpoKV1AilOOhBKNk1aJknjwG+yQ0Mk9ckatgyly7mOspw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759262230; c=relaxed/simple;
	bh=AvpreHYFr9hDir92QgjdB0FUrah0/YsDtU3CKFRxiIo=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=CJFCuyBqmlSfMIMsnEJ3yhdwrCh9XOo1TjLGv921/trQ7Xx/V1ixHuUJomiNfCbEn6Gc3AHJyHQxtboi+yx8D6OosxrhNJshwGMN1x48IAaH/hnoCog6+lDwXGl+Bgf6dCxAgqloP52PewM5VEmThBk3bwwUCpT7mgz2rtcrcRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=aarsen.me; spf=pass smtp.mailfrom=aarsen.me; dkim=pass (2048-bit key) header.d=aarsen.me header.i=@aarsen.me header.b=S18C7zVe; arc=none smtp.client-ip=80.241.56.151
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=aarsen.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aarsen.me
Received: from smtp102.mailbox.org (smtp102.mailbox.org [IPv6:2001:67c:2050:b231:465::102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4cbpjq1QY7z9tgj;
	Tue, 30 Sep 2025 21:57:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aarsen.me; s=MBO0001;
	t=1759262223;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=/6TsQQwFEtEfk8DgZx1RRXPiI4gQkLBODOM8y123j+g=;
	b=S18C7zVeuEOuidcXvCskIO5pnXDP3ExKcuXo2JB3y38G9aaHv8aZvlUKqpBxwMj2iejHPW
	HYYQIyIlS/PEvtv1R9vNwb54M5zE7dXRUh2fqRHO/YlHJEByFqGfLPVptqKDveZvdzXMEz
	+kEx+FgDh4wdE2Z9g2Xlo0t2Do0FEYT6dskC0gNS8bx6Bl6H5oMXsRYDD39ecaDxCcNynu
	x01cgN8ZuSHX0SHLQQW/TY9sqvxBh8PlJtFYvwO3R5wqRmb1Am6AZtfkHoFha3nRfYGGPx
	0FNYQwdTNud7pfuBnYu2mfosicJCFW2VfFokm032gRWQiJ+tJcStUSFwefG67w==
Authentication-Results: outgoing_mbo_mout;
	dkim=none;
	spf=pass (outgoing_mbo_mout: domain of arsen@aarsen.me designates 2001:67c:2050:b231:465::102 as permitted sender) smtp.mailfrom=arsen@aarsen.me
From: =?utf-8?Q?Arsen_Arsenovi=C4=87?= <arsen@aarsen.me>
To: Rob Landley <rob@landley.net>
Cc: Alejandro Colomar <alx@kernel.org>,  coreutils@gnu.org,
  linux-man@vger.kernel.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
In-Reply-To: <e369c200-a7cd-4b92-b700-d9d48d347ce8@landley.net>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
	<87jz1sm2t3.fsf@aarsen.me>
	<fziyxvozscytwasmhtrpjfqbmldxmggjkdm4pzo7cupxhby422@czrmkask4xsc>
	<87cy7e7hml.fsf@aarsen.me>
	<e369c200-a7cd-4b92-b700-d9d48d347ce8@landley.net>
Date: Tue, 30 Sep 2025 21:57:00 +0200
Message-ID: <86tt0jn27n.fsf@aarsen.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
X-Rspamd-Queue-Id: 4cbpjq1QY7z9tgj

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Rob Landley <rob@landley.net> writes:

> On 9/25/25 09:04, Arsen Arsenovi=C4=87 wrote:
>> Unfortunately, it is.  A collection of linear mostly-unrelated pages in
>> predetermined shape simply cannot document complex software, a
>> hierarchical approach is non-negotiable.
>> libc, (most of) the syscall API and coreutils are a lucky case in that
>> they are, fundamentally, large collections of *very* simple bits
>> (functions and programs),
>
> It wasn't "lucky".

It was, it was obvious even in first edition Unix - I'll come back to
that.

> "Do one thing and do it well" was an explicit design decision the Bell
> Labs guys made in 1971.

Please spare me the football chants, I've heard enough them from the
likes of Bob Martin.  They lack nuance required to be useful rebuttals
or points of discussion, and in fact produce counter-effects when people
stick to them too dogmatically and fail to realize the best way to
decompose a problem.

For example, "one thing" is, for "things" that (unlike *most* coreutils;
there goes that luck again) can't be described as a mathematical
function whose definition is a few lines of formal description, can be
quite complex.

Compilers are such things - a compiler is effectively a pure
mathematical function from plain text into machine code (or a set of
diagnostics), and there are many such functions, yet compilers which "do
it well" are very complex (but made up of smaller parts, obviously -
this isn't a Unix insight, mathematicians have been decomposing problems
for thousands of years); and given the measure of "well" differs by
use-case, these obviously gain more complex interfaces also.

When documetning, these more complex interfaces ought to be decomposed
into logical units for obvious reasons.  There are also overarching
themes that aren't simply attached to a single (or handful) of bits of
the interface.

> Doug McIlroy wrote about it in 1978 in the Forward to the article on
> "The Unix TimeSharing System" in the Bell System Technical Journal in
> 1978: "do one thing and do it well" and then compose more complicated
> things from simple parts. Peter Salus reiterated it in "a quarter
> century of unix" (a book about the anniversary), and Mike Gancarz'
> book "the unix philosophy" went into this in some detail.
>
> That's why they could get away with a flat namespace and simple man
> pages and so on for decades.

The funny thing is that they couldn't (and here we come back to that).
Consider, for instance, file descriptors.

In the original Unix v1 programmers manual (or, at least, the copy I
could find), the term "file descriptor" is used 30 times, and defined
(poorly) twice.  It is obvious that "file descriptor" is a piece of
overarching context deserving of a section, but dogmatic flat
hierarchies of purpose-defined sections splits ("Commands", "System
calls", "Library calls", "Special files", ...) into a bunch of
pre-structured flat documents by name of procedure or command simply
cannot capture this.  You could produce a manpage "fildes.7", but its
name and relation to other bits of the manual are non-obvious,
especially to new readers.  It is also unfortunate that this section
presumably intended to contain such context ("miscellaneous") is *after*
the sections that use said context.  It is also unfortunate that, within
sections, pages are unordered.  There's obviously a partial reading
order between pages.

(A funny side note: subconsciously, I chose the name "fildes.7" as to
 not go over eight characters; it came to me naturally after many years
 of working with and on Unix-like systems, this archaic element simply
 lodged itself into my instincts after some time.)

Nowadays, the situation is even worse.  Consider the networking
functions.  Clearly, networking has overarching concepts, and clearly
networking-related procedures are related or supersede eachother
(gethostbyname/getservbyname vs. getaddrinfo for instance, or inet_*).
It is useful for these to be grouped together with overarching themes
explained without repetition or omission.  But that's not possible.

To clarify, I don't mean to imply that an OS-level manual should teach
the reader about basic networking concepts, but it is still useful to
briefly recap said concepts in order to clarify possibly-ambiguous
terminology and set up standards for your documentation.

Also, in my opinion, it is obvious that the term "file descriptor" is a
misnomer or misabstraction and that "descriptor" or "handle" - which are
significantly broader terms - would result in a far clearer abstraction
(where a file descriptor is one such descriptor or handle).

In my mind, this basic failure in design was a result of someone
chanting something like "everything is a file", and hence attaching a
read and write operation to all OS "objects" instead of understanding
that the filesystem hierarchy also contained within itself an "object"
hierarchy.  I have no way of knowing if my head-canon is correct,
though.

>> but the fact that manpages are insufficient is
>> visible in everything about Linux other than the syscall API.  Finding
>> documentation for Linux cmdline parameters, pseudo-FSes and various
>> components is a Herculean task.
>
> The utility command line parameters are on the web at
> https://man7.org/linux/man-pages/man1/intro.1.html which seemed reasonably
> straightforward to me. (Over the years it's accumulated a lot of extra cr=
ap
> from optional packages, but as failure modes go it could be worse...)
>
> The kernel command line arguments are at
> https://kernel.org/doc/Documentation/admin-guide/kernel-parameters.txt and
> filesystems are at
> https://kernel.org/doc/Documentation/filesystems/squashfs.txt (first I've=
 heard
> pseudo, it's usually called "synthetic", ala
> https://landley.net/toybox/doc/mount.html unless you have a reference I d=
on't?)

The Linux documentation refers to pseudo filesystems.  One such example
I found by grep is in filesystems/vfs.rst:

  An individual dentry usually has a pointer to an inode.  Inodes are
  filesystem objects such as regular files, directories, FIFOs and other
  beasts.  They live either on the disc (for block device filesystems)
  or in the memory (for pseudo filesystems).  Inodes that live on the
  disc are copied into the memory when required and changes to the inode
  are written back to disc.  A single inode can be pointed to by
  multiple dentries (hard links, for example, do this).


... as does procfs(5), for instance, or filesystems(5), and, AFAIK, so
does the kernel codebase.

I'm surprised to see that the term is new to some; I don't think I've
ever heard anyone using different terminology.

> But then I was briefly the linux kernel's Documentation maintainer in
> a previous life so I may be biased. (Jonathan Corbet of lwn.net has
> that position now, I believe.) I did a certain amount of analysis back
> when it was my job, ala
> https://kernel.org/doc/ols/2008/ols2008v2-pages-7-18.pdf

I am aware of where they are.  The answer is "all over the place"
(consider, for instance, modules having their own parameters).  I've
gone searching enough times to remember the trail to the clearing
through the forest.

Of course, this is tangental to the manpage discussion; this is caused
by other forces also, such as the set of concerns usually lumped under
"operating system" in other communities being broken up between
occasionally-adverse groups.

> The man pages present simple text output created from text input. The
> source is in a legacy typesetting format from 1971 (created for the
> AT&T patent and licensing department and aimed at a brand of
> daisy-wheel printer that no longer exists), but even
> http://www.catb.org/~esr/doclifter/doclifter.html back in 2003 could
> already migrate that to something else and people decided "nah, qwerty
> ain't so bad, better the devil you know...".

>> No, it's both.  The 'man' macro package is imperative and unstructured
>> rather than declarative and structured,
>
> People were offered docbook 20 years ago. It was worse. (There's no
> docbook gui editor because it's TOO structured, in ways that are not
> easily visually represented. It's an ivory tower academic solution.)

I'm not sure why this is relevant - roff is capable of producing better
documents than manpages (for instance, The C Programming Language by
Brian Kernighan and Dennis Ritchie, was typeset with roff to my
awareness, or at least I seem to remember reading that in the preface at
some point - in any case, it was certainly used in well-written
publication rather than solely manpages, so the format is hardly
relevant), so clearly it's not an underlying limitation of the format.
And, again, there's a somewhat-better macro package for manpages also.

>> and 'roff' is quite cumbersome
>> to use.  The BSDs (I think?) have attempted to solve this partially with
>> mdoc.  I've found authoring with it slightly better.  Unfortunately,
>> however, it is still 'roff'.
>> But, indeed, pagers are inadequate viewers also.
>
> The man package's build scripts have produced html output for many years,=
 you
> can do it on your laptop from a git clone.

I don't even need a clone - the 'man' tool can produce HTML
automatically with the flip of a switch.

>> OpenBSD, IIRC,
>> provided slight improvement in this regard by letting 'less' read some
>> type of list of tags that it produces out of the manual page, or
>> somesuch, to facilitate jumping.  This is a significant move in the
>> right direction, but it doesn't manage to address the fact that manpages
>> are non-hierarchical.
>
> If I want "man insmod" I don't have to know it's in section 8. Making it =
more
> granular turns out to be less useful.
>
> You're complaining about 40 year old design decisions that have persisted=
 for
> good reason. People have been free to change it all along.

IMO, it is clear that developers, especially in the Unix sphere, are
unwilling to write documentation.  Washing machines from '80s tend to
have more comprehensive documentation than the documentation in Unix and
Unix-like systems.

I'm not surprised little mind was put towards this clear improvement.
This doesn't really support the "good reason" hypothesis.

>> This addresses half of the issue (what if the pages are old?), and still
>> leaves the fact its a separate software distribution unsolved.
>
> Either people updated the docs or they didn't. Having an active well-known
> place to go look and complain at is useful. Requiring somebody to read the
> source code and provide a copyright assignment to tweak documentation... =
well
> you've tried that since 1983, how did it go?

What?

If you're saying having updated docs is good, I agree; but you appear to
be lumping together a few things.

> There may be some selection bias in the people who constantly read and ed=
it
> this source code finding this source code to be the best place to put the
> docs. Learn to cook at the oven factory.
>
> Rob

Have a lovely day.
=2D-=20
Arsen Arsenovi=C4=87

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iOYEARYKAI4WIQT+4rPRE/wAoxYtYGFSwpQwHqLEkwUCaNw2DF8UgAAAAAAuAChp
c3N1ZXItZnByQG5vdGF0aW9ucy5vcGVucGdwLmZpZnRoaG9yc2VtYW4ubmV0RkVF
MkIzRDExM0ZDMDBBMzE2MkQ2MDYxNTJDMjk0MzAxRUEyQzQ5MxAcYXJzZW5AYWFy
c2VuLm1lAAoJEFLClDAeosSTrtkA/0ZZP7Sibr6o6RkPaw0Dw6Vdn6+ee/KD9aK1
T/EaTu8aAP9fRk7GufuVbTMr9NauAqGlOERn4YwkOA40HJy24CZQBQ==
=befs
-----END PGP SIGNATURE-----
--=-=-=--

