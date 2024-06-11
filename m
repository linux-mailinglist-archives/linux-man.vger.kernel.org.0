Return-Path: <linux-man+bounces-1135-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 839809045F8
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 22:53:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 203E0B20AEE
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 20:53:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8B233839C;
	Tue, 11 Jun 2024 20:53:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HEEK5XSY"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7703EB657
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 20:53:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718139185; cv=none; b=b4NO0LcrsUe905dxD38iRPcEqqG87Wh/DeivPIMarYvfj7+PLt+cznu+eDlA3q+o50vYOoTaUQQ7ip/Ts2PO68+Ny8AXMiMQo8i6Y9+FbpV7CGgkbtyWiYnBMXBZa89KyYtAs3vTcTZmuVMxKIJJqbhCaPKqq0pV+A94RF+2uWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718139185; c=relaxed/simple;
	bh=feMffGL8yHz0FiPJ9Zqoan//9A9a1+iYCO69gkY6tAs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AhmyFxiNJC7+gMQJnJ5GGq2lI/tnlD0RUd1md6tCGZ4M7axsNzZrkrLB/pEUpOhDIppBVri3EExACXLNbK1wIua3ndm3m/ECWiPtpQcEglCNitgHzu1riYSVKNpkZ3TKqirGL5g+nKkRiYzwGRPJZAbWdc2x9ILZOCQBicsg1Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HEEK5XSY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41814C2BD10;
	Tue, 11 Jun 2024 20:53:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718139184;
	bh=feMffGL8yHz0FiPJ9Zqoan//9A9a1+iYCO69gkY6tAs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HEEK5XSYfRnXhAoUvB/Q20/SIqkPfEoQum/0pZ3RW032pW7YPbN6tk1hZgOSv17yX
	 CJ7ERHKM/vmXukIVSIKziqD49Q+CJW+60Bnpm9scNaaa2O8ZgYEkqQ3bfYS+93xOdO
	 S5JCBw11CKJyZgaM9PLWZhJoJyRpeVhWLQQVTSi3JfrEIr3Q26HDg0NknBJz0anHEB
	 TgZi1/m6+MhvSSLEI5LzShfoBlRsrXEoZVK+asIBBeThEY++C4q9VVOb8IgKxrQU6U
	 thszhVyEfZgxwCChNYPArd2PMeehqWvrrj0Q/iEKe0QBDgCFtRiny5N+6sLkSXphOH
	 5S7lRzTreZbEA==
Date: Tue, 11 Jun 2024 22:53:02 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 02/12] tzset: state vars unspecified if geographical TZ
Message-ID: <j5shpmuai76b6lmdlhbhkhmp6elftrqzytkq5cuyujqbvonpfc@rdotn2xryam3>
References: <d054fc63-6ea4-425b-94ce-14402d448ccf@cs.ucla.edu>
 <20240611153005.3066-2-eggert@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="an2ffucj477bezs6"
Content-Disposition: inline
In-Reply-To: <20240611153005.3066-2-eggert@cs.ucla.edu>


--an2ffucj477bezs6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 02/12] tzset: state vars unspecified if geographical TZ
References: <d054fc63-6ea4-425b-94ce-14402d448ccf@cs.ucla.edu>
 <20240611153005.3066-2-eggert@cs.ucla.edu>
MIME-Version: 1.0
In-Reply-To: <20240611153005.3066-2-eggert@cs.ucla.edu>

Hi Paul,

On Tue, Jun 11, 2024 at 08:29:05AM GMT, Paul Eggert wrote:
> ---
>  man/man3/tzset.3 | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man3/tzset.3 b/man/man3/tzset.3
> index 8479b17b0..6e89dd530 100644
> --- a/man/man3/tzset.3
> +++ b/man/man3/tzset.3
> @@ -63,6 +63,11 @@ In a System-V-like environment, it will also set the v=
ariables \fItimezone\fP
>  have any daylight saving time rules, or to nonzero if there is a time,
>  past, present, or future when daylight saving time applies).
>  .P
> +The
> +.BR tzset ()
> +function initializes these variables to unspecified values if this

Can you confirm that the wording is precise?

If it initializes to unspecified values, I guess it's legal (IIRC) to
read them (even if useless).  Am I understanding correctly?

Or do you mean that the values of the variables are undefined?

Cheers,
Alex

> +timezone is a geographical timezone like "America/New_York" (see below).
> +.P
>  If the
>  .B TZ
>  variable does not appear in the environment, the system timezone is used.
> @@ -155,7 +160,8 @@ TZ=3D"NZST\-12:00:00NZDT\-13:00:00,M10.1.0,M3.3.0"
>  .EE
>  .in
>  .P
> -The second format specifies that the timezone information should be read
> +The second, or "geographical",
> +format specifies that the timezone information should be read
>  from a file:
>  .P
>  .in +4n
> --=20
> 2.45.2
>=20

--=20
<https://www.alejandro-colomar.es/>

--an2ffucj477bezs6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZouS0ACgkQnowa+77/
2zJGOQ//eOo79DUBvAWAV1orW3YUvnOMnA4h9P+juFR71F086oHW4w7NXxSG1mtg
+XBjX20pPVTcrrjFGsuDQc80eea1S+sYtTYLER3CHy+61apN8umhpvOQcWaGM4QG
IflTtRoOf0s+uAxBd9TgL9t/XDTRIYPuHuspkiQwTF2vVIrs0Yrklq+2OPjbontF
J+UxGJP62Unp/Vi4sMkxQfNuTWMlJ5JH3szPZnLXt0Qorka49DuRI9b0kLo0f0Ep
0hc+Jf5bPBv/jyUW0l7fwNSxqQEoca45B+Fsq1tasugL4IRlvyDc7HcrjbmeIFsk
vJPznGgwMq1KGwFI7YsS80ddk9baz9M9NokVL7uWWNfGn+bTE502sR/kX1Ar8foe
tnyb0b2jRxW1HlQm620Zmk6kW/TSZpyDPHvuB6b6Joaggpo5g1aCPIhwRDc3ljxw
jDmkrnDvCceGRfLfYxmAroh50P6djgvrIaxFGp/5ue12XbDIyVLy3LwOHSXW7zX4
zV6TNrYcapdBdknxPrIZTMESx6nvOK1a+9sJdMkSvcHA5MS0gI8R3BcvhJ30Juwf
SNqTuNqi3/tEmnQ58gIEGPdfPFmvVmQu1+oZLn7Y1j8wY6rSC9h9SqvOMTQ70xd2
0g9KNnLT1JJSnBHs2N4zFwRD2QeDsBNRxYT4D9oD1awVUQz++5I=
=54RE
-----END PGP SIGNATURE-----

--an2ffucj477bezs6--

