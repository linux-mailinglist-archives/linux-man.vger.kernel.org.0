Return-Path: <linux-man+bounces-2001-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8E49D03DF
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 13:43:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 04FF01F21956
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 12:43:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F379F18F2DA;
	Sun, 17 Nov 2024 12:43:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="QIsJh3SM"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6297E18C33B
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 12:43:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731847398; cv=none; b=OgALs/wbvjcNchvFky7itB0tF3JxcxEFxnN7VK7ZSaPzoLF149bh62zWCjM8h/HeLDumr4xImVLvqMFxg21Ytn4kXu4NA4X/Od0maWc7pJjMwHI/EcRelqPNwgv5QGOBot6ZbKtBicHX20jdbB/7XVa3+k0W/8VtcDAdqQcBGc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731847398; c=relaxed/simple;
	bh=frNOI8F6hbG2neLhxAgTe7DHyahHMiVv7TSdlIxVNJ0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NTFVD8MqbrZghfvMZ6Ld+ODTyTU/EkDask3I60m9481sUknmJ/oH0y43MXJ9U9PEIWFokWYORuqq6vwFSnoeS++eJP2lVHLLSVWg0hYF2OfI2EJpJWoL9HarL05xPbpAqzmDiA5hIAPI3sctc9fmOJ66nf68xHnaIaHAMK+2OTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=QIsJh3SM; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731847395;
	bh=LBZcdom4eKqd86W3UAtTijLbBFe80Rxuwd6M4HYBAsE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=QIsJh3SMUlV/UbnXbxuVDv6T5f16SfhGaoi8uZsIWAxypAp/assbCtWkFnP1pHhn6
	 H38U3JIYFEtxpS+MlG9ZDxQLvhW1J+v17E22P1URDjwtnFDT06edBk+Jd/J+etiDZO
	 xfANVgnmJuZRhak9R4Bb7Uxcjr0aFt+Tts0PVeyKRlX8JB/GhG1KRi+DuYCwlgLy53
	 kDRXQTQhwDmHbt+OhyoQwbyRpMdPI2wVsT4DDAbvfGPVkM5qSZyc5MNM/+NAuDSt/e
	 p8117Vxt57InhD7xn3mlLKmYl9EVcGmTG88POWHnMUcWpjW0n7SgRcoWIu/XLoJp8u
	 k0wIJdT4wH7qA==
Original-Subject: Re: Issue in man page time.1
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002006F.000000006739E4E3.003FD8F2; Sun, 17 Nov 2024 12:43:15 +0000
Date: Sun, 17 Nov 2024 12:43:15 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page time.1
Message-ID: <Zznk42mDzTgnDybs@meinfjell.helgefjelltest.de>
References: <ZznJgFxUqytE7-eR@meinfjell.helgefjelltest.de>
 <txrfnlxmmte5pnmhr4dax6s33ngxlrdo4sjvazw3vlaa3njuju@dp6ndbsnftfn>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-4184306-1731847395-0001-2"
Content-Disposition: inline
In-Reply-To: <txrfnlxmmte5pnmhr4dax6s33ngxlrdo4sjvazw3vlaa3njuju@dp6ndbsnftfn>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-4184306-1731847395-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
Am Sun, Nov 17, 2024 at 01:12:31PM +0100 schrieb Alejandro Colomar:
> On Sun, Nov 17, 2024 at 10:46:24AM GMT, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    Remove hard line breaks, they are not necessary, rather use a=
 separate paragraph for the last two lines
> >=20
> > "The format string\n"
> > "I<FORMAT>\n"
> > "controls the contents of the\n"
> > "B<time>\n"
> > "output.  The format string can be set using the `-f' or `--format', `-=
v' or\n"
> > "`--verbose', or `-p' or `--portability' options.  If they are not\n"
> > "given, but the\n"
> > "I<TIME>\n"
> > "environment variable is set, its value is used as the format string.\n"
> > "Otherwise, a built-in default format is used.  The default format is:\=
n"
> > "  %Uuser %Ssystem %Eelapsed %PCPU (%Xtext+%Ddata %Mmax)k\n"
> > "  %Iinputs+%Ooutputs (%Fmajor+%Rminor)pagefaults %Wswaps\n"
>=20
> I don't find that text.  Could you please check where that page comes
> from?

They stem (only) from Debian, so probably a patch there =E2=80=A6

Greetings

         Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-4184306-1731847395-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmc55OMACgkQQbqlJmgq
5nB6Hw//e/iwd8771xKYhqXcy9+Pt6uZ635jpSdHJMN5cKaso6GJmGvBjeQ/Y7+n
sURpyYQORlPdGgYCqO5JMM4Z985I4Wf81IZZ5DSgU4Js6KtlN5E7SN9ML/rzvtfO
+SPBQZ+LQXUUiWyZZQTgcqan3i+dUsRyeW3cyxSeNJmF5RuhycgA4YM/ES81IJ3M
jXTeIkeWUY0FZDfgNiQxZRQbFKzrKLkA5VHUpxweePZalSCIxheACV+Q1LKBVP8e
OIM8nod8468sRB2i3lLliYVpF099Hi6KzlWcI8QEoUsjbBxZqxUBPCOQ5/22u0vv
2ljm07T1DmXftNrLuu1nEZ/VlI+rHH3dWFSVltRJpI3hnpb4pxrJALji2etHSjCe
gtEgyDpdZPnPtD1GkKYB62pdjKY057KqSWCFV58pCRTD6PoZB4OZJw3Ic9G6xajb
ErrSZ9x1mTVt634XqBTKIH+B6zTnT4j32oLwm6ACCSfVvSJL72Tpe22suPhbQtQD
KLrW2WQ5n9KD9QAkPkxGU3UG+WHWKca/dSxIxgejgszZg9G9OAX/VcqpLEPjzJgY
X99D4D2t9VAGUdgen6b/ZN+sACuU+I4mwTQ5irzhvZ8NTNpv1J8Pb40EWVJopXRg
UADi1XkvOBUdI7yeUde9k/JqbaVUZ6GPGjx5SoBYcS+Sq7z7VHQ=
=tP1h
-----END PGP SIGNATURE-----

--=_meinfjell-4184306-1731847395-0001-2--

