Return-Path: <linux-man+bounces-4001-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C3632BA8B8E
	for <lists+linux-man@lfdr.de>; Mon, 29 Sep 2025 11:46:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7321D16C81B
	for <lists+linux-man@lfdr.de>; Mon, 29 Sep 2025 09:46:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F0CD2D6E53;
	Mon, 29 Sep 2025 09:46:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=aarsen.me header.i=@aarsen.me header.b="Q5ScDfsp"
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [80.241.56.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 598092E0909
	for <linux-man@vger.kernel.org>; Mon, 29 Sep 2025 09:46:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759139190; cv=none; b=TlKY5CWksyHPEi+aHsQm2TilpNdNPFCp/e5iiUK7QGaVJ8c6Im5xjop8ZQ7MAFKwaXJfgutMEVO4Ina5ZEK62NAbZdIFI3ER0/B91bPkyH6tBq1gOrLmOxezNVBX3fdKx6B82OtGHyD5kf2zS681jI/BazzdpjZ3HHY1OXqqbSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759139190; c=relaxed/simple;
	bh=zrzzJQmXbMKl8NDLJdJpcObPCK7mlWXSp8jejvmuRCY=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=pFh0G2UqK8OpR4cuvADEg+NbTjxXdzQAwBIhcOTNRNKQZk0sSA9o6R1r6fnxTzPQAUARA/os8/MaGsF19VONhFKsqIcoRd0wfl6iJukaLaxZWEEpIwyWCARXO/aSGP2fl4w9GikIKqf928PTUkvFagkZiCT9KcDeMklT1NzJw1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=aarsen.me; spf=pass smtp.mailfrom=aarsen.me; dkim=pass (2048-bit key) header.d=aarsen.me header.i=@aarsen.me header.b=Q5ScDfsp; arc=none smtp.client-ip=80.241.56.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=aarsen.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aarsen.me
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:b231:465::202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4cZxCh0TBSz9spY;
	Mon, 29 Sep 2025 11:46:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aarsen.me; s=MBO0001;
	t=1759139184;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Z+HxkhrPdPdiDaBYbRbSeaJ5JbZiMeMwsgATOuTlE/U=;
	b=Q5ScDfspw+VgppRotW08WN9duqzoyJ14le9C55g+M/0JHwhACAx0xZ+5j6VoD1eeM+vG9J
	eyndfxztw2FoJ/h83ayAEYAI+z07fuwbogvq+FVEwdiHAdb9duhll2jhZeqhNigSJasmGb
	d0SnGTwoB6U0NoSJZwchRt00ZXeSuP1L9EGWIy2UHSgTHXFi4PqzYQqWayRS3KXc9HYIN2
	JWLlAtJ1HwypXd7LjfvE1g1+BxMlL49YJImNaZ8KUdRqqkyXzh7dhAgkbNN2fMqgRJEOYL
	j2+5pmqJ3/Hdjs/R0aeM/y6Q77q6T7xtxNzggt45AG2Gqnz8hyxycuhKP5gD8w==
Authentication-Results: outgoing_mbo_mout;
	dkim=none;
	spf=pass (outgoing_mbo_mout: domain of arsen@aarsen.me designates 2001:67c:2050:b231:465::202 as permitted sender) smtp.mailfrom=arsen@aarsen.me
From: =?utf-8?Q?Arsen_Arsenovi=C4=87?= <arsen@aarsen.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: coreutils@gnu.org,  linux-man@vger.kernel.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
In-Reply-To: <sdprfcwwtirbygpx4pqcavchf7hl3ichxjcxsr6kn6pl3f2ri6@7mshrxxpjhn3>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
	<87jz1sm2t3.fsf@aarsen.me>
	<fziyxvozscytwasmhtrpjfqbmldxmggjkdm4pzo7cupxhby422@czrmkask4xsc>
	<87cy7e7hml.fsf@aarsen.me>
	<sdprfcwwtirbygpx4pqcavchf7hl3ichxjcxsr6kn6pl3f2ri6@7mshrxxpjhn3>
Date: Mon, 29 Sep 2025 11:46:21 +0200
Message-ID: <86frc5zj4i.fsf@aarsen.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
X-Rspamd-Queue-Id: 4cZxCh0TBSz9spY

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Alex,

Alejandro Colomar <alx@kernel.org> writes:

>> That'd be significantly better, yes, if by that you mean that they'd
>> become part of the coreutils (et al) distribution.
>
> I'd guess that if the pages are within the coreutils.git repo, the build
> system will package them with the rest of the distribution, so yes.
>
> However, I'm unable to deal with autotools, so that would need to be
> handled by some of you.  But yes, that's the idea.
>
> I can maintain the contents of the pages.

That's alright, I'm sure.

>> Unfortunately, it is.  A collection of linear mostly-unrelated pages in
>> predetermined shape simply cannot document complex software, a
>> hierarchical approach is non-negotiable.
>>=20
>> libc, (most of) the syscall API and coreutils are a lucky case in that
>> they are, fundamentally, large collections of *very* simple bits
>> (functions and programs),
>
> Luckily, we're discussing the documentation of coreutils.  :-)

The subject said "GNU" so I was intentionally speaking in generalities.

> (Actually, git(1) also has more-or-less hierarchical manual pages for
>  documentation, and it works quite well, IMO.  But I agree it's not
>  always the case.  PCRE is a counter-example, where I can't find
>  anything.)

Git falls back to the "Pro Git" book also.  IMO manuals should largely
be like the "Pro Git" book, but also incorporating references (git is
near this but splits the two, as you know).

> [...]
>> >> Given that coreutils manpages are generated from help text, adding a
>> >> paragraph to the tsort help text would probably suffice (see sort for=
 an
>> >> example).
>> >>=20
>> >> > The Linux man-pages project already documents the GNU C library, so=
 it
>> >> > wouldn't be extraneous to also take ownership of the coreutils manu=
al
>> >> > pages.
>> >>=20
>> >> And it's a source of problems; they don't always correspond to the
>> >> installed version of the libc,
>> >
>> > That's not very important.  The manual pages keep old information, so =
as
>> > long as you have the latest pages, they're good for whatever glibc is
>> > installed.  Of course, we are missing a few pages, but there are few.
>> > And of course, if you have bleeding edge glibc, there are more chances
>> > some details may be missing.
>>=20
>> This addresses half of the issue (what if the pages are old?),
>
> A solution for old pages is cloning them from the upstream repo, and
> running 'make && sudo make install'.  But that's not for everybody.
>
> Alternatively, kindly ask your distribution manager to package a recent
> version of the pages.  After all, they're just text, so stability isn't
> very important.

The latter is probably fine, but you clarified you intend to keep them
in coreutils' distribution, so that solves that issue.

>> and still
>> leaves the fact its a separate software distribution unsolved.
>
> The issue there is that the distinction between manual pages for the
> kernel and for glibc isn't very clear.  That's why we have one project
> that covers all, instead of duplicating the information, or having
> incomplete information in either side.

The division between the two is somewhat unique to free software
projects, so I can see the struggle :-)

