Return-Path: <linux-man+bounces-2376-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 41406A2E0DF
	for <lists+linux-man@lfdr.de>; Sun,  9 Feb 2025 22:26:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 22FAB3A35D2
	for <lists+linux-man@lfdr.de>; Sun,  9 Feb 2025 21:26:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AECC1E3790;
	Sun,  9 Feb 2025 21:26:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AnaLLm2K"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F641E3DD7
	for <linux-man@vger.kernel.org>; Sun,  9 Feb 2025 21:26:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739136401; cv=none; b=LySX6gkfF7FPX2IXk+tNJc7pxcg5U1H6CIUJesCHofAM47YJGwVX8SohXG01CbH8buASwpMkbjyyCF2PmhnzKOPL1gndKvxRbjAN/UvUQnKdbLqb5+5PbvDwLyd9ZgTTXb3kkGC+jqlPmTIlFV/D2er++JG0EhNFyoQh6n19+rI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739136401; c=relaxed/simple;
	bh=MYL47O79ozHsN3zQc7MmdfyuJ4uc4WfMnh+gMKd0ogM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rJ2SpeFwQXF3UpLQTi12XF0JKJyEAzDm7Ch1FeyvVi5NckaPnNsFrZz+L/TIXpmtvHHjAfR7JmCEEnWNQ4/p8RD+Ojo2V8wtJhIVDY0txqc8uSwygOQn1zQOM8PBtcPAwvUM+qytggZ0DvnEx7TYijcd8PzGVpJnEAxlGtPLkGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AnaLLm2K; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0F9EC4CEDD;
	Sun,  9 Feb 2025 21:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739136400;
	bh=MYL47O79ozHsN3zQc7MmdfyuJ4uc4WfMnh+gMKd0ogM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AnaLLm2K02+BqdcK/jnTN8cJvX+ll0XQeyroad92zFgUWEgz8oNnbQUekT17yuhWE
	 1tewz5X617/B26eWd0mVk4BqOQv+3MjCHO2arHapFRRqrIaZXcidw+gmW+o6BCGkFI
	 ESxMB3ISrmY8XcPvCCt7a8FwEaukyvrZdX/uRSdsXnt+VcWakWx5QnSk7tTxCmUzuy
	 z4s8+45ImgkJ6c5aMOOS5TjKv8zyBdMXU/LAKBPtBtkL0YSGFeLTU8eyGuYPt4oaFO
	 G4b51IHXsT9GgCLczIs9jYLkXhyXv2/MNe+V6Kd3hXHS7x9gJEELqik1Cz3jiq6nRp
	 /70xSVYfiBmAg==
Date: Sun, 9 Feb 2025 22:27:15 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Boris Pigin <boris.pigin@gmail.com>
Cc: linux-man@vger.kernel.org, sam@gentoo.org
Subject: Re: man-page-6.10 make share/mk/src/sh.mk:16: *** unterminated call
 to function 'shell': missing ')'
Message-ID: <5ajfvthbrexcmjd4trqvfaitnqrvfkyiabhvanm3gwga4y6g7l@qqrdmg6rd2qe>
References: <38f900b3-28f2-4854-bec3-5b79759eb5b6@gmail.com>
 <ytgxskuvjqldvv4amftqx27t4fh7lpw32nwyirjdxkeazduyxo@vfi5tfoa72h6>
 <26a527c3-f7dd-470d-8b19-c6ac45a33e7a@gmail.com>
 <eb65be1e-b885-442d-806e-ca209576ccbc@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rjr5raxrvxti2ygh"
Content-Disposition: inline
In-Reply-To: <eb65be1e-b885-442d-806e-ca209576ccbc@gmail.com>


--rjr5raxrvxti2ygh
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Boris Pigin <boris.pigin@gmail.com>
Cc: linux-man@vger.kernel.org, sam@gentoo.org
Subject: Re: man-page-6.10 make share/mk/src/sh.mk:16: *** unterminated call
 to function 'shell': missing ')'
References: <38f900b3-28f2-4854-bec3-5b79759eb5b6@gmail.com>
 <ytgxskuvjqldvv4amftqx27t4fh7lpw32nwyirjdxkeazduyxo@vfi5tfoa72h6>
 <26a527c3-f7dd-470d-8b19-c6ac45a33e7a@gmail.com>
 <eb65be1e-b885-442d-806e-ca209576ccbc@gmail.com>
MIME-Version: 1.0
In-Reply-To: <eb65be1e-b885-442d-806e-ca209576ccbc@gmail.com>

[CC +=3D linux-man@]

Hi Boris,

I realized the mailing list wasn't CCd.  I've added it to CC now.

