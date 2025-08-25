Return-Path: <linux-man+bounces-3716-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D25B34700
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 18:19:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 072452A54FA
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 16:18:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A2452ECE8A;
	Mon, 25 Aug 2025 16:17:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="nvbR+Zdi"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C6C82FFDDA
	for <linux-man@vger.kernel.org>; Mon, 25 Aug 2025 16:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756138657; cv=none; b=ZsNZ/gjzfb7ilVBCviSjgqBFGm2RPXseoPh+nldaz5hl5ixLTlxMMW9yDdoehDDlhsFEt4lsKM+GRsEnm2rj7DgCO/JUg5JqpQH79nfkYuq5nZnjt3FjI0WbWpUVUjqbcmIL7IlI1jCeLsfgYCcUYS/PYO0nrab546NJ0tSjfdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756138657; c=relaxed/simple;
	bh=xiler38aJwkhB9YK2apat/iZKIEIFQ04wbqC5Pe/iR0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S1a9HRFpJLtknaa2gJOESHZlwAH+vVGmrJBpewJwffzEeUeei7gv2FCFcuOYa6ZXIIS11DL5vdJ4GXvlnvJKFSsbc1TUbcugo1qgycalTxpB6FtJlvB19LL8N7Y9/nXtXLlZyolvxNfsFUIOOkwMNUr2vlq8t8i8PuCEEr3N8Bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=nvbR+Zdi; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756138652;
	bh=Hi26+DYQkyI4mgmR+hIqi4uP5UaGjFYC7imm3Kjd3Hs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=nvbR+Zdi6Cl1fjLvgZypuZKrTAdD0BqFVEPE61Ggtt9yYZCbCio/L9v1WhoxI2VM9
	 S+XRyfuh2O9AFstYoAWj9AuUiim8OcoLGWkoA9p13VQjJtul5jmB0FAKFmDcXyyunO
	 O6JWmIEh1Fxzg6f1ti6fg/l1CjNiNnCBsos7tnSKn9EJ9FIoUga2jw54MIdHs3TPRw
	 kzVdHXFDihsGF5HcgGBuXHJ6fdeY+jCxgDri1KIHxPGApx6jABuhQlEsVQu5Eis/ur
	 2CmIP43Vl5bQKF5IGKe9CiXyPQekHcnKShcKJCGIokyy7sQtxVWVhVuL/kSRnng6U4
	 xcoqN3v3FAomw==
Original-Subject: Re: Issue in man page pathname.7
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020051.0000000068AC8C9C.0031DA5E; Mon, 25 Aug 2025 16:17:32 +0000
Date: Mon, 25 Aug 2025 16:17:32 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page pathname.7
Message-ID: <aKyMnL1N6wwD77X7@meinfjell.helgefjelltest.de>
References: <aKsmTuVSFb93ocPm@meinfjell.helgefjelltest.de>
 <aj3eqcdmjd5rjcs7ng74prcysoumnpaooxxhwklglwyrpvpp3t@vm3rqullggpi>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-3267166-1756138652-0001-2"
Content-Disposition: inline
In-Reply-To: <aj3eqcdmjd5rjcs7ng74prcysoumnpaooxxhwklglwyrpvpp3t@vm3rqullggpi>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-3267166-1756138652-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
Am Sun, Aug 24, 2025 at 10:04:04PM +0200 schrieb Alejandro Colomar:
> On Sun, Aug 24, 2025 at 02:48:46PM +0000, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    The URL is invalid
> >=20
> > "For maximum interoperability, programs and users should also limit the=
 "
> > "characters that they use for their own pathnames to characters in the =
POSIX "
> > "E<.UR https://pubs.opengroup.org/\\:onlinepubs/\\:9799919799/\\:basede=
fs/"
> > "\\:V1_chap03.html#tag_03_265> Portable Filename Character Set E<.UE .>"
>=20
> Hi Helge,
>=20
> That URI has '\\:' in it, which is correct in roff(7) (and in man(7))
> source code.  That is removed by troff(1) when formatting the page.
> If you read the formatted page that's not there.

Yes, then no URL is there :))

> The effect of '\\:' is telling troff(1) that those are good points to
> break the line if needed.

Thanks for the explanation. Checking the URL after removing the \\: is
a valid URL.

I'll keep that in mind in the furture when checking URLs.

Greetings

            Helge
--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-3267166-1756138652-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmisjJwACgkQQbqlJmgq
5nAqMw//eJBTbhUUGFriJDif2HeBvEYpvCgR/JxvjOFHjWDjQlk0hj+Y2u2CBuRH
fC7QOc9XJOLzhTvU+XtriS61EZzDBq/GRdwBXbwaZoU/3R8bEjUBPtuDVGVh+q8J
2CkoRN09+QHXIDULTKYpyLFbA5Fu4KBjvHDjN8tVtvAToHNiNfKzlUPP11iFbu7S
gWWXb9Fz8AiSBKHY3vYo/3uCRZ/7nqexIRDZcYbUpc6MKSc1epOpwjF5qtU4NkqM
MApn6uVueSg/wLbXTpxVo+Osb//k2z77CUmx/WmMs60TmhfFu1IMMIap4FwrK0o+
EHZFl050LW/BTAYGSr/UOzNasQkgDnMdZ0Yyp1vss7uDtiIY457WVHGEvycMSXtx
JcIOQKiIb+aZj8PW/KibCfnK7zuDCF1c+i8gWJNBEzYRrahob5HHhhEJti05OXXg
W036uFQfe+4oZ6Z6lN5x+xH2qe40b/ztWWHAMrNRj8WVEytmu7hAhoLof8qqOnuk
mIcxGYAmGkZTh8IMgxCErog6TDLNc42VJGPmaB0uRMnARPPUquJUfYzGDb8PdjRW
vSirmhC1Y+QoSc8mgGOWBkEqH9aYLMK7JjuE0S35HIkfIVGc1vcSYUHfRUWx2FrU
el3JAh9jsxq0KFHQHiQLIhDQY0Wb64D2NeHCrtIxf5X9XzOHquc=
=w6iR
-----END PGP SIGNATURE-----

--=_meinfjell-3267166-1756138652-0001-2--

