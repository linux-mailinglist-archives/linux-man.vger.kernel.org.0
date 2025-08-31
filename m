Return-Path: <linux-man+bounces-3789-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D060B3D483
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 18:57:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 37C331892282
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 16:57:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67BB024A063;
	Sun, 31 Aug 2025 16:57:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="uUlYg44v"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C40B213E9F
	for <linux-man@vger.kernel.org>; Sun, 31 Aug 2025 16:57:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756659439; cv=none; b=Rn7Ksk7IJjkUrtZ/fC9s+oMTGS8zYQBe1n29Re+Y7FC2dWTPecJXZ86qEYyYS/9RXx+Ze8dYKXvJEl4rTsejTcawAIUe2OVeYNb7zjXMNoZBUGwyM5j42n7CYSbsf55T1pcdwF/3mxCayyapf7V/J5HyIbCU0r5Fwor2Z5tdl5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756659439; c=relaxed/simple;
	bh=zv9YTMyuu5uQiVVJy6L+7gCYE8x1iAI8oYHxmrYDsuU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eMlr6BYQNqQBMTZkOr04J7CTjivzDCU/rXzAI/u64o6bVM4DBdaY2jGKHXVSkf3ipVl+hVi+CdxsUFpVI74nwH4IJ6HTaxt1pXch4a4GYkBPEhrGn85l8CIoNxc101ra/waOyh9tPIPW6PD86s6eE4dgzV+MVeJaJGl9JveNCN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=uUlYg44v; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756659435;
	bh=YCmZdY6ejRRnI2bXWNqNz7N+Q1MXmQEMX3esrZi5OL4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=uUlYg44vqDjsr2hCTUS4IevaSSzsCmPRpTHqjMtqmhVss0I3uCaHGQaK2vXW31dpq
	 F1TMiGFt+5P4P0ZPebqC3ggkiTVyzY+DLVm2gjx+xCufnlOFoq/zGaas0xgZPcWcWe
	 fQvYGH0/QdfEf23zlo/W5h4RsUmKFNeQfJcAKo6DHjOKMgGv99kEKdr3IVUsljuOWA
	 BLcf9Bw4QWZVx0KsrlYkuQiAUBafo/+HTvlLL0xEFXI8WkeoLF0XMFNRUFxe+EhFSj
	 MqlxPoRlc31w/O7xU6Yw8BvU9kpttOX+YkZaxopJWrfRIlIpd+rs43CZE4AwgaF1bQ
	 0/7Z4x1nKbFhQ==
Original-Subject: Re: Issue in man page attributes.7
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000200D0.0000000068B47EEB.0025EA36; Sun, 31 Aug 2025 16:57:15 +0000
Date: Sun, 31 Aug 2025 16:57:15 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page attributes.7
Message-ID: <aLR-6x9rz-n9f0sl@meinfjell.helgefjelltest.de>
References: <aKsmSYpPKR1MPD8H@meinfjell.helgefjelltest.de>
 <qyamu7rdnt44vav4nr7lpkydnmwahit27d4gp4i5m46dttyygz@g3zqmghwfbgl>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-2484790-1756659435-0001-2"
Content-Disposition: inline
In-Reply-To: <qyamu7rdnt44vav4nr7lpkydnmwahit27d4gp4i5m46dttyygz@g3zqmghwfbgl>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-2484790-1756659435-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
Am Sun, Aug 31, 2025 at 06:41:36PM +0200 schrieb Alejandro Colomar:
> On Sun, Aug 24, 2025 at 02:48:41PM +0000, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue 1:  The function =E2=86=92 Functions marked with
> > Issue 2:  reads =E2=86=92 read
>=20
> This was solved last year, in
>=20
> 	84e1cf996f02 (2024-11-17; "attributes.7: wfix")
>=20
> Do you still have the old text?

You are right, sorry. I tend to forget that Debian (even unstable) is
a lacking behind quit a bit.

Please close.

Greetings

          Helge
--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-2484790-1756659435-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmi0fusACgkQQbqlJmgq
5nCjQQ/+O3CZI1TsG5yGbv/+My8IkS6wZS8TOLokh3pjKllYpWrRxzCD/GxahziW
mWOWpAxmXp8aCsGGulo6c+deYNfX8dFAZ8KVarMazpVMfD+oA2d/yZ04mDP7BcU0
jJtsSUB4XiTj94DBW9n/Da1gYU9pujBFLISJpx/JI5m5A5tJFUb0u40SaAysf/x+
UJuRMA2TO9SYLJfW37RX3dUjKYRrK+5dE75xnDYtM7bW+zeTNP0KrYVbqsMTTglA
15NWAGDEdptKwqzPjmmtVunJbKw1Rs4hFg0NUTbYpF9JxEAV/iEw8OMOn+z588fN
C2N4ePH81QanLlUARorvgYOhtJpy0wp0O02kTx9VWg6vyOIbMCDPqFCM46rIPD5X
861gQGNmRxH/T6MeIi5m3oMByaglgo/5pe38gV9s+VnCkgVjx3CbZ60yyx1Zy1Tc
4teLDPc7EEuE5cY6NyvpOokW+f/f0UeWXQBWeO1Qoc9M6QjAnspnXu9ihtIuHIVa
F/MMcc0S3DQLYAZyAS8Jlz2rvHxnzhymM5iR1pN8vRf/tfTGgjuVkqO0fzV77gxm
a6Vkzjw8+Z/Jcm3eTbhZ+sBlZScmdM4K4Qw5F/SpBkzVavOFi45qe2ayVHguMv7Y
dlvbDZ1g7fAiWPI+EGKR+V2EHvsErGXnxoDsBXuOnLukhRZ2s34=
=6lrc
-----END PGP SIGNATURE-----

--=_meinfjell-2484790-1756659435-0001-2--

