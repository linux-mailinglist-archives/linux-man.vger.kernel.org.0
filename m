Return-Path: <linux-man+bounces-3044-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B85AC70BA
	for <lists+linux-man@lfdr.de>; Wed, 28 May 2025 20:08:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 01E351BC6413
	for <lists+linux-man@lfdr.de>; Wed, 28 May 2025 18:08:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 991C628E56C;
	Wed, 28 May 2025 18:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qqMa9TUN"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A57828DF55
	for <linux-man@vger.kernel.org>; Wed, 28 May 2025 18:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748455702; cv=none; b=Rq8W+hcvHkAJzgFOKwOrECVfJ8AvdraruiiBwMIarKjR9uC3INHPVyWRhNTQ2iKsftD2lHNC2imX+QycZSQTl9SWf0ZiWCyfpv55ECz66VtgruYPxISGp8lye7Es8Bm17Tst+8gedXmOzoxTlEJwjCleevR7BSsrD6mJI1UC2aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748455702; c=relaxed/simple;
	bh=g8jQoSwJAhltXbbyxNbPKtcXcGckbpN0X8vXcpT5x+A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sTdKeaffn6Xc1odYEaF8EEruF9JHcKMu0Cd/JAM5wu1aJnrBvweziFuQRirclo2QkTbT7R9Q0Gc1kU75rmaFwva6BVi4zes3BOd+zQiJfoULMsBUYSXlkl3Q13sfkOAQPt/htP9CbqqzcweNS4F7k3Gz0klxyuvlJRC4BjAidoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qqMa9TUN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22A55C4CEE3;
	Wed, 28 May 2025 18:08:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748455701;
	bh=g8jQoSwJAhltXbbyxNbPKtcXcGckbpN0X8vXcpT5x+A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qqMa9TUNsBXvSg2b7jIkrXWQK4QiELPM5YZCU25EWc0saE/eat1mX4CpoiF6qa9xv
	 Z88UHK4WhsnGUK10wLNWI8dKPGjWRfekcFZumccjs0PS5K4EzYTL6F0BywI+L6XMct
	 XcE/EO0u2MgKWJd88MuKfQbQaEyU9HhiipMrcFmajUoui7rBewnF2fncCr9NRugNXi
	 1emvhgQ9MEL/R/TF21LyfTYkhBlmeWVF0PJHUdQuXekWXQfHIi19xblsX+JqlNjbsR
	 HcFYjHjxCUBUFiFg2xntKVCdvSeluavckt24cOqKItd+blzVY9x3QeU8wGNAHS1kVI
	 28FFZVcMxcL7g==
Date: Wed, 28 May 2025 20:08:18 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: Wrong hyperlink for protected_hardlinks in link(2)
Message-ID: <m4q5zio4f7bpgriicyttdkhtcjo53pnvxhct6fx2xorqsuwaaf@ycb4xyiqmfpr>
References: <20250528175534.f2wxywf3piia4rcf@pali>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tvfluun4vu5jdfrt"
Content-Disposition: inline
In-Reply-To: <20250528175534.f2wxywf3piia4rcf@pali>


--tvfluun4vu5jdfrt
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: Wrong hyperlink for protected_hardlinks in link(2)
References: <20250528175534.f2wxywf3piia4rcf@pali>
MIME-Version: 1.0
In-Reply-To: <20250528175534.f2wxywf3piia4rcf@pali>

On Wed, May 28, 2025 at 07:55:34PM +0200, Pali Roh=C3=A1r wrote:
> Hello Alex,

Hello Pali,

> In link(2) manpage is following sentence:
> https://www.man7.org/linux/man-pages/man2/link.2.html
> > (see the description of /proc/sys/fs/protected_hardlinks in proc(5)).
>=20
> But in the proc(5) manpage there is nothing about protected_hardlinks:
> https://www.man7.org/linux/man-pages/man5/proc.5.html
>=20
> Instead, it is documented in proc_sys_fs(5):
> https://www.man7.org/linux/man-pages/man5/proc_sys_fs.5.html
>=20
> Could you fix the hyperlink for protected_hardlinks in the link(2)?

Done.  Thanks!

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dfa894b642bfde5dad33aefee55066c3ef94ae8a7>

	commit fa894b642bfde5dad33aefee55066c3ef94ae8a7 (HEAD -> contrib, alx/cont=
rib)
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Wed May 28 20:06:53 2025 +0200

	    man/man2/link.2: Update manual page reference
	   =20
	    proc(5) was split into many small pages recently.
	   =20
	    Reported-by: Pali Roh=C3=A1r <pali@kernel.org>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man2/link.2 b/man/man2/link.2
	index a8fa82bc8..35f8d7e0a 100644
	--- a/man/man2/link.2
	+++ b/man/man2/link.2
	@@ -235,7 +235,7 @@ .SH ERRORS
	 (see the description of
	 .I /proc/sys/fs/protected_hardlinks
	 in
	-.BR proc (5)).
	+.BR proc_sys_fs (5)).
	 .TP
	 .B EPERM
	 .I oldpath


Have a lovely day!
Alex

>=20
> Pali
>=20

--=20
<https://www.alejandro-colomar.es/>

--tvfluun4vu5jdfrt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmg3URIACgkQ64mZXMKQ
wqlphw//eomK0ZLaygxZkehqsXBJ/L6uA2xwUmNl/ckzBwWRieg5Rj7exwIobcyO
8IAXz2jxYA4TiluQ3jS2u9aWO/dmJbdar1NJ4PDDHKNfSEDgSOCPQP41o+oUjkk4
RJJ1GDwaZgpduGpc67WsYoDj7CpuX/tM9tfO8suCsgHBetqdWEYUM8vyuB/PLfd8
K7wIPQAoT8my8vBy1zpjDCs9x657Uos33MuNflouUl87lFTm8MMxpXHi7jHnUN0I
0ZJDW+t78T1Tby7yFoFEGgJsBil2BiOkjwYGg9P90sVK98p+7hjGrf8I95r8PJM3
mNiLTxxK+nj9SXMsQUMjLE5HRHVq9UaCLPkSTvnVRsrQ3GS3d+MlX0zCOipiMvl/
ticNK5r0W6CXNOHgy6CyeF7Qd/y78KY389W4/kPglfHfnbbpnXAeLqaVuK313MEI
uCkXW3BSW3aMYu+MGtImiWZHtXWGwUruBFYAAWTztF59s8BqY16Jl/c3zYgFwjd4
l8oXN83z1OhYI36zQL/cU9980N34i6HlEu21eLPj03W3EpevtYRG4MYRvrvenlL+
hMzeRl9R7cl+uKzrNJa6EOwXq28EbYf2xptiKh9Wl3ugvENQjg8ni09afpyQiUwL
Cy01t3a0LUe0Gqdj+T3K6pC0AhCnR4d/IGTUJ/wdhRCNP8+ZOIc=
=Oax/
-----END PGP SIGNATURE-----

--tvfluun4vu5jdfrt--

