Return-Path: <linux-man+bounces-3448-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EBC2B27CF9
	for <lists+linux-man@lfdr.de>; Fri, 15 Aug 2025 11:24:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7FC2E627159
	for <lists+linux-man@lfdr.de>; Fri, 15 Aug 2025 09:18:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CF0F25A633;
	Fri, 15 Aug 2025 09:18:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ad5YtX19"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE8D258CC4
	for <linux-man@vger.kernel.org>; Fri, 15 Aug 2025 09:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755249504; cv=none; b=CsAdGqFFIZAbX1+kuwncCErrHNBAtS/pm1J1z2cvHvPTnU6NbcaUkzf5QoOELMFlSIFT3PthVgDM2RoXIeCBLwIfsMa6uHqrKj2bYxlA6icNURbCTtK6lU6QejNAdXRSSC8nv+OJex9ne1dIp9uvKu1g0Ma2LwZcSPc2fE4oo2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755249504; c=relaxed/simple;
	bh=iTLWNZZqPux6CmSSz4qyB9K/b3di6G+THS1oJM5dhCc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AgwgfvuPAnGksj6/I4HnrugmdKxZyblYXvPFuwOqtFJ+hJL6CDw1LSfCI6YqKrdp5eP/t5Poq+vEw53Rw79Um/HXC8UXUddaXFwIB7xGiE3lCUXgTEv5l8lnQ3Dnpg9Kv4Jw1bu2I6eadXHSqXIyb8MM2o4tAUd1Yxi+diTYfV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ad5YtX19; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10313C4CEEB;
	Fri, 15 Aug 2025 09:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755249503;
	bh=iTLWNZZqPux6CmSSz4qyB9K/b3di6G+THS1oJM5dhCc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ad5YtX19QSSzY9MOiU4PBRsYHMYP0KiEhbhTBSe1/5yU0GEwSsLMZwuoacLL4ReT5
	 jloDO+ffPzOyicrNvwdTMlWEwYvl28kSVJjYf8BXrLhLyucKuUtU09E9BkP+C7pUBf
	 mOYmgXqs4bFU3TIiiixzR4aV0GaQta1Uv9jvHqH7JA+e3WOGnxCA3usyoOtTObwYwb
	 ajL2hwvR7nlbconjCzND2/bj716euYrcoPYhWeqf1jLyqOQH3HEgb4K/+5izcJrIUE
	 SkDOsPDn5i2TV14viJsEb0/dEESzf/phXunyFE1JFbSot8Sh35G3J7ltHFaJSjkNaK
	 8zkWXByO1zO2w==
Date: Fri, 15 Aug 2025 11:18:20 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "Klebsch, Mario" <Mario.Klebsch@ime-actia.de>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: bug report: sendto(2) is missing EADDRNOTAVAIL
Message-ID: <ozouxtgdqrp4ojymhcbd3hh337uuxvo3s2rzg5soa7lapibj4o@nlh4sqc2znui>
References: <e885aaf5f35b44ceb76703067cc82639@ime-actia.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="p5ye7klrpimp4bv2"
Content-Disposition: inline
In-Reply-To: <e885aaf5f35b44ceb76703067cc82639@ime-actia.de>


--p5ye7klrpimp4bv2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "Klebsch, Mario" <Mario.Klebsch@ime-actia.de>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: bug report: sendto(2) is missing EADDRNOTAVAIL
References: <e885aaf5f35b44ceb76703067cc82639@ime-actia.de>
MIME-Version: 1.0
In-Reply-To: <e885aaf5f35b44ceb76703067cc82639@ime-actia.de>

Hi Mario,

On Fri, Aug 15, 2025 at 08:49:36AM +0000, Klebsch, Mario wrote:
> Hi,
>=20
> I just stumbled on strace reporting sendto to have failed with EADDRNOTAV=
AIL on linux:
>=20
> > sendto(4, "\377\0\0\1\0\0\0\0", 8, 0, {sa_family=3DAF_INET6, sin6_port=
=3Dhtons(13400), inet_pton(AF_INET6, "ff02::1", &sin6_addr), sin6_flowinfo=
=3D0, sin6_scope_id=3Dif_nametoindex("eth0")}, 28) =3D -1 EADDRNOTAVAIL (Ca=
nnot assign requested address)
>=20
> I looked at the man page of sendto(2), but EADDRNOTAVAIL is not listed in=
 the ERRORS section. =E2=98=B9

Maybe it's covered by this?

	$ man -w sendto | xargs mansect ERRORS | MANWIDTH=3D64 man /dev/stdin | he=
ad -n8
	send(2)               System Calls Manual               send(2)

	ERRORS
	     These  are  some  standard  errors generated by the socket
	     layer.  Additional errors may be  generated  and  returned
	     from the underlying protocol modules; see their respective
	     manual pages.

If it's an error of sendto(2) itself, would you mind sending a patch?


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--p5ye7klrpimp4bv2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmie+1YACgkQ64mZXMKQ
wqn+QA/+OkiVb2U0EeLJhXpjXL6vZWmsXn4EzGazktNgG0H++PnYRHzD3FJ6+eDB
q3xiw5edhhzBkxfdgBgCPUkLmys0kipc4ZjLleo4o49IHXR6F0tPxyGMB5Tq2miN
cf6ufVCKl7Tq3LJFfp5vcjyNC3MtQoPxJL88Q33z1w9QEqKf6JBwY+x4c1BvsKHI
4tDEI/+0E6IUOcF5UD3++rn7GqvOAsDODWO1U+Q4l3IgenL7R6YBySsldsWy3BWk
6k4VZtjsGx9Hl/r/SPho11ZbrjWL4/ZB5q4C5+wsODl+1lmhNfEhGil5Azi0KPfv
Cs93RIRoXZUdI/r+C1HCrpX2rdawElnIVj0bK5VlCebhk1m0v2UGUglXht0mO40x
FzbIW+/Z4FEdmyYWgpBgyFoUlE11H7TRNCY+kwHuL0K661heWn4XrKrOB36NnbFj
RJlZx9Q93wHnXgXfdhxGpV9Vh/CWSYKjjX9FvKgs6YeI5/9EBQdqBuNBuLfc6KJX
4JWWvWbqEbrYQRu06hm6eECk5ec3oQ4wVa9OQPVBnj4RBtp5Lrya6BZf3NYjB0+5
8J0pBS/lQ3ujL99PpPPIshQd/PvhKtX+FmeZjNut1iMUHoSmV+EywHG8Vrtrs3sC
VsNyGGybiisC16tXdMSLxweaj2zr6iNVE824qqdoXEAT9NrkKIc=
=NSEi
-----END PGP SIGNATURE-----

--p5ye7klrpimp4bv2--

