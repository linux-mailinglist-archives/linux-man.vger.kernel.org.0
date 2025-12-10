Return-Path: <linux-man+bounces-4378-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 35963CB2668
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 09:26:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5D8283024E7D
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 08:24:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2C6D26E6F2;
	Wed, 10 Dec 2025 08:24:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="FFw2HH7o"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-4322.protonmail.ch (mail-4322.protonmail.ch [185.70.43.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4977620013A
	for <linux-man@vger.kernel.org>; Wed, 10 Dec 2025 08:24:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.22
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765355060; cv=none; b=m1cTg1upkDicJvJ5tOD7BUwBQCh65IfT6gDSHh3oWHKiWF+pVVF3f4UPjdwYZ13YFic/Jz1OwU9Y7M3WRfMZi7ylIaOf0UbopMr3nczHN4f8BgDEx2xcrRgYan1zrEF1iGPdJcU4VlI1sqczykJRz4nPFYgDHZC2FtnOJLQTkMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765355060; c=relaxed/simple;
	bh=hCY0kYdF0gNZBDrgt2ngt8KZRsNsfb6hv/xr4E7qHb4=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=Fik5E9422GGxHSHEMOp3zEN0bCKwApryP94nMQuFGcULk80DPtBmEzggXs3fkkYUloDNqW9MBhsXnE/Cwg9Q0SOTR8qzAW5PqiJQaP9HnIeMxHHioVamJznHOjmDf47xH+LoJYoY2o+VcWDH+ohnQgrOPpzM/VWdn9ibv+x9XVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=FFw2HH7o; arc=none smtp.client-ip=185.70.43.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1765355048; x=1765614248;
	bh=2I7+LRsdMyKfqcP7t7UIGLrldmeDHIN4VYOGZ1p3MHs=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=FFw2HH7omff2xw6xC6wLkpIgGrsU9Bq3Y4P0dghWqO+phoCuSvo/OvNkWnjd2moEv
	 wQKBJckqCOFH23NfS9mcGK+TP+2dlD9aegx79QPzWw4gdpVGDk6W6b+QjlrHzEbjd9
	 QYhhU7upIkZVAvGFDuqSZlUBhuseQuARJZ3TuKcaDRbb06Ox675Oud7vjVuzbyzdBP
	 /70bHe+FyzbTs5uBrZ7qf7wvvyxmsTDYJVci1wJuQJ1PNBQ/n00DHMiUvBYqbwzuno
	 uiGmCEAhEyGSzvg72F5bMqTwFuaQbAJfCvq2mSFiKKqtREXvNYh6tkGRmJO5LUWxPO
	 gGVWY6mjfKPeg==
Date: Wed, 10 Dec 2025 08:24:03 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Clarifying usage of aligned_alloc(3)
Message-ID: <Zsttg7ycASHZGAmi3wMIXwZn3rW6VO4fpAJlFLAbHxKxUf1JlNALFpZcyiOtz1rzd-45ixj0JFtNxzZSYhHbBAE3wsmbxGQGQz74LMR1xCQ=@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 35d044d476e92fabc5a8668a942f0d2d9072922f
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha512; boundary="------0c3fcdb5506ab036db716e1502992b0a4185a7622b5e22e22a31026f727ec130"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------0c3fcdb5506ab036db716e1502992b0a4185a7622b5e22e22a31026f727ec130
Content-Type: multipart/mixed;boundary=---------------------bf91e55690a7f20624251b3500340aa6

-----------------------bf91e55690a7f20624251b3500340aa6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

Hello all,

Reading the GNU/Linux manual pages for aligned_alloc(3), I think the
documentation is ambiguous about the function's usage requirements in two =
ways.
As of man-pages 6.16, the relevant description states:

> The obsolete function memalign() allocates size bytes and returns a poin=
ter
> to the allocated memory. The memory address will be a multiple of alignm=
ent,
> which must be a power of two.
>
> aligned_alloc() is the same as memalign(), except for the added restrict=
ion
> that alignment must be a power of two.

First, I am unsure how the man page is attempting to distinguish
aligned_alloc() from memalign(). The stated difference - alignment must be=
 a
power of two - is also said to be required of memalign(). It is possible t=
his
is a typo or copy-paste error, but I cannot tell what the intended distinc=
tion
is. It would be beneficial if this was fixed/clarified in the document.

Second, the page claims the aligned_alloc() function conforms to the C11
standard. C11 imposes the usage restriction that "the value of size shall =
be an
integral multiple of alignment" [1]. This restriction is not mentioned in =
the
man page, nor is it implied by the documented error values. It is possible=
 the
glibc implementation of aligned_alloc() removes this requirement as an
extension to C11, but (particularly given the first error) I cannot be sur=
e
whether this is indeed the case, or whether this detail was simply overloo=
ked.

I think it would be useful to clarify this. If the restriction does apply,=
 it
should be added both in the description and as an error value. If it does =
not
apply, the description should explicitly mention this. Perhaps it could re=
fer
to POSIX.1-2024 in doing so, since it also appears to remove this restrict=
ion
[2].

----
Seth McDonald.

sethmcmail at pm dot me (mailing lists)
2336 E8D2 FEB1 5300 692C  62A9 5839 6AD8 9243 D369

mcdonald_seth at pm dot me (personal email)
82B9 620E 53D0 A1AE 2D69  6111 C267 B002 0A90 0289

----
[1] ISO/IEC 9899:2011, =C2=A77.22.3.1 The aligned_alloc function.
[2] IEEE Std 1003.1-2024, https://pubs.opengroup.org/onlinepubs/9799919799=
/functions/aligned_alloc.html
-----------------------bf91e55690a7f20624251b3500340aa6--

--------0c3fcdb5506ab036db716e1502992b0a4185a7622b5e22e22a31026f727ec130
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wrsEARYKAG0Fgmk5LiIJEFg5atiSQ9NpRRQAAAAAABwAIHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmfHM+GjKbVqVZT/4gM1lh8kOpAyd3M8EYNeAq00
mWUfThYhBCM26NL+sVMAaSxiqVg5atiSQ9NpAAC85QEAgRJzVx834EtgHMN7
X+i1KC6uaKJJ94tIf6QWzrE8dNUBAJobMoQdyQXm9h6Nf9d0/dsBEchKAaE1
Pj/o/svAmv8J
=NlQ5
-----END PGP SIGNATURE-----


--------0c3fcdb5506ab036db716e1502992b0a4185a7622b5e22e22a31026f727ec130--


