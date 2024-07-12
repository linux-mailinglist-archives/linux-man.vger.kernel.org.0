Return-Path: <linux-man+bounces-1449-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F5292FC2C
	for <lists+linux-man@lfdr.de>; Fri, 12 Jul 2024 16:06:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3039E1C217F6
	for <lists+linux-man@lfdr.de>; Fri, 12 Jul 2024 14:06:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CAC2171086;
	Fri, 12 Jul 2024 14:06:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHQxo4md"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DBD816F85A
	for <linux-man@vger.kernel.org>; Fri, 12 Jul 2024 14:06:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720793208; cv=none; b=BFa7u6mW+TIMmkRQDoYBd0gNiA8WPJdA16dcXVu4f1OfSorXWBxCUV7xr/HevNfxi3G1r34oUHzAY4Kr/dym3/zr4y3HEfKYU/nO/COUvab/UZqjUr9ZKlmiCUFIfl0HErpWbTQ1zmejSdrfT+7zy+2I98Z0x+FsOnylbMdgQew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720793208; c=relaxed/simple;
	bh=h1oWxO8wQPPfPMo3NUaHiboA/P9ze4u3WumjZtElk7c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RsBVbMHXC8T8ptD9j0AAywi+yLe4Njn87AC2fh+SArxSk3ZBnEoInlKITH2ShfhO/t5Bjyuc6i8qiqJ95S4V1s0DuMQhxisZ++ohDhRvcY1GdrON3ZDjxtx6VW4/dZv2ewhvvM9R4n2z2LLQZEtkewilkfPnwBFg0LzYGUUG9R4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mHQxo4md; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 028EDC32782;
	Fri, 12 Jul 2024 14:06:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720793207;
	bh=h1oWxO8wQPPfPMo3NUaHiboA/P9ze4u3WumjZtElk7c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mHQxo4md1wM7mC6FGnHiFUm13Yu/p0YgYUljxBON7Bdf41cryG8s5PJJt7irk2jaW
	 wU4DrCq3ygAhGSYBds56vVqDOfD2GkyTtzMHe6QLcxkqqt22Lwdy7f92zBrUOK7Vhi
	 DpNeVIEdB5ur1d9/8FJMeqqHd9KZhvuBNcaHIoftDs3ryCNDI0+9zbQSBlBryRv+n9
	 EG9G60l3WDjEIQ5MDS5oMMMG+1uxdvY4W4b4W0YPyg9Za2ZBq7i6sRDjLcDEb/yolQ
	 xTXsUxejLYsaKb9PDQf9OSbbH+MtP1wRaIJfiWE7dQaZXXpAS4PZ1HUMXByWYJqjCN
	 LXJ0nC/pqv2RQ==
Date: Fri, 12 Jul 2024 16:06:44 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] fnmatch.3: update FNM_CASEFOLD availability,
 FNM_IGNORECASE alias
Message-ID: <vnmzqx5kmcinqhnfptnfyltioec26zpwlhiaenn2ev4mtgy23f@br4fhvx24lix>
References: <g5gokt26n2vu3epajxzgbtbsmkubv3kxg7smtaewmycvubndhj@vahuixd5endm>
 <2lnvud6qnttulm34ns3lsrafguzrdjdgnnnp4yrlsdl6c2yoef@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="a2wqxc3vhj6ilzff"
Content-Disposition: inline
In-Reply-To: <2lnvud6qnttulm34ns3lsrafguzrdjdgnnnp4yrlsdl6c2yoef@tarta.nabijaczleweli.xyz>


--a2wqxc3vhj6ilzff
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] fnmatch.3: update FNM_CASEFOLD availability,
 FNM_IGNORECASE alias
References: <g5gokt26n2vu3epajxzgbtbsmkubv3kxg7smtaewmycvubndhj@vahuixd5endm>
 <2lnvud6qnttulm34ns3lsrafguzrdjdgnnnp4yrlsdl6c2yoef@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <2lnvud6qnttulm34ns3lsrafguzrdjdgnnnp4yrlsdl6c2yoef@tarta.nabijaczleweli.xyz>

