Return-Path: <linux-man+bounces-1446-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B8FA92FB4C
	for <lists+linux-man@lfdr.de>; Fri, 12 Jul 2024 15:27:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B7DC9282453
	for <lists+linux-man@lfdr.de>; Fri, 12 Jul 2024 13:27:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 479F716F85C;
	Fri, 12 Jul 2024 13:26:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gXSY/vSo"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02BFE15CD75;
	Fri, 12 Jul 2024 13:26:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720790816; cv=none; b=tblJz1SHs6rKfEyzC9hakUZuUhkUK+AAKFI4Bzd2rmoPkfRFnUmwxirypNE87ikDrp0Q64FD1oS7XoM0wMD7uevzYvClNBESECef3Ovx3jkPOUOQgEzpXyJaUyhTr/fLV6fhItIJX5/TkFkIgND26n5WE5Q7dBF1vb+PjWsNxLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720790816; c=relaxed/simple;
	bh=tKXsqLsJ2mWGpPbET+V3RfenPhzPBppZuf4qSNlZ0uM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O9tFCUmsA8WCBSMl1//F6uugkDdjNpoYWp98SWyXbiexNEzeKXjUDIaD3ly7yMYfOd0o5ackP7928EFeDZnVlr+WWo+XGrgXI/2BKcz3AnNo0UK54uw+vLNkPSJVXXZSGXFYWI8+I2k9UXN1KtYvkzUpzZuYWsy1IZxDKDEQ6K0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gXSY/vSo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4663EC4AF07;
	Fri, 12 Jul 2024 13:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720790815;
	bh=tKXsqLsJ2mWGpPbET+V3RfenPhzPBppZuf4qSNlZ0uM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gXSY/vSoHHIgkaTMds7dQ9BDk0VJyxZ3Qe40/kUTSisSNCvJ7mrPxgeXN2eZ0q+Se
	 dxOTXx9+YftsMuzZPpFeLOegwqD1ax8ZETK7JWEC/MIU71sttGYhmTYmoQHPv/bIdO
	 VDPohTvp1C2n4SY3q98dgKn1NGksyrIXyUJUSTviQ6SleZPcbov+MiYn5eTtAQeuub
	 Os2fMJPtWR0AFC62VghY4KQfAjlPTn3OlCFVLVX1h/dSS0lBbAdha2iQgd2IBocnhk
	 X+uGhLabpuLNx1rQh7a7fs2UF7pgB/zQTb6bJOBt1VYeSZdBAtX5k2PWACEix3pFPe
	 CQa/AERMh1JaA==
Date: Fri, 12 Jul 2024 15:26:52 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Petr Vorel <pvorel@suse.cz>
Cc: linux-man@vger.kernel.org, 
	=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@linux.microsoft.com>, =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	=?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>, linux-security-module@vger.kernel.org
Subject: Re: [PATCH 1/1] landlock: Mention -1 return code on failure
Message-ID: <yn4qlklydmoicxbuvdcsbscp3vq5zd6shzbdcjcjbhmye2r5ec@dahyztvwrqda>
References: <20240712130904.145010-1-pvorel@suse.cz>
 <evf3o7bjqr6262out6aazgbmmgm45o3gtuywdulrzhtd742p7n@v6xdj5yftinm>
 <20240712132522.GB145191@pevik>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="d7gmpzoi42dktue3"
Content-Disposition: inline
In-Reply-To: <20240712132522.GB145191@pevik>


--d7gmpzoi42dktue3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Petr Vorel <pvorel@suse.cz>
Cc: linux-man@vger.kernel.org, 
	=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@linux.microsoft.com>, =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	=?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>, linux-security-module@vger.kernel.org
Subject: Re: [PATCH 1/1] landlock: Mention -1 return code on failure
References: <20240712130904.145010-1-pvorel@suse.cz>
 <evf3o7bjqr6262out6aazgbmmgm45o3gtuywdulrzhtd742p7n@v6xdj5yftinm>
 <20240712132522.GB145191@pevik>
MIME-Version: 1.0
In-Reply-To: <20240712132522.GB145191@pevik>

Hi Petr,

On Fri, Jul 12, 2024 at 03:25:22PM GMT, Petr Vorel wrote:
> > Hi Petr,
> > > +On error,
> > > +\-1 is returned and
> > > +.I errno
> > > +is set to indicate the cause of the error.
>=20
> > I think the common wording is s/the cause of //
>=20
> > Michael unified these a few years ago.
>=20
> Yes, you're right, it's mentioned in Changes.old.
> But I copied that from man/man2/mount_setattr.2 and it's on several place=
s:
>=20
> $ git grep "the cause of the error" man/ | wc -l
> 12
>=20
> I'll send v2 later today or on Monday.

Hmmm, thanks for investigating.  Would you mind also sending a patch for
fixing those 12 cases?

Have a lovely day!
Alex


--=20
<https://www.alejandro-colomar.es/>

--d7gmpzoi42dktue3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaRLxsACgkQnowa+77/
2zI9ZQ//aZD/8IZRZQwVZx4ErvDziyZzmHF4eJM8c01AZ34ZUOeZ1h1q9LQM4ODX
wshGlHjBpUVjA3bMEzG5CsMcQHtd4GCF6rb7Bp4UByBaFiD1vfIKXAE4wPJKH2Qy
slUAolUHy/3vNnNUx7rlqAU08kupjbNzPJUnsSAFZPQbRCf7TbpOhArwaMKsFyuA
nShBFansvzlTKjLbKDJreFmxb+YbS9GJ8G+Y/3xvnWpa1FLqrJttUCUeyKZNSPVF
UQtLiz1ZUSv6iR9uQukLww73LTNZzxoIFx/g3JK8BcBLU2/5e8KswHV53/s+B6ma
PUCwqPZeRBXPGeVeioIfdD6sqJnL3c/7/AJvAFRLTTbi34mqCCAkNP1LpElcpvz1
Qznar7xfpehoAc4bjypyTp9c+AIv0NaEmULdYZD0U4yudRaQnVpAEj2kn9uNGGMc
7OMEX9DF4k0oYd+gqwt2rdCGIOPZ8vnN/diVWAnhnGS02w2+L0xS/XltjZK1Mg2L
hPZkNKAnPjTqP9fxopRPKBZ1/Je7rv9eXJxSYpBuEA+3rn0LczIDRWjggU9ZNovV
14msknDoaVuJAmzm/JKpG2kISwcYz3xcKu9QrSf39JvtIsmxTWDfDi2ArqjefD24
zfBvFVvdgZdN6f2LDIAToLb9lq4JJP5V9NmyJ4cfhRrh5g0qKQs=
=rXnZ
-----END PGP SIGNATURE-----

--d7gmpzoi42dktue3--

