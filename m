Return-Path: <linux-man+bounces-2350-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F0AA2A1E1
	for <lists+linux-man@lfdr.de>; Thu,  6 Feb 2025 08:19:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 57918188887A
	for <lists+linux-man@lfdr.de>; Thu,  6 Feb 2025 07:19:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F9C11FF5F6;
	Thu,  6 Feb 2025 07:19:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HMoguQZp"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9A3150997
	for <linux-man@vger.kernel.org>; Thu,  6 Feb 2025 07:19:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738826350; cv=none; b=MXBrpvbfB6yOICDZ+vTjBD3AhHIYjFiQm6ttopEGv7QVQzI9EzUx3AaTPROzWCmXTUIaY7Bn15XHhM9ir6EgS9rdPkYPRt9TeXw+EFZXNNxb53OIvNIB5Rm0TjqU99SjKbA2Ez2+HLS8Ko2ZFuaa8gjYmro6pHC0BJpbpOlvGrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738826350; c=relaxed/simple;
	bh=3vTiV560aB71zzolEsT1gqJyvKB8U57IVK5BNqyje9w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V5Lb9GdmFeMjdmefspinfvrlBZIF8LXONyncg1ppeHJzGQWiQXM4OWmHLLcEUG339aLJS4p2vEPVN2OCzBGMfVW6V88zR1LUsbrv9lYLmdhfIiikzZBAYP4xOVqNtrf1TbL++mXHPNm5TIQnaAQmVZSd4Ke56eMHtNADY+hk9pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HMoguQZp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F429C4CEDD;
	Thu,  6 Feb 2025 07:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738826349;
	bh=3vTiV560aB71zzolEsT1gqJyvKB8U57IVK5BNqyje9w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HMoguQZpV+q/xXNx7vA3WCPZ7oMySjZbmOt9r5Dj0CAU/PXEJ7MMVMoVikKMColZW
	 IczaGbv90p1FJiXhoSKh8CaI1W1q9emTLfoXTZ6m8hNoVGpbIkeBe8AjCXtDNDLNNR
	 TWn+OKjcZ8zd0PX8Edl6nzYpzNUgW/UR2N/q0njhGV7PTgrxxOCfvOOm5lesBZNi6k
	 +CFjxptGkh83kuXJs1f2ZuhFh/rAQxyDSl9vc9SEHpXGGxylE/Y025nbkpqbdEpTyH
	 0cj0JBYDOeR64t2FLTofPFVjMDvoNbATMGHo9QJM2iTnfjwDk+Atrov1S1TB9CN5hU
	 Xy3VZyhS9PMyA==
Date: Thu, 6 Feb 2025 08:19:04 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Cody Tapscott <cody@tapscott.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3] Clarify that exclude_kernel does not affect
 time_running
Message-ID: <hafjhzktwjmuwzyvczbfg5dwegzxxuhxusyct74hl5fmxiiw3h@duppnf45zcuc>
References: <722e9b3689ff2d11083366cc1da7e2df3e26fb8a.1738783813.git.topolarity@tapscott.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="egjlqfs5ok2qlnxj"
Content-Disposition: inline
In-Reply-To: <722e9b3689ff2d11083366cc1da7e2df3e26fb8a.1738783813.git.topolarity@tapscott.me>


--egjlqfs5ok2qlnxj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Cody Tapscott <cody@tapscott.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3] Clarify that exclude_kernel does not affect
 time_running
References: <722e9b3689ff2d11083366cc1da7e2df3e26fb8a.1738783813.git.topolarity@tapscott.me>
MIME-Version: 1.0
In-Reply-To: <722e9b3689ff2d11083366cc1da7e2df3e26fb8a.1738783813.git.topolarity@tapscott.me>

Hi Cody,

On Wed, Feb 05, 2025 at 02:56:03PM -0500, Cody Tapscott wrote:
> Re-sending due to bad e-mail client settings that introduced artificial
> line wraps.
>=20
> My apologies for the confusion.

Thanks!  No problem.

>=20
> Signed-off-by: Cody Tapscott <cody@tapscott.me>
>=20
> --
>=20
> The man page recommends re-scaling event counts as (value * time_enabled
> / time_running), but does not mention that some time-filters (esp.
> exclude_kernel and exclude_user) do not affect the reported time_enabled =
or
> time_running, causing a very noisy estimate of the true event count.
>=20
> This limitation is easy to encounter when profiling events that are domin=
ated
> by kernel (>=3D 50%) vs. user time and which are relatively short compare=
d to
> the PMU muxing frequency (<~10x the period). In those cases, it is common=
 to
