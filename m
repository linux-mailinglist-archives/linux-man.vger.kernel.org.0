Return-Path: <linux-man+bounces-3713-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D5CB346B6
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 18:06:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1DF4118940DB
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 16:06:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0395299924;
	Mon, 25 Aug 2025 16:05:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="jJgJpXzi"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A22614A62B
	for <linux-man@vger.kernel.org>; Mon, 25 Aug 2025 16:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756137958; cv=none; b=eEcdNJpMvF/ligILOnK+T/bM5pIV1b8l7ihj5Sa2XmRn6VEZHyBN+ZSQFtV66Sa+6uKT6JrVfLJtKJ/VQiufNiwQIrvhNbUgfq5742SweNNGn5Jt0x866xEYVKYLXoA1ZvKaqecPxVF3wkFtmDmOqMupXftK3vlkPanLgCF7UEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756137958; c=relaxed/simple;
	bh=mzqeaT93xyauwJpRBRZGCuHS5nWy3CpD/t9JTJZPBIE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SNBSpnyzDc1LnFPSn4yqlYCYl9pzzIlEZYihY0c94x9CilLiIJHU4p23stjjn/oB8sp0T4VwV7JsjxCruKpOLkbv88rbG8rIOY5RqkKkO3TFVSdECTmLLtR5gHGG4fGHDTBAt4TRKi4B4azjdfZF4ZwIJrfm8QwPL84HXntyqbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=jJgJpXzi; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756137955;
	bh=TreLhoK21V58/Gr5H+EtkUWP+sIC85ryTk5EIrg3OTE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=jJgJpXziZMQkJENmxNS/VY6qgixEkEIJyK1eBSwDK4FVxkurBOwb1zRWndDdOH5ez
	 zWIf/VOJvcD0vfNPXa6Me9Sp1+7aGmN0DBEaZxY7KgC10HbS6IuGySuhUpg2r+K7H+
	 1BKACkkTQbr/1vfVKtNPiJzPZaxNdEhm23grzC7kILkCHUcGpt9Plezm5VkSFGGCL8
	 u8/R28WIeGmZWIBPqmiOPEO67xF18uflGvQ9egwJaow1hJ7wFAtp9kD1r8AmQqrJQg
	 FPXlBbNwEebgBB2ksJ3bsa2W4kazgO/6OqJlBN/NHY/LOierU2TY+f6QS3Jbi2gNNy
	 SyTgMnmqAu4yg==
Original-Subject: Re: Issue in man page puts.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020051.0000000068AC89E3.0031D722; Mon, 25 Aug 2025 16:05:55 +0000
Date: Mon, 25 Aug 2025 16:05:55 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page puts.3
Message-ID: <aKyJ42-Rdy3XoA_b@meinfjell.helgefjelltest.de>
References: <aKsmUJzsFnD-5WjZ@meinfjell.helgefjelltest.de>
 <x3lv64ggfak356bkfnnar365tfid73c4zi2ccyv62trmknw5sh@fcdakf7cz2bu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-3266338-1756137955-0001-2"
Content-Disposition: inline
In-Reply-To: <x3lv64ggfak356bkfnnar365tfid73c4zi2ccyv62trmknw5sh@fcdakf7cz2bu>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-3266338-1756137955-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Am Sun, Aug 24, 2025 at 09:17:17PM +0200 schrieb Alejandro Colomar:
> Hi Helge,
>=20
> On Sun, Aug 24, 2025 at 02:48:48PM +0000, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue 1:  I<putchar(c)> =E2=86=92 B<putchar(>I<c>B<)>
> > Issue 2:  I<putc(c,\\ stdout)> =E2=86=92 B<putc(>I<c>B<, >I<stdout>B<)>
> >=20
> > "I<putchar(c)> is equivalent to I<putc(c,\\ stdout)>."
>=20
> These are correct.  See man-pages(7):
>=20
>        Expressions, if not written on a separate indented line,
>        should be specified in italics.

Thanks for the pointer. I now see that sentence, but it doesn't make
sense. I believed the whole idea of this formatting was to give
meaning to the content, e.g. put variables in italices and "fixed"
strings in bold.

Rules like these also make translations harder, because translators
are not programmers, and guides like layed out in the previous
paragraphs really helped a lot doing good translations.

I guess at least for Linux man pages I stop reporting formatting
issues, as the rules are much more complex than I would like them to
be / than I tought.

Sorry thus for the many (incorrect) reports.

Greetings

               Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-3266338-1756137955-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmisieMACgkQQbqlJmgq
5nDuBBAAl995x5qJMg98Y/RqmueYHn8aeq4ABFuBqFAGnb9dCsGT7PmJWYq8XCQT
KwO/TWdOYVcNNV8WCCNEeZqI5Nk8nKf2k+tGaCJcIVroAe5e+578cflZ9PInftq8
+u1cq6BXUDcEWyTukiS4SpNOX7PkPXTKKfpsczk1xVo7k5oNzTYvSIiBiHaSdPMh
4jNRvRA/C1Z8Zq0QyanBbdx/bJTzuqMSUzOxKesbo2QB/9G2H4hGKfNjbBVdVw9m
iRTfiZmM3AMYSTox8Dm5xJv3GbBad4flpyYrA8zojGw1Rz7YTUlBtYTNeELf/u9x
rIVEzUmp/tI3SyFczv9N6EK/4DOeRQp09JZ70lTLRM9JjfqmHRDq8jNDU2cZTeIX
v4vrKZk0uXqPc3pr+agu+EmsjawIGnsEqYdUeoeIJGA9ZDEkrA7jciBA23wTmAR/
l+sr6giEG4i15OCzhMyiLIp2pHTdl0txGZ/DWniv1ZQbvZnDO4VoCYVi1JWOD8CW
AceAFFnypkXntnpmRA8no1FOJLVgInsZvIS709ASAcVEHwlfE89Jke/RRmO99G/b
FqBD5gFpU6AF2YFI39igAK8kBNAuKUE9YRGcAkEC/EXKVmcLt+DFMftTtvXKEvcl
XnhvzwRymKXIEUz/P3KITpO71kGjBV3zXg3vEKIP4+2Uzwwlevw=
=C2+f
-----END PGP SIGNATURE-----

--=_meinfjell-3266338-1756137955-0001-2--

