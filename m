Return-Path: <linux-man+bounces-3200-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6109BAE332F
	for <lists+linux-man@lfdr.de>; Mon, 23 Jun 2025 02:53:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8CA553AF8DA
	for <lists+linux-man@lfdr.de>; Mon, 23 Jun 2025 00:52:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C52B4409;
	Mon, 23 Jun 2025 00:53:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CnMDFJrR"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D2C1853
	for <linux-man@vger.kernel.org>; Mon, 23 Jun 2025 00:53:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750639991; cv=none; b=rYYtnD1Itg9raHQJkQnPhm8CsWQu2t/84sayI0l2SYhVw6ngia1wjzParRaD0xbOPmdV9ufI2//2vhBUa9GWfAroydjdUOZpApf056NgC26u4oZtbxUaRaZJ9P8cmKtBOxiZ4Ok23YEJxdB1s6NidhP/GkYe5VAdGPPds44/nWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750639991; c=relaxed/simple;
	bh=WTHDF6IbW0S+UPeRffCQZ+kN7Bl6D6gkHgGbwheqtY4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MEIiKnx57YrtVe/yocbv0xjtgQ2YK2A04iTWInThF6gWkiconHF0prEuQDcyXCcsh+ckkvugyUjzesA5KG/l13Y2tJod+gO+pcozOGJWMHOL8hRs86KKnpzEvlRhCty7mKlJxeG7tuarmcXpUlW3hIuTFTkhzSAHQWABo6F5p4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CnMDFJrR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEF36C4CEE3;
	Mon, 23 Jun 2025 00:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750639990;
	bh=WTHDF6IbW0S+UPeRffCQZ+kN7Bl6D6gkHgGbwheqtY4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CnMDFJrRMNtg7EKvyhyEYFJZXcIBZBiwdJJoRyvBnUbeXFgI/ODUelTWstGuVj02B
	 OsDm+fT6ViPRPjLEx920vw/5fwZ6D2Qekx6X7ukEAbsdPMttGkPcSB9MYl8FeRz0Ah
	 SWDoHYOsFe/qBPgdTads7+qYQiZHojvtArWYebPQOdPNGMccf18Qs/9PaVCtHSpufl
	 XpaoW0R0YEFTqIr/EPu6Cus4OSWeLP2NbiJKFqodvshdKFReDKJ6O4IIAovI3RjJH+
	 bVI5cabU5MPoyMsCxMzU+M2ZGnx6YiIth2fTC7KhPC9PoBF5zxoi3uUJBECXjgyZlL
	 pAT63KHR2Pg4g==
Date: Mon, 23 Jun 2025 02:53:03 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 3/3] man/man3/ftime.3: Correct POSIX standards in HISTORY.
Message-ID: <ah3tltckbeelmrxwfmjkctjzolybkb7uqhvrvirm4d3oxupmww@7eiekyd6tq23>
References: <c9251b002761c8c5756780432e5fccd2bc58e67b.1750306917.git.collin.funk1@gmail.com>
 <830f11e40cabf6a3c77d2d12273fd8a399ba5ff6.1750306917.git.collin.funk1@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sye4ifi2e6u6e5t7"
Content-Disposition: inline
In-Reply-To: <830f11e40cabf6a3c77d2d12273fd8a399ba5ff6.1750306917.git.collin.funk1@gmail.com>


--sye4ifi2e6u6e5t7
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 3/3] man/man3/ftime.3: Correct POSIX standards in HISTORY.
References: <c9251b002761c8c5756780432e5fccd2bc58e67b.1750306917.git.collin.funk1@gmail.com>
 <830f11e40cabf6a3c77d2d12273fd8a399ba5ff6.1750306917.git.collin.funk1@gmail.com>
MIME-Version: 1.0
In-Reply-To: <830f11e40cabf6a3c77d2d12273fd8a399ba5ff6.1750306917.git.collin.funk1@gmail.com>

Hi Collin,

