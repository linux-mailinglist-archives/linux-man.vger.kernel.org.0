Return-Path: <linux-man+bounces-2947-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C061ABAC8B
	for <lists+linux-man@lfdr.de>; Sat, 17 May 2025 23:17:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9292F189D444
	for <lists+linux-man@lfdr.de>; Sat, 17 May 2025 21:18:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B494265621;
	Sat, 17 May 2025 21:17:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aPxhYX7u"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4F6E212FB6
	for <linux-man@vger.kernel.org>; Sat, 17 May 2025 21:17:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747516667; cv=none; b=cRe3sjsi6gXEnOWraKtZT1ZcgQOwnqUSXO8RPu8OMm9Hk8BZm3ILSyI+w3DQb1BQX0TaT9lR8Y+dOutHOGYSGush83/DkqcYQKV15fSwa86zizaQ2P+m1Ei73tqVzKNaLjiLq5u3oD3wonk2tmHnqXDFY4mISHtKjaeh5ivA1ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747516667; c=relaxed/simple;
	bh=t/cDOYlVbqb5j36bCER7rj6I533rHE9D2T9AhJ19BZ8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b5u7IMgV3z8DnzMm4jR02ZoD7D52TQRBM2tY1/6R4aURzLBo52+0IJjMMCb7z0ohL0dasNxqPXUGvPtuAVH+jSNGmW2gOjqFryLqe3PsEAkcDwrECHlU4/0hYf7BceuiRowvjYxDWxfdmn2QoEcy7vgi+AwKha3YRm8g+sZSI6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aPxhYX7u; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2345DC4CEE3;
	Sat, 17 May 2025 21:17:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747516666;
	bh=t/cDOYlVbqb5j36bCER7rj6I533rHE9D2T9AhJ19BZ8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aPxhYX7uBEq9XX0+2vqG18S4C+wrEsqGTolqhEZxIajxaahDcl5rBd9cJU2sWAhn7
	 HwTLtfwj71RNn3Jmt2A+GLdpFps70qieMIp8x8dCVLpuQgKGv2qPtD080r1OtOVQkz
	 8zRgRTrJqt5QvSNjz4QocozgbBCHyeFmG9sOUW0YzytI/omxGEZT9swrJY/5wY/Pu0
	 E0wXNmIyeSyIUVVUsHmlhHmLkgtMclpvi5MVqLTn2uPKI8iRJlS/rLnBkAp8SqG0nk
	 ONmXTxJsPjOus5F++vpVvcrokd6IqUqyr0m0tE0m4TUL7JMvH1rhHXkXNEe8PDIRby
	 RSrJaWf2n1YIA==
Date: Sat, 17 May 2025 23:17:42 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/3] man/man3/getenv.3: Mention secure_getenv was
 standardized in POSIX-1.2024
Message-ID: <ationx4kn5f2d5b76ayyufnjakuy5q3pkgmgq7fagwgakfitar@5l6ty5ftdsrg>
References: <6abbe99f5e8710202650bfee5d41e6fceaff4d1c.1747515178.git.collin.funk1@gmail.com>
 <f1cc4b34bb42b09ae9c0820df8fdece6fcebfcd8.1747515178.git.collin.funk1@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mjv3elhvpe6cmpsh"
Content-Disposition: inline
In-Reply-To: <f1cc4b34bb42b09ae9c0820df8fdece6fcebfcd8.1747515178.git.collin.funk1@gmail.com>


--mjv3elhvpe6cmpsh
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/3] man/man3/getenv.3: Mention secure_getenv was
 standardized in POSIX-1.2024
References: <6abbe99f5e8710202650bfee5d41e6fceaff4d1c.1747515178.git.collin.funk1@gmail.com>
 <f1cc4b34bb42b09ae9c0820df8fdece6fcebfcd8.1747515178.git.collin.funk1@gmail.com>
MIME-Version: 1.0
In-Reply-To: <f1cc4b34bb42b09ae9c0820df8fdece6fcebfcd8.1747515178.git.collin.funk1@gmail.com>

Hi Collin,

On Sat, May 17, 2025 at 01:53:03PM -0700, Collin Funk wrote:
> Signed-off-by: Collin Funk <collin.funk1@gmail.com>
> ---
>  man/man3/getenv.3 | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/man/man3/getenv.3 b/man/man3/getenv.3
> index f05e3eda5..8285dfc21 100644
> --- a/man/man3/getenv.3
> +++ b/man/man3/getenv.3
> @@ -36,7 +36,7 @@ .SH DESCRIPTION
>  .I value
>  string.
>  .P
> -The GNU-specific
> +The
>  .BR secure_getenv ()
>  function is just like
>  .BR getenv ()
> @@ -88,14 +88,14 @@ .SH STANDARDS
>  C11, POSIX.1-2008.
>  .TP
>  .BR secure_getenv ()
> -GNU.
> +POSIX.1-2024.
>  .SH HISTORY
>  .TP
>  .BR getenv ()
>  POSIX.1-2001, C89, C99, SVr4, 4.3BSD.
>  .TP
>  .BR secure_getenv ()
> -glibc 2.17.
> +GNU.

In HISTORY, I tend to not remove any details about versions.  The glibc
version where it was introduced might be useful for someone, so let's
keep it.  Other than that, LGTM.  Thanks!


Cheers,
Alex

>  .SH NOTES
>  The strings in the environment list are of the form
>  .IR name=3Dvalue .
> --=20
> 2.49.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--mjv3elhvpe6cmpsh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgo/PUACgkQ64mZXMKQ
wqmUsw/9EK5n+9XxZY/QTmlcPtwRDMEn0sBPoCf9CCoh9fpHid86m9ayBbkjgPx6
/lP+Yr6EgF8FX+s1vaACPvIvjgCsHSoPOGOQCQYDRnUO9LealHPZishco9R9/ONw
5FcLRCumUyENmdh5arR1kCld/PoNOw4tocwZV2NFDlghqEclGLtEeF/IXQCp5gWd
RYJ7m0mHZgyMcJUvfTAcOXsqM4CtX4IN9qxx323lYMMNeQ2yeMyONPzeAZQ3eE3s
qLVqiHxI67H0cIpPaCX7FgoL6IBVJVoAm/zSED6WO+XkBgIf1oqv7gi17sAQXiqs
oQgcf0GQfmrgl/c1dn6YOT2+nneBEWXdbI1FrwEKtancH6PTA3FUtKMexFyavL1V
O1ixVTWzQOkebIL7vnq4FngoeN36Rw/yutau6EwbhbSWDlas7gX3BCOcJ12IX+TD
I1eYtBhqAuWMP2nvRl2tyO/ivg98BJJTCl4jP/OAdh2PJHlgTOBbe43e//oN1Xgz
VWl4fiva+Ev8WOG5VAIRHKl2nLaafkOF1l72bVPJ1MCQnyGQ3zgLV1pCMIcjdigl
bj+5NxMp+2UhX3NJvYFyuWHeAdcVzefgNZ+O5Qgc+Swb60Ca8WusGaFpDr06ZHw5
cDzYA7ALnU2Ku6QGxGLQbkYV4HWNIWlBRG7AE/F1VtZk8KkwuYg=
=egeR
-----END PGP SIGNATURE-----

--mjv3elhvpe6cmpsh--