> But that's not an issue in coreutils, as we could have them distributed
> with the binaries.
>
>> >> don't get installed with libc, and have
>> >> lead to the actual manual being somewhat forgotten.
>> >
>> > In general, the manual pages are more accurate than glibc's own manual,
>> > as even some glibc maintainers have acknowledged in the past, so I
>> > wouldn't worry much about this.
>>=20
>> That is precisely the problem I was referring to.
>
> Ah, I thought you were worried users would forget about it.  If the
> maintainers forget about it, that's a problem for users of info manuals,
> indeed.

Yep ;)
=2D-=20
Arsen Arsenovi=C4=87

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iOYEARYKAI4WIQT+4rPRE/wAoxYtYGFSwpQwHqLEkwUCaNpVbl8UgAAAAAAuAChp
c3N1ZXItZnByQG5vdGF0aW9ucy5vcGVucGdwLmZpZnRoaG9yc2VtYW4ubmV0RkVF
MkIzRDExM0ZDMDBBMzE2MkQ2MDYxNTJDMjk0MzAxRUEyQzQ5MxAcYXJzZW5AYWFy
c2VuLm1lAAoJEFLClDAeosSTW7kBANVRP3h89atY3itxFtHoN9ifjqpiARaTUIy0
s7MRIeN4AQDUGh4nsT5MyARMs8ExW+SbUySzMXLOZbHSAiGPfsIjAA==
=luXi
-----END PGP SIGNATURE-----
--=-=-=--

