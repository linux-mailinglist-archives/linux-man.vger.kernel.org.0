Return-Path: <linux-man+bounces-2028-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5A49D0482
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 16:33:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2578AB21F8F
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 15:33:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C8F238F91;
	Sun, 17 Nov 2024 15:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="MzysVfrL"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B3E9CA64
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 15:33:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731857625; cv=none; b=r6/JmXh6j8yBAOlNJuEWvwpvvIUMm5VngYA1rtpi5Fxi92Dn+1wRPEj+UdVQ2tnvkSvqaMeOvZ5L9XhCmHgMyvNsZ+IAQvUev1X5S2Dz5OfLidFzjCxVoYMgjNPKr4nsY0XPrSNOSOwS206kTjWP/DqM9S0JYkHoaRrhj6XJuJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731857625; c=relaxed/simple;
	bh=xDyh8D3jhuSjWRzjL8q6O0aFGqmiI45pUutzVMZenig=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kMFVW0FPNg/vuRhBAh0Ffwkb54NGy7HWtkcOuCA2OmoKrn6av5u+7XDBRkN09zqAURz8zqzYDoRUbFIIo72xfT5Y+wbG7I9D/6XF0zQqwSdawSHWlYj/vDaEfygfaaZsJoWtcmEXa9XwWB8AJ/MNoldvFWju7xkwDuFKc6+iDNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=MzysVfrL; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731857624;
	bh=Ph6EtP7w684zLPCHaV5+KXACVNehtZluhHvrq23537c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=MzysVfrLsspbXl2nTpG2qDd+OVYhAmPqrEIJu8zQfevJgvDjo+jY5jUFYqX83EWef
	 k+FUSnmsXZehzVYqJB9uRmG8x9RCYDgBVaJnxw4/PvyyR6SwVIazcj69gI588NGgFs
	 vcnk3nu5i6+tba4UKzdPvwr8lNReyGFkEhEmiu/MjCeq1bgE5x2lXjwEuipHVQ0DbM
	 mm7AFvRtdQbvQbcGHttCqPmARPHRx1GtySgsAO6r9nXxJm8YGdw1H5siYhLae/feKz
	 izr570lVMaDtzF7EIMpUYT93jdyBywqLgBF5kCOaoeCwpbrsa5ZxA63T9xt7RGxl08
	 FYvy6MOE1UD7w==
Original-Subject: Re: Issue in man page time.1
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020051.00000000673A0CD8.003FF53B; Sun, 17 Nov 2024 15:33:44 +0000
Date: Sun, 17 Nov 2024 15:33:44 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page time.1
Message-ID: <ZzoM2FtTP2xPrOaF@meinfjell.helgefjelltest.de>
References: <ZznJgUunApKZIFH-@meinfjell.helgefjelltest.de>
 <3nljyrx547bylj4rlcpo3slo6dvy5cerzfcg524kmrh4ou2gzm@cxtv26jahqfk>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-4191547-1731857624-0001-2"
Content-Disposition: inline
In-Reply-To: <3nljyrx547bylj4rlcpo3slo6dvy5cerzfcg524kmrh4ou2gzm@cxtv26jahqfk>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-4191547-1731857624-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
Am Sun, Nov 17, 2024 at 04:14:09PM +0100 schrieb Alejandro Colomar:
> On Sun, Nov 17, 2024 at 10:46:25AM GMT, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    B<bash> =E2=86=92 B<bash>(1)
>=20
> Can't find it.  Probably same EBKAC as the other reports from time(1).
> :-)

Again apologies, simply disregard all reports concerning time(1).

Greetings

          Helge
--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-4191547-1731857624-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmc6DNcACgkQQbqlJmgq
5nBcEBAArQ/HpqorYj1CrFdo3SilQT+6H935kGfy5rBQqCRQhsf7H+nRNc082n0N
oTpl05+9RcjyZrzJaBCqqhOR8o9m7bd689vPUAdDN1JELc6x23UsfsYaoaSE4wCA
llyVR9coWqm7v/JT3/RHfuyihsgXo3dIqu1hDA/LmsGm8tcb3qqKLKQHQCahjPSb
DHAPrQ/9WVf5XNQ7Os1mcSe9U0jYV5kt/KcUArYeaMisO2vP+ejknUlnx2BGfB00
EYipnRyJKQYwZaIsNeTRZKq7sNSvgAkbDASnFqxcF4VhLAoye4wACvubV107DrX7
TbqQQVDabZ7XSqqPbnRwrF5+sSh7hb0nmB5vW8NsM4xlkD9nyMW5/CrHow8BnX/4
7x/3OdSIISuFlgc5hj/DjgYkXKtyJFeU7Eg9CYoMwZH4LbdCJzDhNLWeAdfGGjA9
mXkl1A7jAVUHz7sEjZQmcmE4XIE84rcQsEBiMG+q2YxYFGYxEfdutn/2YvSNJ8LI
aCMB3nEOyIrClG5vAmiI0WQOK7yQMeX0qV+4TmFoPdbcpjrgXjKwp2sKV/nJouOP
WpN3Cx7O9eKVRUS0f+z8YDLcxZwEhI2lscu0QtaW4DKFHzOtUxMCNhyIKglKm9ZY
s2uaSSGDoDmwqt8KAbx9W7NZ5xE3NS4VnBqjhzwpin910k+cFFI=
=3g43
-----END PGP SIGNATURE-----

--=_meinfjell-4191547-1731857624-0001-2--

