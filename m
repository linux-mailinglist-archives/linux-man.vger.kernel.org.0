Return-Path: <linux-man+bounces-596-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EED7987C13F
	for <lists+linux-man@lfdr.de>; Thu, 14 Mar 2024 17:28:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8855A1F21E92
	for <lists+linux-man@lfdr.de>; Thu, 14 Mar 2024 16:28:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 915F773500;
	Thu, 14 Mar 2024 16:28:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BoU3L9Nx"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5013618E20
	for <linux-man@vger.kernel.org>; Thu, 14 Mar 2024 16:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710433715; cv=none; b=QqVdCVlfruvj7T6Z41LzCNSDLw99PlqXTn3XE90twm2ZpL5UlgN4SkcjVpD1K5i3a/RiF7lPVUWn9XW9omRClQq/204I4/UBiOQwioFeD4Xr4y+wwJ9OM1KIBC3np6MKxT1NW9EXovZ6/5ID4M2iiISYpq5zdQFHGGpNLPYkY+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710433715; c=relaxed/simple;
	bh=izMknHvSjABflMZ+OQ71qIkVGuROM2+HfDvj3IpIESo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uJlRk3aWTdyfHwMATiRAD5l/g70MdNee0HQnbVbeD17CaLcBRjVXOFjlKnEKMogBXa/FtueJSeYcXjVDYVARHRNgmGZqb8aNuQJC67e6BuoVe1NEVr4Nfk1C5g+TLZnpD0eKgbzPqFBGkrx6+3DpdGFyK9WEeYZh4qK3jjMCpp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BoU3L9Nx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F3ABC433C7;
	Thu, 14 Mar 2024 16:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710433714;
	bh=izMknHvSjABflMZ+OQ71qIkVGuROM2+HfDvj3IpIESo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BoU3L9NxergO0EniNDjFCpEwDGHfF9pyQ5/m8TolHBNbc2VHNUHIM17MaB71wuWCm
	 8Iabr5BOyFIpn9y/h1kAEMImhf/20WPqzyQRrY8auYVEjNQ+B/mrcNi1sTCibDK+Vl
	 2dILcvtQAcAsLyYXlc8SpkNYOtQ8+BweawP0scDjySKtQAqpAsXDbw1fZo4CAKWDHA
	 HO7cAGpzEH8agU3bna9v/OmMKvZI7p+TVurou41Zw1cr9Vt2qtoUf9BdPMKIRQ2TEM
	 st00xz7zS0xB/0f1rIYzlUcLpWJ2TGpH671xvzrWhs0ASYTXA6K1GS3eEvYCErRkMs
	 3RIyE81SoKrtQ==
Date: Thu, 14 Mar 2024 17:28:31 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 4/6] proc_pid_io.5: mention atomicity in atomicity note
Message-ID: <ZfMlsHDbBT-sswDb@debian>
References: <1513ee2073bcf0fae7bb720bcee8a8de847e5cf5.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>
 <bf3b3c49fca51b0fbfb85fc905bfc9030f106d1c.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3/KJiNzVh/7dBAeX"
Content-Disposition: inline
In-Reply-To: <bf3b3c49fca51b0fbfb85fc905bfc9030f106d1c.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>


--3/KJiNzVh/7dBAeX
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 Mar 2024 17:28:31 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 4/6] proc_pid_io.5: mention atomicity in atomicity note

Hi,

> Subject: Re: [PATCH 4/6] proc_pid_io.5: mention atomicity in atomicity no=
te

Please use uppercase after the prefix.  That is:

	proc_pid_io.5: Mention atomicity in atomicity note

At least to me, it seems to help see where the sentence starts.  Maybe
you can convince me of the opposite, though, if you try.

On Wed, Mar 13, 2024 at 03:26:50PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> And drop "current implementation"
> (wording still literal from Documentation/filesystems/proc.rst).
> Of course this describes the current implementation.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>
> ---
>  man5/proc_pid_io.5 | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
>=20
> diff --git a/man5/proc_pid_io.5 b/man5/proc_pid_io.5
> index 4d97bd95f..181717192 100644
> --- a/man5/proc_pid_io.5
> +++ b/man5/proc_pid_io.5
> @@ -82,11 +82,10 @@ .SH DESCRIPTION
>  .RE
>  .IP
>  .IR Note :
> -In the current implementation, things are a bit racy on 32-bit systems:
> -if process A reads process B's
> -.IR /proc/ pid /io
> -while process B is updating one of these 64-bit counters,
> -process A could see an intermediate result.
> +these counters are not atomic:
> +on systems where 64-bit integer operations may tear,
> +a counter could be updated simultaneously with a read,
> +yielding an incorrect intermediate value.

Hmmm, I think this should be a CAVEATS section.  Since you'll have to
send more patches for this page, would you mind adding one that moves
this paragraph to a CAVEATS section?

Anyway, I've applied this patch.  Thanks!

Cheers,
Alex

>  .IP
>  Permission to access this file is governed by
>  .BR ptrace (2)
> --=20
> 2.39.2
>=20



--=20
<https://www.alejandro-colomar.es/>

--3/KJiNzVh/7dBAeX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXzJa8ACgkQnowa+77/
2zKBbRAAjRrH+yDRdcjMSLU9cIAPqInEfBdTRdVo7MNqM2gJh2IDzteDKfYlh3ic
q1M9LcZTMdZq+wQ33wrB4l/SFl894GfFzttvy8O0/BAnQdLkuR2z3lvf9NNbpxMT
rnoPGgCUxdeNeX9lMiv9CftyYwyouN31kofSC0ImG0A8QNNQB9IsdL+yURs7MZdh
Hx0r1GPtzAVIWsMOTz7XlKuAW6PeiyYIdMbfydaBHOGF6wR8wl0RnqWNhLTWWckh
BAhtZlcwD4TS8LvZGlrVyWH54uJ0WUjXfShPqrMx36O1Cwud3/aeauo2/kvzxkpA
YRTQxsEUxlfpNUXMdgHyfPOyYVdLdEMivl07hdQ6cKfLDa8Wak+FKMLekbMnOBoU
PFJug60tX3p4+BxsHyojMc3ze+YBlPzT5KT4WEXN/HIPzY0ljT5OMD7rJ81mssJO
OLfms+6vozKvccvdwqkJlNAJRJOXq5wAoIABxYBc3/+hGq9cYFHbxQH1UNZXP6RB
26VwLKmiJLUjZg3gOTc0pLHMbdTuoCf62XxXXK2lPpWettdB54p64P4l2BDYhaaq
B02RHoQOvxkkv/js4L2G2GCCkSeWMDtVywGdbwBO1IxjHtw5f3V42p44yKu4lPxt
tjxjYEMZKU7w5VZWmMhoklgzSRHfP1B3al8oDC1NbX42gSya5SI=
=OaR8
-----END PGP SIGNATURE-----

--3/KJiNzVh/7dBAeX--

