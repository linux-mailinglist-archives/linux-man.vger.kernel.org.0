Return-Path: <linux-man+bounces-4703-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CB740CFBD7D
	for <lists+linux-man@lfdr.de>; Wed, 07 Jan 2026 04:33:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 940C5301919C
	for <lists+linux-man@lfdr.de>; Wed,  7 Jan 2026 03:33:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17A033B2AA;
	Wed,  7 Jan 2026 03:33:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="pwPVeim5"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-4322.protonmail.ch (mail-4322.protonmail.ch [185.70.43.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCD2A3FFD
	for <linux-man@vger.kernel.org>; Wed,  7 Jan 2026 03:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.22
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767756806; cv=none; b=qcivaESlxZ1Ld5M7jREfLVB2/lzFASlut+Y6Q64Fl6dQ9onRedrKCoNz1IbEeh2XSzffhEh1L2v4hn3/Xk9RqqPj8d1XQay464T13pLFkr7FL/A8H+hM4dZspsaq1FmL4LQ8Qf0iN82XYRhG0FS1K0kRFvpAE8j5FBkMEFMi1f0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767756806; c=relaxed/simple;
	bh=Iv3YYBaLmD3Pg9gMJiQYT5Ga3oZYP/3iDvLBYhArdu0=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=K/apM1/mU3Ofk9WZRtsjOx5HwESugE6CAJd9qFyypZksvOLToHvy589Lju2r/q6v5zB50V43wk63E3mNPauPnCyP02Tq/0K4d0Mir5TKlHJx1LINSYzZIj40jnK7bA62sNuW22JV9LNIgvj/i7xD3VVC6iOlncnQzZMYe9hbRI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=pwPVeim5; arc=none smtp.client-ip=185.70.43.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1767756801; x=1768016001;
	bh=9NHrJdkomsTaSRZiN5pEtxkXlT/h3CSGYv91k32DQHg=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=pwPVeim5lj+cLTVQpJYjoR4bFZuJl0Rj2/Gn2paboNAPJaiI9wYUxEkJ8CWa+T5S4
	 LVfgJT9byFyCYLvLgvHwWEghxMUr0gz0Oo9Jo1l9guMtXxdxIRj0mnLSUlRTELLkq6
	 pjocgjuV4daxYJefQbVScSxYbNjhrqpJ3SVcgQYUU6EVMh+zWCEZ/rGiYWFu/Z6jtW
	 Zo/6/sIuoOrWTDpgnV+Pd7kjE30sZWcCCSQNGnvRvtDfHmwStdtx1hUssPBmdjlv+L
	 ZiPkESPpqABjloAjTFI4oQpxnqxM6DBWID08BUZvhP4FGC1CE5As8HGk4GAmFqSTkV
	 FR+uptFAVvJ3A==
Date: Wed, 07 Jan 2026 03:33:17 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 00/15] man/man3type/*: Update history of types A-INTN
Message-ID: <9ylwViWt_9qtIuypo8MHpRkyeiPJx82sJLmLbJMaygxKFfvxYx7RerFVo-aaBEl-66P-ySj_bP_rTL_eB1RFdrHtiNoXGL3c7PNj99lm2G0=@pm.me>
In-Reply-To: <aVz_ZyQwZ796x4mV@devuan>
References: <cover.1767675322.git.sethmcmail@pm.me> <aVz_ZyQwZ796x4mV@devuan>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 1de65d3a2e6544230e9a0b0b71c8228b93fa0781
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha512; boundary="------36824b26763831221d9635a578c72d539194198da0241561bff2324bc4cf0bdd"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------36824b26763831221d9635a578c72d539194198da0241561bff2324bc4cf0bdd
Content-Type: multipart/mixed;boundary=---------------------5392f0a4d9dc3459ec29a348f3bae608

-----------------------5392f0a4d9dc3459ec29a348f3bae608
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

On Tuesday, 6 January 2026 at 22:35, Alejandro Colomar <alx@kernel.org> wr=
ote:
> Hi Seth,
>
> On Tue, Jan 06, 2026 at 05:07:49PM +1000, Seth McDonald wrote:
[...]
> > Regarding the order of the listed standards in HISTORY sections, I've
> > seen man pages with the same set of standards listed in different
> > orders. But I have found a general ordering that a good number of page=
s
> > adhere to. That being:
> >
> > SVrX, X.XBSD, SUSvX, POSIX.1-YYYY, POSIX.2, Linux X.X, glibc X.X[.X],
> > others (e.g. OpenBSD, Solaris, AIX).
>
> I think it would be better to use chronologic order. I leave it up to
> you if you want to keep the patches as they are, and (optionally)
> improve the order afterwards, or fix the patches to use chronologic
> order. Since, as you say, there's no existing consistency, I'll accept
> the patches in any order; just let me know what you prefer.

In that case, I'd much prefer to focus on just adding/adjusting the
listed POSIX/SUS standards before polishing their order.  I'm also
currently not the most informed on the history of BSD and System V,
which are both commonly listed in HISTORY sections.  So I'd have to
first take some time to research on that front.

However, a more efficient method could be someone more knowledgeable
than me adjusting the order as I send in patches.  That is, I attempt to
add POSIX/SUS standards in chronological order, then someone else can
adjust the order taking into account the non-POSIX/SUS standards listed.
If one is willing, of course.

[...]
> > I also followed a few more guidelines when editing these lists that ma=
y
> > be noteworthy:
> > - Since POSIX and SUS merged into the same document in POSIX.1-2001/
> > SUSv3, only POSIX.1-2001 is listed for functions in these standards
> > (or later), but with XSI appended if the function was part of the XSI
> > extension (e.g. POSIX.1-2008 XSI).
>
> LGTM
>
> > - Since SUSv1 is aligned with POSIX.1-1990,[2] if a function's first
> > POSIX appearance was in POSIX.1-1988 or POSIX.1-1990, then it's first
> > appearance in SUSv1 is not also listed due to being implied by its
> > POSIX appearance.
>
> This should be documented in standards(7).

Agreed.

> > - Similarly, since SUSv2 is aligned with POSIX.1-1996,[3] the same is
> > true for functions first appearing in POSIX.1-1996 and SUSv2.
>
> This should be documented in standards(7).

Agreed.

> > So in general, SUS is listed if the function (or constant/type) appear=
ed
> > in SUSv1 or SUSv2 before it appeared in POSIX.1.
>
> LGTM.
>
> > [1] https://www.kernel.org/doc/Documentation/process/submitting-patche=
s.rst
> > [2] X/Open CAE Specification, System Interfaces and Headers Issue 4,
> > Version 2, Chapter 1.6 "Relationship to Formal Standards", p. 10.
>
> Do you have a link?

I don't believe SUSv1 has any online HTML resource.  However, its PDFs
(one per XPG4v2 volume) are available online.  Here's the one for System
Interfaces and Headers:
<https://pubs.opengroup.org/onlinepubs/9695969499/toc.pdf>

> > [3] CAE Specification, System Interfaces and Headers, Issue 5, Chapter
> > 1.6 "Relationship to Formal Standards", p. 11.
>
> Do you have a link?

SUSv2 does have an online HTML resource, but I couldn't find the
relevant section on it.  Fortunately, it does also have PDF versions
online.  Here's the one for System Interfaces and Headers:
<https://pubs.opengroup.org/onlinepubs/009639399/toc.pdf>

----
Seth McDonald.
sethmcmail at pm dot me (mailing lists)
2336 E8D2 FEB1 5300 692C=C2=A0 62A9 5839 6AD8 9243 D369
-----------------------5392f0a4d9dc3459ec29a348f3bae608--

--------36824b26763831221d9635a578c72d539194198da0241561bff2324bc4cf0bdd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wrsEARYKAG0Fgmld0/wJEFg5atiSQ9NpRRQAAAAAABwAIHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmelVp2PHxVTZKgnzqk1N8h5yY0RVah1rYIp36+u
0oJMLxYhBCM26NL+sVMAaSxiqVg5atiSQ9NpAAB8BwEA4rNuEHoY2PVe7U2u
2riONvRNtCQDOnapxebluNlhXXUBAOj+zXCX9vmxauGmW7uzwcRaTDMRppoD
nPCP8hKdmbsF
=Y3Dm
-----END PGP SIGNATURE-----


--------36824b26763831221d9635a578c72d539194198da0241561bff2324bc4cf0bdd--


