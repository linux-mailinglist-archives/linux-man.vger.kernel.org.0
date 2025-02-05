Return-Path: <linux-man+bounces-2347-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EF6F9A296AA
	for <lists+linux-man@lfdr.de>; Wed,  5 Feb 2025 17:50:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B36633A93C3
	for <lists+linux-man@lfdr.de>; Wed,  5 Feb 2025 16:49:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C92CC1DC9BB;
	Wed,  5 Feb 2025 16:46:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvN9Fa1n"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 893D814B088
	for <linux-man@vger.kernel.org>; Wed,  5 Feb 2025 16:46:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738774016; cv=none; b=Y7Q0r8X2cDyGu9QyniSyKbUyS7QSSkjb+j8aO1Zs+/FfXoCLAmVKUWq/yljQ0rOvcCyIG4g5zIGOdR/KT8FU0a/vECXAXATJp+zqAdfnM6O0WHA9CtRL7PyR9fHEr/6Kb4TKA75d3DgA/by/haYz1EG3UXCWxd2892DlASzdtak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738774016; c=relaxed/simple;
	bh=LMCZ477O0NbNHCsyS/jhI7a36xOAMPVhfau1WVxg8mY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LTJL5IK/jKaCNEATU5ipmw6UBtPTSoZgjRppxe+08MXZVj49GlvoIx6xXHZqGa7071GdtPAzaywC/Jzb1Due3kxseaAoY+sK2/aEr0xU8XnHmHRruuvGNrSa6vcVDgg7DNfdondcyEDOhDViwH8HAfrvfFxoq6YLkcE0WUsxpNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvN9Fa1n; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02535C4CED1;
	Wed,  5 Feb 2025 16:46:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738774014;
	bh=LMCZ477O0NbNHCsyS/jhI7a36xOAMPVhfau1WVxg8mY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pvN9Fa1nxuDc4C/bkKN6U9NBCfItbJ4EzPf22a+xx/VXp3Ptk3WMO+WtlJVLpxkny
	 kko3GsDJcXloZ0EKny1HkZ1gUN6dMVj+uWbY8vJy1SHvVnMBbOITpU+Il8gnjs0Tff
	 yYj68w+kWAyW3xI5UwcvUrxNjFx5FcxOMmTzZIjbphXtzbx9oqAEiHUck1pbKT2GiR
	 x5yKFeHyLHIEGdjNxHunvUkb99GXmVuWu5LuN4jDoQNqFrsr7dEWr05m/8d0VEyqoB
	 lHMzlKHJR5712UE1OtAW6bD1k8hOpC5XLRUh/xBI9WCs1qjzsGMvxjqZI/bll2toQD
	 e8FzLZA9ppNRg==
Date: Wed, 5 Feb 2025 17:46:45 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Cody Tapscott <cody@tapscott.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/perf_event_open.2: Clarify that exclude_kernel
 does not affect time_running
Message-ID: <roqxwpqg6s6ixfqhespsusppefzv6ta5lpmhu2424gzbeyyksm@eoqao3ydz2vp>
References: <CAAM_cidrPK1W+K-nb1gY_QHbveKguOMzG34NJ=_QKhz49=vh9A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pn5t53ts2yxojpss"
Content-Disposition: inline
In-Reply-To: <CAAM_cidrPK1W+K-nb1gY_QHbveKguOMzG34NJ=_QKhz49=vh9A@mail.gmail.com>


--pn5t53ts2yxojpss
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Cody Tapscott <cody@tapscott.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/perf_event_open.2: Clarify that exclude_kernel
 does not affect time_running
References: <CAAM_cidrPK1W+K-nb1gY_QHbveKguOMzG34NJ=_QKhz49=vh9A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAAM_cidrPK1W+K-nb1gY_QHbveKguOMzG34NJ=_QKhz49=vh9A@mail.gmail.com>

Hi Cody,

On Tue, Feb 04, 2025 at 09:42:59PM -0500, Cody Tapscott wrote:
> The goal of this patch is to clarify some limitations regarding re-scaled=
 event
