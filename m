Return-Path: <linux-man+bounces-530-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC6C871232
	for <lists+linux-man@lfdr.de>; Tue,  5 Mar 2024 02:06:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6B073280EFA
	for <lists+linux-man@lfdr.de>; Tue,  5 Mar 2024 01:06:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FB2710979;
	Tue,  5 Mar 2024 01:05:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JDALzOqi"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30205FBE9
	for <linux-man@vger.kernel.org>; Tue,  5 Mar 2024 01:05:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709600758; cv=none; b=FU6V29LnnGL/7fzTsHhkDZmalMNMAv7lVtLGNEqtmcfx/Hbr5DW34fWHFBeSzccseQF7iJSLJpWKCe/RmVu3YkxZeKCIGqGANDewkWd22mhlAlLxLXttfr6H1bduJfg4q1e3FO7trjsopAyKP7C4rVuRjT36MCWIq58JFNC6Xss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709600758; c=relaxed/simple;
	bh=V3AwvqLCdbb+XKq+wo4BIlNuc87HYkEoPCchUKGyQyo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oECoeEhHhZdYBN/c8QHCbVavYCr27k8YoYb9Q1eF3xYwXxb74D6m3slew5XUmxSqI6g1J8ndRoRKGPDNqdyFjUrtEpx1Ms1C7Hu3NSCWJEJiiGIkAiX8zkl7ijKcluj5My5TkPYgUa4XNNRf2hD7RAUA6j7haKX4myJolA3FmvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JDALzOqi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD136C433F1;
	Tue,  5 Mar 2024 01:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709600757;
	bh=V3AwvqLCdbb+XKq+wo4BIlNuc87HYkEoPCchUKGyQyo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JDALzOqiZ9BDh5jnA0Ujdp9cHZYAz9RG8naTFqTnCpOJk4fhHBi2d7sGeJNpKYcdY
	 cstUlJypkiTmZRSewUofw6GO9Gah7n1PASrLZLCT4nEP+j0qKqxlDgyqzCtbiQCgZL
	 dkQAVfzaQQWWOsujMEcOI3wHBNOhoAhL9JJUyjUQJ53HY/3JdH223lkgHPXYpeKzct
	 pkeE86Fx37Pqd9B3UjolQ4CTZX2o/nCtorlBksAqNjVOhp2p2Ez/VzJ6T6WqJvfAUT
	 r8IKmWzAaURF4sSmisPo5SUjn+RLFd76xvdoLZn0p3A2c/3hpQS2NxJp4V84c5jAoS
	 HmrF4uzt56MwA==
Date: Tue, 5 Mar 2024 02:05:54 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Morten Welinder <mwelinder@gmail.com>
Cc: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
	linux-man@vger.kernel.org
Subject: Re: Man page issues: logb, significand, cbrt, log2, log10, exp10
Message-ID: <ZeZv8gYTX9oExwMx@debian>
References: <CANv4PNkVv_0eLgiSP3L_KfC-eZJaVLZ5AP1AGfD0GNrR5M4Hrg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dZkdYetWpTdYadiX"
Content-Disposition: inline
In-Reply-To: <CANv4PNkVv_0eLgiSP3L_KfC-eZJaVLZ5AP1AGfD0GNrR5M4Hrg@mail.gmail.com>


--dZkdYetWpTdYadiX
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 5 Mar 2024 02:05:54 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Morten Welinder <mwelinder@gmail.com>
Cc: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
	linux-man@vger.kernel.org
Subject: Re: Man page issues: logb, significand, cbrt, log2, log10, exp10

Hi Morten,

On Thu, Feb 29, 2024 at 07:28:10PM -0500, Morten Welinder wrote:
> cbrt:
> The phrase "every representable real value has a representable real
> cube root" is wrong.  In fact, a representable cube root is quite
> rare.  This should be something like "every representable real value
> has a real cube root and rounding it to a representable value never
> causes overflow or underflow."

Thanks for the report!  I've fixed it with the following commit (your
wording, except for a 'nor' instead of 'or').

This one is also present in the glibc manual, so I'll also send a fix
for it, Adhemerval.

Have a lovely night!
Alex

---
commit da7bb7434ce8b20deaed58cac9e942c3531a5db3 (HEAD -> contrib)
Author: Alejandro Colomar <alx@kernel.org>
Date:   Tue Mar 5 02:01:34 2024 +0100

    cbrt.3: wfix
   =20
    On Thu, Feb 29, 2024 at 07:28:10PM -0500, Morten Welinder wrote:
    > The phrase "every representable real value has a representable real
    > cube root" is wrong.  In fact, a representable cube root is quite
    > rare.
   =20
    Reported-by: Morten Welinder <mwelinder@gmail.com>
    Cowritten-by: Morten Welinder <mwelinder@gmail.com>
    Cc: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
    Signed-off-by: Alejandro Colomar <alx@kernel.org>

diff --git a/man3/cbrt.3 b/man3/cbrt.3
index cf9c41771..64fc3c072 100644
--- a/man3/cbrt.3
+++ b/man3/cbrt.3
@@ -47,8 +47,11 @@ .SH SYNOPSIS
 .SH DESCRIPTION
 These functions return the (real) cube root of
 .IR x .
-This function cannot fail; every representable real value has a
-representable real cube root.
+This function cannot fail;
+every representable real value
+has a real cube root,
+and rounding it to a representable value
+never causes overflow nor underflow.
 .SH RETURN VALUE
 These functions return the cube root of
 .IR x .


--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--dZkdYetWpTdYadiX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXmb/IACgkQnowa+77/
2zKsCA//XEzvnrRODTosMN7Rd0M9o+ThEdH1XWUPpScBi9/LQX81iOd89i7N4krC
+aHf9BoTCSjMbfcMBwsBITXQ0h3amfXoqnXBBdUBGmJsTKyXDaP+B+3SPY8m6X/Z
n9NlxILISwWUoHTaPf+GmOs0S5gmpu8eqpqyje9OAO9binNfV7Lu22pBuEmzzNak
Pn3/Sd3XZdiJK2J43P/5vyh8ov9rTrMz9zZ+RX3Orzb88WrUVmTDtqaOCZjMU/0x
GRxorublA1LPjl0iYO9AR45hyFgSbMUkHwaLKMpH9z2LdUhSWRIxHpJoVIah/9V/
NPAxeA0VmX9i6VixtWmoBxWmPFR7z8vtB72R2r/LIYgEh9lZa0Fdu6I3ZF6Nk4Mb
w2pi4S7h6UKUZGLzunqAxu/uX3YK9ermCCEaCp/S3Y6jjrOPAZf1P749Zqz5KegZ
BAVXTYajC8Ws81Fyy9RnM6sVed/tPnpkvLHt/s+s8QIhRlDSvrr4y4JwkHCmHyGU
VkVvTPjRyUBPagfugxSpUY73WnIMTR4DOIRbXds9OpU046qE2pIeoz/+MZkXRsUs
6Mkp4xBiN7uXQw4Y2mRAP/giNY9gLmY5Xsrr3wHuL7xAX0uVsU2GnojspikstuPD
5uKe5qCUKnUYquDwYlvXuwHZ6mg3M35UvwRbf+r9wvYR2302Big=
=oGmy
-----END PGP SIGNATURE-----

--dZkdYetWpTdYadiX--

