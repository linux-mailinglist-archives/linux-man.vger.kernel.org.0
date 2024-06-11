Return-Path: <linux-man+bounces-1115-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D841E904060
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 17:45:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 67933281AF4
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 15:45:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13D69364A9;
	Tue, 11 Jun 2024 15:45:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W2gnGLu4"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8C3E28E0F
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 15:45:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718120750; cv=none; b=S6usiBCuB8rYbZtc6qGzghFSPGgUsGgHS8LcSHGUfplF5zGWPCxQfowj25UrgZ4KlXByki8Fz0Dsb3iqgg0R6zagyWUC53OU6XNWclulktvNuRk3zFnv+L9sB2fuXfe3D2b7PCeY7yldKa/z55ER2U/P6KVhFRBZV1aA+CG4peU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718120750; c=relaxed/simple;
	bh=U99I2TvsuX7VEO8kCJx+sK5cAWM+5QoF5Hf7YzUl2Po=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sY61ttoXuUMyj7JXJZ91LLPH6fT+Yn3HAcQzXFyfR74YpE6hTqDggDUG0ayMZ2ErUnY8P746LUQGcRKx/ZFiAuvhsD8CNJBvwYlHbmaR7PUU1wR94+r/PU5sYNyz8qxPNyLcXRcoRqr5aLam5l5PIT/Zu+JpoynvQkEzodjrSm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W2gnGLu4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC765C2BD10;
	Tue, 11 Jun 2024 15:45:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718120750;
	bh=U99I2TvsuX7VEO8kCJx+sK5cAWM+5QoF5Hf7YzUl2Po=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=W2gnGLu4FtEV0ToXBK7aYD8OADnq+LMS1+JS75HNkZ2e60XpTGTrD3zLw8ksD42fF
	 /nU9IF1Ac3NlqEsue7Y9fviwj7N4RZNaOGQzaSxwo/IYozRhmVfLBw4gxYy9p6N/SZ
	 7AgmtbdJsxqBn9R0MAx47zL/9fJ4CKg/wBlAYAyRCode6WEiGiEKqrY4omZdUDmE/+
	 wsd/xor6/OmKGNyi4muJfoC6eX2UGa77JFq2O2oX7vjBD1hLcdYAii8Wb5Z4CLzI8j
	 18jjaDm6P9c2z2CB8I24TsFS9SysH7XuiXxwMve8FaA3cF6G7gamsJ8zifjZtRT1uI
	 CIRqGo3MwawCQ==
Date: Tue, 11 Jun 2024 17:45:47 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 05/12] tzset: time hh range is now -167..167
Message-ID: <yxjbyr7oezx54vk7dnhz6uusmcev2aswv4bny3fnctfohm5knk@2iytchkj5dqt>
References: <d054fc63-6ea4-425b-94ce-14402d448ccf@cs.ucla.edu>
 <20240611153005.3066-5-eggert@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uxb5icy5jcds3bj3"
Content-Disposition: inline
In-Reply-To: <20240611153005.3066-5-eggert@cs.ucla.edu>


--uxb5icy5jcds3bj3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 05/12] tzset: time hh range is now -167..167
References: <d054fc63-6ea4-425b-94ce-14402d448ccf@cs.ucla.edu>
 <20240611153005.3066-5-eggert@cs.ucla.edu>
MIME-Version: 1.0
In-Reply-To: <20240611153005.3066-5-eggert@cs.ucla.edu>

On Tue, Jun 11, 2024 at 08:29:08AM GMT, Paul Eggert wrote:
> ---
>  man/man3/tzset.3 | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/man/man3/tzset.3 b/man/man3/tzset.3
> index 7ddea52b7..717b1fec9 100644
> --- a/man/man3/tzset.3
> +++ b/man/man3/tzset.3
> @@ -146,6 +146,8 @@ Day 0 is a Sunday.
>  .P
>  The \fItime\fP fields specify when, in the local time currently in effec=
t,
>  the change to the other time occurs.
> +They use the same format as \fIoffset\fP except that the hour can range
> +from \-167 to 167 to represent times before and after the named day.

I prefer using mathematical notation for ranges.  How about this?

=2E.. the hour can be in the range [-167, 167] to represent ...

>  If omitted, the default is 02:00:00.
>  .P
>  Here is an example for New Zealand,
> --=20
> 2.45.2
>=20

--=20
<https://www.alejandro-colomar.es/>

--uxb5icy5jcds3bj3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZocSsACgkQnowa+77/
2zIKmg//bY4zWvWmB4q9wW4cbStPM9ECUxA+RqciuHt7gI7GrqczsLwn32Ufwtsd
QYBjSH6pPLvS4+BOR1smAvlOsPdsIRTE5BHjLRm+cU0GUok2k3uge/5IXXhddwIr
QZqFeMoiR7JKyKy65ZN0wkJInNH50NG+OIeSIfSjuldBDLPcbdj+hIrbKLimcAGx
UxVGZcY5fXCgs20limMQQ7+05uIiPXcKrC8P2Pmx8JjHahtluQ5bqzVWWOYz+53x
j996kHsw2Qn/ZEq1+2XO3dcxzjAeUqNhooJGsYXduRwwrQ19EIVknZLgl73YNSeO
3DbHhu2mWNXLsqaHzl65Y2dcmi1nZpcmT4D/Oc2JhiwbID0MwIlV0fqVuWQ13S2I
wItgYyzEcXzqUcq9NbMpTmGiZC6DNjYBWPP1ZHuFYEUzgaxa9bUo4m6L448F8HnA
sbURcpQ2kXyYDJeGFHDU7nzGwZkbk9TZ6gtskA30PGRNzWeSQUGBtTJqZTfojAMX
GnxjYpWRbXcB7AiYHx4MqjfS/ZMfPgCkrwXfuFHSXZGB522Dy66KUksX/91oNevu
1rAXKZb1JWAQaerYUZ0bsCsMbLk+w//kpNioSasLIXdfPDEgzuVVkso6imKqQlU3
lid0viCJypcAYi01nzAfmbp1YKg505tyTxRrE+uIb0Z55ayfG+U=
=++nE
-----END PGP SIGNATURE-----

--uxb5icy5jcds3bj3--

