Return-Path: <linux-man+bounces-4782-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2478DD0D2F2
	for <lists+linux-man@lfdr.de>; Sat, 10 Jan 2026 08:58:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EF82E300B34B
	for <lists+linux-man@lfdr.de>; Sat, 10 Jan 2026 07:57:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07C392E7650;
	Sat, 10 Jan 2026 07:57:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="IarES+CX"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-4316.protonmail.ch (mail-4316.protonmail.ch [185.70.43.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDF8420E023
	for <linux-man@vger.kernel.org>; Sat, 10 Jan 2026 07:57:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768031878; cv=none; b=cC9kGh2nKDnVJ+kCq5ei00Mk24s/vTeewJo7X86AxEUnr2oRWb4qE5z7I8tVwn3LcGoQNcqjI8yki4IRtOe92M1cbcxP7XaQGT1WUbRpbZ5JZJw2b3h8ucGi9OvkxZfMDdCmq1ntpqiwWg7BPCNpspA1KqWGhEzgr2lJNCwfc+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768031878; c=relaxed/simple;
	bh=V8iWKu8kcQ7DSm/3Kwusw4MfqjefeAAgMQnjLfH5omQ=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=WLva7/XadXSBjCum1bYj/9D+r1lk7U26zaSA1/owALd4neEPqBiuXtw6BT+bRNXB+vt4uYtamDyuGq4Wm8eTmtz03uuJWhoJf2ssYb8+PJDmYpmcgBEIqbzY6PUHQ/CezVVN5ZlyysU4fBgjOXwFi6ydn3wLAoQMNqFsNoywPUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=IarES+CX; arc=none smtp.client-ip=185.70.43.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768031874; x=1768291074;
	bh=DuN2j6cfsiBSfFIqGW21CV3YD27T23hwN9CGoSw1v+w=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=IarES+CXSoDyZnke5tZd0pFYUfeqqN11DoDFoJ0XQHDLbj4E/PgfTyeWsbEecHHnL
	 +D4XteDveGly9GhKtRL0lxGJNI1E/Ro3fg469X5p8YfffvV2H2I+H5z5jkJ5DLXvDi
	 1rKoV/HpBVInn77xNEW8nGGUHS5YO2GDrly3V2mGu+f+5GGexj5Yt2RTNhM9QBrSOz
	 BzsJwkXcBdd9F3fog6xzpM9sb9q09ev8vCdetqv9JzZdDnqMm/yIWNqoJJseJ1TIU6
	 uU+8SyTafQk3Zw4+qqWJAYkn8jADx/c3bvjdZJTlMx2JIm6+ur2Zxtr569H90w5T3k
	 MsB4Cy8WKjE2g==
Date: Sat, 10 Jan 2026 07:57:49 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 19/25] man/man3type/void.3type: HISTORY: Update first POSIX appearance of void(3type)
Message-ID: <N5rwikkzw2f0JXz95u_1kI4bAmDj9D2gkp_MrOGQRmYRpZUHBuRAP390fgTkgcNbzYe3YAfS3Zb-OT95Mc_XjSCLQwr-JnMM6fLmIlsN8NI=@pm.me>
In-Reply-To: <aWDZFvDvb-hAXQMJ@devuan>
References: <cover.1767939178.git.sethmcmail@pm.me> <efe8112034e9388465c108fd0418d7e0c68d12ee.1767939178.git.sethmcmail@pm.me> <aWDZFvDvb-hAXQMJ@devuan>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 1e27fd162ea9ac05923ac23a65d099cb79c9f8da
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha512; boundary="------cb7c59d2d1e9a9365f754b6bfad743c769d413c575607ce8e4e3675597075c1a"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------cb7c59d2d1e9a9365f754b6bfad743c769d413c575607ce8e4e3675597075c1a
Content-Type: multipart/mixed;boundary=---------------------7a2c4dab35aefb6f156fac03ce58ad28

-----------------------7a2c4dab35aefb6f156fac03ce58ad28
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

Hi Alex,

On Friday, 9 January 2026 at 20:34, Alejandro Colomar <alx@kernel.org> wro=
te:
> Hi Seth,
[...]
> I think 'void*' is important enough that it would be useful to dig in
> its history further. Was it an invention of C89? Or was it an
> extension in some existing compilers? If the latter, it would be
> interesting to document which systems had it before C89.
>
> I'm mentioning this just in case you know. Feel free to ignore
> otherwise.

I know that the void pointer type was not mentioned or used in
POSIX.1-1988.  Instead, the standard used the char pointer type for
pointers to generic data.  POSIX.1-1990 seems to implicitly require void
pointers - at least for conformance to "POSIX.1, C Language Binding (C
Standard Language-Dependent System Support)" - by including them in some
function prototypes.

Looking at C89, it did explicitly specify void pointers as part of the
language, stating that "[a] pointer to void shall have the same
representation and alignment requirements as a pointer to a character
type."[1]

Looking* at K&R C, I skimmed through chapter 5 "Pointers and Arrays",
and couldn't find any references to void pointers.  In fact, it seems to
use char pointers instead, similar to POSIX.1-1988.

So I think what happened (pure speculation) was between 1978 and 1989,
void pointers increased in user popularity and compiler support enough
that ANSI decided to extend the language by adding void pointers to its
1989 C standard.  Which would explain why POSIX.1-1988 also didn't have
void pointers, but POSIX.1-1990 suddenly did.

With regard to implementation support for void pointers prior to C89,
this is where my knowledge falls short.  I'm not the most educated on
past implementations (yet).

*I found this[2] PDF online which appears to be a scan of a (heavily
annotated) copy of the first edition of The C Programming Language.
I don't know if it's authentic though, so take it with a grain of salt.

----
[1] ANSI X3.159-1989 "Programming Language =E2=80=93 C", Section 3.1.2.5
"Types", p. 24.
<https://nvlpubs.nist.gov/nistpubs/Legacy/FIPS/fipspub160.pdf>
[2] Kernighan, Brian W., Ritchie, Dennis M. (1978). The C Programming
Language (1st ed.).
<https://retrofun.pl/wp-content/uploads/sites/2/2023/12/1978-ritchie-the-c=
-programming-language.pdf>

----
Seth McDonald.
sethmcmail at pm dot me (mailing lists)
2336 E8D2 FEB1 5300 692C=C2=A0 62A9 5839 6AD8 9243 D369
-----------------------7a2c4dab35aefb6f156fac03ce58ad28--

--------cb7c59d2d1e9a9365f754b6bfad743c769d413c575607ce8e4e3675597075c1a
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wrsEARYKAG0FgmliBnsJEFg5atiSQ9NpRRQAAAAAABwAIHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmdms5BCf/tLeeX+Mi93CqMeW5MzYvqAvqwkL8Qx
dz++FhYhBCM26NL+sVMAaSxiqVg5atiSQ9NpAADCTwD/XKlesxfNQuVAJi+I
jl/s5XeRWAbHUm8ZCVz9BLcfouYA/jM17A0KxDKQ3x6d7AT3WXghtP6vbalk
VBs2H1+VIz4P
=PgNa
-----END PGP SIGNATURE-----


--------cb7c59d2d1e9a9365f754b6bfad743c769d413c575607ce8e4e3675597075c1a--


