Return-Path: <linux-man+bounces-1003-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C27588CF4E3
	for <lists+linux-man@lfdr.de>; Sun, 26 May 2024 18:38:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5CA51280E56
	for <lists+linux-man@lfdr.de>; Sun, 26 May 2024 16:38:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2F64199A2;
	Sun, 26 May 2024 16:38:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s32VXkcT"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B285318B05
	for <linux-man@vger.kernel.org>; Sun, 26 May 2024 16:38:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716741518; cv=none; b=XfDxnBPZXM+j/9t/2OxHYN41+VlfjQetEiM4CHogunHIwSGUYzE1gQrfghqZK1RI90nrLZ5eHmiBmRQxc+QeJm+OQblZvdSNrWpj9c+r4Ke/Dsl/7NKe2o5eblLKsx4TJbE+iBlBtAfFMa0bfYzFYHYLvRXwAelAJZ2pnAlWukw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716741518; c=relaxed/simple;
	bh=BlRTO+mOqvrB5OZrDVpYkCbE76RclCDoZSWVzlaKLc8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ro43odRvG7syarZ/gi/9WuIfDXy8fXPbQf1RbD/lhTNHM6sFgqw/9B/dr8JhaLzzkGze+KTK+gy99VpFJ2sbLu57BEOdrbKc/wHmZxwg+Mmewy4Ul+mU2DQebnRxprqPF80/DcsRsw2mg3XJ6tvWcqikMhiPg4fUPouLLeOcp4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s32VXkcT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 523D1C2BD10;
	Sun, 26 May 2024 16:38:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716741518;
	bh=BlRTO+mOqvrB5OZrDVpYkCbE76RclCDoZSWVzlaKLc8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=s32VXkcTIHJodHSP8OWWwNuNfgSn9A7vZKAHQU/J8dBoB1o6Nhh9RXLqfA1d6fyX2
	 qUkHG+Ckrh9OlIRz6h7yiSEIh3cWnzSCjF+ay+VbrEfKZ6kR6E3UXQw55+fgu3xIlR
	 PDnM8zA140qO8RyfmQjS1vNTtwQs3PMgcbIL8wmQxBpos2k3d6BvFltvE7hd1hNUDB
	 QOAEoEZ3OjJGbXK1xzv9UaRFteb2wDA1gVhk1oBDuh51JwFSaMgRz9fZYmj0/Mfl9B
	 nFBE7yGUaWq7g1OwMMKEp+DytzBC6mVhHyqsXeaC/bRTSK3aRyW1whNqT561plfPfj
	 GYeZQj3gRWOuw==
Date: Sun, 26 May 2024 18:38:35 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Emanuele Torre <torreemanuele6@gmail.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [PATCH] grantpt.3: explicitly mention  #define _XOPEN_SOURCE
 requirement
Message-ID: <lnk72xmyvdccfns2ncuzlvaz655ckfyd3lnljpo4sqb2x27ipo@vvqus3o6a342>
References: <20240526064227.937757-1-torreemanuele6@gmail.com>
 <nx4yzt26bte57ak7vnc7tkl7ofs6fmqxkaexhvx2ixx7jst4yb@xui6m6mjxoz6>
 <ZlNE8ooomjnaKWXX@t420>
 <2fso6x7fhxowsgozm4gwnfbqw2ylukibhbq2pneddxyd44uw5v@bva2bmi65zx6>
 <ZlNRPhPzdi0U8Fhp@t420>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="n5jjxlmmwzkke5wm"
Content-Disposition: inline
In-Reply-To: <ZlNRPhPzdi0U8Fhp@t420>


--n5jjxlmmwzkke5wm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Emanuele Torre <torreemanuele6@gmail.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [PATCH] grantpt.3: explicitly mention  #define _XOPEN_SOURCE
 requirement
References: <20240526064227.937757-1-torreemanuele6@gmail.com>
 <nx4yzt26bte57ak7vnc7tkl7ofs6fmqxkaexhvx2ixx7jst4yb@xui6m6mjxoz6>
 <ZlNE8ooomjnaKWXX@t420>
 <2fso6x7fhxowsgozm4gwnfbqw2ylukibhbq2pneddxyd44uw5v@bva2bmi65zx6>
 <ZlNRPhPzdi0U8Fhp@t420>
MIME-Version: 1.0
In-Reply-To: <ZlNRPhPzdi0U8Fhp@t420>

Hi Emanuele,

