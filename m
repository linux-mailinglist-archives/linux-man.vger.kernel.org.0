Return-Path: <linux-man+bounces-2518-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D30BA46CCE
	for <lists+linux-man@lfdr.de>; Wed, 26 Feb 2025 21:58:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 136241887295
	for <lists+linux-man@lfdr.de>; Wed, 26 Feb 2025 20:58:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0C722528EF;
	Wed, 26 Feb 2025 20:58:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BsFkmmV8"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A19D2222A5;
	Wed, 26 Feb 2025 20:58:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740603484; cv=none; b=GStDsOb7YHwYIIMDzUjijvpsmP76FLnS+mHrHMAHhQtBik6S093LCoSkY6xxt7kom+y14+VeXwt4R001TRYToynGGffDGb1AY7ED7uzEXZDgzQPotAwN29O5dRfyMYr6DG05KX8eL2rcVLZ77Q9cLvSMCY69fHlBskymyFXvB+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740603484; c=relaxed/simple;
	bh=d+rEjcdShj9mni7hXZSIQeqMMZB1x8S3nI6yAimOxu8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u3h5TvI83GY9YQwgVlPwa4qiO7EvICeKcHh+N2OS8MhBbnpNsv8zvkaS9hbL4o7Qc+Gy0P9C5DrZVmkwQHkGy712p7TIZ6kYBF7/xmUmLICW5c9SNb34zbaX1D7TUFOBY8Ma6z7Ybb9j2dRGMfUkh3DT/Uh3jlczr6pSyBddQfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BsFkmmV8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01931C4CED6;
	Wed, 26 Feb 2025 20:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740603484;
	bh=d+rEjcdShj9mni7hXZSIQeqMMZB1x8S3nI6yAimOxu8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BsFkmmV824LzCJm6eiKsxgUFpswzEHUEgH5OjeVtJ9hz19BhsIojXLmApMw910Xwl
	 KC8EXNt6cSrbXl+YmB7udk13wZVIu4pW+x/5cfYkkEuA/5dB/mWVG2TxifwQ4zd3lJ
	 JTY+AuI0ZcBijQpbxCUc1Fu/McTYjLZ/XDMfGjWMzXGorJAkykslBkg+d8IN4l8SP2
	 cYsjTJqsrhJcInJvCvSMc5bnkFPBwwkybKa74A+04jKNFZFFzJJ7TOvxKV6uiEh2w1
	 +RNkm1BEYlSsj+YblkBnZUisiFV7k59JMItjkDaS8nTUZA0o6CYeMe2U3CTQ3268co
	 PiYKqsd3YeIlA==
Date: Wed, 26 Feb 2025 21:57:58 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	linux-security-module@vger.kernel.org, Tahera Fahimi <fahimitahera@gmail.com>, 
	Tanya Agarwal <tanyaagarwal25699@gmail.com>, Daniel Burgener <dburgener@linux.microsoft.com>, 
	tools@kernel.org, linux-doc@vger.kernel.org, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] landlock: Minor typo and grammar fixes in IPC
 scoping documentation
Message-ID: <5xijgm2hkedx2tu6fjt67ozf2rmvjz6z4zvvcvokymc3hlc6of@xqpnvf23ia2s>
References: <20250124154445.162841-1-gnoack@google.com>
 <20250211.Ree5bu6Eph2p@digikod.net>
 <22olfm76rcgjfs4vrr3adtbznsnz47kaehlr3ljn6e5jkc6waq@ue7azstxlwfv>
 <20250211.ieSoo7Phe5oh@digikod.net>
 <3unkhxarmiddobfjvojx4sdpgitjld26udcagka2ocgrb6c2jc@dcg4w5yk5mut>
 <20250211.oavooPhap9OX@digikod.net>
 <7vl6uylhzgkokl42bz36d5g3krcusqf7mdy4bd7tblcjckatrw@ullu2kblovji>
 <Z794dm_xmViQ_lFF@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vjox57o22wq4wq6a"
Content-Disposition: inline
In-Reply-To: <Z794dm_xmViQ_lFF@google.com>


--vjox57o22wq4wq6a
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	linux-security-module@vger.kernel.org, Tahera Fahimi <fahimitahera@gmail.com>, 
	Tanya Agarwal <tanyaagarwal25699@gmail.com>, Daniel Burgener <dburgener@linux.microsoft.com>, 
	tools@kernel.org, linux-doc@vger.kernel.org, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] landlock: Minor typo and grammar fixes in IPC
 scoping documentation
