Return-Path: <linux-man+bounces-819-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A9358B40C0
	for <lists+linux-man@lfdr.de>; Fri, 26 Apr 2024 22:19:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C3C3A284510
	for <lists+linux-man@lfdr.de>; Fri, 26 Apr 2024 20:19:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8543D2231F;
	Fri, 26 Apr 2024 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCz6Mj8X"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44DEB1BF2F
	for <linux-man@vger.kernel.org>; Fri, 26 Apr 2024 20:19:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714162793; cv=none; b=m/GOgXT1h+Te853p2uxLnRiqXc8oBv8x6pafNOe8iqWjabVJwZWxXIY/ik3fKWAtUEERCkO10rnQKpaShMrUJPWQRYlQZJJAreyu/YlAoxvcCm4YeX10XDPc2/0oHASUz6hydd/IvGJkUA66FMKR8Mf0eBfXBqBfdmXmG76cbdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714162793; c=relaxed/simple;
	bh=xaX+vi/SN7NAAduY0d16ZkZJpDbgQHer50ErXCuJoe8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AosSH8997I7rlHgjZogFbwJrlvPECPgudtlc/+4j+lJ/TS13MGmZPBLOoHBi0B1PhiPwYpc/oDEB3Py6atjetP4DLTR3vM0scxjO2etg7wmPgwFf/voQpwqUg3MWCRfUop4Z36WBZN970tAiUH5db1aNkQj1jKDrg+U+r7tlMGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCz6Mj8X; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA53EC2BD11;
	Fri, 26 Apr 2024 20:19:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714162792;
	bh=xaX+vi/SN7NAAduY0d16ZkZJpDbgQHer50ErXCuJoe8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DCz6Mj8Xs4NLqd1eMO22AaWxCHW4dp7Jp9tS2I3cyWLLMB6SK3sRCRsNOLqwZ5+kT
	 0cw6EKNZ7wlnvqRGluJyiBGONMxNUqO0lfDzfiFnm1kJbyoR+DqYkiDoWcr5RVFPsf
	 oi7FvBrkuHrp9w27/FIk+3js+QrVFmucouiQ86vw6zZ4FGC3MzqVKpRMB2V5wWq7Ti
	 OQ9mETkjSR6HNe7zwQghiuQqGzfDopUM9eJ0V3IXYdhM8c5K5/v5K75vRQSH+XSP/H
	 /LvgL7lnZdrVxd/iEnr5UiG7Lhrs9bgpe72l1RYhFOah0lD19reKxpLphu6GQNqlNu
	 ZBeEgMoulhi3g==
Date: Fri, 26 Apr 2024 22:19:49 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Petr Vorel <pvorel@suse.cz>
Cc: Stefan Puiu <stefan.puiu@gmail.com>, Jakub Wilk <jwilk@jwilk.net>,
	lnx-man <linux-man@vger.kernel.org>
Subject: Re: Ping: Re: Move man* to man/ (was: Revert 70ac1c478 ("src.mk, All
 pages: Move man* to man/"))
Message-ID: <ZiwMZWmV8wt62xKS@debian>
References: <YxcV4h+Xn7cd6+q2@pevik>
 <20220907205304.nlqce37l26gezjqi@jwilk.net>
 <7b9c2ab4-6cdc-b4fd-1001-8721083695fa@gmail.com>
 <CACKs7VADwh0Qs8Zo7=biVzpOhSgMt5xD1BSBXdg82sPAcdjYOg@mail.gmail.com>
 <Yxr9WN7f3FEqKVRg@pevik>
 <ZgIk4mN4bXfsiiYy@debian>
 <ZiuhVmLAnm2r5xaQ@debian>
 <20240426180338.GA6871@pevik>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="EYrDjwLZk9CDqhIS"
Content-Disposition: inline
In-Reply-To: <20240426180338.GA6871@pevik>


--EYrDjwLZk9CDqhIS
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 26 Apr 2024 22:19:49 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Petr Vorel <pvorel@suse.cz>
Cc: Stefan Puiu <stefan.puiu@gmail.com>, Jakub Wilk <jwilk@jwilk.net>,
	lnx-man <linux-man@vger.kernel.org>
Subject: Re: Ping: Re: Move man* to man/ (was: Revert 70ac1c478 ("src.mk, All
 pages: Move man* to man/"))

Hi Petr,

On Fri, Apr 26, 2024 at 08:03:38PM +0200, Petr Vorel wrote:
> Obviously have files outside of man/ directory would be better than havin=
g to cd
> to one extra directory. But if you symlink it it should be ok.

Yep, I don't know how I didn't think of a symlink until recently.  :-)
I think this should be fine.  Anyway, I'll wait a little bit to give the
chance to others to speak.

Thanks for your feedback!

> But you know the source more than me.

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--EYrDjwLZk9CDqhIS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYsDGUACgkQnowa+77/
2zK/ng/9ECYDM1LgCQO+pcD1x3phPORhEmoGYqw0ZH8ApSgD2ESMn0/nXPjdCvim
kq0vazCTiryQ2tNzemiR4CY36lg8W+2t1goa77ucxXBbfCgdJigz9BQww0zOz9zQ
pe1StTasKntYd6h6uFc3o4tSdvLiJ61Gd1iniGE4D+hV4JCIk7CkhehJ7KLWdwm7
iUY6+cTAfYjz3oEVhob51JWstck6KhDS/ruQTVPm8lP4WfzFjlIPBDzHzkN1bLpo
Nwbp8TG5ffDldLUa0wLTUhCLp9oebt4/mAQjkYodgnyEv0v2c1nn+K150YdUJyXE
Qw2xsQuQ/UmL3BarQa04ZHdfFZUHvDy6g4YfzR5ns2NaKD0FtNN5Oonc4189R+Nf
no43QID20XEEs3LFLKnCPdTNc0SpS/b/evHPm92vkowNUS3PVclLi7VhyLXkG+V0
uMIZ0FTldvzZHfvhNBVtnf3IR20npzm7whNTF/jC9cNYwwkSfdXwUb3jDXMfpV5Y
vkVCWEOY0e+VIVBC2zbzF8b+mYb80qhkvrPbSTffP2dw7a9ObWZL6ITIelpRm6hf
oI6pRc+HR4JZMeDwqxnc1Prnu12sdl8pKGv/d5zRWqk/FxmY9o24qah+zDdHwguH
u0s9ZV7XyM7W6bh7beMmoGympkBhbWnsJfDn+1AOWCQykMYh1oo=
=v51a
-----END PGP SIGNATURE-----

--EYrDjwLZk9CDqhIS--

