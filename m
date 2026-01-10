Return-Path: <linux-man+bounces-4785-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 613FFD0D551
	for <lists+linux-man@lfdr.de>; Sat, 10 Jan 2026 12:30:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5A0D230155DB
	for <lists+linux-man@lfdr.de>; Sat, 10 Jan 2026 11:30:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8C1F21D3E2;
	Sat, 10 Jan 2026 11:30:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HJBtBwEn"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CD045733E
	for <linux-man@vger.kernel.org>; Sat, 10 Jan 2026 11:30:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768044617; cv=none; b=HJ+zzBKtGzgnxBzhmtzikKt5EUKN7tzeWf9X6oX+5LNZDi9S4QEgTpxVK3ketsDaM3oraE40mFVbk8NlIYF+VS1+LhNpjIoR/zma38hexZa3GX6hRUO3Vk6g5ZP0uCYMZY9GvhchlFxaavzhSbgZnpOTztdJBC0ejDjjdqUAGEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768044617; c=relaxed/simple;
	bh=I8C61HUt2m9tI/R8Hgmy6w6G+ydbF0JCbsIreqSrz2s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d3Isskbv24m+5NVZ3CwpZfu2a2PdUBPezrmhVRUlLmzmHcVBuybh/LJXmg9H7KjqW3gIKu3sAC/C6YEV7nK0xTT49x8A+8vo1TUwNK8sF2pmA41XzFR+CwlX1iqomRiB5ZeJKiZc3+T2GJn8xQ1oKKsT88ciXJSgH5mhATNbUb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HJBtBwEn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81769C4CEF1;
	Sat, 10 Jan 2026 11:30:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768044617;
	bh=I8C61HUt2m9tI/R8Hgmy6w6G+ydbF0JCbsIreqSrz2s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HJBtBwEnKphJpt0YZVlSzduMGa06M+LV+Llw7HThfYSLP+RG7fFPi41wmRzaS2Xnd
	 v5Ze+5NzZBiCdHUCvk5qkXquAv8Gbbd2pjdoTbruKX8RsoSgiDgG2dyzTfMvh51PkL
	 AaBmeq8v3n7ijTW7gz4ujveTGEkgPK2bqIR168sdbSzeA0y1UGMHxeOYC9PpzY7GV4
	 M+I7IDnYRdvFYfbMJJR4ZBo9qpDaCHD5rJa2/PI1kxFZYn2hAjpeh/Jo3oKRtuFpSz
	 iTCXUmQbH0JO1053tQN6h7LKMiqTmiL9gUke/WGtT01R2xWiaWzqjSWGSXsfPDSXU1
	 FZgYmhgx/PZeA==
Date: Sat, 10 Jan 2026 12:30:13 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 19/25] man/man3type/void.3type: HISTORY: Update first
 POSIX appearance of void(3type)
Message-ID: <aWI0djUqajn0xGZL@devuan>
References: <cover.1767939178.git.sethmcmail@pm.me>
 <efe8112034e9388465c108fd0418d7e0c68d12ee.1767939178.git.sethmcmail@pm.me>
 <aWDZFvDvb-hAXQMJ@devuan>
 <N5rwikkzw2f0JXz95u_1kI4bAmDj9D2gkp_MrOGQRmYRpZUHBuRAP390fgTkgcNbzYe3YAfS3Zb-OT95Mc_XjSCLQwr-JnMM6fLmIlsN8NI=@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xzovymz6ate7spq3"
Content-Disposition: inline
In-Reply-To: <N5rwikkzw2f0JXz95u_1kI4bAmDj9D2gkp_MrOGQRmYRpZUHBuRAP390fgTkgcNbzYe3YAfS3Zb-OT95Mc_XjSCLQwr-JnMM6fLmIlsN8NI=@pm.me>


--xzovymz6ate7spq3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 19/25] man/man3type/void.3type: HISTORY: Update first
 POSIX appearance of void(3type)
Message-ID: <aWI0djUqajn0xGZL@devuan>
References: <cover.1767939178.git.sethmcmail@pm.me>
 <efe8112034e9388465c108fd0418d7e0c68d12ee.1767939178.git.sethmcmail@pm.me>
 <aWDZFvDvb-hAXQMJ@devuan>
 <N5rwikkzw2f0JXz95u_1kI4bAmDj9D2gkp_MrOGQRmYRpZUHBuRAP390fgTkgcNbzYe3YAfS3Zb-OT95Mc_XjSCLQwr-JnMM6fLmIlsN8NI=@pm.me>
MIME-Version: 1.0
In-Reply-To: <N5rwikkzw2f0JXz95u_1kI4bAmDj9D2gkp_MrOGQRmYRpZUHBuRAP390fgTkgcNbzYe3YAfS3Zb-OT95Mc_XjSCLQwr-JnMM6fLmIlsN8NI=@pm.me>

Hi Seth,

