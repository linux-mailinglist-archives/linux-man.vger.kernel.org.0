Return-Path: <linux-man+bounces-704-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CA85B88FACF
	for <lists+linux-man@lfdr.de>; Thu, 28 Mar 2024 10:11:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7C91D1F24572
	for <lists+linux-man@lfdr.de>; Thu, 28 Mar 2024 09:11:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A19443EA7B;
	Thu, 28 Mar 2024 09:11:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xzh9rImr"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 634953C0B
	for <linux-man@vger.kernel.org>; Thu, 28 Mar 2024 09:11:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711617088; cv=none; b=eOgA+5pVUeST/m0737bmoZ9U1ByFTYeJ1/tlmyYKv7BaHhK/vulUF+9SjkSRjdeUg4cdY2qr6uEkr+rGcxkjN829gz7ncQJzB7g3sLtMyvllYhfUzPlG4Yj2vlrxAAt+mXrp4GFAUjAa2koVfdcZxKE+NSUfbKF8NQW34QGVsao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711617088; c=relaxed/simple;
	bh=0iHbwuqru7LE18SiVnT3pEG8XuIraUZgXZz8VlDFbgg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=m9nJbEX2ekCOouhAElstjxKmtXy+pOcQAxJU5dDoFSq0dwV6GIQufjRn1SbSo5zP9pDUTJLUqyBOUW8ktc93z4y4adyqAdNniLK7/62qWjlouL+u5ej0LUPjsMnEMEcJkkuQx0iLXb8kDqsWPKDcUVlTFJZKX8+TuaiSZ7ohfW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xzh9rImr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 11CB6C433F1;
	Thu, 28 Mar 2024 09:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711617087;
	bh=0iHbwuqru7LE18SiVnT3pEG8XuIraUZgXZz8VlDFbgg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Xzh9rImrTUgj2mCGRlYrpzUoyT/DX/BImQvMKTO16hn/Lf9mZ9mpIDsPgbcZUnOXk
	 8Br26H6ttFdH4euZOV91QCIV1fsLggwNf0kdGecBeerau5+QQcFxXlAvVCjj1ZYLBK
	 Fje6BCVe6O0Zb5zhH2awX1BGMaaO4BN+1mybbIGjWVVmiwP5kgQx/A4cnFQz8DCQfk
	 Ue+CWaTKM9oBawrEr+AScTu4eDq6AZGmTRaRc24iq02LX9gAoSlzFk71L6Ha3TojQ2
	 rbSZtmXEMLkat2EiQeW2qPaR6TG//9LRtbdZt97IrOrU1H3IEESbVxLUvznYPXALr4
	 /dCNzq0D+/h/g==
Date: Thu, 28 Mar 2024 10:11:24 +0100
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>,
	"Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: Re: getpagesize.2
Message-ID: <ZgU0PKbECOOBaSZ7@debian>
References: <CAJgzZooCY7EV5LZSom08k0wVB2SW3KAk-HL9VMsioxivQB=MeQ@mail.gmail.com>
 <ZgNYTXW4qHm7fBxi@debian>
 <CAJgzZoqO_pdy_=+D0AHYhikXMDbTKKn94EttuUeE5EHjxct5vQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PygeOIUTE/wtF0bS"
Content-Disposition: inline
In-Reply-To: <CAJgzZoqO_pdy_=+D0AHYhikXMDbTKKn94EttuUeE5EHjxct5vQ@mail.gmail.com>


--PygeOIUTE/wtF0bS
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 28 Mar 2024 10:11:24 +0100
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>,
	"Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: Re: getpagesize.2

Hi Elliott,

On Wed, Mar 27, 2024 at 05:20:18PM -0700, enh wrote:
> > Do you intend to send patches?  Otherwise, let me know, and I'll prepare
> > something.
>=20
> i can do, but it also sounds like enough of a bikeshed that i imagine
> you'd only want to rewrite it again anyway :-)

Actually, I tried to write something, and felt like you'll definitely do
better; I didn't like my text.  Please send a patch.  (I can do the
bikeshed when applying it, if you don't feel like entertaining it.)  :-}

> (i was actually surprised how many references to glibc 2.0 there are
> in various man pages, and even more amused by references to "ancient
> versions of glibc" being defined as "before glibc 2.0", as  if 1997
> isn't ancient :-) )

You can move anything like that to HISTORY sections in any page you see
it.  In some cases, it might make sense to remove it, but only if it was
a small bug.

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--PygeOIUTE/wtF0bS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYFNDwACgkQnowa+77/
2zIMqxAAjguIEJHJKRYzY9NTKkDM3pDNlLQ7ZfISgfWdR6mp9tEA3xVMhax7g+DU
Z+u5RgSL3lprmjMZSVMdlgCST0oX3eQDwbx6AETgwr5hi8m8LLa/zi8Y+sLl8WGO
bx54/xusdoU8mMcstLWdJrBfaW8RrL6PUDf5iWwzA91AGTidEq4LRV4hBB1vkoeR
UlNyxJimtGZBLfyI/2kx1IQgUB1iwvnpe64dqIn3rPsdXS5UR9Giv7ASrqknghgg
xUdO2WNPUCIrm4A3t7H8fHosnWvY76P5FpqIOkb2LvToPy85gSQIJ2qjpcehc6NW
xIAvzZwTs9jO+YwbTQvQzDI44kWGWGwgKbsWaDbB/7qjJkouNAgNIysPB3x9S/bJ
nTpCTtNTlqAHXrT92dnI+OkeKUxklEN5oXF45mSBBlPsjgHrZX8bX57wTRpuEYLD
VqYKPGydNSCX3EeIgFOmDWE0JFiR2CoDc++w3qvZBqTn/oOV1HunELoD2MvPjW3D
861YGXHpqAUopcB1Ulf135B4UZe19/bYjmA/uYF0FQoqoj9Nk6KkrH/1VbslDZAQ
wgFhFZfQpwoMU0pB5qQ8O4qO3SCBukrEfLkp9Kb2kFRIH0tbSWUszQPiNY86F887
LZk/1Ws9WNz0P+ix+ApJNpsnh0ika594FUACrUQ7CbPzqcQk7QQ=
=pek1
-----END PGP SIGNATURE-----

--PygeOIUTE/wtF0bS--

