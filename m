Return-Path: <linux-man+bounces-4727-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D6093D035B1
	for <lists+linux-man@lfdr.de>; Thu, 08 Jan 2026 15:31:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B036830E044D
	for <lists+linux-man@lfdr.de>; Thu,  8 Jan 2026 14:07:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD003435646;
	Thu,  8 Jan 2026 11:48:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qi3lFVud"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E76B341B36D
	for <linux-man@vger.kernel.org>; Thu,  8 Jan 2026 11:48:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767872882; cv=none; b=SzCARZoqMfaJBh83KYFBZOB4i8av52kTbNGOSJjlP0H6JePDP0iASrMuAeY2nE34f5qnbu2DnebAWZdJzN72FnMKs+jBvf/86Fox0JnIy5IKGGWzT8ZYh4tu3r+L4egkPgd4V9XOkm2Pdwfr7mqd1g7txB/7DfRQWFn+BN08Wws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767872882; c=relaxed/simple;
	bh=58k7GLzMfB3zzHoBUc9KAV0pvT8ZxrSCAFdcM2/yYIw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XIZGjCD7wM1RML09CN94dBua9uXYXajFHDgbn7x8TUGjkh7QPhC19QPyrkCt4iIz1RXfRVbxSaRF9u04U3xc4AT8SfJAkrj8T72aDltdUz0tYJGCuOllBUqpZJhUZ9fA/V+4XroDhdELcFH2+lQFXsZC3a3Cl4nBYFJ0Ix0xAAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qi3lFVud; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 343E4C116C6;
	Thu,  8 Jan 2026 11:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767872880;
	bh=58k7GLzMfB3zzHoBUc9KAV0pvT8ZxrSCAFdcM2/yYIw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Qi3lFVudYuV2zKya8U7YR54+Ipj5Za4i4JdOV/Dp0PCV/42mhSy706DOrNxNmSwHA
	 ECBpuwN0xxm8RDmtTTMbxyBcylNbD4HmpizTDUSYWtyREAF8B7Akhpno10VI/o9SEu
	 SaUvJiY4acGF7ec9G/V1nEzLHOYukNiVsc0SzT0jJSi/tb+P/OjoAuuphfrisTFvkM
	 +B4GpCO8YTQvSXxQGbU//rGTqKBStmPpW7gondOmJYKktQd0YWCzaF9GLBPbv1sRci
	 C7JpHmhmzVJF+Tha0bF/RZ9b74a/PTB9XdFJ+jNiWbEsSZVfZFOeN1DOM8oHIgsTUM
	 t3SqxrD4RsiUA==
Date: Thu, 8 Jan 2026 12:47:57 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 08/11] man/man3type/stat.3type: HISTORY: Specify first
 POSIX appearance of st_{rdev,blksize,blocks}
Message-ID: <aV-ZG_8At_-R7G2v@devuan>
References: <cover.1767840410.git.sethmcmail@pm.me>
 <9d3a705508aaaec7b2ee5c79bb284fd508008fce.1767840410.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oyopu7vv5huexvcv"
Content-Disposition: inline
In-Reply-To: <9d3a705508aaaec7b2ee5c79bb284fd508008fce.1767840410.git.sethmcmail@pm.me>


--oyopu7vv5huexvcv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 08/11] man/man3type/stat.3type: HISTORY: Specify first
 POSIX appearance of st_{rdev,blksize,blocks}
Message-ID: <aV-ZG_8At_-R7G2v@devuan>
References: <cover.1767840410.git.sethmcmail@pm.me>
 <9d3a705508aaaec7b2ee5c79bb284fd508008fce.1767840410.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <9d3a705508aaaec7b2ee5c79bb284fd508008fce.1767840410.git.sethmcmail@pm.me>

Hi Seth,

