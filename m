Return-Path: <linux-man+bounces-1395-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC1D92BA67
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 15:03:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 874251F224C3
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 13:03:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DB391581E5;
	Tue,  9 Jul 2024 13:02:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ztv9xYwR"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3AC4156C73
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 13:02:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720530147; cv=none; b=keBXnssXb/n+TNMGSRWMPfljtg0dXMzyMRMCNXpoNAMJ3oo3/KRAW0p+xyfCK7MuBwkTRvk5FFBgKA+3jrH1/wV91MnfK/9sUKlQlSvOcQK1Hc8watDlfzFzSzaiPEAhlwALVWopyCvAxh0NQlVGwtGKogBdAYhPlSqp7Tu3sok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720530147; c=relaxed/simple;
	bh=zrJHvuyEZ+p242mLBdxW8NY4lU1hyxKCjixBaSBRFk0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qYobe94e3196hYx5Hu3t6d/iVctuuoknREfjXBJF6xWy9upRLIcEleb5rn0J/oXlYqy9h1FKvu/4QSi+Lfky5nVr+kzi/NqjiIL9wrUmSwWPALO3csFF+jSub9hD+8H9zNtnCWSBEz9YsJJ4FSHLroi2Cl5myXXd/VM70+51idE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ztv9xYwR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA6D0C3277B;
	Tue,  9 Jul 2024 13:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720530147;
	bh=zrJHvuyEZ+p242mLBdxW8NY4lU1hyxKCjixBaSBRFk0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ztv9xYwRJtELu7IinLedYkODs0PozZaWAlptDIfCPm6AODw1u7qS3NgSmbCmGJM9c
	 kc+mGeWxtcq3EPmrPsCiQ+A565pdv4rJL+nLjAaieE3NtUuPsPnRcBFvB/oG6cIeIv
	 /zdq37omxuW1Ode1n67fD3S7OL2DV/9Ttd48SYoHEptItKVvcIuC2Q2wZHA3kJi7yE
	 jIGuxER4wyEPnXPGMsubZs7+MiKXJLq7uCHwyxhxfoE5BbB0r1wmxu1pL19KDtXA9d
	 R/L6k6pRmlWCo3Iu05meH2YhAykNuwk8gmeypfM0+QqyvxEna3vW0E+IxNOhv6Gl95
	 oGTGF0Sfol+/w==
Date: Tue, 9 Jul 2024 15:02:24 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] FIONRAD.2const: tfix
Message-ID: <jbu7myrzgscvckuhjzz4itef65xo2hi7z46aqju5vact3stop3@44i75vavkkm5>
References: <20240705142844.1142998-1-gnoack@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6gp22l2lyk474cjs"
Content-Disposition: inline
In-Reply-To: <20240705142844.1142998-1-gnoack@google.com>


--6gp22l2lyk474cjs
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] FIONRAD.2const: tfix
References: <20240705142844.1142998-1-gnoack@google.com>
MIME-Version: 1.0
In-Reply-To: <20240705142844.1142998-1-gnoack@google.com>

Hi G=C3=BCnther,

> Subject: Re: [PATCH] FIONRAD.2const: tfix

s/FIONRAD/FIONREAD/  :)

On Fri, Jul 05, 2024 at 02:28:43PM GMT, G=C3=BCnther Noack wrote:
> Fix a copy-paste error in SYNOPSIS:
> FIONREAD was mentioned twice,
> but another IOCTL was missing.
>=20
> Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
> ---

Patch applied.  Thanks!
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib>

Have a lovely day!
Alex

>  man/man2const/FIONREAD.2const | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man2const/FIONREAD.2const b/man/man2const/FIONREAD.2const
> index 5806d280e..d7a44176e 100644
> --- a/man/man2const/FIONREAD.2const
> +++ b/man/man2const/FIONREAD.2const
> @@ -25,7 +25,7 @@ Standard C library
>  .BI "int ioctl(int " fd ", TIOCINQ, int *" argp );
>  .BI "int ioctl(int " fd ", TIOCOUTQ, int *" argp );
>  .BI "int ioctl(int " fd ", TCFLSH, int " arg );
> -.BI "int ioctl(int " fd ", FIONREAD, int *" argp );
> +.BI "int ioctl(int " fd ", TIOCSERGETLSR, int *" argp );
>  .fi
>  .SH DESCRIPTION
>  .TP
> --=20
> 2.45.2.803.g4e1b14247a-goog
>=20

--=20
<https://www.alejandro-colomar.es/>

--6gp22l2lyk474cjs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaNNOAACgkQnowa+77/
2zLPmhAAjHq05pUkILiR1d2ddrZfnRCypbmhspAoDV04y9UASaZ96mvsj79A50HK
E65+JqQH4EiuC6g3FAese/dLFQVcVo27Cr5usLnEpqRFHUiqPpPwGNNSWePTrMDv
NRfno7T/twMg0KjyHeX8sdbYUNdnbQwF0ZyDyGUS0YY92I5NXMDpD+itVyrUGxyo
67iaegT2mKGZGsi6BpS+Jgg+aLP9w20fpAqz+EXoRr9Blhk6NczzoMN6ET4mEr8H
wooBLA2g3rvEd8vhjZSfbjSFUeFyqDXn6MydzpHvQZdw5D4+13Sqt65dq17ggPDw
Paq+lJBcr4RmH9hsPt7fvwLn/eBdT42m8Gpr2O7zUuL0kXPKWgwfaBQ+wVgVcZEL
UFoMPC0BN3IrgD0LNbwtcv1NT/RJ6335ObsqHSIeE1/lCOtbAvut+QNoPaoUqTvN
f2YsLxCNolvOAb2/X14Fo3i47YOp5n9QScEntQgj4egQwMe2DNK3JImMNIiVlKeA
hQfGyrTFnstQGOVGifIHCGDrZgDkrD0WMgaFs0YD2kvcNoYku0Scj8Rfyee5VD2X
BCAqMI9p1w0IDO315cvDx6bK3jcvIlaCjzhZKcEj4vsBHHn4jlVCZNxbyiZrsBA0
jrF4gGHpBoT3FYSeVAPNEmm+sQ8+QzHUQpkF2ABwH1mc+VXP1XQ=
=IA/v
-----END PGP SIGNATURE-----

--6gp22l2lyk474cjs--