On Sat, Jan 10, 2026 at 07:57:49AM +0000, Seth McDonald wrote:
> Hi Alex,
>=20
> On Friday, 9 January 2026 at 20:34, Alejandro Colomar <alx@kernel.org> wr=
ote:
> > Hi Seth,
> [...]
> > I think 'void*' is important enough that it would be useful to dig in
> > its history further. Was it an invention of C89? Or was it an
> > extension in some existing compilers? If the latter, it would be
> > interesting to document which systems had it before C89.
> >
> > I'm mentioning this just in case you know. Feel free to ignore
> > otherwise.
>=20
> I know that the void pointer type was not mentioned or used in
> POSIX.1-1988.  Instead, the standard used the char pointer type for
> pointers to generic data.  POSIX.1-1990 seems to implicitly require void
> pointers - at least for conformance to "POSIX.1, C Language Binding (C
> Standard Language-Dependent System Support)" - by including them in some
> function prototypes.

Hmmm, since POSIX.1-1988 was already written after some C89 draft, it
seems void* was incorporated to C89 in a late draft.

>=20
> Looking at C89, it did explicitly specify void pointers as part of the
> language, stating that "[a] pointer to void shall have the same
> representation and alignment requirements as a pointer to a character
> type."[1]
>=20
> Looking* at K&R C, I skimmed through chapter 5 "Pointers and Arrays",
> and couldn't find any references to void pointers.  In fact, it seems to
> use char pointers instead, similar to POSIX.1-1988.

Yup, K&R C 1st ed. is too old and I wouldn't expect it to have
void*.  I have a physical copy of K&R C 2nd ed. (1988) and it does have
void*.

> So I think what happened (pure speculation) was between 1978 and 1989,
> void pointers increased in user popularity and compiler support enough
> that ANSI decided to extend the language by adding void pointers to its
> 1989 C standard.  Which would explain why POSIX.1-1988 also didn't have
> void pointers, but POSIX.1-1990 suddenly did.
>=20
> With regard to implementation support for void pointers prior to C89,
> this is where my knowledge falls short.  I'm not the most educated on
> past implementations (yet).

That's fine.  If anyone else reading the list knows anything, it would
be welcome.

> *I found this[2] PDF online which appears to be a scan of a (heavily
> annotated) copy of the first edition of The C Programming Language.
> I don't know if it's authentic though, so take it with a grain of salt.

Being a scan, it could be authentic.  I don't have a physical copy of
the first edition, so can't compare.

Be careful of online copies of K&R C, though.  I once found one of the
second edition, and it was fake (by comparing it to the actual copy).

Much better to get the physical copy.  Although the first edition seems
difficult to find.


Cheers,
Alex

> ----
> [1] ANSI X3.159-1989 "Programming Language =E2=80=93 C", Section 3.1.2.5
> "Types", p. 24.
> <https://nvlpubs.nist.gov/nistpubs/Legacy/FIPS/fipspub160.pdf>
> [2] Kernighan, Brian W., Ritchie, Dennis M. (1978). The C Programming
> Language (1st ed.).
> <https://retrofun.pl/wp-content/uploads/sites/2/2023/12/1978-ritchie-the-=
c-programming-language.pdf>
>=20
> ----
> Seth McDonald.
> sethmcmail at pm dot me (mailing lists)
> 2336 E8D2 FEB1 5300 692C=C2=A0 62A9 5839 6AD8 9243 D369




--=20
<https://www.alejandro-colomar.es>

--xzovymz6ate7spq3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmliOD8ACgkQ64mZXMKQ
wqkc1g//fwhd1H2bf8g/e9HA3g+7h1SMNk235htgLpt1qr6ASYeNVrPUPQURzUjq
VETQy0ysesoCuzd2tSvpBofuL//bOAa6sDv8yUkoi3p5N72gdoNvJiNGOSVOmGfO
JmtWMd37cXw8/eixw9S/hn56ytbOLfCgX3SvRuSnIEMM2d6PN5bpxdA0FLkWVGT6
8t07W4MZldbOoFrWnmnNpwFYzHA5EZCQgq3Tan/NLfkicsjY7WgrWjpqTtI9V1XT
Ckqp+b2tRgu+udk8Jsz17Q466gF72PvvalNPptv7lipWnA4cT/d6WwV5Sf3hVKvN
CcRbuRgg4d7Blx00ZncWkr+A+TeLfaQKt2wq9RqZzmZG79JgPD28aOZMGZ5qvnQ5
JOsv7VaS8PpjTdWlF9qacezVA26UB/xn+WLSgi1GgZYaQjSGcvO+FsItSjjTq+jB
jKBnMkmwM2EVKqMCjlcbSwYditt+XfDWf0bp0Bqo4LGo2ecyLvBuX8jKqNKkc2cU
ydo495HS45HWVsfkrZizBu6Pb2dKRC637tdSP/sAE0RAs+Gd5r26eiafoGVXA4F/
9ZMskqUEWaqBDEAGZK8beOhziG4/6bYmx4TYhlg4GmM6n7BidIKlijCNRBi/SFax
POEdCI/rQWcj0WMQi/LWNzjNGMLz8tCBC4zDEGdXEq244LRj/9s=
=/ZNI
-----END PGP SIGNATURE-----

--xzovymz6ate7spq3--

