Return-Path: <linux-man+bounces-3815-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 91564B3EC06
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 18:13:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5A2BC166332
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 16:13:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5798C22A4F6;
	Mon,  1 Sep 2025 16:13:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="ZfjzWOQL"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3E581E2853
	for <linux-man@vger.kernel.org>; Mon,  1 Sep 2025 16:13:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756743208; cv=none; b=edXMvWtyJA+8EDzdYYvRJOFMjFjfWfJYET3EqwDxfZFVWEKwkh9AT657ts6EhCmCbKTYbfD0t4ukHxGNBZ+2hDDc8nfbEQHgdKqn5usDxj7UwGQgefVQxwmeu7wtwdQkJrBCWQG3tx6lRPQqh74JZNQZc6UQaX9h3ktt76d/Uok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756743208; c=relaxed/simple;
	bh=AiKdw6REai2rSA6UL5bYwr+LK31nQhnr+EJ3ccmjRnQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oxIlE2VHMhNfSJlBPiJr28kdgp9UwTKpXxyOcYfNX9/Ht1Vw6pGdjVItvAtqE9oNgaR0O4MQCd+rcqFN1OCfjFxWsHoTl0n0R+SaAcBe/oyengC5Iyd06ToWRscLER9tEt3ILAwGknOVsH4McPmcDAi8/u031JIo8De3Fdku4wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=ZfjzWOQL; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756743197;
	bh=XHaxeboS7lrwKWMjKuoR07Jn8tK2LbPxo6gznpekmEU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ZfjzWOQLeqHvmZ3MGDAkio6wueLJ5rAeWR1kSwC5rn+vamxlpW/ASaoIBQTM6DX7J
	 RRocnUuoU6eqm1eF2oto9iq4j64PEyklup1uk7qlyt24zJ4oUt2Sjox7ANHDTy6pnR
	 +oVpYulK5nw8EaNIwJrcYgM1wR8BAUIC/SMkqTHVSBZnHS/GQ0Aad3t+itUlOulOqq
	 dMPLdavXnIhepm+ALnJjh9rA/3UU6bGJzfMJpwrXIva8rrLJKJjVkqgYWmXo/3h6cX
	 es5RUT7R7i9Pb6/j/Dm8ggN62oSQKDDgd8Tzg0G4dUpQ/tnNi3nnz8gCELSIOA2Ncp
	 fyaOgvFPTHVhg==
Original-Subject: Re: Issue in man page dir_colors.5
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000200F3.0000000068B5C61D.00038273; Mon, 01 Sep 2025 16:13:17 +0000
Date: Mon, 1 Sep 2025 16:13:17 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page dir_colors.5
Message-ID: <aLXGHfO12bR3JWa8@meinfjell.helgefjelltest.de>
References: <aKsmRo9hmWxmRoVK@meinfjell.helgefjelltest.de>
 <zx3expupb737dl6mcau3bifc63rmwiunqczamhnayh3cdjmyln@i7nvoe3gdsct>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-230003-1756743197-0001-2"
Content-Disposition: inline
In-Reply-To: <zx3expupb737dl6mcau3bifc63rmwiunqczamhnayh3cdjmyln@i7nvoe3gdsct>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-230003-1756743197-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alex,
Am Mon, Sep 01, 2025 at 09:51:52AM +0200 schrieb Alejandro Colomar:
> On Sun, Aug 24, 2025 at 02:48:38PM +0000, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    From this point I<> in msgid are incorrect (maybe similar iss=
ue as in groff_me.7.po?)
>=20
> I can't find any occurence of 'msgid' in dir_colors(5).  Not even in the
> git history:
>=20
> 	$ git log --follow -S msgid -- man/man5/dir_colors.5
> 	$
>=20
> I don't find any similar text in any other pages either:
>=20
> 	$ grep -rn point -C5 | grep msgid
> 	$
>=20
> Could you please check?

For translators, each paragraph in a po file is a msgid. This is the
po represenation we translators see. Sorry, I missed to filter this
out.

So the report is, that starting with the paragraph=20
Any character (octal notation)

The paragraphs are set in italics, while this is looking in incorrect
to the translator (which is not me).

I hope this explains?

Greetings

        Helge


--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-230003-1756743197-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmi1xh0ACgkQQbqlJmgq
5nCU2Q//W35wSqV9Ez53QOzSNHTMlYSmiSQmLvpzfMQc7oiBg2RSJGHs2uN5jPQm
3qY+DVDviTMWMtDyhNgyOd8he88oJLG7QX5CfvG6TKzFUJ1HdO1kjo4FbEt+gmga
c5yHY2uaXnLP9Jxi/Ezsj+1tl9ZOgEA8cQpiBIfnAQsGED4gaWZMP0L4jPneSHZF
q3pbOwxGLAQvyejIdJdu8+3AMpkn6N+u9gZBRzv6FORdmnvjISbI1lFC9+0lzxTa
jr3bZcwJk7GlM2FEbSAtHboyODNRDw8oBpd1p61hIWiX2LfB5C3u6lpq9yCbtJ8V
8N1eMh7dClnJtiqEHz0zfli5K/Cf1O6fQkWXGX/Jv2C1xgwWhSnNJVyPDCl4kTpu
Wc+QbKItaEqHDZ/8G4uBFNitLXiLc5D4HsXvhVYJYA2btvld33Zfeocc3AGkvpZu
B87aE6vS95TqxXuGTd5U06wOmtw8GMM16a7IhCsZwk49hrIpGOWN18pBjyAU9gvo
aG58dG5I/oN2rkC9DsDW+0EpZWg4m9QPcxY+H8ARSiggODRzYwBiouSj1mHRKfxL
PrHJaBXMkF88eeJBnD5TNSG97CbZJFYWKuvs6aUGuCjn+yWobUMjyJLjY9/vlLj9
l7rV96vbhzQ0/gNAakHSH8BaOh2weuNjX3AIJiZl/bUjDnCcJcM=
=1+Hp
-----END PGP SIGNATURE-----

--=_meinfjell-230003-1756743197-0001-2--

