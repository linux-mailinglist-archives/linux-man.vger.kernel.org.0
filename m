Return-Path: <linux-man+bounces-528-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A47AA8711EE
	for <lists+linux-man@lfdr.de>; Tue,  5 Mar 2024 01:46:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5BA011F216EB
	for <lists+linux-man@lfdr.de>; Tue,  5 Mar 2024 00:46:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37B0C5664;
	Tue,  5 Mar 2024 00:46:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="idjfC2o0"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBDFB3210
	for <linux-man@vger.kernel.org>; Tue,  5 Mar 2024 00:46:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709599566; cv=none; b=HaVcCBE88J+OwqanedlCi7sD9D3zrHdo+O7iuemIa8etWBTzdU/o1pOkDNFPGbK3iVXxFAaxW7Klxxv9hxYoJw9k3nCcVlE2TfCyYMEqBovfXC/TYKYif5jzZqJ1xMA55FdVjBUpkhwOKefth9nPBxdoyeR+pM8nbNYCtBvMQss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709599566; c=relaxed/simple;
	bh=E85EYs1xXJDLIEwYa/BON0/OrA4/E8pdDWsm+RyofKQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WpSRyTN5ylgpB5HXKgeu3LhcMgjXX/4qbNQE0kX9wB3jFb0bEw8bOkQQ1prJW5gujfJPoBeZGkQCxAGlbv/nKYPfGCt52wieXAqwZ4H8SZMpgIQxC+m6u/DQhraNZugjyxZo7+6HI2t+nWuXUJmlOp2HO40Fb1pc+pD7fOmQFEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=idjfC2o0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9F5EC43390;
	Tue,  5 Mar 2024 00:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709599565;
	bh=E85EYs1xXJDLIEwYa/BON0/OrA4/E8pdDWsm+RyofKQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=idjfC2o0mHqWHhjxosX1UZ2fx+AeYzEt5KnG7k+wLX0VhzwOXeY569m0qzQp7eWg0
	 G1uZs+UkPC8T7l1n8umXl/tNy6qzMHraNmOSaANT/3zgxcsQszr1/Vz+nWszComKQc
	 Os7KHdBSn6QwEFvV55exSiEXz9Ji6Cf5rsKVDDUuRJvStG1PrS74R20UfWEv2jV+ji
	 GaozNNcNUnMSj9n9OiBAKm0sRyH8PwqtpfDi4XWIr8Ga49b2r447PkgS5fcKTnmCXC
	 XBtD/lTnyxPvVrI0cA9AiIxrBBR9rifBiuejKhI0b256QFuuxrjr5j4WlZM7yNohrr
	 tEgxgs9Wb4Z1w==
Date: Tue, 5 Mar 2024 01:46:02 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Morten Welinder <mwelinder@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Man page issues: logb, significand, cbrt, log2, log10, exp10
Message-ID: <ZeZrSl0RgM4KfrdB@debian>
References: <CANv4PNkVv_0eLgiSP3L_KfC-eZJaVLZ5AP1AGfD0GNrR5M4Hrg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6U7CQu4VZKm8oplL"
Content-Disposition: inline
In-Reply-To: <CANv4PNkVv_0eLgiSP3L_KfC-eZJaVLZ5AP1AGfD0GNrR5M4Hrg@mail.gmail.com>


--6U7CQu4VZKm8oplL
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 5 Mar 2024 01:46:02 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Morten Welinder <mwelinder@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Man page issues: logb, significand, cbrt, log2, log10, exp10

On Thu, Feb 29, 2024 at 07:28:10PM -0500, Morten Welinder wrote:
> significand:
> The range [1,2) should be [1,FLT_RADIX)

Hi Morten,

I've fixed this with the following commit.  Thanks for the report!

Have a lovely night!
Alex

---
commit 6003cc006de65d8798a3324605c8b9d5abeef231 (HEAD -> contrib)
Author: Alejandro Colomar <alx@kernel.org>
Date:   Tue Mar 5 01:44:44 2024 +0100

    significand.3: significand uses FLT_RADIX, not 2
   =20
    It's implemented using scalb(), which uses FLT_RADIX.
   =20
    Reported-by: Morten Welinder <mwelinder@gmail.com>
    Signed-off-by: Alejandro Colomar <alx@kernel.org>

diff --git a/man3/significand.3 b/man3/significand.3
index e991a822a..f835f5511 100644
--- a/man3/significand.3
+++ b/man3/significand.3
@@ -36,7 +36,8 @@ .SH SYNOPSIS
 .SH DESCRIPTION
 These functions return the mantissa of
 .I x
-scaled to the range [1,2).
+scaled to the range
+.RB [ 1 ,\~ FLT_RADIX ).
 They are equivalent to
 .P
 .in +4n


--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--6U7CQu4VZKm8oplL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXma0oACgkQnowa+77/
2zIN4Q//Tz2Xc2VA68AJCctsSk6bZRuh9Yda6hHg/zwJQhw4POLCpgk/OTDtbRqY
2wQKL4lBhPziEj/7xzPZx7yKjFUQNI4pmnwvOIE6VoiHsUOIFpGOnvAF9KXxQ9gJ
b6cT1/bxy9OPb5WyAGw1tmvBeuvS+u/VPg1IowutM4cCTq7mUxFF6nNh2es8D2WX
zWxFgC+5oxb9OEgOWqOudfaBpp932nov50DTxzJfgYoVF5McaW9uYRryi11SdzP2
vfrXSHCRmkqyP8kX/lfXMyPNwm/RExDd635tkifFOgzd4ww/H1wU6yZB3qOSSwlp
lIMaNGiFZ/vnhTC0VRT4D9qlTra3H0Alx1d3u6DJc0apQujoqNPAxC2Jo9wkR/dm
DQsbhJuTrc5MC/TUFe9d6Z51hoLyuhmTHTfN3jlaMPL3nyCccCcR9/7NzA2H6YHm
TDXyq7UolpFr692KnpAFswhqkYt9FTXDLG/OzUmrhJbBYGGE+IhlYk+4htw3+Mw/
KsgYM8vw+XSzPlH7S6oQN8EqD4MB62VvtzQu9zDMfFkK8r40NqlGVk3kPI7u8I8W
CGQc89wEsYcO37a9f/CS7s2+YnASucu/nFmdlI7IZJu4tY3G0t6tD+XsE6aGb1O/
JnSWmiWZ+CHEzhauju60gVhYUeXMTXH3ScbiJEPpEt8bo7JmzdM=
=1j3C
-----END PGP SIGNATURE-----

--6U7CQu4VZKm8oplL--

