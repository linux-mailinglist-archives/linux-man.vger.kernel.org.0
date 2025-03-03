Return-Path: <linux-man+bounces-2568-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1715BA4BB23
	for <lists+linux-man@lfdr.de>; Mon,  3 Mar 2025 10:48:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A40A73A3497
	for <lists+linux-man@lfdr.de>; Mon,  3 Mar 2025 09:47:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 833E32033A;
	Mon,  3 Mar 2025 09:47:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RcstJdJO"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E7F153598
	for <linux-man@vger.kernel.org>; Mon,  3 Mar 2025 09:47:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740995235; cv=none; b=i0624AuR1mKy8qTOpH2WeNb4gkaqc0v5VWjYKtf40/jdL2p+B9TWxPHgOoTTjZDyR2wgbKue3aw/zWnyXRoGEuFTPSTj5E5968bQlCAwwhXV0nW5Rsm3brCrfl32Luj8/3+Y3D7x8So8qHsrx/KDRNJQemKyx507pTIxhArysXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740995235; c=relaxed/simple;
	bh=w5tEE6IccXiM5BDZH8iiQurwGfHKrrSm13rqgVZHAps=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kzsNkvr9KHgh1qrAQclonQBRLedLDN0vRG5AGRb+Z65NDPzGdyhs5rrE/oxN6VzTZU1CuhrcBNj8+Ri1HuHTFBcXvOO1j6h6DHIFh8ECr3RrKDbsADEDs+zn6NX292mVwnYo6WykqVED3DyYcko9N2cMMlwUJLnhEpuOUMNbxpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RcstJdJO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88C62C4CED6;
	Mon,  3 Mar 2025 09:47:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740995234;
	bh=w5tEE6IccXiM5BDZH8iiQurwGfHKrrSm13rqgVZHAps=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RcstJdJOMajmIJ4AZt1UiAjL1uvSZMpxz1QJmAdMq/6dODhavbza+AP/24AHNQtLV
	 zEBDab5QjDwVNzBSublFJy7lW98weEi/StR+6b7F8NVp2eRWldLUXlHmeERunuoI9R
	 KjRNx6Zn5vfO06CXg8f2gzMTEHQjRt5nQ/DnQrvVoHkp7eHH/F28lEG1xIx1kqpQqw
	 vyrT1jmgPDUZ6nrLjeYGikodzHd9lTPFG9/bndoePxeQmDCr2rx/VolAgOKtmLzA25
	 Z6fP57L/4NnmsUMX0qg613BvWAq1/6A9b1tuJq9qGHKmoz1AIRzNK7DX9UKMgoCorP
	 q6RPjsG5vaYaA==
Date: Mon, 3 Mar 2025 10:47:11 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "Dr. Thomas Orgis" <thomas.orgis@uni-hamburg.de>
Cc: linux-man@vger.kernel.org, 
	Adhemerval Zanella <adhemerval.zanella@linaro.org>, Florian Weimer <fweimer@redhat.com>
Subject: Re: mismatch of type of ut_tv.tv_sec between glibc-2.41 and utmp(5)
Message-ID: <datobxxdt7pzzokejj6ayfpkxw55njlpnkwgmvu5mnmcd6mxwu@rvj6xypdtr42>
References: <20250228103610.6c908004@plasteblaster>
 <o7qulyh2a6x5o7g3lehxpgnt63ptbfxn5mdjozxxjsyhz5ljeg@vb4fx5a6ex5b>
 <20250303103101.09e47815@cortex.rrz.uni-hamburg.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hhwt4up4zbgxusc3"
Content-Disposition: inline
In-Reply-To: <20250303103101.09e47815@cortex.rrz.uni-hamburg.de>


--hhwt4up4zbgxusc3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "Dr. Thomas Orgis" <thomas.orgis@uni-hamburg.de>
Cc: linux-man@vger.kernel.org, 
	Adhemerval Zanella <adhemerval.zanella@linaro.org>, Florian Weimer <fweimer@redhat.com>
