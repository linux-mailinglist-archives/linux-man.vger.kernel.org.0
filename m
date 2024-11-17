Return-Path: <linux-man+bounces-2017-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B64D9D046E
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 16:10:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 253DC281F8A
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 15:10:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C0071D89E5;
	Sun, 17 Nov 2024 15:10:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RYpXL7VX"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E04477DA68
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 15:10:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731856216; cv=none; b=ABDu3Z0lGsloKJIM3klF9vTxtAgmGBCHY+Vm6L3se3d/Zn/+Y1Rk54+J9iWhAPZhBbs1JMMsjj4MOOBMEYB5WfjELyTJJm01xsFyh79NSj5s0PlVmTbQ4PH36o6Eh6zFCTLfmpOzuPUkCkt9uvLh3nDQ9lCzklowiau7bgL6xms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731856216; c=relaxed/simple;
	bh=C6FFMpn5SmpX8dXt2IMIX8BoyQ5wS4oglLu+vj+RLs8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZD1HTCOu7qGWkZ+OhIZIbe7OiURU23H3Uw9avmPRCkj5MOBYHvhM+npjIRjljlyN5ahtn4eP92s4gnt98mzA2ozHnQWpqAHHZ1FI4nZ/Jrhq7c6NZ4MW8bDBtcqoKP/VaId37zQSPKy4o7+mbRu6tCFJ4zJXAVrryAmO2cuyXMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RYpXL7VX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4C0CC4CECD;
	Sun, 17 Nov 2024 15:10:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731856214;
	bh=C6FFMpn5SmpX8dXt2IMIX8BoyQ5wS4oglLu+vj+RLs8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RYpXL7VXlLYVHYdKCrWiMb6IvZMSjpdVStTPWY4taiuZkP12TFwizz/IWtCvKHZg+
	 gGndAo/WntAHeQf2bQtTbdzP2dbvCb/t+R4/UEhSAo8Z7OiF+FjeCcZDCT0rS5iEuN
	 ECN+y6jeZmlSNcfJcD50uQ+KykpTn0ZpyM+SCcVGbKAfKdPOfXpQdwslXQiTflRUtH
	 AqiCDi05IHVP1iiWmRn8Tg7m81NGIJeLRu7YALKVLp4jbNvTmL2OPWy2bSskWlizcG
	 0QQIfoCCfmG9J7uCnShUQvKt2TGm9mpWrWVljsRDyzC74+gnky+/7SjEE/A3CIfr7O
	 NbHsHz5qVDtPQ==
Date: Sun, 17 Nov 2024 16:10:11 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page remquo.3
Message-ID: <qi3zvrpfp3kjva7x7t2nx3pib4mihjdgmm3oxc3o5jnpke6vwg@as3wwgq34myp>
References: <ZznJf900B2F5LgrV@meinfjell.helgefjelltest.de>
 <vxkhytkjj6tacxxn52vjw3acxd2nui3yut4hy52ipmz7lomhsg@r3mciiohdixq>
 <Zzni2BTz1UHU7IXP@meinfjell.helgefjelltest.de>
 <hbibcoxzivfn3l3ys67sbhs2j7ubcsqlhkomu4euqzn2mcqxhn@zh3reluma6ol>
 <ZzoF41qS65rQOqrp@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oiqgvq2rczuuu2vs"
Content-Disposition: inline
In-Reply-To: <ZzoF41qS65rQOqrp@meinfjell.helgefjelltest.de>


--oiqgvq2rczuuu2vs
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page remquo.3
References: <ZznJf900B2F5LgrV@meinfjell.helgefjelltest.de>
 <vxkhytkjj6tacxxn52vjw3acxd2nui3yut4hy52ipmz7lomhsg@r3mciiohdixq>
 <Zzni2BTz1UHU7IXP@meinfjell.helgefjelltest.de>
 <hbibcoxzivfn3l3ys67sbhs2j7ubcsqlhkomu4euqzn2mcqxhn@zh3reluma6ol>
 <ZzoF41qS65rQOqrp@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZzoF41qS65rQOqrp@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Nov 17, 2024 at 03:04:03PM GMT, Helge Kreutzmann wrote:
> Hello Alejandro,
> Am Sun, Nov 17, 2024 at 03:37:34PM +0100 schrieb Alejandro Colomar:
> > On Sun, Nov 17, 2024 at 12:34:32PM GMT, Helge Kreutzmann wrote:
> > > Hello Alejandro,
> > > Am Sun, Nov 17, 2024 at 12:38:24PM +0100 schrieb Alejandro Colomar:
> > > > On Sun, Nov 17, 2024 at 10:46:23AM GMT, Helge Kreutzmann wrote:
> > > > > Without further ado, the following was found:
> > > > >=20
> > > > > Issue:    Why is this no-wrap?
> > > >=20
> > > > Are you asking about the behavior of the function?
> > > > >=20
> > > > > "Domain error: I<x> is an infinity or I<y> is 0, and the other ar=
gument is not a NaN"
> > >=20
> > > No, it is about the formatting. Normally, all paragraphs are wrapped
> > > as needd, but this paragraph has word wrapping hard coded explicitly,
> > > which you usually do in code blocks or when long lines should not be
> > > automatically wrapped due to some visual layout.
> >=20
> > In the upstream (English, man(7)) page, I don't see any hard breaks.
> > Maybe it's an issue with the intermediate format that you use for
> > translation?
>=20
> Strange, both in the original file as well as in the translated
> output, so something in the toolchain, indeed.

Please show me the hard breaks in those files.  Maybe I can find out
why it happens.

>=20
> So disregard this bug (or add a full stop at the end of the line, I
> just noticed).

Thanks!  I've fixed it.

Cheers,
Alex

>=20
> Greetings
>=20
>          Helge
>=20
> --=20
>       Dr. Helge Kreutzmann                     debian@helgefjell.de
>            Dipl.-Phys.                   http://www.helgefjell.de/debian.=
php
>         64bit GNU powered                     gpg signed mail preferred
>            Help keep free software "libre": http://www.ffii.de/



--=20
<https://www.alejandro-colomar.es/>

--oiqgvq2rczuuu2vs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc6B1MACgkQnowa+77/
2zIlNA//T/reDL8wUhIbtlVr5BR10asaubwAf+YOTN2vgh2BDx6fK+i/uQItQ/V0
Hh0k78nalYEa7Ni1dcKJI9VzbLDGkkOYSPww5/ympXLipAc6bDFNEeqhVGNC2Hfv
ZAyNEBLkP1B6ZGeimldvpYVLuMbHXhpUtNv3/Lma6oGSyOGA7IJypqi9+ZTusaZI
TrU/JF+cL42kf+tKnlipz3FnLyylrq7cTa4UK1HzZ1Rp1pmw0xoCxEUKl5W7FOHq
PnbH95w3yeKa6Lyp3cp+vZzxAfvGab5kXoBzUZ8+saG5Xq28iAebv+IQOfh+IESc
G63MvMKoUGmN6FMy6Rde3Eg4UWFE4shAf3iONcIVAGWumPQlCiTcLUf1K00bFvGM
8gSh0JeiwVW96b/yYYsCwh2dsPWIbXSdZw1DvB7Ugg9wbTGwf6RHajmPV8bZYzjt
pticuZKjX5pIavyKxIcLjbCpJ5hy9Q6ANwpwbwLtQ5VqRJU7M9nGOoRM50VAvPJq
6DObu1VI0zrmTy02s8MYjmBQhbJldaNuHGi/uVMJMvsr1K7vsnYdkZ0tExFd2Xbq
VIjH8g6Cz5lKjT3c5Iry215ZMNfi1gtHO/4IYZSUeOOjb3WpSdFr7PxZwSRmvR9z
7yYQ2lNnAv+k7AU4A/26RnEDzBjN681Lx4Nmboko5cRkVmxGOcM=
=oY67
-----END PGP SIGNATURE-----

--oiqgvq2rczuuu2vs--

