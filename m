Return-Path: <linux-man+bounces-3948-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E1FB9583D
	for <lists+linux-man@lfdr.de>; Tue, 23 Sep 2025 12:51:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3EEF71890D76
	for <lists+linux-man@lfdr.de>; Tue, 23 Sep 2025 10:51:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4F13313D48;
	Tue, 23 Sep 2025 10:51:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cCEcRj7Z"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 642252594BD
	for <linux-man@vger.kernel.org>; Tue, 23 Sep 2025 10:51:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758624663; cv=none; b=GkvuiyQLN1W8SYJlFo6doqO4Y2MTkr3Wbw/Ql0W1EiqMtw5xVUYCKDqL9GnFlge2FpWmiJE7IxCOnxcjtmjoQ96gxSCoyC0rtQ0dpZeB5FeeiTfZpkFRRlXILIv1T2HvQ1KkTS9xODWRpkNzK9c6gr3AzUAA2IQankoIR7v//XI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758624663; c=relaxed/simple;
	bh=A6Z6BHJ82zOaGR03L+k2MKORnYnEwu5xiMMZMfgzd08=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=GZtSQO1XkyHX1BxVwchlFlOcTJSe+yR0U+6cA+w2X3ZI0cZ3vi0OppuRGzkn/GWsVqEcMxiLghNXjDTwGoOIJMYzjrmXglaJa9aQRXsWg2C+84y9k7YoiEsD6Ym9BCKyPmPS+KzE8/kEX1ciim/TBYMqaZw+110iIzBSiH+AjFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCEcRj7Z; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 349D8C4CEF5;
	Tue, 23 Sep 2025 10:50:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758624660;
	bh=A6Z6BHJ82zOaGR03L+k2MKORnYnEwu5xiMMZMfgzd08=;
	h=Date:From:To:Cc:Subject:From;
	b=cCEcRj7ZDm+7h7MXnnFZcGlWq7/Y2Pdp0WA0RsE5SsYLtZ8lPY9fAaU9EvUhGJN0D
	 xCHbrucnHvJYnfey2LpJ+vr+GIyvx8ysPjN9o7RL0L4DL83xLGesVxIi112tkT+DMV
	 3Q8t1k9vlsv0PytSddBcAuJUvOLK/i7KZKkmj/efGhyV05OlVgK9s8K/KldXv/QhDc
	 fi+OMfJicoWZ98I1WYqLhnU7cFHBdQ1LKTRWaHTb3E9K/q5IhWfDeAQno63iTeLLTZ
	 CY5WwxQmZwgEdzgEQYa4H/8WdPcEYIRvDXvr5Q2bDItfLTGT6pVId7S6Cjl+3JEu04
	 E70wxCi16PHhw==
Date: Tue, 23 Sep 2025 12:50:54 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Doug McIlroy <douglas.mcilroy@dartmouth.edu>, 
	Michael Kerrisk <mtk.manpages@gmail.com>, groff@gnu.org
Subject: mini-book manual pages through multi-.so pages (i.e., the old
 proc(5) page)
Message-ID: <3cdmp5o65fcnrd7fdaziino6thqpnevsxfln5hku2fvbc2bk42@4ck2l5oyearq>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jgau6e4tvj27tne3"
Content-Disposition: inline


--jgau6e4tvj27tne3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Doug McIlroy <douglas.mcilroy@dartmouth.edu>, 
	Michael Kerrisk <mtk.manpages@gmail.com>, groff@gnu.org
Subject: mini-book manual pages through multi-.so pages (i.e., the old
 proc(5) page)
Message-ID: <3cdmp5o65fcnrd7fdaziino6thqpnevsxfln5hku2fvbc2bk42@4ck2l5oyearq>
MIME-Version: 1.0

Hi,


Michael Kerrisk reported to me that he preferred the old proc(5) page,
where everything under /proc was in a single page.

The rationale is that it was possible to search through that page with
less(1), and you didn't need to know where it was what you were
searching for.

He proposed reverting the splits of proc(5), which I refuse to do, but
I think he has a point.  I refuse to do so, because I agree with
something Doug complained about, which is that some of the pages we have
are not really pages, but rather entire books, and for me it has
important maintenance costs (plus, it's easier for me to find stuff with
small pages; but that seems to be subjective, depending on your
specific needs and experience).

