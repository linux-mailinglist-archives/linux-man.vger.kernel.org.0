Return-Path: <linux-man+bounces-1729-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B2328965218
	for <lists+linux-man@lfdr.de>; Thu, 29 Aug 2024 23:35:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 667A61F21BD6
	for <lists+linux-man@lfdr.de>; Thu, 29 Aug 2024 21:35:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9445C1B3B1D;
	Thu, 29 Aug 2024 21:35:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OnaCbVsH"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54EF618C91F
	for <linux-man@vger.kernel.org>; Thu, 29 Aug 2024 21:35:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724967347; cv=none; b=VepP4ckmsRqmUQL/Q+k34wpbyYXESytcxU5bhAhatLuxyGHglHpIf6hKovEFd9nx1xRBrt4HBfHtJ4cCCAWuF4vsNjwdIEACZxw8PUnPcEbTicr4s3dbQ67C6Oeh4mYm2A9MnQh/kSzkqgNR7r3SHDF6QOOk6wwA31uy9v3r1TE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724967347; c=relaxed/simple;
	bh=zWJfi8X2IN/Z6nsLlSulaF7cMKcXPkPEXxBhBIe87JY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MzzdUqsBjEDPrEq/pexj0tiqVh90POR5enU+7rQTWYgGB3MRcwR24H+ktQ0jTJa4PbmkZVkhKS30fMmzm9iWd6MuMjZ1jLeqDGg9yTLKFP0aDX1xjUt391YJ21utHRLa8l9yw2yz7Rj9TczfOjlz55vc2dwlOT/edk2TXl1mOro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OnaCbVsH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F05ABC4CEC1;
	Thu, 29 Aug 2024 21:35:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724967345;
	bh=zWJfi8X2IN/Z6nsLlSulaF7cMKcXPkPEXxBhBIe87JY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OnaCbVsHQzyz+wnJh4JtullLwhIdMV5zykz8quxa46sgJBPYM4G5hb5nUrO+Ln1uG
	 5jKZKGk6E/iWUCOa5qc/BZvHtS2ty0L0eg7rtR6ZzgNzCigAGZKyuD/TT77XpLlcGp
	 bWuD6wjCJ3bmLyVzeVPuQsKiRp89d8RJcsrRlbOcSHZxLz8JlBEgGyd5I3BrNbyBMB
	 haAmHgcLwJnstcyRmwIMKRTbHYS5FsnSoKbPvkyS9Vpf/48r8s5kT5hUTeGd2swJZ6
	 9Xk4fVc0pE8nfP12CYVq0Pm1Ct/p8JwyTXZ3/PiA9zITLkaKPDJesaK1z5Q2W9DDcr
	 W4eyrGXK20q/g==
Date: Thu, 29 Aug 2024 23:35:42 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Kienan Stewart <kstewart@efficios.com>
Cc: alex_y_xu@yahoo.ca, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/1] pipe.7: Note change to default pipe size when
 soft limit is exceeded
Message-ID: <hedl7jfdxoc4kbu4b3za2ynmme5ro64uidindugxizuh75vppx@ub2qtswjmpx3>
References: <20240829204448.2027276-2-kstewart@efficios.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="d67zszyeulx6ahvm"
Content-Disposition: inline
In-Reply-To: <20240829204448.2027276-2-kstewart@efficios.com>


--d67zszyeulx6ahvm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Kienan Stewart <kstewart@efficios.com>
Cc: alex_y_xu@yahoo.ca, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/1] pipe.7: Note change to default pipe size when
 soft limit is exceeded
References: <20240829204448.2027276-2-kstewart@efficios.com>
MIME-Version: 1.0
In-Reply-To: <20240829204448.2027276-2-kstewart@efficios.com>

Hi Kienan,

On Thu, Aug 29, 2024 at 04:44:49PM GMT, Kienan Stewart wrote:
> See upstream commit:
>=20
>     commit 46c4c9d1beb7f5b4cec4dd90e7728720583ee348
>     Author: Alex Xu (Hello71) <alex_y_xu@yahoo.ca>
>     Date:   Thu Aug 5 10:40:47 2021 -0400
>=20
>         pipe: increase minimum default pipe size to 2 pages
>=20
> Signed-off-by: Kienan Stewart <kstewart@efficios.com>
> ---
>=20
> Hi Alex,
>=20
> I appreciate your feedback! I've made the changes requested.
>=20
> Here is a range-diff against v1 and the new v2 patch.

