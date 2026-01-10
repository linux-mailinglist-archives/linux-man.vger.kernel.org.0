Return-Path: <linux-man+bounces-4777-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 35911D0D049
	for <lists+linux-man@lfdr.de>; Sat, 10 Jan 2026 07:00:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 009B130096B1
	for <lists+linux-man@lfdr.de>; Sat, 10 Jan 2026 06:00:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85DF433D6EB;
	Sat, 10 Jan 2026 06:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="YIpTq65W"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-06.mail-europe.com (mail-06.mail-europe.com [85.9.210.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9DD233BBD2
	for <linux-man@vger.kernel.org>; Sat, 10 Jan 2026 06:00:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.9.210.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768024834; cv=none; b=cmAEmQz06p+988xpWJMYHKJeKyxmPVb3GDwPiSD1VqfMtbYhjL/ZWPLJ2bTtmfJZjKFkO8xpOAsVes0ys2S4P//B6pZ8VEdGT1q6M0b6H8HY+IBH7U4Lcm8HREQ34nrdNHI3FjQdXpJNf+Bd74Usem9u+PmajTWXB9RQBUmXl2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768024834; c=relaxed/simple;
	bh=0DxbunyIe7+BCvrTOOjPhMMaP5k24SNNIjOhxQqfukA=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QRHavvjvKZ965eeUkRgdlkT+ma1zouo9Gy+etcdv8+wEBluWq1jgU9UEvRlKgoSnR6hc4wFmlGz34haGMHbCi1foaYhOtAqUOr3uQcYBNBAC49KTldr1p0fHoisJwDUDMKnm5wBmWyqk1zj9dOnYQLY2lNhI0bFGi8xLsfMXtFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=YIpTq65W; arc=none smtp.client-ip=85.9.210.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768024819; x=1768284019;
	bh=w2AyUxD53wc5wyJw6Z27beC7qWz2t088QqnsO+SN5Ns=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=YIpTq65WOKq9laaqIf0NUWNsaWna6RX4Xg+o657/VxXKM2iWpg7IXKSTxVnIWm15Z
	 bZtyxCqVnOghGPjmN6RHwnSwPvEWDcOrO//zdW2qpqBiC+CQIfIjy+bEOOE1CrNn63
	 zgZapxhKtM9OywElzoDzIYduPDVaQAE0R/7/XtxjrtW7f5L6lDBjbyXjnL946NFzuB
	 CJfjPRdvXMtY6ddmU/SgJacpk1XdOGXdm6tvcRX6iQTJozjQZkvAkWeG5X6DT1HX58
	 8eWfrwmPOmaJz7W5K6h9oFvwOM8MJT7EgcJuYIoIkQjfKB3tj6UB5gjlB+uoHYSQjM
	 k4WB7rxwLXBpA==
Date: Sat, 10 Jan 2026 06:00:14 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 08/11] man/man3type/stat.3type: HISTORY: Specify first POSIX appearance of st_{rdev,blksize,blocks}
Message-ID: <O3wNNZ-8zjB5uqYmBT-pq1iZtfGLOznbpKjwEKFZqn0Alz65p63u1_R9jcyHDD-9yZocERBl1fVdn5LKF6bHJALSvtWvvbpfHGNmc93geok=@pm.me>
In-Reply-To: <aWDO3nEcZWMcqvXx@devuan>
References: <cover.1767840410.git.sethmcmail@pm.me> <9d3a705508aaaec7b2ee5c79bb284fd508008fce.1767840410.git.sethmcmail@pm.me> <aV-ZG_8At_-R7G2v@devuan> <AzV_uq5wDJK6TGmy0mhak2A1ooip-Z-E6YOBGNRtQXcSgNNe0SlkUc0uHPvPaAVxQZMRSpw_nrvCwq3u3MnibR-mB-ymp3ycoAH9fIhWu6k=@pm.me> <aWDO3nEcZWMcqvXx@devuan>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 37f156e7f325b9dd83a788dde8ce9456ca761891
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha512; boundary="------6a531110b40353cd8b1bcfffab0f57f022a00b4db306885bc615d7db8627b4bf"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------6a531110b40353cd8b1bcfffab0f57f022a00b4db306885bc615d7db8627b4bf
Content-Type: multipart/mixed;boundary=---------------------689ff06c85b7e178ae307a3f430f8c26

-----------------------689ff06c85b7e178ae307a3f430f8c26
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

Hi Alex,

On Friday, 9 January 2026 at 20:00, Alejandro Colomar <alx@kernel.org> wro=
te:
> Hi Seth,
[...]
> You may be interested in diffman-git(1). I think it would help
> reviewing your diffs. Here's some example of how it works:
[...]
> For more documentation, see diffman-git(1), of course. :)

That does look quite useful!  I've seen it used before in the mailing
list, but couldn't initially find its documentation.  Which I now
realise is because I was looking for its man page in my installed man
pages, rather than in the repository *for this documentation* (ironic,
I know).

> It's provided in the repository, in case your distro doesn't provide it
> yet. You can install it with the usual
>
> $ make -R -j4 && sudo make -R -j4 install;
>
> Or just run it from the repo, since it's a bash(1) script. It's here:
>
> $ find * | grep diffman-git
> man/man1/diffman-git.1
> src/bin/diffman-git

My distro (Debian 13) indeed doesn't seem to provide it yet, so I've
installed it successfully via the repo.  I'm glad it's a bash script,
as I'd be a little more hesitant to install a binary executable.

[...]
> I have a question: do you use mutt(1) or neomutt(1) by chance?

Currently neither; I generally just use the Proton Mail Linux app.
Mainly because it's a familiar interface from before I switched to Linux
in mid-2025.  However, I have been really getting into TUIs recently.
So if you recommend either, then I'd be enthusiastic to give it a try.

----
Seth McDonald.
sethmcmail at pm dot me (mailing lists)
2336 E8D2 FEB1 5300 692C=C2=A0 62A9 5839 6AD8 9243 D369
-----------------------689ff06c85b7e178ae307a3f430f8c26--

--------6a531110b40353cd8b1bcfffab0f57f022a00b4db306885bc615d7db8627b4bf
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wrsEARYKAG0Fgmlh6u0JEFg5atiSQ9NpRRQAAAAAABwAIHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmcZv91of6eGLcD7u2IGOhXVS1VaFcaZ+4nV4Poh
YGYRwBYhBCM26NL+sVMAaSxiqVg5atiSQ9NpAAAgiwEAjS8ie8Kcn6SaY7Hv
12Tz533pujaqglFYllrpvYQZMv4BAPOLtbj2fFJDEHlYlgt93e6x4BwaqUHV
yB8iE6b9TyYC
=WxJv
-----END PGP SIGNATURE-----


--------6a531110b40353cd8b1bcfffab0f57f022a00b4db306885bc615d7db8627b4bf--


