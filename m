Return-Path: <linux-man+bounces-1721-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D9DB7962644
	for <lists+linux-man@lfdr.de>; Wed, 28 Aug 2024 13:45:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8459A1F23AE7
	for <lists+linux-man@lfdr.de>; Wed, 28 Aug 2024 11:45:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 925DB17335E;
	Wed, 28 Aug 2024 11:45:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMeWMZBD"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54461172767
	for <linux-man@vger.kernel.org>; Wed, 28 Aug 2024 11:45:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724845504; cv=none; b=KKiTnDPUZJ2Nx4RxiLwA5m+ba1rfsdvkjTCrA3jiGfgJgYGP5NcgFCr2rqfJCPc4/E5nU4AMDyETyYoZ6+UtDGhMQD2LYSarTJ6l9jo+65FGGlRmvMtUG/ErGnxS2xW23VSNV7U6Ej10AvUgJWnyrStTUdfs+DBJE/rUjwIhKf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724845504; c=relaxed/simple;
	bh=zC9Nh/wzUgXWUsp3eTT90NUctc2VRu9C6Z7nPLkMEFU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GlS7Ho0SRIU/QBuWxdVgoquftOwsp6odNVAEhnvCZFIvnop+A3x2DmqUEwWsSVjja8GpN/ZjvTVP9lPVRzoJHCwmTlZK3FdyCbhb/WlNIvZqfy5aXeMpj1NXdouoKKezHQ6IqPk6H3rrtkfVOKlwnUoKmWNAwszqzb4S1gERtu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMeWMZBD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A4ABC4FDEF;
	Wed, 28 Aug 2024 11:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724845503;
	bh=zC9Nh/wzUgXWUsp3eTT90NUctc2VRu9C6Z7nPLkMEFU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XMeWMZBDhNBPAcaMVomN0QoSMUiuEBvkZWFzZUmqegHqujSMjbaqAzAxzgxVrHmve
	 QT3U+//sRX2njSexV/gAiY4vUXFo69KZHsOOImWmRh4Vk9EkVB7N5VMw8qP4ZxBS7g
	 ip6Lv7/B7b/Fd/0LUzz/fqjJ/aT1kK2ePhFoSJu7vFC0sC4MaumR9A0RlGhm0pkisw
	 topeRDPqske743vKzkP6NtsTMPOJLNoPF/tYCU0RqKxE+UgrVrbI4Zw7FfUtglSRUI
	 U6Ev5f3UdeINGOoIaEK07qxajjVLhX/hkMPVqEdGD5B8V1GZrnokexrZq1BBlmPkSm
	 ItkWsXBqbBKxQ==
Date: Wed, 28 Aug 2024 13:45:01 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Florian Weimer <fweimer@redhat.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [PATCH v2] dlinfo.3: Document the RTLD_DI_PHDR request
Message-ID: <n7mi3i227tecv4waqwxrcq7cg5ll5mws7iirecgvvlgjyh65bs@xmhcxfhfpufz>
References: <87o75chpwb.fsf@oldenburg.str.redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oqhvinpex7svcwxb"
Content-Disposition: inline
In-Reply-To: <87o75chpwb.fsf@oldenburg.str.redhat.com>


--oqhvinpex7svcwxb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Florian Weimer <fweimer@redhat.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [PATCH v2] dlinfo.3: Document the RTLD_DI_PHDR request
References: <87o75chpwb.fsf@oldenburg.str.redhat.com>
MIME-Version: 1.0
In-Reply-To: <87o75chpwb.fsf@oldenburg.str.redhat.com>

Hi Florian,

On Wed, Aug 28, 2024 at 01:01:56PM GMT, Florian Weimer wrote:
> First added in glibc 2.36, backported upstream to glibc 2.34,
> so mention 2.34.1 for the first version.
>=20
> Signed-off-by: Florian Weimer <fweimer@redhat.com>
>=20
> ---
> v2: Fix commit IDs.
>  man/man3/dlinfo.3 | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man3/dlinfo.3 b/man/man3/dlinfo.3
> index 84b696f8c..8158356bd 100644
> --- a/man/man3/dlinfo.3
> +++ b/man/man3/dlinfo.3
> @@ -194,10 +194,23 @@ If this object does not define a PT_TLS segment,
>  or if the calling thread has not allocated a block for it,
>  NULL is placed in
>  .IR *info .
> +.TP
> +.BR RTLD_DI_PHDR " (\fIconst ElfW(Phdr *)\fP, since glibc 2.34.1)"
> +.\" glibc commit d056c212130280c0a54d9a4f72170ec621b70ce5 (2.36)
> +.\" glibc commit 28ea43f8d64f0dd1f2de75525157730e1532e600 (2.35.1)
> +.\" glibc commit 91c2e6c3db44297bf4cb3a2e3c40236c5b6a0b23 (2.34.1)
> +Obtain the address of this shared object's program header and place it
> +in
> +.IR *info .
> +This
> +.B dlinfo
> +call returns the number of program headers in the shared object.

Can that number be 0?

>  .SH RETURN VALUE
>  On success,
>  .BR dlinfo ()
> -returns 0.
> +returns 0
> +(if not specified explicitly),
> +or a positive value corresponding to the request.

If so, this should be nonnegative rather than positive.

Cheers,
Alex

>  On failure, it returns \-1; the error can be diagnosed using
>  .BR dlerror (3).
>  .SH ATTRIBUTES
>=20
> base-commit: 6a7f1461b0e5474d50ef1920558dec103c0c058f
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--oqhvinpex7svcwxb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbPDbwACgkQnowa+77/
2zLJnQ//UTh4KhmhpBnPuRHd8WgOUBs+4jb6Pz0XftMwEsw1tR7e58x54aogZsjP
DSTAqdcMQF6Rd26nT1TbXi1iE5fiI2IbK7HYeMTSURl8WRaEbaVaco4FFpb94uGw
LZiLFwnMk3i8nFbmkUZHEJYJC309mzTjxMXwDDEhB607gHe0vAeyYIZ1aupUvDAv
A6HtA6g1lawLjXwlxeGbhLv/RApx+4DEI3V4Fz6bnBP7xpCE9P40LsMyzAkNZGyg
TufiH1RRvir/3dzcuduwvNyY4Dg5mVdk0C+CFxqLkNhxxqAoI4pKkxSMhh+sIH3Z
U5kST19NdyIjBDnxn1EWagDodeiYXgrHZLVYc56GI5DTfec+93oPzpU0AtsvxEEr
rzEX6lEPrXDzrvYRDT2y8Gt1j3Zt8JNuqPjOD8oFWhB5pJkqdtYbi5z+gva1EVbm
0yXM2ueIdCuqxOLEaAfd3u8n/JPTGi4oJ40+KppocZTBLqG2au55Bv3fNOiYDP/Z
EiU5wz4YaYP3o4MYqHVwFo/4/Rn43YAxHxJo0EeBFRrQaMMWK+J+L/zi3ONUUomK
7mcEFDO9CksofJBNVcyDLSuNBK7m7BID6uXGMzHcIGwMvDV5ydHjh0IMBPg0KqwN
4lqoM/A6LgsOKGiiZbqa33v5Z61Y+5ckSWNY0wckGmU5HQC9cbQ=
=Dbau
-----END PGP SIGNATURE-----

--oqhvinpex7svcwxb--