Subject: Re: mismatch of type of ut_tv.tv_sec between glibc-2.41 and utmp(5)
References: <20250228103610.6c908004@plasteblaster>
 <o7qulyh2a6x5o7g3lehxpgnt63ptbfxn5mdjozxxjsyhz5ljeg@vb4fx5a6ex5b>
 <20250303103101.09e47815@cortex.rrz.uni-hamburg.de>
MIME-Version: 1.0
In-Reply-To: <20250303103101.09e47815@cortex.rrz.uni-hamburg.de>

Hi Thomas,

On Mon, Mar 03, 2025 at 10:31:01AM +0100, Dr. Thomas Orgis wrote:
> Am Fri, 28 Feb 2025 15:06:33 +0100
> schrieb Alejandro Colomar <alx@kernel.org>:
>=20
> > It seems your suspicion was right.  Someone decided to borrow some time,
> > according to the commit message that changed that code in glibc:
>=20
> > We should document the change.  If anyone wants to send a patch, I'll
> > review it.  I won't write it myself, because I'm not an expert in
> > compatibility code between 32 and 64 bits, so I prefer if someone more
> > expert makes sure the documentation is correct.
>=20
> Florian? Seems to be the best qualified. As a user, a question for me
> is if the specific macros deciding for the 32 bit field should be in
> the man page or not, as they seem to be an implementation detail that
> one cannot rely on. I guess I need to do a check like sizeof(time_t) >
> sizeof(tv_sec)? And then just assume unsigned type? It is a hack, I
> understand. So any use will be hacky.

Hmmm, this reminds me of timespec(3type).  Maybe we can document it
similarly here.  Feel free to inspire on that page for a patch (you or
Florian).

> > If you show some code, we can have a look at it.  :)
>=20
> Not much to show. It is semi-abandoned code in simpleinit-msb that
> called time() directly on tv_sec. I switched that to gettimeofday() and
> kept the same level of error handling =E2=80=A6 which is none. My function
> detects if the assignment to tv_sec changed the time_t value and
> returns an error, but the caller code is inside void functions and
> doesn't have an error handling path.
>=20
> The effect will be broken lastlog entries in a few decades. The
> unsigned int extension moves that a bit further back.

Thanks for the details!


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--hhwt4up4zbgxusc3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfFep4ACgkQ64mZXMKQ
wqna9xAAj3WCbtxPsxMwRAW3RKYXFzwcIDC6smxes9dMVNZ4RR3A7+KOjRwirE7R
T+oZYRCXLOGFUsjOGlVwFN3KaXyasEaS6iigrij70/G3M+IncmZ78C7k0rjl+2qC
BGoBk7ouZ4sP77fxgzTs9mXi1l5P4ab/26QrDQTDvWVZsJjzDwExonMFMOhczNUi
TkAx+2MVyHGAzAxro5fLmuLLZiUNGNDURQobJFtEn87GXzJ+owZK1vO1RDNZRvJz
4iwloGBnaDp9sdGP7TxTq9TKgiG/MGOzTQvWeN303Qr37IzYZ08+cig6ao6QaRHQ
OtsrhomfB6Bp0hbbJYq4So4Bbu7qBuKW7TtOezXM8m6evlQGz3wsW0ZHGQDq6b6a
r64M2B7kIsClP04KoKGFgTZZNzVIYvdqYzmd0CleZb78d7mZGN4u1gI/PYH4seFt
hP5F/9BH5yQF+VHeZ8TfUOFZwva9qSI1SC4E2h5r8LLHTUpDhC4GgHYs4+Z7XSmm
nEeGDWlzx/8vEjlMAQ4/KHCSQd706gdmSgxPdMl6xcnqZqoglFC2xhahGWrL9X+8
P4UtR6Nhpx+DyZXUsm8o4M0sxBskwNl+BLYA5UHs4djAr7FA1U34SguXv9Fqk+ZA
5xioHJlK31QGiKFskI91p73hBRU40KXkKX8PDN9Vpm+nbyTNU70=
=EXo4
-----END PGP SIGNATURE-----

--hhwt4up4zbgxusc3--