Right now, the only way for searching something across several pages is
going to /usr/share/man/, and doing a manual search there.  This was
already true in the general case, before the split of pages.  For
example, if one wanted (or wants) to know where FD_CLOEXEC is specified,
one must know a little bit about Unix organization of manual pages, and
use some pipes:

	alx@debian:/usr/share/man$ find man2 -type f | sort | xargs zgrep FD_CLOEX=
EC -l
	man2/accept.2.gz
	man2/dup.2.gz
	man2/epoll_create.2.gz
	man2/eventfd.2.gz
	man2/execve.2.gz
	man2/fanotify_init.2.gz
	man2/fcntl.2.gz
	man2/inotify_init.2.gz
	man2/memfd_create.2.gz
	man2/memfd_secret.2.gz
	man2/open.2.gz
	man2/perf_event_open.2.gz
	man2/pidfd_getfd.2.gz
	man2/pipe.2.gz
	man2/signalfd.2.gz
	man2/socket.2.gz
	man2/timerfd_create.2.gz

(We may want for example an FD_CLOEXEC.2const manual page to link to the
 canonical page for it, but I'm not yet decided, because that could mean
 lots and lots of new link pages.  I'm open to comments about that.)

But I admit that the splitting of proc(5) and other pages has regressed
this feature that was present, and in some sense, this is something that
info(1) does right-ish: documentation is nested in levels, and you can
start from the top level if you don't know what you're looking for.

I had an idea that somehow relates to the original format in which Unix
documentation was presented, and which thanks to Deri James we have now
again in this project: a typeset book covering the entire set of manual
pages.  There, one can search for anything, and it will be found.

We could also have something similar in the terminal, and not as huge as
the entire book.  It would be mini-books, for some topics, such as
proc(5).

My idea is having a proc(7) page that would essentially be built as:

	$ find man5/ | grep proc | sort | sed 's/^/.so /' > man7/proc.7;

(Actually, I'd also build a proc_pid(7) page, which would include only
 the proc_pid_*(5) pages, and similarly for other /proc/ subdirs.  And
 then proc(7) would only source those subdir pages.)

Then, one could consult proc(5) as documentation exclusively for the
/proc directory itself, or one could consult proc(7) as a book that
describes both /proc and its contents.

And the maintenance would be as simple as it is now, because the
contents are in the small pages only.  Updating the link books should be
easy (and I'm thinking of a script to create them at build time, so it
should be fine).

What do you think?

I'm CCing Doug, as he probably has an opinion as editor of the V7 Unix
manual, and Michael as the reporter of the regression.  I'm also CCing
groff@, as they probably have some opinion on multi-.so pages (and thus,
multi-.TH pages).


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--jgau6e4tvj27tne3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjSe4MACgkQ64mZXMKQ
wqketA//ZlpN3uzGgjdIi+iKiHZ5kZXbwK/G74SsHudVtvwbX27ND+HR6dluus7U
43ROogLQZor3ZPgswNzT6Ecn+Ta2p9Z8UcZbt7dq1FJA5mkvMGjFHXKm7BZX7uKT
DnSAYQIsXhyp0e/xT7duCqfezemhbcOKFWgDmSPQVU7zUOv+Aquk6AS8PXroOuKc
lU42c5tivq2KPDyEF69MVBHhWsLHPGq8f5vh8GGE21zpNlIJy64wLQgnXeKwM6s1
FWLIJESqLZcW6SC8YtUtlwzNFAFhm7T3FDE2fsq31sxUHw5PGUruQkfrOd7cuAp+
97SJQ6vznhfKhOaGTcPnZOLBJ5Jdi18mO/E+QdzQqxenOEemdeLPvIEPOpnlPSn5
5isICrVSsA23By1LBRinIa2SsSWYRW5qIeGIaLT03Si4G9RM1c9PAvr5StSlS4uZ
DMQvNmoAC7i0a14NeoypHijYMg/sU8TEb5++o+ia4sXWvhQJnu/wBT8MMCi3ZZ7N
+fFqMt6Aw4PI0cgNBJtwVrez0f+WByccrM0eGXMoC7TOuztdxvOfw2QSr6ffUkNs
QP5CUZwevp4JLmrditwNBf5VneaOqevblbH6xScOF0y7KntUGfhKc0CZO1KTVBwc
j7JkAuKhrMKFn6tV9Sw1RsFO3Y0IVN8/HW5pvqVT/jVPMgSX8zU=
=qN8G
-----END PGP SIGNATURE-----

--jgau6e4tvj27tne3--

