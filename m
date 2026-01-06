Return-Path: <linux-man+bounces-4700-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 787FACFB562
	for <lists+linux-man@lfdr.de>; Wed, 07 Jan 2026 00:15:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3A485301E935
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 23:15:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8822E54723;
	Tue,  6 Jan 2026 23:15:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alejandro-colomar.es header.i=@alejandro-colomar.es header.b="Pmf6EYpV"
X-Original-To: linux-man@vger.kernel.org
Received: from out-182.mta0.migadu.com (out-182.mta0.migadu.com [91.218.175.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FBB44414
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 23:15:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767741339; cv=none; b=eJiRYjwaNToh7BhtL+t4/+cnNYB5kEUysYq8weiWnSB8jSi0WAzdWaOYjLVLsJjO8F5fMm1VbnCI4ZVIhNx4LGrIWYBkqADQjIpNGX9M5NupTl/EHMxgyY7Z6xrEcBli7fYbz4G+JMlk5X92H3hxi9JPo+6sB5/D2lRdRIRruJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767741339; c=relaxed/simple;
	bh=T2WVnsYcLyXTV/W2uPqCujCfJvb7my6T/aotkHMgvGU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jfEBoUieFAAqM8rBNUF0O0ts2lonb91UlLxWAZlrISy8G47NROJ9PeL1dBWkJe47XG4cFuaWXASjpy5AWyiSNK5x9e8bTdVq1dlN3s0A1WfO4Olofayp0665sV30YoELb4NJ88IlH3x31IUVS6tlw2j5IDf2oA1S9mG9/uTlxjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alejandro-colomar.es; spf=pass smtp.mailfrom=alejandro-colomar.es; dkim=pass (2048-bit key) header.d=alejandro-colomar.es header.i=@alejandro-colomar.es header.b=Pmf6EYpV; arc=none smtp.client-ip=91.218.175.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alejandro-colomar.es
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alejandro-colomar.es
Date: Wed, 7 Jan 2026 00:15:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alejandro-colomar.es;
	s=key1; t=1767741335;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=UrzPAXW+HfcwZV2Pn7RD3e7kiNEM6WqRdkJsd8/aFf8=;
	b=Pmf6EYpVQX+OzcUX7N1yM6rUpgRMRz1sQO3Qebfgo6edq4WS7XE/m5cHJ6MkRSZ+f0Nd56
	Ec7yr/fKw74HndZXEqBWscdh4Vj+RZneq/PqnINPkuj1WYdjUekZITP3moyr+kytjnsPJf
	kdHgWYqfGyKA0As2QR+FU+0vDUu1gch6TtPzckXnG7gYxzhYq+0Gh3Xvn/QTmtWk6CJWCi
	rvIwMZqo/hlLq4/+HFq7lsi4JadXCrqNAplnP1oDtSMUq19C3UkOf3yoqT5kefvVaNLf4w
	x2LBGtF3NRQGiqVW86ukrv1FsedMfdQV8pJgrV9mu4/GULnvOqSzfyWEZ8Vimg==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Alejandro Colomar <une+c@alejandro-colomar.es>
To: Nevin Liber <nevin@cplusplusguy.com>
Cc: Robert Seacord <rcseacord@gmail.com>, 
	"sc22wg14@open-std. org" <sc22wg14@open-std.org>, Florian Weimer <fweimer@redhat.com>, 
	Carlos O'Donell <carlos@redhat.com>, Aaron Ballman <aaron@aaronballman.com>, 
	libc-alpha@sourceware.org, musl@lists.openwall.com, linux-man@vger.kernel.org
Subject: Re: [SC22WG14.34665] n3752, alx-0029r8 - Restore the traditional
 realloc(3) specification
Message-ID: <aV2WnXiIHI7yk3wK@devuan>
References: <20251223161139.196AB356CF9@www.open-std.org>
 <20251223164349.F0BC5356D1A@www.open-std.org>
 <CACqWKsOkbArXm0XBUHkLcFFwDUP8iDQv_xPeNbomR0bKf-GCFw@mail.gmail.com>
 <20251223211529.6365A356CF9@www.open-std.org>
 <CACqWKsNQCchFZnFKKAyi-3HDtJYQ6sc=UZeb+hX48WQ1e7yj_w@mail.gmail.com>
 <20260106210527.AA3FA356D3A@www.open-std.org>
 <20260106221652.F02B3356D1A@www.open-std.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="e2eozqbp6npgxaid"
Content-Disposition: inline
In-Reply-To: <20260106221652.F02B3356D1A@www.open-std.org>
X-Migadu-Flow: FLOW_OUT


--e2eozqbp6npgxaid
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <une+c@alejandro-colomar.es>
To: Nevin Liber <nevin@cplusplusguy.com>
Cc: Robert Seacord <rcseacord@gmail.com>, 
	"sc22wg14@open-std. org" <sc22wg14@open-std.org>, Florian Weimer <fweimer@redhat.com>, 
	Carlos O'Donell <carlos@redhat.com>, Aaron Ballman <aaron@aaronballman.com>, 
	libc-alpha@sourceware.org, musl@lists.openwall.com, linux-man@vger.kernel.org
Subject: Re: [SC22WG14.34665] n3752, alx-0029r8 - Restore the traditional
 realloc(3) specification
Message-ID: <aV2WnXiIHI7yk3wK@devuan>
References: <20251223161139.196AB356CF9@www.open-std.org>
 <20251223164349.F0BC5356D1A@www.open-std.org>
 <CACqWKsOkbArXm0XBUHkLcFFwDUP8iDQv_xPeNbomR0bKf-GCFw@mail.gmail.com>
 <20251223211529.6365A356CF9@www.open-std.org>
 <CACqWKsNQCchFZnFKKAyi-3HDtJYQ6sc=UZeb+hX48WQ1e7yj_w@mail.gmail.com>
 <20260106210527.AA3FA356D3A@www.open-std.org>
 <20260106221652.F02B3356D1A@www.open-std.org>
MIME-Version: 1.0
In-Reply-To: <20260106221652.F02B3356D1A@www.open-std.org>

Hi Nevin,

On Tue, Jan 06, 2026 at 04:16:11PM -0600, Nevin Liber wrote:
> On Tue, Jan 6, 2026 at 3:05=E2=80=AFPM Alejandro Colomar <une+c@alejandro=
-colomar.es>
> wrote:
>=20
> > I agree with you.  But they are worried that the committee might later
> > "require different behavior anyway".  That's why a statement from the
> > committee saying "we agree to not change this UB to something different
> > than the traditional behavior" would be useful.
> >
>=20
> We cannot put requirements like this on future committees, nor is there
> anyone who can speak on behalf of future committees.

Agree.

Which is why the only solution is to actually fix the standard
definition of realloc(3).  And is also why POSIX will fork realloc(3)
regardless of what ISO C says about it: currently, POSIX would be still
compatible, because UB can be defined, but in the future, if ISO C
deviates, the POSIX realloc(3) will be effectively a fork, and ISO C
will be ignored.

If ISO C doesn't want to be forked, it only has an option: follow POSIX.

> We can, of course, talk about the likelihood of this behavior changing
> again, strengthened by vote counts.

Yup.


Have a lovely night!
Alex

> --=20
>  Nevin ":-)" Liber  <mailto:nevin@cplusplusguy.com <nevin@eviloverlord.co=
m>>
> +1-847-691-1404

--=20
<https://www.alejandro-colomar.es>

--e2eozqbp6npgxaid
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmldl5MACgkQ64mZXMKQ
wqmS+A//ROun/SRw6dd56p8qBWPslN4Jme3s4fEor5SuucPrGh8gAm+XO1tkOhEm
j1YDyetX0SWXSQOxqRsZ5EaaXZ2iTwv3uscDI4bByHPqpDL6NmJhIx5/Ejr1rvBW
kKZo6xCv6vsF1g1fQ3Btf2ComPrgTiabq2+uCtbO90NKki+Mhj1wVrsiAt0TPGqQ
YeBvKvWkQYQS9OPEIOXm8if30FSgR8JkDEv1qMo4+bNM/qCvEol70KSN6XdOu0Nb
zFdgfp0f+Vi3LrSBUeXJm5fL609tFY5DzdvFzmfZ+z2aVdc46PscHOvwHFVhAi2H
GpbyFwTlDSlsLt/0Sphythu5llIKkLyTtysYolJQVOJVE2V+qKhea+olAZomk2GA
6onSG0PEMODwVNcDYp1fUbj5k1o2pYbWqoGXq+QFKSvDiZuCrcEbB+3FmBzbsGRV
ZGWvLKtFeWGOpPn5ywXiquWrPWcYCR8H0MNBA0v4YUXzMvS0+W8GIGwraSZQVdaG
Mb/cmBREIYGba18MigIpeD22UueJh2Kd0t19XtQQ2H8zUmZ7/DM2OFO7yRhpnsHp
fj2QAjKvqCSVqHQ/I9CkHpVw/y6MlaS4SdUr8F/Y5UqxTjgHzhqy7j+hg36LwV3D
3Tg/kUkUD8MYnQbNO20vTndoDOvgXeHCKh61j8RBaunmnZ4Vr4g=
=p4I4
-----END PGP SIGNATURE-----

--e2eozqbp6npgxaid--