Thanks!  I've applied the patch.

>=20
> thanks,
> kienan
>=20
> Range-diff against v1:
> 1:  7957cb086 < -:  --------- pipe.7: Note change to default pipe size wh=
en soft limit is exceeded
> 2:  b0aa965eb ! 1:  4074d2770 pipe.7: Note change to default pipe size wh=
en soft limit is exceeded
>     @@ man/man7/pipe.7: nor the
>       for this user is at this limit,
>      -individual pipes created by a user will be limited to one page,
>      -and attempts to increase a pipe's capacity will be denied.
>     --As of Linux 5.14 the default capacity of individual pipes created
>     --by a user is two pages instead. Users may reduce the pipe capacity
>     --below this default value.
>      +individual pipes created by a user will be limited to two pages
>      +(one page before Linux 5.14), and attempts to increase a pipe's
>      +capacity will be denied.

This range-diff seems a bit weird.  :)

>=20
>  man/man7/pipe.7 | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>=20
> diff --git a/man/man7/pipe.7 b/man/man7/pipe.7
> index d1fad9974..ba5b77df3 100644
> --- a/man/man7/pipe.7
> +++ b/man/man7/pipe.7
> @@ -221,8 +221,9 @@ nor the
>  capability).
>  So long as the total number of pages allocated to pipe buffers
>  for this user is at this limit,
> -individual pipes created by a user will be limited to one page,
> -and attempts to increase a pipe's capacity will be denied.
> +individual pipes created by a user will be limited to two pages
> +(one page before Linux 5.14), and attempts to increase a pipe's
> +capacity will be denied.

LGTM.  Although, it should be using semantic newlines.  See
man-pages(7):

$ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
   Use semantic newlines
     In the source of a manual page, new sentences should be started on
     new lines, long sentences should be split  into  lines  at  clause
     breaks  (commas,  semicolons, colons, and so on), and long clauses
     should be split at phrase boundaries.  This convention,  sometimes
     known as "semantic newlines", makes it easier to see the effect of
     patches, which often operate at the level of individual sentences,
     clauses, or phrases.

I've amended that myself into the patch, plus some small changes to the
commit message.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D7543e84442d70a85afc076a1a22fbceef8c283c9>

Have a lovely night!
Alex

>  .IP
>  When the value of this limit is zero, no soft limit is applied.
>  The default value for this file is 16384,
> --=20
> 2.45.2
>=20

--=20
<https://www.alejandro-colomar.es/>

--d67zszyeulx6ahvm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbQ6a4ACgkQnowa+77/
2zLxHQ/+Nr66FWiK8ffcsg1CUPNkJS9VB3W3S2CYaOEetp6S79gKlC5SI7udDOzL
9zGiSOQIAz17xJjoZn2Er88H2A99Wnvoz+vMdP+HaPFb9GH+tXtDZf1XkzA6ErL3
piQSgCSMESAG8AfbE3pORfgxN9P1pKxv4YqKKkLCthilkN5q4nKnLO0g4bkncXbB
rvKFOlThSHD+BDyZvDbmtdQTzoD/nhr2D5LyXmivwGp7GJWObvYfJe82RXvgm7yN
ahUNssFad4Z7VOYXAV7nZDZ3jsTIFwiqfu3OOpnEtZQCeaQwsBHGtsSRDC7Y83z5
7rphXcR94Pfiye7O56tOMKzgEWF/MSxdHfZ6eFRHQ/Zs9pClX1ZlFAP9KW0yYN7t
ZNiBqKsWldhF6yeIEGyMO68owvdZVxdmmz7WhHWIsNJOzlxiec8wDczXAJgt0D3m
tGX3jMKqhhDVnTwP999Lk05QI1pfX+LrUtJ5kor/skhqeODLoA5e7S6xiR/hX4nd
e0PWposyUfd5k3ak24brcbfJYhZGvwZGxjuOQA/qoRiZKjb4WS+NgFWiPz1zjJR8
6+HWU5LF+Cri4RmiIYOaCv/oFoVX3iSEmHrj7ElYM/POPWJpimRVbMzxK04ZRp95
bgUzBgB4oyzjtPN7oSPFP47/GjvJiOgvbKebkCfqTGQhs6aaM0I=
=o95X
-----END PGP SIGNATURE-----

--d67zszyeulx6ahvm--

