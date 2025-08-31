Return-Path: <linux-man+bounces-3779-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 763E7B3D3B4
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 15:37:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2853317A07A
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 13:37:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 161501A314F;
	Sun, 31 Aug 2025 13:37:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="BRl367TP"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517021D6AA
	for <linux-man@vger.kernel.org>; Sun, 31 Aug 2025 13:37:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756647436; cv=none; b=HghLyvomT75U75XNtXlG8Fx75QXqpWGZOTFTVylORzku9R0HHLWKtKxubSSAyaIofbvp2tTMA9Xt3hFsHnCUHEqWHUP1Lk7nZgUB8YAb2JxrVdXmO2q+bca3Ss5cxOHXe0Oh9a7qIhfZ092mjiJcgDhp6XYr0VqShYaxw1A7x5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756647436; c=relaxed/simple;
	bh=wfV2GQ0/K5gRhI3w+/kFO8WemfKTQ09BBFjRqIGkm3I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fCoTj+RSLfCmEL3VOuGpnFvCu+eLHBFoIeFjDtmjTj0SioVpW1LhE6TX2h3ajh1jzvFh+vAANyfdjugUsKVWLUoFotqSVcYrQeu99ksUDSxd2T74MN6IV2EZCG3HUxEFbcUSrRBnFgsCWHG9NPsGBVwgEGd0GFQdJzI+AlIk294=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=BRl367TP; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756647432;
	bh=kqOzj+EBsgpaRpBZlclr1wtGhu+AF7FI85bqmxs6mAM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=BRl367TPVXe+pj7OpVjcLmcLo7ANApSfErk5LuZ062PGXdjSDzopjNZRo/n3jxKQU
	 vn5mkY8MhU7wPiA84ONA4Rn9P0Hbpo2e8ZHCK/hwAmUFuwt8z7dcSaIwF6h9Svmr/j
	 9aWw8TImUf5DT4DQu7w/uHd61Jb4PlMKE1s5Wc9u3XP8OEVEkI73gki/ss6zCkviOD
	 7Q8Z2Kw5ryYPZXD+NbosIS2zjr7IhooVWaqOw1znXohmITOw1nhKQOE6SfsKk46PA5
	 DRbKvCjYU8hBiuQzntzUo9842udzstb0QKqX6mYc5eVXwr6GSZi897YvaJD/asvpoV
	 zppwTFrPa7mEA==
Original-Subject: Re: Issue in man page motd.5
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
  Mario =?utf-8?Q?Bl=C3=A4ttermann?= <mario.blaettermann@gmail.com>
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000200AF.0000000068B45008.0025CD70; Sun, 31 Aug 2025 13:37:12 +0000
Date: Sun, 31 Aug 2025 13:37:12 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
  Mario =?utf-8?Q?Bl=C3=A4ttermann?= <mario.blaettermann@gmail.com>
Subject: Re: Issue in man page motd.5
Message-ID: <aLRQCCoQpnTi_NFh@meinfjell.helgefjelltest.de>
References: <aKsmTShE9A4C9Zof@meinfjell.helgefjelltest.de>
 <nvvtzeq3cy3q6kyaynyldwahfhnkkddezrjwu44mvuabuo3ow4@os4w2g2436q5>
 <aLQ1Oak6FGqE_5xX@meinfjell.helgefjelltest.de>
 <77ninsoa7bdy4jmmyehfia7o3w6yu66snf25odfpzyebh7fc2s@fqe33plw6hsn>
 <CAHi0vA9DGAuO5iPaeQ3gfg1DHuSQoLEOGkPZ8SVbLNJrtonTyw@mail.gmail.com>
 <20250831133055.2tiryu57ai6dhnlw@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-2477424-1756647432-0001-2"
Content-Disposition: inline
In-Reply-To: <20250831133055.2tiryu57ai6dhnlw@illithid>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-2477424-1756647432-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Branden,
Am Sun, Aug 31, 2025 at 08:30:55AM -0500 schrieb G. Branden Robinson:
> At 2025-08-31T14:56:18+0200, Mario Bl=C3=A4ttermann wrote:
> (Alex is still waiting on me for a revised submission of heavy
> sed(1)-lifting to automatically rewrite (primarily) the syscalls(2)
> page, which is gigantic and contains many cross references inside a
> tbl(1) region.[1])

If you can share the sed script afterwards, this would be highly
appreciated. Maybe I can adapt it for manpages-l10n as well, this=20
page is translated (at least partially) into 7 of our languages.

Greetings

           Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-2477424-1756647432-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmi0UAYACgkQQbqlJmgq
5nB1KQ//Q3nKzqdF6pumSrwJW3WnA1vhvLRuLM+AtgjT5na4vFvxszqTcweXj9BC
m9E6dw/g/3gmK6r7u/we5JWXY1bNLL4dG8ieDngClcR6+EWv5XmHe19pBV1I/ZlI
ahkHp8+5gty9OV6ouDsvvZ1rjFRFzgCDBUDSbV5UiS2HBPaFfE8L1cv6BOYoqQAL
/zD4Sa10BALEuCvjnNPcLLeLiUnQoNONVD6NZGbHxglK/gC1AeyQjvucoiu23Dvo
Tq/DtVJbxPFIQPdpg2+/uiA13y91lpYZYqLB4uOQxA2ggBsE8Lqiij2YpgEGjAYE
o+AlK4DG9GoHzSzcWjLaKOsCxcUpZu0eNNq8n54Sxsn5Q3QR4bDOIfx9Fg6xABx7
/y3UMrCE9iRUTRlyFFi6VYbLetaf2aTx9lZo+Sa5hKqqY6n8wECowIqmSSFzQwM/
wZsHkt+/yKxTLhv0riIb76AvjWavzW4yNVjtUXqhA4asTpt/hul1QsYp5NDUWk60
9S0yT4QhMXk1Q3dF33wBIV+ASlVuIs6PYLoHzW9tALXIX1hAQ0ZVUL5VawBFBmpl
UJLZSwgbdXT5/hPajYsnNFrS+Vl8ITUM5HnM0oPDRznKkqTW+EDndfbNZpohkUCl
UnVFxMqqRGASaJLZrakKr688LRXKX/zJHpjKHh8ioNeDlZ8Nf6k=
=0pK6
-----END PGP SIGNATURE-----

--=_meinfjell-2477424-1756647432-0001-2--

