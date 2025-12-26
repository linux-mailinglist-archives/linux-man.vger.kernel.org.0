Return-Path: <linux-man+bounces-4575-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F4FCDE997
	for <lists+linux-man@lfdr.de>; Fri, 26 Dec 2025 11:46:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 542BB3007FD9
	for <lists+linux-man@lfdr.de>; Fri, 26 Dec 2025 10:46:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 861FD1624C6;
	Fri, 26 Dec 2025 10:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dOR8xRfC"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C87D3A1E60
	for <linux-man@vger.kernel.org>; Fri, 26 Dec 2025 10:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766745994; cv=none; b=jDNR1PWV3YW62gchQc5YAm8tCLX5sY+L+VDrS3OErPzyGf+5m+/eDzsLOmVz72x3VLdCRELxbNWTWkNziz1gq7Nk6+0RXJoiJHME6vTBssH//jE7XylsyRBIB5bAGIJLtYduRhaxyO4OHwqsGsf5QgtWKER21xBTPq+kP2fNWRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766745994; c=relaxed/simple;
	bh=unMi0QvMeq8y/B9CuMEP9CrX6kyA27raAerwLI4Q8Rg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GIlEbQvZRrXae5i9dtO9Ppuh0Hh/JtAfZjEZHbpTK9WmnUrfJvlFmkwz+VWNglCNETKL9w/AzFdRtmVhoFzp/tuXYqW82ee9VXcexN44/Q8TSKLnZs6J002zqYyk2comID1KKFqS2p+8Hlqnm314mqlkr4fC3p9e0P6mtOxQHuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dOR8xRfC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0359C4CEF7;
	Fri, 26 Dec 2025 10:46:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766745993;
	bh=unMi0QvMeq8y/B9CuMEP9CrX6kyA27raAerwLI4Q8Rg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dOR8xRfCEeUGcbxCBYYMaJsJWhO6jEl42/KaVVOf2Lz+aMWPe2bfiT/ftIqdxWTaK
	 dSwlSLiCWv32iHPLo9iNxs+WwNhpU7Jk4Wkge6iK0mdVOXx0bCl4qDDyF4/djHeGbq
	 naKZQOukSsHk0XWEvujih3mGd7J3X5lQVwbwbkBhyyGyfHHDJY8ohGYusLwum+oIc0
	 znR3IKQEgj9IYTcXJVdTH0E9gLcxS/frPTnNyRGvDpZCNj3g5lNL30Vn9tNMfX3Rhm
	 il75ChK/Pz1hocmmFDUKUFDKjkjOf0kl79xqNDqfWhC3tx+U5FZNrvz3GKgSRLfEDX
	 YL56scnw2NCtQ==
Date: Fri, 26 Dec 2025 11:46:30 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  __riscv_flush_icache.3
Message-ID: <aU5m0sSpRclqY4Pi@devuan>
References: <aUv64AqCY2_fdHAj@meinfjell.helgefjelltest.de>
 <aU09SWMTQHSh25gP@devuan>
 <aU4VGitTZacSjEht@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="crbcr3psuxaza6vx"
Content-Disposition: inline
In-Reply-To: <aU4VGitTZacSjEht@meinfjell.helgefjelltest.de>


--crbcr3psuxaza6vx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  __riscv_flush_icache.3
Message-ID: <aU5m0sSpRclqY4Pi@devuan>
References: <aUv64AqCY2_fdHAj@meinfjell.helgefjelltest.de>
 <aU09SWMTQHSh25gP@devuan>
 <aU4VGitTZacSjEht@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aU4VGitTZacSjEht@meinfjell.helgefjelltest.de>

Hi Helge,

On Fri, Dec 26, 2025 at 04:54:50AM +0000, Helge Kreutzmann wrote:
> Hello Alex,
> Am Thu, Dec 25, 2025 at 02:34:48PM +0100 schrieb Alejandro Colomar:
> > On Wed, Dec 24, 2025 at 02:38:24PM +0000, Helge Kreutzmann wrote:
> > > Without further ado, the following was found:
> > >=20
> > > Issue:     flag bits =E2=86=92 I<flag> bits
> >=20
> > The parameter is 'flags', not 'flag'.  Thus, 'flag' can only be the
> > English word, and thus not be in italics.  The text is correct.
>=20
>=20
> > > "The I<flags> argument controls the extent of this ordering, with the=
 default "
> > > "behavior (a I<flags> value of 0)  being to enforce the fence on all =
threads "
> > > "in the current process.  Setting the B<SYS_RISCV_FLUSH_ICACHE_LOCAL>=
 bit "
> > > "allows users to indicate that enforcing ordering on only the current=
 thread "
> > > "is necessary.  All other flag bits are reserved."
>=20
> So this is not referring to the variable <flags>?
>=20
> (Yes, I forgot to add the "s" myself).
>=20
> If it does refer to this variable you might resolve this by rewording:
>=20
> All other bits stored in the argument I<flags> are reserved.

Yes, that would be appropriate, and would help the reader.  I'll change
it.  Thanks for the suggestion!

> Btw. in the German translations team there used to be some discussions
> if you could switch (add/remove) a genetiv or plural "s" to suite the
> the grammar.

I would never change the spelling of an identifier used in code.  I'd
certainly never remove it.  If you add it, at least the plural should
not be in italics, so that the identifier can still be identified.


Have a lovely day!
Alex

> Greetings
>=20
>           Helge
>=20
> --=20
>       Dr. Helge Kreutzmann                     debian@helgefjell.de
>            Dipl.-Phys.                   http://www.helgefjell.de/debian.=
php
>         64bit GNU powered                     gpg signed mail preferred
>            Help keep free software "libre": http://www.ffii.de/



--=20
<https://www.alejandro-colomar.es>

--crbcr3psuxaza6vx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlOZ4UACgkQ64mZXMKQ
wqkZjRAAqAx6WBvkYJ9pWQGSfwsFHYr12g9JOTNSYzsAEAWXocyvk+h/q9zYZ7Gy
TD78TErHTQwafCiuOROv52DgOMjpCRnZTk7dIwCGMzACnDY1ilasH94cFWqgRG2N
VgXAzcdmayo3ma6ajl9lLlUytTgKjihPEXIn1lCCMHcbSaGxvjgK4y5h+uLtqH0a
UDLPF1y6QlvmFGwBuEsqUsAFHDnVdVspLvjDie2SV34HZO5GVeLjwYD7Or5yaTnM
xItEnT+oGpVY1aZNRwXWqECL/x5ppLS7JWGIdmJw9EPrmWI5bIBuu8p4mkuQdOPQ
jIMbwhCOt9JhHEZV3cVAih9YuGQxTH4SfBTFg2lE58e0sPxYtKPx7mMMxMMGixE0
wKp7ixYDuFk8ZZaXpPxD0lTw8N7kGV9IYk+fVhkS4Oj1k2ntwRfi9heyvS0iZkG2
NuBFNHnEgqBmApQovkhZAmRU5uLqKyGKV/nx74rQ/sUf5Y/XX7isq6Qf/Hx0/KZa
qDgTUw+/CpoTYFr5zYFv64BdkMspryv37JAL9di9W7dHBPKxnFptfJOfg4QMDWjo
H5Bwx+4NRjYbiyb6MomE/CiqCDD0/F0ehcoER/Su3oKxkiwn8b2ZAxrixLyzm/0V
Id9H0iBGw3PRA2Eg75YY3mss283lWoK9E8gDiVsLRPylSTqUNXk=
=BbAL
-----END PGP SIGNATURE-----

--crbcr3psuxaza6vx--

