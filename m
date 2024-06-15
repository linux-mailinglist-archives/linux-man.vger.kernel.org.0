Return-Path: <linux-man+bounces-1188-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B59AF90990E
	for <lists+linux-man@lfdr.de>; Sat, 15 Jun 2024 18:40:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 31EC0B217F4
	for <lists+linux-man@lfdr.de>; Sat, 15 Jun 2024 16:40:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF0662E62C;
	Sat, 15 Jun 2024 16:40:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vI7UUk45"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E5981DFC7
	for <linux-man@vger.kernel.org>; Sat, 15 Jun 2024 16:40:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718469625; cv=none; b=O7DvhtlpPMGu7HLUhjTyN7Em3ehvfDPWoNRgN2JKngB3zwxWKCMRfMuBOXZdt/jRNmxcelE1oIh6ZWc3BKV4+N7iIfbBG/77g7RBwvfVBaLTpht9UPqIu7pV6sEmZSA1GviLdL2UQtWlykQ0xa09maMbOpjT8wTffvQl5rdbfyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718469625; c=relaxed/simple;
	bh=HBzMXow3f+O6sLDN1781K78cbnTlrCBfolyiE57Vbhw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iiok/bZwHC+IDGa1r5FjO7pik5zAMrlUbIYgkZbCUWcuspAiCOSZOs+vCny/tuZKSNJQAwFNdb3kAa8D9aibZqgR41odgSDbOzWcQonlWSdpuLw3LaFnL/j78Id7sOi5XVi7M1Uysl8v4cVmi2lfsgQQbLZoSj8lGLCNrdDL0jI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vI7UUk45; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A5E1C116B1;
	Sat, 15 Jun 2024 16:40:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718469625;
	bh=HBzMXow3f+O6sLDN1781K78cbnTlrCBfolyiE57Vbhw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vI7UUk45wFYL2UqugeuAW2nJ8E4xIOp/rbISEn4qdV+T15Gnu5Kh9FUvUHt8GeBBZ
	 B+A9/9uGMUZm+8W9c2fFd+u1J5D1L2q5tNATFSymQ1hT1nRRjO4sIEt0ZrpiAElNtZ
	 nFpDw2jlXSLPp9dQYkcNMHnlJ2+BbvOxr8ZBBtC2WWtKq6BpgmjNe15k9hm/g42i8K
	 nIWA4LukpPEBT+MdpxiAU/y/C4Z/sM20jnjlnTjoNA57pc4urw30ZC2leLBkmaSN8B
	 NJMhCXcPAmzQoeHPg0FFaukEoteQRJfcnVV5cv6TcUhiiyFP9UBbxT+qr1de16YQXY
	 x/Df00E0Nm1vg==
Date: Sat, 15 Jun 2024 18:40:22 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Adam Sampson <ats@offog.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [patch] FICLONERANGE.2const: Update .so for renamed file
Message-ID: <xbq66fr5u7wxdqypwvyrluzgastjtw77ufscper4hadhmhfg6g@i3pccokzerdl>
References: <20240615132948.20625-1-ats@offog.org>
 <nqfbzdefykakyj3bknr43rlkrx5axtbeqw36mcq2n3mm77k3dn@bhrujbqzhq2o>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fyojox7msfhzkqw7"
Content-Disposition: inline
In-Reply-To: <nqfbzdefykakyj3bknr43rlkrx5axtbeqw36mcq2n3mm77k3dn@bhrujbqzhq2o>


--fyojox7msfhzkqw7
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Adam Sampson <ats@offog.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [patch] FICLONERANGE.2const: Update .so for renamed file
References: <20240615132948.20625-1-ats@offog.org>
 <nqfbzdefykakyj3bknr43rlkrx5axtbeqw36mcq2n3mm77k3dn@bhrujbqzhq2o>
MIME-Version: 1.0
In-Reply-To: <nqfbzdefykakyj3bknr43rlkrx5axtbeqw36mcq2n3mm77k3dn@bhrujbqzhq2o>

On Sat, Jun 15, 2024 at 04:37:25PM GMT, Alejandro Colomar wrote:
> Hi Adam,

Hi Adam,

> On Sat, Jun 15, 2024 at 02:29:27PM GMT, Adam Sampson wrote:
> > Fixes: 733e3228017b ("ioctl.2, ioctl_ficlone*.2, FICLONE{,RANGE}.2const=
: Move page to FICLONE.2const")
> > Signed-off-by: Adam Sampson <ats@offog.org>
>=20
> Whooops!  I gotta release 6.9.1.  I'll wait a few days in case some
> other bug is found.  Expect a new release on Monday the 17th.
>=20
> Thanks for the patch!  I've applied it and pushed it.

I've added some check to prevent this mistake from repeating:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=3D1=
6d3cd3a58ddd76c7c4e3170d06ea410cd2f463b>

Cheers,
Alex

>=20
> Have a lovely day!
> Alex
>=20
> > ---
> > Range-diff against v0:
> > -:  --------- > 1:  479ee7641 FICLONERANGE.2const: Update .so for renam=
ed file
> >=20
> >  man/man2const/FICLONERANGE.2const | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >=20
> > diff --git a/man/man2const/FICLONERANGE.2const b/man/man2const/FICLONER=
ANGE.2const
> > index 1e1cbb2b6..c52dce62f 100644
> > --- a/man/man2const/FICLONERANGE.2const
> > +++ b/man/man2const/FICLONERANGE.2const
> > @@ -1 +1 @@
> > -.so man2/ioctl_ficlone.2
> > +.so man2const/FICLONE.2const
> > --=20
> > 2.45.2
> >=20
> >=20
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--fyojox7msfhzkqw7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZtw/UACgkQnowa+77/
2zLh+BAAinZJOiZH4Yt3TWMr843RUbK+ZfpA/sYkgj6/DLVtBTpsdVCwcYyurOsM
S5xjvw8a4SYfsRGcYm5V7rAq3lJX3HmJtRHokJUZ0QSJkJ1E++jYoEWPC8xZ0qPG
dD7pzxtd3oMUr4rlvDhZHBzESsGhWAaUrpzYSSGzW2kQGWygeM1QtscAy5bwefPw
nP9QTkN6JXw/wzpMK6KXyaBD8qpbvf64csZBfqeNNzvQceEp/7vS/15A7NL8QJxO
58efpO1yxEesgrKV08R6KumZMu2+5xv2p/ITSQzzrj9TTAdPEbGV9n8KUoxXXmRC
i2hoz0OeCkBx+/h+K+uNU6MnMaAqZb0pBpCwkvn9FYZFwwffQN0JnqEtHsf+Gw8C
8vnxa4nXhMX+oi7SBBMLL57x78h9Yb3ZTZJfSf47XUwAv5GSi68sfZ2iHhsYcTLx
P8dhDAA5E2xMVdAaeoN1dBJAr84ykZ8OcJikI9WrPQE+/hEtFXpZeSVkhpfZHHul
bO9gA8NC+4zOCYixIIW6MWxLm1OnOifFeETCTPpYp+rRKQwy45KJMbvkgwDh9elk
/sgNyszTTBQTPy4xK9iJ0vGaA00R+2ydDcPKJgvzqgHsAyHCavmPPsCPs/YxdOk4
lwvFkOjGzyBwkQ96gxu6rKyTi8sTVeKjTqZFkv7p0ItYbr4h/H8=
=tfdV
-----END PGP SIGNATURE-----

--fyojox7msfhzkqw7--