> counts measured via perf_event_open.
>=20
> The man page recommends re-scaling event counts as (value * time_enabled
> / time_running), but does not mention that some time-filters (esp.
> exclude_kernel and exclude_user) do not affect the reported time_enabled =
or
> time_running, sometimes causing a very noisy estimate of the true event c=
ount.
>=20
> This limitation is easy to encounter when profiling events that are domin=
ated
> by kernel (>=3D 50%) vs. user time and which are relatively short compare=
d to
> the PMU muxing frequency (~several milliseconds, on my machine). In those
> cases, it is common to see (time_running / time_enabled) report, e.g., ~5=
0%
> active time when perhaps almost none of the user time was actually spent
> with the counter running, leading to a dramatic under-estimate of the eve=
nt
> counts.
>=20
> Signed-off-by: Cody Tapscott <cody@tapscott.me>
> ---
>  man/man2/perf_event_open.2 | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>=20
> diff --git a/man/man2/perf_event_open.2 b/man/man2/perf_event_open.2
> index bcc6a39cb..d52c04c3d 100644
> --- a/man/man2/perf_event_open.2
> +++ b/man/man2/perf_event_open.2
> @@ -1063,9 +1063,23 @@ .SS Arguments
>  .TP
>  .I exclude_user
>  If this bit is set, the count excludes events that happen in user space.
> +

This should be .IP (indented paragraph).

> +Note this does not affect the
> +.I time_running
> +or
> +.I time_enabled
> +fields, so enabling this may impact the reliability of the estimated tot=
al
> +counts in the presence of multiplexing.

Please use semantic newlines.  See man-pages(7):

$ MANWIDTH=3D72 man man-pages 2>/dev/null \
| sed -n '/Use semantic newlines/,/^$/p';
   Use semantic newlines
       In  the source of a manual page, new sentences should be started
       on new lines, long sentences  should  be  split  into  lines  at
       clause  breaks (commas, semicolons, colons, and so on), and long
       clauses should be split at phrase boundaries.  This  convention,
       sometimes  known  as "semantic newlines", makes it easier to see
       the effect of patches, which often operate at the level of indi-
       vidual sentences, clauses, or phrases.


>  .TP
>  .I exclude_kernel
>  If this bit is set, the count excludes events that happen in kernel spac=
e.
> +
> +Note this does not affect the
> +.I time_running
> +or
> +.I time_enabled
> +fields, so enabling this may impact the reliability of the estimated tot=
al
> +counts in the presence of multiplexing.
>  .TP
>  .I exclude_hv
>  If this bit is set, the count excludes events that happen in the
> @@ -1677,6 +1691,11 @@ .SS Reading results
>  and
>  .I time running
>  values can be used to scale an estimated value for the count.
> +
> +Note that for most events these values are not affected by
> +.IR exclude_hv ", " exclude_idle ", " exclude_user ", or " exclude_kernel

Please use one line per identifier:

=2EIR a ,
=2EIR b ,
or
=2EI c


Have a lovely day!
Alex

> +and, if these are enabled, the scaled estimate may be
> +significantly less reliable in the presence of multiplexing.
>  .TP
>  .I value
>  An unsigned 64-bit value containing the counter result.
> --=20
> 2.34.1



--=20
<https://www.alejandro-colomar.es/>

--pn5t53ts2yxojpss
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmejlfUACgkQnowa+77/
2zLUYw//dh3FY1+mAjm9a4Pbp9zXypxk/5V1y2BR4TU8NxRqOSh+X++WPeF5rlef
bzvkEYqWIMozzdbwKUoWv2uvLY26AeBR7kzXEWSeoovbg50f+BfhzAFc7Ndf0hX0
TB6n4OZf7+F2NsuZyVZk7SUGlqzG2+dpftaRURHJ4lPfS62NvGO+q08DLYwRXDn6
A+yKHyFZW3lqgmG3/ly0C9bQH7tJ2usRr/aRmBY22/fF6aZXRpJuFTQK+Sp/zO1b
xkfkSYkZb4W9H7f/ulr1/njL3iTUfyNrYkU3kXcdwnpaXX4wN2MfV+uYTNE7gvBz
Jnteg3Qav6itK2ac8cPy+DCT2tOvwl/f1Mgl8jXjaRvzAi1qUAQEYy+OT2KOhxBc
2pFoweF1QM2Fa67nxF4i/Tw6LJFYf0DQKfh0x8TvYu37ferYWD0QLugV4p8eSFvc
9GvsPHSK2VawcSitT6arbfGDuTzDBUR+y4MeBrQ+PNTL7tO6j98jcsKMOoaVpS5S
UImeHOIWP9x2c7uTMK9BGMWvyR2Iw20EZM5H+s9+bFLe8EFNQOFC6TmF5cju2kTL
7xOFgaLfY8OAgL+KWbBdw73rxQ3OAwX6mN84Jney3kMc/JfIMM3hnfLA6lyHFss2
HS0cS4wXOJwRlwemSx68Hj1UJIJ98qOcas7DGL5Mzig8WKw+OFk=
=a/QE
-----END PGP SIGNATURE-----

--pn5t53ts2yxojpss--