On Sun, Feb 09, 2025 at 09:40:16PM +0100, Boris Pigin wrote:
> Bash and make

Hummm.  I don't see why it would fail on bash and (assuming GNU) make.
Especially if previous versions of man-pages releases worked well.

> On 2/9/25 21:38, Boris Pigin wrote:
> >=20
> > Hi Alex,
> >=20
> > I'm on Funtoo.

I've also added Sam James to CC, in case he knows anything.

> > On 2/9/25 18:43, Alejandro Colomar wrote:
> > > Hi Boris,
> > >=20
> > > On Sun, Feb 09, 2025 at 05:13:51PM +0100, Boris Pigin wrote:
> > > > Hello Alejandro,
> > > >=20
> > > > I see here a problem with the man-page-6.10. If I call make I get t=
he
> > > > following error
> > > > I downloaded the package from
> > > > https://www.kernel.org/pub/linux/docs/man-pages/man-pages-6.10.tar.=
xz
> > > > I don't see the problem with the earlier version e.g. 6.9, 6.9.1.
> > > >=20
> > > > '''
> > > >  =C2=A0=E2=95=B0 $ pwd
> > > > /home/user/src/man-pages-6.10
> > > >  =C2=A0=E2=95=B0 $ make
> > > > /home/user/src/man-pages-6.10/share/mk/src/sh.mk:16: *** unterminat=
ed call
> > > > to function 'shell': missing ')'.=C2=A0 Stop.
> > > > '''
> > > Hmmm, I can't reproduce the problem.  Could you please run the follow=
ing
> > > commands?  Also, could you detail what's your shell, and what's your
> > > make(1), and what's your OS?  Let's see if we can learn why that's
> > > happening.
> > >=20
> > > alx@devuan:~/tmp/foo$ wget https://kernel.org/pub/linux/docs/man-page=
s/man-pages-6.10.tar.gz >/dev/null 2>&1
> > > alx@devuan:~/tmp/foo$ ls
> > > man-pages-6.10.tar.gz
> > > alx@devuan:~/tmp/foo$ tar xf man-pages-6.10.tar.gz
> > > alx@devuan:~/tmp/foo$ rm man-pages-6.10.tar.gz
> > > alx@devuan:~/tmp/foo$ ls
> > > man-pages-6.10
> > > alx@devuan:~/tmp/foo$ cd man-pages-6.10/
> > > alx@devuan:~/tmp/foo/man-pages-6.10$ make | wc -l; echo $?
> > > 2965
> > > 0
> > > alx@devuan:~/tmp/foo/man-pages-6.10$ make
> > > alx@devuan:~/tmp/foo/man-pages-6.10$

Can you run exactly these commands?  I'm puzzled.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--rjr5raxrvxti2ygh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmepHbMACgkQnowa+77/
2zLz1g/9GvamH5TEPpfvkbqYuAaCWU0YqWCg5JwxlOnzPqhngkwQ2lfwg66urJsP
yIjDwNDsPRz+gkxYOizzVAkDvmIaJaJpU49eNNp7YbKzd/6xbRsA+FXzRmvq/H2r
NO1NGQotXFV7Zn5WtsS1ZWiLZWw19LZyC1Olm7G890DcUdCcdj4u9+FktCI5m3aH
E+0OTAQzy/xOTer9NkJHi2YNx+fYoYrkX2ptq/s9GiNFdNV7Q8eipBjkP6SN/8NU
iYyT6RA6GQ7Gm//z571x7nbTGCgmWGEw4amjvbrvFey94Pxs7aOh2GeqZaCRiTWg
FDhDOGpz0Ge1s/d+eZep7gdGwQv9H7TbeulzU99Hbv/cfvlD8dEsxGBiTHgBbegb
rH7RvYJ9Hawy0JTJQ6Vei2hHvq21LC7P9zDZcN+ESnbxAdNwPpst73yCIBpnRLvb
5NaGSBz4yWIZVFcI9CpzDY/KnJhlcjKwoblhBnzJ6qt9XMgN5gxKKzWtunnHT16Y
7cfzlb07/Lz21kbh0c5JnmZ1pLs2GilZ3xYbjTnHtKnjua9kXxVMCYjNTXDqfFn/
9vmGWv8eNpmH2ClfWgc/04yxQcrDI3KAzvfOZtpTbBGXrmrKHU2sqhv4RrCoXdnk
NFwFSUm2DEBABXPxusRD8F0xDLdPA/JgtdRdiQblevY06UDjc8Y=
=1JSf
-----END PGP SIGNATURE-----

--rjr5raxrvxti2ygh--

