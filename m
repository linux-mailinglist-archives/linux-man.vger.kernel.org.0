Return-Path: <linux-man+bounces-2030-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F96D9D0495
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 16:54:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 57A221F223CF
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 15:54:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98F391D90AD;
	Sun, 17 Nov 2024 15:54:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YWNY8l1d"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58CFCA937
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 15:54:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731858891; cv=none; b=Zyq1yowyn3y/aWZHhSlyAAnyma6j8k1zEa41ZoMwhGi1Naz/FdcUOuNYU+MnZwOtX1l8Rt7u5oRxwbYr/slhETvEQh+PDMzmQpOtW8NkZurdjrJhYjKIgwiH1qTR0p7Y+Ri8Fm/oLY/taz4sRYPEYH2I2IOXV7+Wk5WMCM7RoHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731858891; c=relaxed/simple;
	bh=Q1LBEXDKTYbXXjq9HjfmPjy+HXBGvn4KhiLP5UjaZIY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o8b29OoCbzsIpTUkxIPCrOQx095+DtQ074x79+HaESCgewbJ/lPZ9FsE14biyghIy1w65SrAsbDE7QKE/oPiKkCybPZdZxcU8RKZ+qPPkPExR4/DqLmgpE6svwGB5dH8YpH7+3Pl0oI+QUDEOywdtmIJVK/iODQElVVmZ8hn+Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YWNY8l1d; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28F65C4CECD;
	Sun, 17 Nov 2024 15:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731858891;
	bh=Q1LBEXDKTYbXXjq9HjfmPjy+HXBGvn4KhiLP5UjaZIY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YWNY8l1dmZsMBX7JCrXUfV7jGZUk7HSwaue0a3Tn6XmnsvasbATTAq4oXqd28qJAB
	 g3+Na557hniY5ZZixsJq69TXmq2eRvsChK1ciEizVYnfE6NkkOPiiuZx3GqSohsF9H
	 hrGCCwu3LgrAhpn1TnFKNN1Fepmho8qKcEEkZx8N7I3ODdHSNMZjBIRCvruLHJtUg/
	 rVYX1JpLSYlYmbAoae8Zn0evtcoT+uqXRehNnwzs3bMfm55tQQ5sRp/g+W4I7zJuB3
	 /Tjhv9fnyM5mqjfkBK6AcDHQhX6DMvz1XGvAK2hDvcZKMsorOUxnlNteoWmF516YYf
	 4aTllgmLl/OPw==
Date: Sun, 17 Nov 2024 16:54:48 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page time.1
Message-ID: <ewv6cwiahirpjv4udlcrwzhwerupsvvhinnfn5hpojabnkpr6e@ibkhklxvdzvd>
References: <ZznJgUunApKZIFH-@meinfjell.helgefjelltest.de>
 <3nljyrx547bylj4rlcpo3slo6dvy5cerzfcg524kmrh4ou2gzm@cxtv26jahqfk>
 <ZzoM2FtTP2xPrOaF@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="w5jiatl23rbqyd6d"
Content-Disposition: inline
In-Reply-To: <ZzoM2FtTP2xPrOaF@meinfjell.helgefjelltest.de>


--w5jiatl23rbqyd6d
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page time.1
References: <ZznJgUunApKZIFH-@meinfjell.helgefjelltest.de>
 <3nljyrx547bylj4rlcpo3slo6dvy5cerzfcg524kmrh4ou2gzm@cxtv26jahqfk>
 <ZzoM2FtTP2xPrOaF@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZzoM2FtTP2xPrOaF@meinfjell.helgefjelltest.de>

On Sun, Nov 17, 2024 at 03:33:44PM GMT, Helge Kreutzmann wrote:
> Hello Alejandro,
> Am Sun, Nov 17, 2024 at 04:14:09PM +0100 schrieb Alejandro Colomar:
> > On Sun, Nov 17, 2024 at 10:46:25AM GMT, Helge Kreutzmann wrote:
> > > Without further ado, the following was found:
> > >=20
> > > Issue:    B<bash> =E2=86=92 B<bash>(1)
> >=20
> > Can't find it.  Probably same EBKAC as the other reports from time(1).
> > :-)
>=20
> Again apologies, simply disregard all reports concerning time(1).

No problem.  ;)

Cheers,
Alex

>=20
> Greetings
>=20
>           Helge
> --=20
>       Dr. Helge Kreutzmann                     debian@helgefjell.de
>            Dipl.-Phys.                   http://www.helgefjell.de/debian.=
php
>         64bit GNU powered                     gpg signed mail preferred
>            Help keep free software "libre": http://www.ffii.de/



--=20
<https://www.alejandro-colomar.es/>

--w5jiatl23rbqyd6d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc6EccACgkQnowa+77/
2zIBrA//USsZoHtqktZbS5KOh12lGPIWEzmDAtoZt98lsIOB2JNHMqSQfCR+oLQY
fbwh8+VuE5m71LDtB6NCbER0VcwB28QM/KOJxi0ZTf3X4soSEQqsUNYPblRVBpLW
5l1bNWPYIvl50kZ1N0sagBHdg5y37MBxgFyUeM9R8yyvLgWAVbk9S5iI0XYiwiuy
kHBD6xh5xZGEOQBz2B2hZGh0CSiTizqIf6Skf1hWrL6MiUK+hhyjtzKfX9bOvd7N
ZrtY1OHhBh1eF6OFpjeXFBHuRaKqlsHhUnq+U8R9mUjDcFkhM42BViqdz6c3DJly
3uMgGAuWSz8rIX39qHjLuXGuS+sAf7NJb6wUEVOoFTtO9np4vEoiUuhRatH3uWtC
03+W2WWVgRfpW6G3buY+KQ0bhSQSWWuehRzywyPbr+izGfoIWZOe9r1jrNOw4iqk
KOtfApfM1RMcorVFCLKyrP/FZQxxXAersZHIyjzbHfhf8Z3ZNlN2dthTT8b1jDeC
amLyfDnivNn1UjPKFnZayBEb/GG0z6Ua1EbmsqeBqfKEsCFOy6BMTstleLLRtOF3
LkCEqW+3b73r0MhpEHaEvaSpc44qXO8vNfFbIc89u5PrWKEbZiNfBjy5M69yOZVY
zFA/lHF7PdQI9KSA4w68ZnmtAmVm2WUBiUdQ5BgdtoAsOXDOaHM=
=U3/+
-----END PGP SIGNATURE-----

--w5jiatl23rbqyd6d--

