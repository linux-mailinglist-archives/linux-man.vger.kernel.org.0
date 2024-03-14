Return-Path: <linux-man+bounces-597-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9222A87C14A
	for <lists+linux-man@lfdr.de>; Thu, 14 Mar 2024 17:32:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C3AC61C21859
	for <lists+linux-man@lfdr.de>; Thu, 14 Mar 2024 16:32:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78BF618E20;
	Thu, 14 Mar 2024 16:32:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DuUE/gvW"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38EC21A38D3
	for <linux-man@vger.kernel.org>; Thu, 14 Mar 2024 16:31:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710433920; cv=none; b=MVzRU0vDx+Z3uHUg6zf06uJbBB942DvUWvAadhb7DdlCXIuvdUtB5zY7bLecV7q9byCE2fVbMrPZP7FTaqFgMU0rcqsHPGKLz2DiDT+IbLzBVsD4ipGmi+4cE9Av89dCUKf8x5pJqB6VSoV6DEAAkblcRGVIKGUbKy4Lu+4sBlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710433920; c=relaxed/simple;
	bh=QTGRxg1comhPWbEZr1slHlnrFkqyk3vv0ETMWIm0RyQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dLjXmoMaMyeB5jW1gdSgptCjeM8eGeY5SLWoIS+69KEGKK4wbHtC3HtBivFmQ44xKjurBM5XibzxT1xF4gymvnci3KF+crjf693arpke63LjQGq4fIwc60tgIh2yJeOGburlVvCfJeTnVmkh+DSxG4toe5K3DBcYiaBy8DUwZss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DuUE/gvW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25B11C433C7;
	Thu, 14 Mar 2024 16:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710433919;
	bh=QTGRxg1comhPWbEZr1slHlnrFkqyk3vv0ETMWIm0RyQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DuUE/gvWQeauZuH92OiPrYyyK7IpDv3xQ+74OjWdnCIq+pJrxIyphoGb3ytqi/cFP
	 M8oJx/M97wmC9zGxFQnaBxf06CrHApJeRlpCvKZ9zkGk71bqdo/XOxBst+bu2BIISe
	 mRCQoqo0D3oIk3G7Mqx/TrxcF7tbRdR7YKDN/yv2BFOFN3CQgXN6s5wLWQ8KlKW3k8
	 WhkeD5d+Tl9p2giLnh+jXxx08nghHkujpZNa16KzafwEW1Guv8UScio6s82/IE/C7t
	 XHBZ8IBCjSpqb4pLHfPGAK+6MkiSkC4yOLmY3rMEoPpVf/tiIEQC2H/iHSTJiYydU7
	 nFDsK4TiAGN8g==
Date: Thu, 14 Mar 2024 17:31:56 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 5/6] getrusage.2: proc(5) /proc/pid/stat ->
 proc_pid_stat(5)
Message-ID: <ZfMmfTx-R-Ac78-g@debian>
References: <1513ee2073bcf0fae7bb720bcee8a8de847e5cf5.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>
 <e48a7ec4150f9b2930c4b8bbc53f66f55da77b75.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1DmOZqbpezND8EUI"
Content-Disposition: inline
In-Reply-To: <e48a7ec4150f9b2930c4b8bbc53f66f55da77b75.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>


--1DmOZqbpezND8EUI
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 Mar 2024 17:31:56 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 5/6] getrusage.2: proc(5) /proc/pid/stat ->
 proc_pid_stat(5)

Hi!

On Wed, Mar 13, 2024 at 03:26:52PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>

I've also added
  Fixes: bbc21bc4dbef ("proc.5, proc_pid_stat.5: Split /proc/PID/stat from =
proc(5)")

Patch applied.  Thanks!


Cheers,
Alex

> ---
>  man2/getrusage.2 | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
>=20
> diff --git a/man2/getrusage.2 b/man2/getrusage.2
> index 8323bef35..8baff09c4 100644
> --- a/man2/getrusage.2
> +++ b/man2/getrusage.2
> @@ -239,15 +239,11 @@ .SH HISTORY
>  .SH NOTES
>  Resource usage metrics are preserved across an
>  .BR execve (2).
> -.P
> -See also the description of
> -.IR /proc/ pid /stat
> -in
> -.BR proc (5).
>  .SH SEE ALSO
>  .BR clock_gettime (2),
>  .BR getrlimit (2),
>  .BR times (2),
>  .BR wait (2),
>  .BR wait4 (2),
> -.BR clock (3)
> +.BR clock (3),
> +.BR proc_pid_stat (5)
> --=20
> 2.39.2
>=20



--=20
<https://www.alejandro-colomar.es/>

--1DmOZqbpezND8EUI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXzJnwACgkQnowa+77/
2zIMFA//Zkv2HqzxKg7kovhs9nD9MZcPt2ulTwvV7bwUSpANrtiqv2BHrlFs/uMX
wUptAxwlyAy08qut2n6O3+2gtjOP6aDLmmbIH7JUOsy8SF5BhslPjDgotIGBhbOW
zPOyvs9WUsl7gP8U193iB0l5SDEuQlvPNOPqIpwTa+hJK6yfQWI6NGunaTqlqo3v
1Bb8LP0ncvjTjucKEZcFbCjM0UYl59u8RJOKX4OOG+eHdcNH7ero6YH6SNRmgnLr
u5OTKlV3lQ7iB3z8qOcURuj7g9KIQ2LycknYxytAP4Wwh32BqfNWMtQvZjqxQM5L
KiX7LbKLNIy7bMXLLUns9q7Fp0Cq+jXHsR7rzv2KBB1lFhG5Afd15jy7L8QnkWNW
8mRAy7dw8k+Q9QDZaM3FsFXZtyoWe7iIpMoU7BqIyyc7wlGieRDulOPCJx41WdpL
UcVoGDzpv2+239bkwZUhR8O7K4OGIGR9R2Ap1EnFkF/G8mcUpVJP4OR2Erykspr7
mMU59PCf3zME9mQnTft9K5ODPUBLWnQfHTrI2WtDYTopN70KSJov05hqeLo4/giE
ECnUwz1u21s5h8BzP6vhk/iR6eliIi5QtkVvnG3TCQz2GKm1x5HCzvj+/zR/S/vA
f1y5ZMmpGOodt/QSM6rLqy9IWtID2ITC+vekfoAlMguugj0+svc=
=FO7k
-----END PGP SIGNATURE-----

--1DmOZqbpezND8EUI--

