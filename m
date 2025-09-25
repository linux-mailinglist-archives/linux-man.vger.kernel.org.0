Return-Path: <linux-man+bounces-3980-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 68037B9FDA3
	for <lists+linux-man@lfdr.de>; Thu, 25 Sep 2025 16:11:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CBC814A0906
	for <lists+linux-man@lfdr.de>; Thu, 25 Sep 2025 14:06:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EB7182899;
	Thu, 25 Sep 2025 14:05:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=aarsen.me header.i=@aarsen.me header.b="G+Pk7ajk"
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-103.mailbox.org (mout-p-103.mailbox.org [80.241.56.161])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8A56146593
	for <linux-man@vger.kernel.org>; Thu, 25 Sep 2025 14:05:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.161
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758809104; cv=none; b=F/rlCV5rWAZIl429AhUcwbRXsZqZco0efYQ5A7xPvN3CFOLpVxRg9GV66bwTAVBM3lYW2FLzDx05/JKnUBiJ/EJ6iHsP/GXl93ivPYu+eFkt63wkgJjOENEsvSySLyG+eR0IhYqBILRl11f4DR0wmgVbA7UrdHofu/hXAdueNWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758809104; c=relaxed/simple;
	bh=y3Mk6EeakhEFnH0eT26I3iW+6rCtvynUVsXlps7oXvA=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=KuyxBfHvaDjQV7ywpAszCh+/0HIODoWWOALwTDVXJZrKSz7EIE/q10tffLQ2ijflCRkLtE6ADKdxcrfKS0dV5FkGfNV9MYhGJwYsKHEq44ky6KLI0AkiOrxyXL35WSakdz2flJty85zzV7SNXI9vtH5RbavpsB3urvEDMGnzvxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=aarsen.me; spf=pass smtp.mailfrom=aarsen.me; dkim=pass (2048-bit key) header.d=aarsen.me header.i=@aarsen.me header.b=G+Pk7ajk; arc=none smtp.client-ip=80.241.56.161
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=aarsen.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aarsen.me
Received: from smtp2.mailbox.org (smtp2.mailbox.org [10.196.197.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-103.mailbox.org (Postfix) with ESMTPS id 4cXb7m62vNz9tX0;
	Thu, 25 Sep 2025 16:04:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aarsen.me; s=MBO0001;
	t=1758809092;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=BOGRChfwaJf9NulneL5uY/FP2MMRxe8wv1P+c5cAqAY=;
	b=G+Pk7ajkdO88sB7ZeIXAYDAR7juJz1l4pfnAt5LIc4faTkh/agzqpbjN5bnLf8WjqXsSLI
	WAEPprehMR4M7i+Dq0irGuXofR4RbTD24jk3vN55yBE1oKFSG4RwxOTEtnB4dG7GmUV4hh
	NnxAUOYy1YYns7DSyZve6ASfUVJPI/85HpnMhvgZzPNwpYmKJpuQ4GVIVirBHcNHJHo2m7
	snhIed+/mtwHVPS5TrFCLqnOb2P4JC3NuzHYtzbvj2q1lCktgP7KNTTvWOR9jxnBWUcfS6
	WEzpMf4F/rnc5FIClBqeN50JzoR2zQcQJ+C1Ejks9/+XjZ+iYN5ZTANijLKuTg==
From: =?utf-8?Q?Arsen_Arsenovi=C4=87?= <arsen@aarsen.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: coreutils@gnu.org,  linux-man@vger.kernel.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
In-Reply-To: <fziyxvozscytwasmhtrpjfqbmldxmggjkdm4pzo7cupxhby422@czrmkask4xsc>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
	<87jz1sm2t3.fsf@aarsen.me>
	<fziyxvozscytwasmhtrpjfqbmldxmggjkdm4pzo7cupxhby422@czrmkask4xsc>
Date: Thu, 25 Sep 2025 16:04:50 +0200
Message-ID: <87cy7e7hml.fsf@aarsen.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Alex,

Alejandro Colomar <alx@kernel.org> writes:

> [[PGP Signed Part:No public key for EB89995CC290C2A9 created at 2025-09-2=
1T14:53:21+0200 using RSA]]
> Hi Arsen,
>
> On Sun, Sep 21, 2025 at 02:02:16PM +0200, Arsen Arsenovi=C4=87 wrote:
>> IMO, docs should not be outsourced from the project they correspond to.
>> Doing so makes them harder to install and keep accurate to the installed
>> version of what they target.
>
> I could maintain them within the coreutils repo, if that's preferred.

That'd be significantly better, yes, if by that you mean that they'd
become part of the coreutils (et al) distribution.

>> > I understand GNU's stance on manual pages, and that you might not be
>> > interested in improving them much, but maybe you're open to them being
>> > improved elsewhere.
>>=20
>> It's frankly better to improve them inline.  But I'd rather see us move
>> past the woefully inadequate 'man' documentation system,
>
> I disagree with man(1) being inadequate.  :)

Unfortunately, it is.  A collection of linear mostly-unrelated pages in
predetermined shape simply cannot document complex software, a
hierarchical approach is non-negotiable.

libc, (most of) the syscall API and coreutils are a lucky case in that
they are, fundamentally, large collections of *very* simple bits
(functions and programs), but the fact that manpages are insufficient is
visible in everything about Linux other than the syscall API.  Finding
documentation for Linux cmdline parameters, pseudo-FSes and various
components is a Herculean task.  In the unfortunate case that the
documentation is in a manpage, the manpages are excessively long and
entirely in-navigable due to a lack of structure, or broken up into many
tiny pages that are annoying to navigate (though, you said that this
might be improving with a .MR macro, so that's nice).

>> for instance by
>> providing an info viewer users are more likely to find usable (though, I
>> struggle to see why the current standalone info viewer is so
>> problematic, especially since I taught multiple people who got the hang
>> of it fairly easily).  Installing pages with a richer markup (HTML
>> perhaps, or a new format that can be easily rendered on-the-fly to
>> reflowable text or HTML) would also be nice.  The current format is one
>> of lightly marked up catfiles, and so isn't great in modern
>> environments.
>
> I think what you don't like of man(7) documentation is man(1) and not
> man(7).  A more featureful man(1) viewer could be developed, and some
> people have attempted to build one, where key bindings could for example
> show an index of a page.

No, it's both.  The 'man' macro package is imperative and unstructured
rather than declarative and structured, and 'roff' is quite cumbersome
to use.  The BSDs (I think?) have attempted to solve this partially with
mdoc.  I've found authoring with it slightly better.  Unfortunately,
however, it is still 'roff'.

But, indeed, pagers are inadequate viewers also.  OpenBSD, IIRC,
provided slight improvement in this regard by letting 'less' read some
type of list of tags that it produces out of the manual page, or
somesuch, to facilitate jumping.  This is a significant move in the
right direction, but it doesn't manage to address the fact that manpages
are non-hierarchical.

> Jumping from one page to another will also be possible soon, with the
> recently added .MR macro for manual-page references.  (And in the PDF
> book, we already have that in old pages, with some heuristics that work
> reasonably well.)

I am glad to hear that.

>> Given that coreutils manpages are generated from help text, adding a
>> paragraph to the tsort help text would probably suffice (see sort for an
>> example).
>>=20
>> > The Linux man-pages project already documents the GNU C library, so it
>> > wouldn't be extraneous to also take ownership of the coreutils manual
>> > pages.
>>=20
>> And it's a source of problems; they don't always correspond to the
>> installed version of the libc,
>
> That's not very important.  The manual pages keep old information, so as
> long as you have the latest pages, they're good for whatever glibc is
> installed.  Of course, we are missing a few pages, but there are few.
> And of course, if you have bleeding edge glibc, there are more chances
> some details may be missing.

This addresses half of the issue (what if the pages are old?), and still
leaves the fact its a separate software distribution unsolved.

>> don't get installed with libc, and have
>> lead to the actual manual being somewhat forgotten.
>
> In general, the manual pages are more accurate than glibc's own manual,
> as even some glibc maintainers have acknowledged in the past, so I
> wouldn't worry much about this.

That is precisely the problem I was referring to.

Have a lovely day!
=2D-=20
Arsen Arsenovi=C4=87

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iIYEARYKAC4WIQT+4rPRE/wAoxYtYGFSwpQwHqLEkwUCaNVMAhAcYXJzZW5AYWFy
c2VuLm1lAAoJEFLClDAeosSTYvUBALn5oD721KcjlKW4Hl0ilHg0/s0MhWLGFwSi
qn1n9U90AQCGE/NamWGt8DU6XDeJMuWB+Ce7alRX2IzNYx2bElM4Cw==
=JIRA
-----END PGP SIGNATURE-----
--=-=-=--