On Sun, May 26, 2024 at 05:11:58PM GMT, Emanuele Torre wrote:
> > On Sun, May 26, 2024 at 04:19:30PM GMT, Emanuele Torre wrote:
> > > I've just noticed that ptsname.3 is also missing  #define _XOPEN_SOUR=
CE
> > > in its synopsis; however  #define _XOPEN_SOURCE  does not seem to wor=
k.
> > Did you define it to 500, or an empty value?
>=20
> empty value.

Hmm.

> > You need to define it to an appropriate value.  (The synopsis is a bit
> > misleading, and we could/should specify the minimum value.)
>=20
> I did notice the
>=20
>     ptsname():
>         Since glibc 2.24:
>             _XOPEN_SOURCE >=3D 500
>         glibc 2.23 and earlier:
>             _XOPEN_SOURCE
>=20
> But that is the same text that appears in grantpt.3 and unlockpt.3, and
> they get included with just _XOPEN_SOURCE.
>=20
> I also noticed it this morning when I sent my patch for grantpt.3, but I
> ignored it assuming I probably misunderstood its meaning since it worked
> with just _XOPEN_SOURCE.

I also noticed and ignored it, since I saw the same text in the other
pages.

> Does this mean that my grantpt.3 patch is wrong?
>=20
> And that  #define _XOPEN_SOURCE  in the synopsys of unlockpt.3 is also
> wrong?

Regardless of it being correct or not, I think using the definition
used by newer glibc versions is better, so we could update the SYNOPSIS
of all pages to show the requirements of the latest glibc.

> I should not use just  #define _XOPEN_SOURCE  without a value in my
> programs if I want to use ptsname(3), grantpt(3), unlockpt(3)?

TBH, I don't know.  AFAICS, _XOPEN_SOURCE without specifying a value
means POSIX.1=E2=80=901990 (maybe? not sure).  That is so obsolete these da=
ys
that I don't know what it means.  Does it provide ptsname(3)? I don't
know.  But yeah, I'd say just don't use it.

These days, POSIX.1-2001 is granted everywhere (except maybe some dying
proprietary systems), and even POSIX.1-2008 if you restrict yourself to
Linux and the BSDs.  I suggest using the flags that enable one of these
more recent standards.

Maybe glibc people can say why there's a difference between the
functions, though, which I can't explain.

If you want to send a patch for fixing the SYNOPSIS, please go ahead.

Have a lovely day!
Alex

>=20
> o/
>  emanuele6

--=20
<https://www.alejandro-colomar.es/>

--n5jjxlmmwzkke5wm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZTZYUACgkQnowa+77/
2zIHvg/+Ix2MNqrQw3XxiCJ6bcZ1fE5udrBrZ5ufNEnFqug/LLMtstCK3/XAQ68J
iVO2luB9onRQ7LYYmmrUbNyWdeuetuosBZRLPQqdpHlyDcTlhcziGl4w9wgvVU+7
Q4iAwhyKAzz2lOGIaOlb1NoJbsIzdX/ZTyQtyWbUMH8++4+E+8o+RvL9pLAbDpi9
VmgWDslhsy2ZTo5rtzFw0E1lNPaT//FjZZrcIvKSxA6HrZlGaqO8FF+X2XTAIhJA
4t+ncYRvQVB3nVKRiDBmySspxvRehdZHTKUgi+K0MLLfJsmGF3/q8yrarKG2c0rU
n+ixRBd87hWPkCBgHg8SZQgy2SUbmGpkTCoIMUCGCGsMARwCIMPuM+XhHkltSKoV
ZST/PE4y7PWzlyWOdby4CGPPFm/LFM2C4O8CMY4+jz11wXhPyCX+AdKig+sQBiLU
LBlTR/Bgz/IubD/9QTTZnzbk527OzDB4YnNWizlFQ1m2DApi29EiBuvoRTnXbbqA
nSIpVMY6aKn5tkVcSCkl2kZlsMua5Zjw9MdMnqOicbbnQr+PEYYgzUE/PQ1k9qWK
EsYGswfNBxZ3KkDUYoun2PIIE9gG65YpX4UVmqBNpnhG9SDI9c4BUy6PxdzlYQ2c
MK5r8w5A7fgrdJyP8QgWU0dY7fVXSQXAnbA33435F3rTpZwRMWE=
=7xfO
-----END PGP SIGNATURE-----

--n5jjxlmmwzkke5wm--