References: <20250124154445.162841-1-gnoack@google.com>
 <20250211.Ree5bu6Eph2p@digikod.net>
 <22olfm76rcgjfs4vrr3adtbznsnz47kaehlr3ljn6e5jkc6waq@ue7azstxlwfv>
 <20250211.ieSoo7Phe5oh@digikod.net>
 <3unkhxarmiddobfjvojx4sdpgitjld26udcagka2ocgrb6c2jc@dcg4w5yk5mut>
 <20250211.oavooPhap9OX@digikod.net>
 <7vl6uylhzgkokl42bz36d5g3krcusqf7mdy4bd7tblcjckatrw@ullu2kblovji>
 <Z794dm_xmViQ_lFF@google.com>
MIME-Version: 1.0
In-Reply-To: <Z794dm_xmViQ_lFF@google.com>

On Wed, Feb 26, 2025 at 08:24:22PM +0000, G=C3=BCnther Noack wrote:
> Hello!

Hello!

> On Wed, Feb 12, 2025 at 04:06:06PM +0100, Alejandro Colomar wrote:
> > So you could really use man9 for internal Landlock stuff.  Even if I
> > think generated documentation isn't ideal, it's better than nothing.
> > Being able to use man(1) for reading kernel documentation would still be
> > a nice feature.
> >=20
> > And while I can't run all the linters that I run on hand-written docs on
> > generated pages (because generated source necessarily triggers many
> > false positives), I could still run some, which would trigger some
> > accidents in the docs, and would also detect bugs in the software
> > translating the docs from one language to another.
> >=20
> > So, I'd still recommend you considering man9.
>=20
> This is different to the BPF helpers; Landlock's existing man pages docum=
ent
> user space APIs, and the largest part of the kernel-side .rst documentati=
on for
> Landlock also covers only user space.

Huh!  Why does the kernel duplicate what's already in the manual pages?
Or does it cover other stuff?

> Only a small part of the .rst
> documentation is about kernel internals.

Hmmmm.  I expected it would be mostly for kernel internals, but it seems
my guess was wrong.  :)

> If I understood that correctly, section 9 is supposed to be document thin=
gs that
> are relevant to kernel developers, right?  So it doesn't sound like the r=
ight
> place for the documentation that we have?

Yep, that suggestion was due to my wrong idea that the .rst docs were
mostly kernel internals.


Have a lovely night!
Alex

>=20
> =E2=80=94G=C3=BCnther
>=20

--=20
<https://www.alejandro-colomar.es/>

--vjox57o22wq4wq6a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAme/gE4ACgkQ64mZXMKQ
wqkgMhAAswWO3HuGwO8zERusDcb6FffWV8vfhuWuoFmSav2IEKKDw+O993Bzp1+s
tKhcIhXCPmtyzBMiF3zPUbYokp4oZBIpDnt3RPZlIWkOhl1yJrtpCnPUK/ZdFwOB
2Qnsij0Doo0ep9NkrLoAQn+/AdviSsy25nwnYA4XFK+H4DzguoXzywJ0ywXWhue+
qbSwip//bkgPQ9JPfYYPW5g7lgk9kQH2QqIxwtsT/GAA5c20Nz9EH0UYQ8BQU5EC
sBnXertRmaVgPrhFDHNDiSTYPYMTKxdg9ij+IWIdgx11b3WDBZjKVLa3hdVGQRGK
rg4d/D++rta1OFcu0fgeABftJVNN3guEuuKbFB9wamNYW5zMC7caoPy9aCg9tjth
M0hsFLyjqWFbrJ5HH/cV9Vkw7Eqjqoj4BepbzI671MwKKEgLWHwT8pGaVgYY4Ici
FBgq9Hl0a9jtI14oVMClfvU3zJVE1EJDSAQ9cw4YxsWRxeMeq6HECuYgXBkzyYyO
mwwmoKvZYBadZWPeKG+bq7wxAE4ZkLsA+NkAeXGqJYLyhsXKM2Y4zGmecez2PPKT
akj62cOhYh2NYjeCekPIQLBSd2KWONuDyEggx8sNfu+jxzHECYm7tdwsPwZ9Y2j7
e6XfDsUczMsDb7cjJmaBGOhRqW0+hhjKoflJlV/iYTkW5LcayKo=
=aCvb
-----END PGP SIGNATURE-----

--vjox57o22wq4wq6a--