On Thu, Jan 08, 2026 at 01:03:14PM +1000, Seth McDonald wrote:
> From: Seth McDonald <sethmcmail@pm.me>
>=20
> The st_rdev, st_blksize, and st_blocks fields of the stat(3type)
> structure first appeared in SUSv1.[1]  They were added to POSIX.1-2001
> when POSIX and SUS merged, but as an XSI extension (still SUS-only).[2]
>=20
> [1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
> Version 2, Chapter 4 "Headers", p. 830.
> [2] IEEE Std 1003.1-2001, Volume 1, Chapter 13 "Headers", p. 356.
> <https://pubs.opengroup.org/onlinepubs/009604499/basedefs/sys/stat.h.html>
>=20
> Signed-off-by: Seth McDonald <sethmcmail@pm.me>
> ---
>  man/man3type/stat.3type | 8 ++++++++
>  1 file changed, 8 insertions(+)
>=20
> diff --git a/man/man3type/stat.3type b/man/man3type/stat.3type
> index 44d45b4a52b4..83f6e881a5ae 100644
> --- a/man/man3type/stat.3type
> +++ b/man/man3type/stat.3type
> @@ -137,6 +137,14 @@ .SH STANDARDS
>  .SH HISTORY
>  POSIX.1-1988.
>  .P
> +The
> +.IR .st_rdev ,
> +.IR .st_blksize ,
> +and
> +.I .st_blocks
> +fields first appeared in SUSv1
> +before being added to POSIX.1-2001 XSI.
> +.P

I think this would be simpler like this:

	@@ -135,7 +135,14 @@ .SH DESCRIPTION
	 .SH STANDARDS
	 POSIX.1-2024.
	 .SH HISTORY
	+.TP
	+.I stat
	 POSIX.1-1988.
	+.TP
	+.I .st_rdev
	+.I .st_blksize
	+.I .st_blocks
	+SUSv1, POSIX.1-2001 XSI.
	 .P
	 Old kernels and old standards did not support nanosecond timestamp fields.
	 Instead, there were three timestamp fields

What do you think?


Have a lovely day!
Alex

>  Old kernels and old standards did not support nanosecond timestamp field=
s.
>  Instead, there were three timestamp fields
>  .RI \[em] .st_atime ,
> --=20
> 2.47.3
>=20

--=20
<https://www.alejandro-colomar.es>

--oyopu7vv5huexvcv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlfmW0ACgkQ64mZXMKQ
wqkClhAAgovzSRAuoFhfF05ycs2J98RoSCemdPRjAv54umazt8klYvHXMlYdOKCS
jbrpk2uBmyMaVOumUAS9wcTFcbR7LqPdAU0Hxg+82jpW+MoBcx8IeC+1OJPZ2Dmd
bTS2EmNHSBm6hJymsC+nxX5BYMy2dZctfKFetysKAIpKzIMhZ2bt0lysCMs6eDJx
0w0HcqsHkr0cceh7AWDjXNScbGCev2zkYojfCFAp0tGA/YCVI/INY2XroJmpqK2s
a3n1Qsgh2jvdlH/SvIp5rqsTuGDWUF+Ou4wT2FjNmA9NfZvVX1kCnhKiiXXajQvT
6XZ7NImVTtLAznlAJTfoDUpufjfQlEC8iOLwbMT3UcSnpY8EHt3QF8phJX5PWT68
TBc3+dqe4SVodkcDgayreWEf9fiYT4nyrG+FnfTJawLV3r+ZQbcfPL6bJRDegHJc
luQ1UI4ogbmXcaHNhufXXO2PMfNit8POLiL3kRoVYEY4qfscK/WxtOpVw7zoODuI
mm3sCGejhKuXk7QJwa5R58wZMsm/AMR2aarLl8qXoYVcb2dERKRMcI3E7BRX0AKp
r5ddTqMU0EJ6mNltvMHZUoyW6CbdaJ5ET7u+SkZ7kfc5ltQ0hWQ3EPBib36XWT0Z
QKGkLAyZMVGsvUaajBZAu9W2CQhJmCckd3KkxJwUsJ2iGkr2b6Y=
=BWMq
-----END PGP SIGNATURE-----

--oyopu7vv5huexvcv--