> see (time_running / time_enabled) report, e.g., ~50% active time when per=
haps
> almost none of the user time was actually spent with the counter running.
> ---
>  man/man2/perf_event_open.2 | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
>=20
> diff --git a/man/man2/perf_event_open.2 b/man/man2/perf_event_open.2
> index bcc6a39cb..bc22a3b12 100644
> --- a/man/man2/perf_event_open.2
> +++ b/man/man2/perf_event_open.2
> @@ -1063,9 +1063,22 @@ .SS Arguments
>  .TP
>  .I exclude_user
>  If this bit is set, the count excludes events that happen in user space.
> +.IP
> +Note this does not affect the

I'd remove 'note', which is usually superfluous.  Just start with 'This
does not affect ...".

> +.I time_running
> +or
> +.I time_enabled
> +fields, so enabling this may impact the reliability of the estimated tot=
al counts in the presence of multiplexing.

Sorry for not mentioning this.  We also have 80-col right margin.
So, you'll need to break this line, but at a phrase boundary.  I'd break
between 'of' and 'the', I think.  I'd also break after the comma.

	fields,
	so enabling this may impact the reliability of
	the estimated total counts in the presence of multiplexing.

>  .TP
>  .I exclude_kernel
>  If this bit is set, the count excludes events that happen in kernel spac=
e.
> +.IP
> +Note this does not affect the

Same about 'note'.

> +.I time_running
> +or
> +.I time_enabled
> +fields,
> +so enabling this may impact the reliability of the estimated total count=
s in the presence of multiplexing.
>  .TP
>  .I exclude_hv
>  If this bit is set, the count excludes events that happen in the
> @@ -1677,6 +1690,16 @@ .SS Reading results
>  and
>  .I time running
>  values can be used to scale an estimated value for the count.
> +.IP
> +Note that for most events these values are not affected by

Same about 'note that'.


Have a lovely day!
Alex

> +.IR exclude_hv ,
> +.IR exclude_idle ,
> +.IR exclude_user ,
> +or
> +.I exclude_kernel
> +and,
> +if these are enabled,
> +the scaled estimate may be significantly less reliable in the presence o=
f multiplexing.
>  .TP
>  .I value
>  An unsigned 64-bit value containing the counter result.
> --=20
> 2.34.1
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--egjlqfs5ok2qlnxj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmekYl8ACgkQnowa+77/
2zKM+RAAq2/he5lXDz6/Z/8mlxGQGKHWxSgcVSEbrTA9d9Nf694eDzLS3Ka1Os3p
b/gmKqO4y+DCxtPdydk/hXq5GC9u7fLA8f24t8hB0qAC/vcWNlURC/+a2udJifRs
xKwlFRUrLqzwn7JBLoHl4vOUvy4TP8eb0u/8+WWHfVts+miwNdcnyRD6Hl1d4p3T
wws8wP9+SeIm2mx+MTlIgznDNiF0VEkTMoKjKOr253+bzrlMzXawjEKDevpi59sS
burAYp3g/GqBJ8ID0j/XI/j0lhWjC9sY8Q6tdMQLTT9ectA4UUFkKh3Gi6g0lPaf
rlcJXLtOqo07iFNFIKRs98QIazmWzjAuH/OZxgaQaq6IpQmWqicrLSAWpTbybzuR
YHW04PyoVVlgku+EakNJx6oVaeiOpR6yMBH3JyNDVu+oFIX6cs8bTqOLO3LVPFlj
ebk2rzDy6c/vCko1WJbrI7SZIDk1+Yrg/KUdbZdGYdkr/8dNesbjIiRFFK72ZyfP
n1UEGa+CHKYDXTRWqjlmbouKgKeu38uv5x3JMC3bIjikDmVXAmMr6R5mpPhDEg6D
vHXYavq3HsYZYHBBvgzya+7vqxccOckJtendJjFC9tg0f2ci01VJ2bzIWF6+yO26
D90hQDxU/uHbHK2UyYGhVgNniUbbFf0FqM2244EXkK3J2NlokfY=
=FQJj
-----END PGP SIGNATURE-----

--egjlqfs5ok2qlnxj--

