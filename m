Return-Path: <linux-man+bounces-2019-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 979FC9D0473
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 16:13:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3BDBB1F21AD3
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 15:13:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D0991D8E18;
	Sun, 17 Nov 2024 15:12:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="OjjWZxAp"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C63B38DE0
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 15:12:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731856377; cv=none; b=ImLc6CnybMViof62F0VGMa9WdspB2+csN2CAiZ0+zF0Iw+cyvXDQ76G8Ph1ByXfIvREVVM2ayMiIMgXISWgbQlSh69NhvB6Y9vRgZtUNKmHfkP7LYi00P6faIMv62Xe6uxz9f+x46gzgLT8CTuqeA6Q7Kf3mD/re423HkM+0NAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731856377; c=relaxed/simple;
	bh=ym3KxvIdsC7qhh7ZTOxWZ5xfGBKXJ5dgnnA9Lykj95E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VCpWLCmKqEdV/iB0fsWvPHyu626kBd8OgV+2Jp4dTaJIw+Ahdtxrb1jGmMK2CzoOmcaAPqIpP7vXApriKyWXHMaqajIPx8PAGBMG+FrCkhaOli4HgcaBtNLtcOc5OOFj8n6vI7y9zKU2C/pjLWqtaiWJttdwtLNzgrcfs8rPhNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=OjjWZxAp; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731856374;
	bh=o/pJNaS+wijHZtPMWyS8GHvaayEmRqe3TlHDKqoQLdk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=OjjWZxApu+uBoOOk3XDecDdwpGq1Y9jRqxlKkobLFz/ps7fDLnJHjhsTfiQlDCUeK
	 Zc+NVN4njfa95h7Om5YmLdqGUGAe/vjgY/8m1XT561YBTKFEqxMCjOiy04iny4+eIw
	 6utv+Yz2sNMzGYEpEl9GehtNcOMXq1QVVxbjCvql+gWZdyvsztO6LbZYLU+1j0Pbov
	 vXxHC2SMZrdmq4SbBZtkef2tZUCk5bsIqaQlOlDJdXgnB5B2ft09C/5abwlJe38n+t
	 bQSI7zuWn5DWXppW8GPmZViHDMFmK2EatdV+gJTa+N0+pD4YdR7wlA7AhWwqMoV2YH
	 px4l1kl37yScA==
Original-Subject: Re: Issue in man page fmod.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000200D0.00000000673A07F6.003FF2FC; Sun, 17 Nov 2024 15:12:54 +0000
Date: Sun, 17 Nov 2024 15:12:54 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page fmod.3
Message-ID: <ZzoH9vetkxNtmBKR@meinfjell.helgefjelltest.de>
References: <ZznJgeQZ-zy4v153@meinfjell.helgefjelltest.de>
 <zq7yk5hzycpaw5buxdoa5hikxxwh3nr4y7a6y5ekm577xdxbyc@q7pvwh5223jk>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-4190972-1731856374-0001-2"
Content-Disposition: inline
In-Reply-To: <zq7yk5hzycpaw5buxdoa5hikxxwh3nr4y7a6y5ekm577xdxbyc@q7pvwh5223jk>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-4190972-1731856374-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
Am Sun, Nov 17, 2024 at 04:00:08PM +0100 schrieb Alejandro Colomar:
> On Sun, Nov 17, 2024 at 10:46:25AM GMT, Helge Kreutzmann wrote:
> That was fixed in
>=20
> 	commit 346bb648cc963bd9f2c8b16d984cb49030faa05b
> 	Author: Alejandro Colomar <alx@kernel.org>
> 	Date:   Tue Jul 9 12:00:18 2024 +0200

=E2=80=A6

> If there's anything still bad in the page, please let me know.  I hope
> it's fixed in the master branch.

Ok, this has not hit any distro yet, good that it is fixed.

Greetings

          Helge
--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-4190972-1731856374-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmc6B/YACgkQQbqlJmgq
5nD47A//c6NnnI04mjheTnd9DRiubrj2uYTGj3utey4ED9m8GSAR36d4I38/7Apt
44rZQPKOPdcCxFZrhCM/orjT0CqAHYmr5Nmp9BnXqO8xK0sn/lPxLJYABCWiY0ti
DxqZ7pkdR0E+VyFB5QjjGlhCNqZ8UNJI5DOIRBoq1URDEQP9BBm3Hzw2O0rhtwRM
SB3GSFcngSJAeiqdi7JtQX8MBCvrmXfWLKEkRIJdbLbf9QzrLK3nwm0VvOHJEAUm
CGarg1o+Jf/PZJXfwud+qBqL3txtPu+XuMWt5LfKJrXqOamafNJgDvBSJF5RvKpt
Xt91mNC4nMRDct1XoP3+06QTJzb2hnTfMjLMz+ow04Gt5QjWjkHZMhcwfd1Shief
pRSYYYkRuHkQByMz5OAWdvE1c18jpUvdMdgQtkjxvccHv868+Rj8zNxVXUrXEXEP
IoExZbGMGMXgHZDRdaHvItheWPsjuXpoZEtI4ViY2tFstJclsCW60bECJidHvhIP
7XYiRHmuxjJ1fB2x3Lg7oq9Fy5Xz/ChnnrafpoVCay2UV4mOnWQwlVKDeBTec0EY
JXm0ivvDmAzkJP3dxcN5GXb3Dhdol7rODaanYhyCS/N3QUoCB1xGjh/x51ljAg6Q
QzyHZu2CrraRLoOVLyv2hWjYjNjn0QtoM2o3C9csNmK+yVwnvyw=
=/1Qc
-----END PGP SIGNATURE-----

--=_meinfjell-4190972-1731856374-0001-2--

