Return-Path: <linux-man+bounces-719-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF1D898372
	for <lists+linux-man@lfdr.de>; Thu,  4 Apr 2024 10:48:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 47F59B28359
	for <lists+linux-man@lfdr.de>; Thu,  4 Apr 2024 08:48:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 678E471B4C;
	Thu,  4 Apr 2024 08:48:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GXVu8QBQ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148FC71B35
	for <linux-man@vger.kernel.org>; Thu,  4 Apr 2024 08:48:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712220499; cv=none; b=L0rd50mGqPE679l0dhlBpg6ymDY/fDgfyY1uLtbkzll03Gxp4QFpq2I5KN2yMr9dv6pbt6pt6fA2n9eyTKKGuDKGO/vCsC871ojeULdjtrGsQhQp2OzUBz8R9tlekgEbUs0awcgWwnMuRD+vOOGItV92kDXVZ8QKyc7MZJ3FldA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712220499; c=relaxed/simple;
	bh=tPAGL7YCYm62cTEfV/ltN0aqsuHniV2ENFPd9iqVVDY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NYQA/bKJyiYRyS7/k9mc12tnXxU/l9BoC1OIwdbFOiV8hHOF18R3UTLugjF6NCxFCXTG2XpEKj2d+UMSBgpl2g1wG3SVjHWMiUE08DTGc4OFwmL9R+kIWeexKrTpdHUJ2orIcya5AyO6KggJUrARSMaMMDG/oLY53tsyHRjQwRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GXVu8QBQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AFB73C433C7;
	Thu,  4 Apr 2024 08:48:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712220498;
	bh=tPAGL7YCYm62cTEfV/ltN0aqsuHniV2ENFPd9iqVVDY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GXVu8QBQn7AIPaKxpx1dCSj4ItwnUb0wTCNK6uZ6D0DWIYgLPO2I/bNHh7ll2VM0q
	 YFCXMa1rkQkq4688GEKZNRqmsyopPZm4om1ajAVepRXji+5uKA6dIxP15O8pvxCMjq
	 bNWi3luNUzgsD+6gTE15kpv73FpRFeAaedYeyfqhRqajkYz+cRdHneOiwdGQ//8kxB
	 quadVySjqSv7amWM+YyjlVWJwMq7zuui9cyxBOi2rSer1YEKjLxPi+JbGjUIsSVAS8
	 z33YsCUE0hDXI/vyNCe2LQFZ+bAJdvnZtRssNkShM/frZTnZOyfs100laYT85wADzu
	 N3JnpkOd7nqYQ==
Date: Thu, 4 Apr 2024 10:48:14 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] sigwait.3: note sigprocmask(2) requirement, explicitly
 link sigtimedwait(2)/NOTES
Message-ID: <4ynz5rtgbin3icjeb5tqjr3uepr7j655i6jzgjszytei3mpl3y@utxg24elloqu>
References: <qbn6xlzwlmx5q67fhb2njbb26rllq4b2dtcquvzjlh72ryly2t@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dnexeenys6sc464e"
Content-Disposition: inline
In-Reply-To: <qbn6xlzwlmx5q67fhb2njbb26rllq4b2dtcquvzjlh72ryly2t@tarta.nabijaczleweli.xyz>


--dnexeenys6sc464e
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] sigwait.3: note sigprocmask(2) requirement, explicitly
 link sigtimedwait(2)/NOTES
MIME-Version: 1.0
In-Reply-To: <qbn6xlzwlmx5q67fhb2njbb26rllq4b2dtcquvzjlh72ryly2t@tarta.nabijaczleweli.xyz>

Hi,

On Wed, Apr 03, 2024 at 05:06:45PM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> This comes from a real user complaint. sigwait(3) is the most obvious
> of the family, and it doesn't mention any of the usage details.
> Most of these can be crosslinked, but not mentioning the sigprocmask(2)
> requirement is malice.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>
> ---
>  man3/sigwait.3 | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>=20
> diff --git a/man3/sigwait.3 b/man3/sigwait.3
> index 226a97e6f..b65cd4db3 100644
> --- a/man3/sigwait.3
> +++ b/man3/sigwait.3
> @@ -36,6 +36,8 @@ .SH DESCRIPTION
>  one of the signals specified in the signal set
>  .I set
>  becomes pending.
> +For a signal to become pending, it must first be blocked with

I added a newline after the comma, and then applied the patch; thanks!

Have a lovely day!
Alex

> +.BR sigprocmask (2).
>  The function accepts the signal
>  (removes it from the pending list of signals),
>  and returns the signal number in
> @@ -81,7 +83,9 @@ .SH ATTRIBUTES
>  .SH VERSIONS
>  .BR sigwait ()
>  is implemented using
> -.BR sigtimedwait (2).
> +.BR sigtimedwait (2);
> +consult its
> +.BR NOTES .
>  .P
>  The glibc implementation of
>  .BR sigwait ()
> --=20
> 2.39.2



--=20
<https://www.alejandro-colomar.es/>

--dnexeenys6sc464e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYOaU4ACgkQnowa+77/
2zJUzg//YPdjyfw5nHg7PMd12SHNze7N4CnIBpECOrzkNpBxEka/gugxTBSPHRnq
YDJ1Wry67udaSTHA5QJiCJXL8Jlga1pK27Mg3j5BNlBCwQ8qwN8B9VnpY/0nZeEB
8GTnUdTX84KPf2OcsV/8qJyC40+DR0vH1DHKI2zCB2CJb++6qRdpCAr1qKg1/hgj
NaJCzLE9YKvabFkDiJSPU9W3XU4SWaVrroXxZOysU3T8Zzndn9CYPUUbAtfoiMDn
5AhtzkkhqOenZcP2lPj/9YltyuRfB8jPo5+3mVUWjiQ1h8Iy3CoPynfn1WEre8F5
3w9hIuCkau2/MqasKP2EAOOWB4II1HIor1BMfYHHJBSQ/bexc76nlvjbGkEG0hXd
aYnRfw2JIf1cEJI4fT7M9cTUGuWqfufffnAJNm2BKHJyrOeP7n6TKQe0gS+uG49j
3JzFuQKDaBPAtZ5pyYby5brmKOgOpjt2CrDmZ6a4Jt1U+8sGSW8rFyMJVkboZdFH
aSkJx5u3ScH/bLpxoOQykxRCWwv7+lDNClbZGYLT/A0eCsYNrk58V3zWHsEoOW+C
ZSLBrYjVKgq7wovdlxz06xYuIUdN4uOHXFllxGBQ31YPSeI67HJdhCmlBFA0dGxC
LW3ecet4bQPRBTujQjTt78XrGjeIwpC68GEGwxHb1loJXBwgW7s=
=Q6F8
-----END PGP SIGNATURE-----

--dnexeenys6sc464e--