On Fri, Jul 12, 2024 at 03:48:01PM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> Every system I looked at already had FNM_CASEFOLD,
> so calling it "GNU" is misleading at best;
> Solaris (and the illumos gate) call it FNM_IGNORECASE
> but also provide FNM_CASEFOLD as an alias.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>
> ---

Patch applied.  Thanks!

Cheers,
Alex

>  man/man3/fnmatch.3 | 14 +++++++++++---
>  1 file changed, 11 insertions(+), 3 deletions(-)
>=20
> diff --git a/man/man3/fnmatch.3 b/man/man3/fnmatch.3
> index 978163a..ef318d7 100644
> --- a/man/man3/fnmatch.3
> +++ b/man/man3/fnmatch.3
> @@ -69,7 +69,9 @@ .SH DESCRIPTION
>  use of glibc and is implemented only in certain cases.
>  .TP
>  .B FNM_CASEFOLD
> -If this flag (a GNU extension) is set, the pattern is matched
> +.TQ
> +.BR FNM_IGNORECASE " (same as " FNM_CASEFOLD )
> +If this flag is set, the pattern is matched
>  case-insensitively.
>  .TP
>  .B FNM_EXTMATCH
> @@ -123,16 +125,22 @@ .SH STANDARDS
>  .BR fnmatch ()
>  POSIX.1-2008.
>  .TP
> +.B FNM_CASEFOLD
> +.TQ
> +.B FNM_IGNORECASE
> +POSIX.1-2024.
> +.TP
>  .B FNM_FILE_NAME
>  .TQ
>  .B FNM_LEADING_DIR
> -.TQ
> -.B FNM_CASEFOLD
>  GNU.
>  .SH HISTORY
>  .TP
>  .BR fnmatch ()
>  POSIX.1-2001, POSIX.2.
> +.TP
> +.B FNM_CASEFOLD
> +has been available on many systems even before POSIX.1-2024.
>  .SH SEE ALSO
>  .BR sh (1),
>  .BR glob (3),
> --=20
> 2.39.2



--=20
<https://www.alejandro-colomar.es/>

--a2wqxc3vhj6ilzff
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaROHQACgkQnowa+77/
2zLtPRAAihxCZRBHM2sIykxXZM8MqF48qKSOJ6mRE8C3+AfoBgZBAtzx9y+VfO4u
845RNNy9WCjRS/dWq7/6EAVZfRRtIifVO7/a+J14IqHPEyAJ2wRNPVbpElC4+Oud
M6JvCLZgLLBxWXcqGzPg7TDdqYdoRw4YrIbtTy0od2Dny2E1cZiUSO0PsFgsFqx7
SUB4TC4zrUC9mURmSkAEacUoQnTRdwiSJDdRiL/CSIX+hTHjF5toa5/kD65cf4ku
Yn3lbGRWiuRxiGNdU9Ry/yHHjNT3Xq1YEsRWIkrGhq7Wk5+Oft5IacjxpquW2DAU
nTWDUXTDqORKyrFPKROvwZ5NFncs2Ndl1z6l5iA4OgSeeFIl+aucFPEfIqtjrs8S
UyxBVJ83d/TvXm2AcW3DcOTI6cFPUgkBxgA2K40mSQ/ZiAuOeTcVPu+K4+6JQ7/a
8sSxzZy/ByE4P+1//9D4omg0A59yrDAB2A1JSxRABfsf0KRK6ibPeEI5cLUVor0p
UVxQnSh6/qBwwdJUJZEEL1RvYyQtJCB9A3SJq4VOex/LBAFS+0cjWfDIX0AUh0yB
GTPsSW9LnkiVxCAbFGbfdA7SswZ9NWWZHSjYWUKRstxF0UqHln5n+/yGmzAVKkHv
B15bGxxHihqnUp/qsPsBj9dvi6ip+0ihUMN22KCAv5YqXB8beC8=
=2N+9
-----END PGP SIGNATURE-----

--a2wqxc3vhj6ilzff--

