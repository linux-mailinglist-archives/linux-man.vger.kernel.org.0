Return-Path: <linux-man+bounces-2002-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1119D03E2
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 13:44:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B73921F2194A
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 12:44:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AED8E1922FA;
	Sun, 17 Nov 2024 12:44:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="euFk/X9U"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E0C18FC79
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 12:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731847475; cv=none; b=N/BRzIZ0yIqDDvB1jNG2577r50OPXRbZI0HOgNbW9A1mQw1yeZdFjUvHLaAA25MGwaASMMbrppyCyDD1K8wilPILtakSQpjrymRH6Sq9XHnRCIpCf8ZUF9O9kZvkxrOchhlXlEcrCFoV/GJVGaF+gMw7RRr5oZKrVEDtUG49pbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731847475; c=relaxed/simple;
	bh=9AiZQDjdDbSgzHNS0ufj34m56KqgrrAr10MlQ8Q+NLQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KJyjF+V4xwwuuSrVNUycgOvmwbUnPaFgO5bcl/oWn6/vfWeYDi5ODgXJxxTnLkP1ogwT+ZZm8O33e/Ok5sgvNnclQp1LEeyU3eByTJCulcw8tGDPhTx2+Z+APj60veoTHldwbKEqw8PzqQpyT/0iLC0nabCY2una3zJ8lA8KvZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=euFk/X9U; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731847472;
	bh=XVsD8RbP+Hq4Q4A+rCUDTRYsLszH0ugfo0uCd8z9niY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=euFk/X9UON6SDN9ANSuhvq+4L1KZmvmwar1vvUHvmirwLDAQ51Ktmgt1s2rOil+eE
	 PJaMjuQiazNYr5IzLxeYs/0ikZqp3B6JG65DCPr4iDMR/qVQ59C9VEZFuyGZoRWNk8
	 Yd6g+Ye9dfGek5W7S4+/uOVjwhPq6vam0nf66R3UCS/6x+ega0UKNon5O4NUZtaO0+
	 obtvo/GcN/GNhwOMAlWr7B/DTdZO7rcR345ikmXI5hSG9Ek+MXmHhheMd8wEEhQAwi
	 DhZz4/sKce+ek/UE6RDqBUs6FeWR1JGOFibmKZ2mlIx57jfa3c9GX4wJIwI9+2LbZL
	 2yj48xWnb0phA==
Original-Subject: Re: Issue in man page time.1
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002006F.000000006739E530.003FD9BB; Sun, 17 Nov 2024 12:44:32 +0000
Date: Sun, 17 Nov 2024 12:44:32 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page time.1
Message-ID: <ZznlMOouQQ4_IuG-@meinfjell.helgefjelltest.de>
References: <ZznJgGCgquI-itJ8@meinfjell.helgefjelltest.de>
 <4i3vln6fjke2o4nfu6nljlzavfhlonjakqq2e5cwy66ukrvcyi@ovzpl2yz6p7q>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-4184507-1731847472-0001-2"
Content-Disposition: inline
In-Reply-To: <4i3vln6fjke2o4nfu6nljlzavfhlonjakqq2e5cwy66ukrvcyi@ovzpl2yz6p7q>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-4184507-1731847472-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
Am Sun, Nov 17, 2024 at 01:13:45PM +0100 schrieb Alejandro Colomar:
> On Sun, Nov 17, 2024 at 10:46:24AM GMT, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    Should be two paragraphs and the first without "no-wrap"
> >=20
> > "Use the following format string, for conformance with POSIX standard 1=
003.2:\n"
> > "          real %e\n"
> > "          user %U\n"
> > "          sys %S\n"
>=20
> I don't find that text.  Please check.

Again from Debian.

Should I report those seperately (but you did address Tobias earlier
as well).

Greetings

        Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-4184507-1731847472-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmc55TAACgkQQbqlJmgq
5nBimQ//VeNXX738f7G6qi+R//4EY/AJ72yyY227EEl3QmC0ky8X2e33u/AlVAm6
powGubOtZv9DNhintPDOmjYN4Mxtjw2SnmcmzT6URkdyO3c+xJ7Hxw676hJnuocp
jxoB6dZTVPS/RusRSsrT5qXoQG4joTibtQIaSa26ami5PSG8W35Mm0bnFxOCJt7U
vBNnph1SeTUHzZOzlni+piuVnEVCOXcZ9OVskPYEGx7M1Lnn8iTHWTG6SvUtBrJR
AEat6677urijxDirHh0g8C1myG2t6N8Z5oM3ouRyilGGktsdY4YalfogQJ/ywK6h
/nF8mSiQs1Ird5Kp0xTl4i1S0zmvpLv2kU+ZgUQp9RChUKwczOeihhpoRDIvn9Cl
jXDN+/rqw23TLAtVw7eXyIp85Ax/Z6HcgAqgVb19NFnj0zxzjRbE1SEc9mcH/5YN
OaDX/n9ylsYRZFM6Um2/TtxBlMqwz9E26HUjOqAYDXU2ne1+AoJcP770SfVnOzxG
zCZ4jpZ0ZtFTkzw9qpW3DzJvMRc32KCGqk1iUgn9OZ+lNUmwtSEvhMWsU9yPrkbL
KOZS2HdBB4J6lbmkPOhCiZC6zeBVP2obe9wPG7jwIhJ5HB2fPy8m/jXXaF2gyDJ1
6pVIzjTppD9RP3L2RgWhfiNjgp9eMeUt/SU3n+EZcMSHHSxHG58=
=0gix
-----END PGP SIGNATURE-----

--=_meinfjell-4184507-1731847472-0001-2--