On Wed, Jun 18, 2025 at 09:22:11PM -0700, Collin Funk wrote:
> This function was incorrectly marked as removed in POSIX-1.2001, but
> that standard contained this function marked as LEGACY. It was then
> removed in POSIX.1-2008.

The old page didn't say it was removed in POSIX.1-2001.

	$ man -w ftime \
	| xargs mansect HISTORY \
	| MANWIDTH=3D64 man /dev/stdin \
	| cat;
	ftime(3)            Library Functions Manual           ftime(3)

	HISTORY
	       Removed  in  glibc 2.33.  4.2BSD, POSIX.1=E2=80=902001.  Removed
	       in POSIX.1=E2=80=902008.

	       This function is obsolete.  Don=E2=80=99t use it.  If  the  time
	       in  seconds  suffices,  time(2)  can be used; gettimeof=E2=80=90
	       day(2)  gives   microseconds;   clock_gettime(2)   gives
	       nanoseconds but is not as widely available.

	Linux man=E2=80=90pages 6.14=E2=80=9018... 2025=E2=80=9005=E2=80=9017     =
             ftime(3)

However, I agree that the order of the text could be confusing.  I like
yours better, but how about moving 4.2BSD to the begining to improve it
further?


Cheers,
Alex

>=20
> Signed-off-by: Collin Funk <collin.funk1@gmail.com>
> ---
>  man/man3/ftime.3 | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>=20
> diff --git a/man/man3/ftime.3 b/man/man3/ftime.3
> index 8ae808ec2..5cdaf3e70 100644
> --- a/man/man3/ftime.3
> +++ b/man/man3/ftime.3
> @@ -83,9 +83,10 @@ .SH ATTRIBUTES
>  .SH STANDARDS
>  None.
>  .SH HISTORY
> +Marked as LEGACY in POSIX.1-2001;
> +removed in POSIX.1-2008.
>  Removed in glibc 2.33.
> -4.2BSD, POSIX.1-2001.
> -Removed in POSIX.1-2008.
> +4.2BSD.
>  .P
>  This function is obsolete.
>  Don't use it.
> --=20
> 2.49.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--sye4ifi2e6u6e5t7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhYpW8ACgkQ64mZXMKQ
wqn9Cg/6AikKpbXuDTu/V7GU9sBWxzg9MQ0Mx0jd5+F8Z/9tkktOZEeJZB74YIxI
3+951cteiCifX/85MFc0/OM0ao9aZjH6vtWtTLId3FqVdTvsVD6MS3HBmBBBBLrP
lNcXfX56SwxvfOfK6KK3nu+a8l40KHebq+zjilJ6sgrvOXv6QDQZnQ5yjH1bHaT+
DYLdYhI2I1kV6Tx8ss5fsG6AQ3mdiO9+rqx+8nNZUm54Ama5RrBtFOhfMC/EgRbn
MuyDTo3d5a650YlRA1KCG4w1kqrOcx3HpBrR9HHuYbfJlsWTS4sfCriHluiYLR0A
Vd91DPbpPpJRwG/+ysPt8mqPEVUlioNEA+ZdeZVWUHEQKAltRMq5HOdxFH7yF9tG
xa/A30xbi3Iua/ll3SqmBMuMEVu4lvwLZT1vad4D8/nF+Ua6fEtzMI5kA+WtTVbr
W6ghcNElB0cKHw2aZI7shV/YiWXt+qeQbQE/mV4lmWxU7VWfAkGr/BbZYhK05KS5
XM2L8I/lLSgbCt6IxV1co+BhUxGeGynTsVAbelCTOC5tXmbAt1rUVAbIQ5ebwFji
KvSF+DZN4mQJ+f3GbJxCkYw6Jsf4FvOjm/bv/OLs9w848YdelASJZ1JqeLNw/Dc6
SjdWcYdRWykUP7jPCJ+Psv8o3RhGzzGlONH981wqqRUPX0RSNGw=
=SGP2
-----END PGP SIGNATURE-----

--sye4ifi2e6u6e5t7--

