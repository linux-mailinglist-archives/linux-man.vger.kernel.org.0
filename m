Return-Path: <linux-man+bounces-525-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 15972871106
	for <lists+linux-man@lfdr.de>; Tue,  5 Mar 2024 00:24:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C4FF6287992
	for <lists+linux-man@lfdr.de>; Mon,  4 Mar 2024 23:24:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 231157C6CA;
	Mon,  4 Mar 2024 23:24:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hEd18Faz"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8B981E4A2
	for <linux-man@vger.kernel.org>; Mon,  4 Mar 2024 23:23:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709594639; cv=none; b=ly+5QAP0s1QaeDF5wISxf3pppA0z+JwXWM2Kiwp1lqBq/DodpPOikR6FXe/rN4tYA922n4UPIKNxS31zCYZURQWhd+aMx4JRSdsMYrZm9tHvUnu5A0RktF7zlbvVnnChl+Y31ZznK2kYrbqR9KYV+F2SoY+zXWvFVOGTHqKZRSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709594639; c=relaxed/simple;
	bh=Fmyz5nWjG0202XV8N2BXs0bEUyo4STNxD6VSUgkILio=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FqjGnZBwPfJlN0WgMD3IQ/sPlE2YPLZNF15xG/GGDwOhPJYo4YynR8clgTxoQ2WimGL2MLPE9Eb53sSzOSXYxlF+iMG5J8JdlktyDcsqvYwhb5mOJ4uSDg5RVVuwxsxf55molVEHpTzUUji/lhCi9ZoMWrqJRrP45cEUm3mYk48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hEd18Faz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68C88C433C7;
	Mon,  4 Mar 2024 23:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709594639;
	bh=Fmyz5nWjG0202XV8N2BXs0bEUyo4STNxD6VSUgkILio=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hEd18Fazgb2nCXCWlNUB2lUv1F93opbOaMzzIteLkkZqTb/2gfLD5o9kzEGiay/dH
	 MKJIKJcNwZM9RYtyYVO+zEwzP3N5AuhwU2vgABDoyCRBo9GuhaDvkJ0mrCpmvECwHt
	 wghtlgXlYym1oPBXjVNt+xaJR9Yq3TA4Y+A3AxEAihpjJ7yVl1aLkzVtsevKeyPfe9
	 W3vUVsEe1QyxUINWJpM6hcEYoUuIT9DDK//9dRHBEbF5PyCjmPgPtd2igYxbiAEH4T
	 cpl50vPrmHyxQXYNW221hHmbnVq4396l2ym2P5TfFRqnDs56WUDg+4rbBXlD8Mkxq3
	 PsR4n1CtmPUww==
Date: Tue, 5 Mar 2024 00:23:55 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Morten Welinder <mwelinder@gmail.com>
Cc: linux-man@vger.kernel.org, libc-help@sourceware.org,
	Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Subject: Re: logb() vs floor(log2()) (was: Man page issues: logb,
 significand, cbrt, log2, log10, exp10)
Message-ID: <ZeZYDK7YNG7ptETN@debian>
References: <CANv4PNkVv_0eLgiSP3L_KfC-eZJaVLZ5AP1AGfD0GNrR5M4Hrg@mail.gmail.com>
 <ZeYKUOKYS7G90SaV@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="K/U1y6t77QUWsxsX"
Content-Disposition: inline
In-Reply-To: <ZeYKUOKYS7G90SaV@debian>


--K/U1y6t77QUWsxsX
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 5 Mar 2024 00:23:55 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Morten Welinder <mwelinder@gmail.com>
Cc: linux-man@vger.kernel.org, libc-help@sourceware.org,
	Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Subject: Re: logb() vs floor(log2()) (was: Man page issues: logb,
 significand, cbrt, log2, log10, exp10)

Hi Morten,

On Mon, Mar 04, 2024 at 06:52:10PM +0100, Alejandro Colomar wrote:
> > logb:
> > The formula "floor(log2(x))" should be "floor(log2(fabs(x)))".  (Or
> > ...abs(...) if it's meant to be math and not C.)

I've applied thge following patch:

commit 1d83ce827aac984a26430b4f6107182f4b076874 (HEAD -> contrib, alx/contr=
ib)
Author: Alejandro Colomar <alx@kernel.org>
Date:   Tue Mar 5 00:20:09 2024 +0100

    logb.3: logb(x) is floor(log2(fabs(x)))
   =20
    log2(3) doesn't accept negative input, but it seems logb(3) does accept
    it.
   =20
    Link: <https://lore.kernel.org/linux-man/ZeYKUOKYS7G90SaV@debian/T/#u>
    Reported-by: Morten Welinder <mwelinder@gmail.com>
    Cc: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
    Signed-off-by: Alejandro Colomar <alx@kernel.org>

diff --git a/man3/logb.3 b/man3/logb.3
index 7cbb2470a..7a1ad2f4a 100644
--- a/man3/logb.3
+++ b/man3/logb.3
@@ -58,7 +58,7 @@ .SH DESCRIPTION
 is 2,
 .BI logb( x )
 is equal to
-.BI floor(log2( x ))\fR,
+.BI floor(log2(fabs( x )))\f[R],\f[]
 except that it is probably faster.
 .P
 If



I'll push it tomorrow.

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--K/U1y6t77QUWsxsX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXmWAsACgkQnowa+77/
2zLKVA//cq1s5qhtAad6kTqErwAzlHSvW2KVE72t7mC1S9Ej167RiuVlq8x7Q6h7
HmxlsrgKxihz3oANrUPRvBNMlRnhACppmch/cY2zzp9feSxQEG4vRrRGgEdG97Vq
rC1vT2UhAxkJ6AzwW2IN6KWLecQY0FrHF2xuxg6CBmzZCY34w9OZ8SXx9IPos13l
fHPeO4z0V8kb4femgaYjT8pbISxJVwcoobO9WCYHMjPqBo5raTWhc1+EbKcihq+h
XlX30045A8uFndW5PK3n+HAAo3yB+189VQ6zLiBKKvplw8XzidjAd4ZckCtHzbW8
od5NckdtNioSsVynlkwJD//Z6p4Q/I6zy0dVpXGuzHhx3MZwhgGtxxRVe4jmVp4h
I97a4RSwnaVIyxAHIZROGr6GRYAyGpNDZKq1Os2skKGguDs3jw/0KGTFctc2wMU9
sAek0rrEAKbgeu3pv+Xne5q/XuVqKupulDieGzt+YRWzUYW5oRVfeTN1G79TtIts
zDbE28qh9EkYMDGIK85fh2QIXVbVD9c69lYqupjtDMoMJKQXdXMPC7y4ty979DUq
vQVF5xzAbTQp68pj9HweJoG9bt7+dzml1eflnCtV+elfmL40EcTQyvXWXhHmyLhY
piCxinEhcoX4EC8bcbmR6xPUkxBpmqa83rnXItoTSHYEtz+vM48=
=9g8r
-----END PGP SIGNATURE-----

--K/U1y6t77QUWsxsX--

