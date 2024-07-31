Return-Path: <linux-man+bounces-1556-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 81699942C4F
	for <lists+linux-man@lfdr.de>; Wed, 31 Jul 2024 12:47:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B8571B21BD2
	for <lists+linux-man@lfdr.de>; Wed, 31 Jul 2024 10:47:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B30F1A8C18;
	Wed, 31 Jul 2024 10:47:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WXxK/d5U"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEF5E190473
	for <linux-man@vger.kernel.org>; Wed, 31 Jul 2024 10:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722422837; cv=none; b=ddBglBliB+vW/5hgopyUD0Ef8OppAibDuLJAPkT+2MQDzaXHQ0QiY4mbvrljnyrKlFWUM/FLB4Zl+tIjPpzYoqs513k+tOZZ91OyF0tUjsqTwlsu5xOU8te/11KOWHoWAYxlqUgQJS3ljur8/6zT9Fc8IzZPCbu74gbKqaDjWZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722422837; c=relaxed/simple;
	bh=DcC/D/1/1H+g7YwqrP5fLy0fS9vhN78LgkrCcYvMB+s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RBuTnPsUtYNFl63ld8SAOVMG9NBFFeJLp6Y3F7witSej3Ydxb1TvdOAnSHxNVMEYuM+fgMqR7rIFRs1OYuVjwTUliUTEcSv9zAVXPKS4jQaykEpIFrVt5sAYLzyS0+idsL7TTl+L8TM4AQUKw0jBVLGo70768uOuefIu9ubgbQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WXxK/d5U; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B8F1C4AF09;
	Wed, 31 Jul 2024 10:47:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722422837;
	bh=DcC/D/1/1H+g7YwqrP5fLy0fS9vhN78LgkrCcYvMB+s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WXxK/d5U+io6eCjcDr+bgDqANT8Ba6HOTEwC6+JrlNBMV9nAcHMhzHw38m0tqfJxN
	 2D7Iw0lJuXTPFci+UCap+VDyP0gdwzgmZtSQiB0ba9mApcRG77U/GBTi0FerXqRYqH
	 +C/Ktg/xeAYAg7p6MBUHNNr7ZWNIdxHQqo7RJQrKfRVVl3V4peqTRqnZhWqwL/a8jc
	 +/H52H4TYsJiKo5k3oojq0/OqaaQdeIqMprFbViAOOou866peN5jDxRTyWtBGNmtsy
	 D9BXzOSKnOT+3OIXWPJNQBN40a2TV3ydi/A3oNzm5fQRKFEFoLX2JACPjzyZnas9gt
	 qC0lNJ2bhIXeg==
Date: Wed, 31 Jul 2024 12:47:14 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/3] man/man2/syscalls.2: srcfix (1/3)
Message-ID: <4qkfvng73y7imzy22xj6nkjxyzszzxkehunwpmanuzmen5kite@h2wka7pnijz4>
References: <20240727192745.lt2oo34hw3limkls@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2criuiobaob65q7s"
Content-Disposition: inline
In-Reply-To: <20240727192745.lt2oo34hw3limkls@illithid>


--2criuiobaob65q7s
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/3] man/man2/syscalls.2: srcfix (1/3)
References: <20240727192745.lt2oo34hw3limkls@illithid>
MIME-Version: 1.0
In-Reply-To: <20240727192745.lt2oo34hw3limkls@illithid>

Hi Branden,

On Sat, Jul 27, 2024 at 02:27:45PM GMT, G. Branden Robinson wrote:
> Migrate table entries from using font selection escape sequences to font
> alternation macros to set man page cross references.
>=20
> This change was automatically driven by the following sed(1) script.
>=20
> $ cat fix-syscall-table-1.sed
> \# Rewrite man page cross references inside tbl(1) text blocks to use
> \# man(7) macros instead of troff(1) font selection escape sequences.
> /^\.\\"/b
> /T{$/,/^T}/s/ \\fB\([a-z0-9_][a-z0-9_]*\)\\fP\(([0-9][a-z]*)\) /\
> .BR \1 \2\
> /
>=20
> Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> ---

I've applied this patch.  Thanks!

Have a lovely day!
Alex

>  man/man2/syscalls.2 | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
>=20
> diff --git a/man/man2/syscalls.2 b/man/man2/syscalls.2
> index 7a7d6d730..c8afd537b 100644
> --- a/man/man2/syscalls.2
> +++ b/man/man2/syscalls.2
> @@ -187,7 +187,9 @@ .SS System call list
>  \fBchdir\fP(2)	1.0
>  \fBchmod\fP(2)	1.0
>  \fBchown\fP(2)	2.2	T{
> -See \fBchown\fP(2) for
> +See
> +.BR chown (2)
> +for
>  version details
>  T}
>  \fBchown32\fP(2)	2.4
> @@ -398,7 +400,9 @@ .SS System call list
>  \fBlandlock_create_ruleset\fP(2)	5.13
>  \fBlandlock_restrict_self\fP(2)	5.13
>  \fBlchown\fP(2)	1.0	T{
> -See \fBchown\fP(2) for
> +See
> +.BR chown (2)
> +for
>  version details
>  T}
>  \fBlchown32\fP(2)	2.4
> @@ -679,7 +683,9 @@ .SS System call list
>  \fBsetns\fP(2)	3.0
>  \fBsetpgid\fP(2)	1.0
>  \fBsetpgrp\fP(2)	2.0	T{
> -Alternative name for \fBsetpgid\fP(2) on Alpha
> +Alternative name for
> +.BR setpgid (2)
> +on Alpha
>  T}
>  \fBsetpriority\fP(2)	1.0
>  \fBsetregid\fP(2)	1.0
> --=20
> 2.30.2
>=20



--=20
<https://www.alejandro-colomar.es/>

--2criuiobaob65q7s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaqFjIACgkQnowa+77/
2zI44g/8DpHhttN/O8y9KMsJjT58+ceBbHwPl2BFL5CcUm1AnI2G4ssGyrp2Fmkm
uyJGzHVa22PSpf9JfKvy9v9gobWrEpbJbqlwqCwgIS36LaD+QewJw1ogDaxvQbY1
jE3X5LLW/uZ8YwTyqJwWfqe/DJ7Z3Xtncy/nWNEWdO9cj1yQIPEenFDtKuurH/Ib
Jp8tFLbEJ660zDupwOCG370A/dfM8bOpgEXcMTvD0/bm7aiZkuDi9YcHty8uy9Gj
NufTdmjAdiAMg6Cew4NHF84gzfw6rNFJHid9t8D8Ic5JNnynsh2J5Itf7V+qZSBb
ZfiqowvF6aYzej54uH9AOFsIRq+RdC8hGP6KK8CqpD2jimM8MogcgOWGL07LBrab
kT/y1oZkb22KjDybAp1KkEe76vMhmtknEL3dCV3Tc6zwO+atpzK7/sFzjvLTzoq2
/BFUoiZmM/VoLJ8s7QoFYmYlK1fuecBQJea5fJkSMOGWLQeuy0HXxKMcQh09bdRE
l7cLmjtDSw7vG+j1lfG/6aNWr2Awu0gQs4SPile2aL0qEkJCIJRFzD4rSYSR/Apa
sj7yn89LynSmrbohjcVANpFYpEChVaCdkYQMUmY1Xx8R719P258M1yKVsl7SPHQ+
jR7u2mXDbd3NLBFFvDSLQX4145dlT3czSh9CEBoMyT74qaojzyI=
=LdBh
-----END PGP SIGNATURE-----

--2criuiobaob65q7s--

