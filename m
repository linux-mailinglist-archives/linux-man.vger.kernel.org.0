Return-Path: <linux-man+bounces-4595-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E478CEC07F
	for <lists+linux-man@lfdr.de>; Wed, 31 Dec 2025 14:45:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 08A8D3011F9F
	for <lists+linux-man@lfdr.de>; Wed, 31 Dec 2025 13:45:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61FA319CCF5;
	Wed, 31 Dec 2025 13:45:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MhB2ey4A"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218AD405F7
	for <linux-man@vger.kernel.org>; Wed, 31 Dec 2025 13:45:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767188724; cv=none; b=gBm2cgS2NsdiMZ/OzAxIkFPvf1M+B1yA6Gt/64OYG+V4UxHQ+v4t4Kv/td+OHqFUh/PDjsEX2L7bXqvpJZ0fpRk71KfAmuGLDSENKk1wIGjVV32MwYMUWb58gW9DzcBc6zkDPofZaQlxDrdMXwe17M4Llw2Xz2AsdFAl1CnFG4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767188724; c=relaxed/simple;
	bh=bk8Zn+RoPlKlDNGP8D4xWpLFeYiWCVT9ijyfA1fCWyA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=usuD574/3G4ysQvK/BFJjDUdWhtGcEhQC8CJTbSb33S/bRS1tlGE7HSSrMhvcL0jUMSiQ3jaRwDlZFlcNkz4LE37C4wXiXz6ilZyPu25yjRfpnsBKLQS3STW2R9Nz56hbHxNDYIMRiOJqnaoh19ekVHl/qREtTfV9fOlCQkaF1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MhB2ey4A; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19DCEC113D0;
	Wed, 31 Dec 2025 13:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767188723;
	bh=bk8Zn+RoPlKlDNGP8D4xWpLFeYiWCVT9ijyfA1fCWyA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MhB2ey4AKbsXLzSyZ7Ze0QFKtiboRjZ338D1EKdwz2tLnDBrj6lOZxG1G9sHUVK0r
	 zPSOZBFnOsD57e/taMSGCmygs4oKlXYUt45f8jMHvn13ZcEY3vMT6MIfs5LaaBxNmk
	 xxCetYsBG0xCKW3xTLAYE8lgeF8ZL+1p9zJihYE9PCwewR4CEZhv0TKpnuDhp3UcZK
	 nMYPNBIVMwZXzDI14ZeVZkDDihu89Kl+vSebh3hjckZDuQiaeLrMosLNHJ0RzYVYtb
	 /arjyZGEOrO414yGXjjNCorkI9TDiBLtnlZiNN9WY7h1uGbJPJi/KVh1bXNpL9XRlv
	 N4pHCpga3qcNQ==
Date: Wed, 31 Dec 2025 14:45:20 +0100
From: Alejandro Colomar <alx@kernel.org>
To: seth.i.mcdonald@gmail.com
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: Re: [PATCH v1 3/4] man/man2/utime.2: SYNOPSIS: ffix
Message-ID: <aVUods3LbVTwIhCa@devuan>
References: <cover.1767072049.git.sethmcmail@pm.me>
 <fad6d60041620c94de4aed504bfffdf28b22cf46.1767072049.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="upl3uufh5e66giqo"
Content-Disposition: inline
In-Reply-To: <fad6d60041620c94de4aed504bfffdf28b22cf46.1767072049.git.sethmcmail@pm.me>


--upl3uufh5e66giqo
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: seth.i.mcdonald@gmail.com
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: Re: [PATCH v1 3/4] man/man2/utime.2: SYNOPSIS: ffix
Message-ID: <aVUods3LbVTwIhCa@devuan>
References: <cover.1767072049.git.sethmcmail@pm.me>
 <fad6d60041620c94de4aed504bfffdf28b22cf46.1767072049.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <fad6d60041620c94de4aed504bfffdf28b22cf46.1767072049.git.sethmcmail@pm.me>

Hi Seth,

On Tue, Dec 30, 2025 at 04:42:02PM +1000, seth.i.mcdonald@gmail.com wrote:
> From: Seth McDonald <sethmcmail@pm.me>
>=20
> Increments the indentation of the times parameter in the utimes(2)
> prototype by one space.
>=20
> Signed-off-by: Seth McDonald <sethmcmail@pm.me>
> ---
>  man/man2/utime.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man2/utime.2 b/man/man2/utime.2
> index 94307a5b90..e044f15b06 100644
> --- a/man/man2/utime.2
> +++ b/man/man2/utime.2
> @@ -18,7 +18,7 @@ .SH SYNOPSIS
>  .B #include <sys/time.h>
>  .P
>  .BI "int utimes(const char *" path ,
> -.BI "          const struct timeval " times "[_Nullable 2]);"
> +.BI "           const struct timeval " times "[_Nullable 2]);"

The current formatting is intended, and documented in man-pages(7):

     In  the SYNOPSIS, a long function prototype may need to be
     continued over to the next line.  The continuation line is
     indented according to the following rules:

[...]

     (2)  But, where multiple functions in the SYNOPSIS require
          continuation  lines, and the function names have dif=E2=80=90
          ferent lengths, then align all continuation lines  to
          start in the same column.  This provides a nicer ren=E2=80=90
          dering  in  PDF  output  (because the SYNOPSIS uses a
          variable width font where spaces render narrower than
          most characters).  As an example:

              int getopt(int argc, char * const argv[],
                         const char *optstring);
              int getopt_long(int argc, char * const argv[],
                         const char *optstring,
                         const struct option *longopts, int *longindex);


Have a lovely day!
Alex

P.S.:  These patches work correctly.  :)

>  .fi
>  .SH DESCRIPTION
>  .B Note:
> --=20
> 2.47.3
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--upl3uufh5e66giqo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlVKPAACgkQ64mZXMKQ
wqm+Nw//bTpfWUHNBwCqBAhMSDWMwNn2Q1eRnjxL3oCfVDBQ8qAH9m5ANeN72RFG
ntbAol07NwKiTGPpzpiq20sMOgyV20dIekZnOSwG3JZWRBRyUdkXJpdcQ+t9JzS6
IqYQ2HhGMDpJlMrt4LZQ1znnvzLcoUyhhdt3gjwW42/Y/ZiY9TeGOIjxRTJeEi1l
p9J99LfZS3yUhkr2Xozhh6J5E1RJ3NOW4/w72pnmb8IeGxmC5thbIzCiHoWl5JQc
HqQmj+zL0XwFRxpxU0onRreAz22vcEN0aGWv1qeo/H3P357D/OxZ8VbiDGwV/w0a
zJARq9DfjVFSAdu4GzYs3ZiZ0huqEFH4OFQuMlY/uUiZuClDcvXi1VbNyzC7nJsR
usRYRvdeL3/fImQtmYYuDpRLIzV8K9cRYh7WSyYKTXL7GJGubQN1X/O5k2KwR5BU
yPpDa1lYO7mA16TjcOt+i+05XVefFu8y34jmyjTS/927oEScKI3qrJDEyuStGoY7
SEmqZbH5xSHPZ3XvhXhpaOfr+PKjYyfIpBi0gLUq+GI9OwxLtvrZy1rhs1dVOIVe
yUJE9/Lbts/LwU92bWHMbjh80yeE1gCQdRfuQFQijYSZUnoiurzzaiYihBxHQqgf
sDz/SfruL5oZGAbLW0rKFU8vCvDqsOJpiodfE4fIsAICCeQQ/nE=
=Z5wZ
-----END PGP SIGNATURE-----

--upl3uufh5e66giqo--

