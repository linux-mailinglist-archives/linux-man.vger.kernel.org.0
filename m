Return-Path: <linux-man+bounces-3924-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA2BB8D9AD
	for <lists+linux-man@lfdr.de>; Sun, 21 Sep 2025 13:15:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 898F8179B8D
	for <lists+linux-man@lfdr.de>; Sun, 21 Sep 2025 11:15:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D4851B81D3;
	Sun, 21 Sep 2025 11:15:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="T9tLqt/n"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C57AA55
	for <linux-man@vger.kernel.org>; Sun, 21 Sep 2025 11:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758453336; cv=none; b=WK6+rcGNptQcRukkqceQEYCqeW/TU2tln7dg2IHxIgv3iycW7ulI4cilsSNwW8PG4/jA72M5ubQ1IIhd+VQUGWKDzFRUMZFqp8CbUTdV0/l85/I+m37TGgs0diBYh8uUABVHeRTzmxvZgZcG7ooOwA5Dc8lFY0jE7AijCqglyRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758453336; c=relaxed/simple;
	bh=dCM6gtWscR3Dbd6inTwpLswYYgfXPmBwmnGwKxtz9ck=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JMxmpP8rt/4toQHTBlihVleEEFCFhlGndR+PEAptICEdiNOavaS+vz02p50jz5AtEjZGYAQiYIfFNLJGwrDb7wcy6usBV0ZoVT3/bht7UAS4glwC2ewvFq8d/F1lRnjCipuSRF9XDLa0KXo8PpLAXzytPKXN1FDMoM/B96mqKvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=T9tLqt/n; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1758453333;
	bh=N0IhaScmlX+yvz/XVnomBo0uv+ZnPusdE2s6EDUs5eE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=T9tLqt/n3TVi2V4D83flcbf8pWUI1hwW0JB4lMGICMm0JhY9bxVE0RDjbup/6VmAw
	 9PH6BQGS9lfd3FTbW2hx3fqqXBFF+za86F5n5PX5o44oocYSwrWB9qgDxh4MC4Fu2Q
	 0/pUq7B/h6A00h3OlV0iXSe+fuJgWpMYT73VzKGZ6SUZVs/ZPYAKjKu0U2k2bQygLd
	 pwtSbxQkPv+dc11QVO2y60g6qk94o2rCgqDsfUZ49iUXk86qiLMyYTIHVkzbaau7Xx
	 zoqAVu5XJJoaaLZExwi27V6Aj9ryRwUEBETYgWWRI5Fq/FOL6h8EDi/45G5HIrHEzq
	 /nib4GX0qMCQQ==
Original-Subject: Re: Issue in man page crypt.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000201AA.0000000068CFDE55.00087107; Sun, 21 Sep 2025 11:15:33 +0000
Date: Sun, 21 Sep 2025 11:15:33 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page crypt.3
Message-ID: <aM_eVTUQQsWpunKx@meinfjell.helgefjelltest.de>
References: <aKsmRSS7QJuxhK0o@meinfjell.helgefjelltest.de>
 <vq3wn54jxttpwmrloroygtizxhzqettwlwsx75efb33b2vz6mr@uu3uhtblkd5r>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-553223-1758453333-0001-2"
Content-Disposition: inline
In-Reply-To: <vq3wn54jxttpwmrloroygtizxhzqettwlwsx75efb33b2vz6mr@uu3uhtblkd5r>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-553223-1758453333-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alex,
Am Mon, Sep 01, 2025 at 10:01:10AM +0200 schrieb Alejandro Colomar:
> On Sun, Aug 24, 2025 at 02:48:37PM +0000, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    "fail closed"??
> >=20
> > "The behavior of E<.Nm crypt> on errors isn't well standardized.  Some "
> > "implementations simply can't fail (except by crashing the program), ot=
hers "
> > "return a null pointer or a fixed string.  Most implementations don't s=
et "
> > "E<.Va errno>, but some do.  POSIX specifies returning a null pointer a=
nd "
> > "setting E<.Va errno>, but it defines only one possible error, E<.Er EN=
OSYS>, "
> > "in the case where E<.Nm crypt> is not supported at all.  Some older "
> > "applications are not prepared to handle null pointers returned by E<.N=
m "
> > "crypt>.  The behavior described above for this implementation, setting=
 E<.Va "
> > "errno> and returning an invalid hash different from E<.Fa setting>, is=
 "
> > "chosen to make these applications fail closed when an error occurs."
>=20
> I don't see any of this text in this page, nor in its git history.
> Please check.

Sorry, this is comming from libxcrypt, i.e.
https://github.com/besser82/libxcrypt

So please ignore this report, I fixed our internal assignement.

Greetings

         Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-553223-1758453333-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIyBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmjP3lIACgkQQbqlJmgq
5nA63Q/3Ta9wufYLZxmHZFUSwx0qv/Bs4gyOo8KfaHx0jHOOajiO2rAuLTs5MRed
FRCMP3wv/kHw3MAaz95ytNsl6/Ql6yhb+pP2EPo4EGbBvQaY/06NNAejQfUIZb7A
zlXmIEm625l1fY0a5uu8bN1I5fCM3apC6YvGDQAyBHfzrJ3S0DJrSzpLZ3jS3Nyf
uhzVgIDoFQ8py/irUYjY99/AIY4qNg0FPfBqwmriFCxN2iC8q5Bq2kSEbxxGwIat
FU9Sgl8JZ2JMbkPXSLMIiuY6yITaNcfOoB2NvCwchbo8uTcPp8TAlx78WnlXjmRi
q/oRfY7nmxTZ3hvvYPGwuZLcThVWrTJCpNj3ASjEazY4o4+xCHKzMSCBf5T+kf/4
iCDXwZLpVW+MHJoC1QX3+TNaIBUCpKhVxQ+A55nJjWSC0s3DEA20OUr/YKQd9ujY
5bsNur4XFIlY+cQIZDOq5hUf2iofAd3M75ICI/PDJ8C+sO6/JePXulptXmKnmkjA
B772mjdSxfBv2xw8AAKBgY10ESfCoiDm8wY6kwoN72ymGy4ofKSrs51HQ1E+Z4ba
2T5UM3Cx04feP4+2OUwg15pkv1AJMPRJNSaykvY/IuG0KP9ej1oZbpv51RUMEYxT
JpqLIiKkh5FCWzSeZSPKb2TIB4b7UDTPxhMe0RAT9vkPJvgblg==
=QH/p
-----END PGP SIGNATURE-----

--=_meinfjell-553223-1758453333-0001-2--

