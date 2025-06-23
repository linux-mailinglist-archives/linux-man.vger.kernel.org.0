Return-Path: <linux-man+bounces-3198-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC8BAE332D
	for <lists+linux-man@lfdr.de>; Mon, 23 Jun 2025 02:42:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B257E7A2D59
	for <lists+linux-man@lfdr.de>; Mon, 23 Jun 2025 00:41:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63AD58F58;
	Mon, 23 Jun 2025 00:42:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZLRt3SR"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17EA93594B
	for <linux-man@vger.kernel.org>; Mon, 23 Jun 2025 00:42:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750639345; cv=none; b=EeBahZpWMkZEhdFubxdZCG0GWR5iYek5A7KOzJOPLo7jLtWZmsbv96BAFtrsYnhgO3up32EHuvPzXTnFS+SdOXR2ZUy/orbKA1hHAiuTxqcUq2T5Yz+5ZBxKUCLHWAwBQd5h5UuH4jnvY0f9wLQNv8NRNTUz858LP8t+bekitzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750639345; c=relaxed/simple;
	bh=u9V4STLLGWwe7CHevaXK58sQn0rs+RQyqZzZxsG/RmY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PdXudOxwTCLVj7AVF/K8DlywW9GmZISlAAEjUqLz/XHLO2Wcc03UEfsMuCYcmVEgEHfee+VuzHZniA1hz13J+r3CQjt9sUISC+hGCiNHQX4QvM9cpv9sPV3WueqNuI5YAulbcD2pFhFoNMct+t8I+4Rragl6sFmiqYwuLnmSfsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZLRt3SR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 11292C4CEE3;
	Mon, 23 Jun 2025 00:42:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750639344;
	bh=u9V4STLLGWwe7CHevaXK58sQn0rs+RQyqZzZxsG/RmY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LZLRt3SRIPHdC+WfxQbPWsqLzRiU0GrFpeyDqctnQIMcStZaxEa6+l+NQkRo2uykf
	 vcp29pJBPGbxsQl8ptaLJAyNhMFjzvr4Ci4YoPn2C8JTHcZpywwLa70wchdbvnHtoE
	 wR8Lay07uJmyITx5pOQL6wM1fXiZNTjgUmn1ssEGUl4i2jfsDDRSlRRlFBeAoETCE7
	 6qRkTTZqFT8u5N+vuBm5PUiuxM5h1koeM5wEmw1rlWHSt88Tr++khQMJLxAeYBdJ3+
	 4ERcpj8KL+74SKth1mxLCllfxjPw5gpmdUK2jq6Z9J1QitkTmAc1pkrPIIxxyieoEz
	 X0OLThwi+mBcg==
Date: Mon, 23 Jun 2025 02:42:16 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man2/gettimeofday.2: Declare functions with
 [[deprecated]].
Message-ID: <3vpj363nqd4s4kbsjdwp5lunac7p5utrrzqswop7jewx6a4bo7@ahmuw3ywb7qq>
References: <c9251b002761c8c5756780432e5fccd2bc58e67b.1750306917.git.collin.funk1@gmail.com>
 <2d37d5a9251af3c1d25cf8e73e3585a9955d5772.1750373011.git.collin.funk1@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="evuqjgqncploowqk"
Content-Disposition: inline
In-Reply-To: <2d37d5a9251af3c1d25cf8e73e3585a9955d5772.1750373011.git.collin.funk1@gmail.com>


--evuqjgqncploowqk
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man2/gettimeofday.2: Declare functions with
 [[deprecated]].
References: <c9251b002761c8c5756780432e5fccd2bc58e67b.1750306917.git.collin.funk1@gmail.com>
 <2d37d5a9251af3c1d25cf8e73e3585a9955d5772.1750373011.git.collin.funk1@gmail.com>
MIME-Version: 1.0
In-Reply-To: <2d37d5a9251af3c1d25cf8e73e3585a9955d5772.1750373011.git.collin.funk1@gmail.com>

Hi Collin,

On Thu, Jun 19, 2025 at 03:43:49PM -0700, Collin Funk wrote:
> As documented in the STANDARDS section gettimeofday was deprecated in
> POSIX.1-2008 and removed in POSIX.1-2024. Mark it and settimeofday with
> [[deprecated]], and mention clock_settime as a modern and standardized
> alternative to settimeofday.
>=20
> Signed-off-by: Collin Funk <collin.funk1@gmail.com>

Thanks!  I've appplied this patch (but see below).


Have a lovely day!
Alex

> ---
>  man/man2/gettimeofday.2 | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/man/man2/gettimeofday.2 b/man/man2/gettimeofday.2
> index d954a253f..83dfc2e5a 100644
> --- a/man/man2/gettimeofday.2
> +++ b/man/man2/gettimeofday.2
> @@ -12,8 +12,10 @@ .SH SYNOPSIS
>  .nf
>  .B #include <sys/time.h>
>  .P
> +.BI "[[deprecated]]"

I've changed this to

	.B [[deprecated]]

The '"' were redundant, and BI is for alternating Bold and Italics, but
in this case we only wanted bold.

>  .BI "int gettimeofday(struct timeval *restrict " tv ,
>  .BI "                 struct timezone *_Nullable restrict " tz );
> +.BI "[[deprecated]]"
>  .BI "int settimeofday(const struct timeval *" tv ,
>  .BI "                 const struct timezone *_Nullable " tz );
>  .fi
> @@ -184,6 +186,10 @@ .SH HISTORY
>  as obsolete, recommending the use of
>  .BR clock_gettime (2)
>  instead.
> +Likewise,
> +.BR clock_settime (2)
> +should be used instead of
> +.BR settimeofday ().
>  POSIX.1-2024 removed
>  .BR gettimeofday ().
>  .P
> --=20
> 2.49.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--evuqjgqncploowqk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhYoucACgkQ64mZXMKQ
wqlZTxAAjyj/Pq+zdLa9oDyuQQjYbgnUAEebXXC5d90VjDjOm7AbvADZDHjA0zWf
sAD6d0iIO+G+TIsuvhcU5TiSKkXgFsJbq0gnH/WCn1w3bnaMuAFetzFLjKfkbQM2
d6AZiCTKjjU5r/uuMbaX4It1xaQJoDcvukgQKIct9p/fVrjNQCgAdnpqECsl46m/
IT4OkK/oeKo3gUStTtHh+JLIOpMXyxaXeidGj6Y6YebMgW5cBGVAuIGoIwlOOIiZ
vNu/ksymh3K8DEvUKZiarQG6ptJ1/5egGLcB/T52cw2TVtDIVLaPqI5b4m4ucNiN
kUfWbvMr0mgm2TvMdmGfGUl5Usx9sOieMqujlJ9F45dgP4dyKXIFgc0MIKyWiUWf
t9OjuYJcUEH/ixtzjEKXNNkvowcmk1xTqxXzYnuI0eNOIHLd76+fSvFkdAdY5N+0
1A9g58HcD4KShcPT52zpwJVu1PpFm2swwAzPZbSVS/+2KsU0ayLrLiWVT6epeFEs
EukAK1SiyBx1qzMgtWNpJmst8xznmll/Z7y4xUow1xq7q6u9wmgQHGEsgfvgXbxR
3WJoiRWrrQO/SjIw/O18P/NDY5YaEv2/5Nen1lbtpxk+ytaEmtHONq2pfHSDe/xs
xm77M2nxLRhHCITQykAKnb60OZ2iPls+aoIWTI4C8QqlpLUJO/A=
=plVT
-----END PGP SIGNATURE-----

--evuqjgqncploowqk--

