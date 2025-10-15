Return-Path: <linux-man+bounces-4155-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 91DA9BE057B
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 21:17:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3B8C54E77C6
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 19:17:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C126281370;
	Wed, 15 Oct 2025 19:17:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XO0gRiwR"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4998E1624D5
	for <linux-man@vger.kernel.org>; Wed, 15 Oct 2025 19:17:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760555827; cv=none; b=GJVNYSdvdRPwG2Dj3hmbFA3yZ+h4t4mx0AdLL5o/syfk2Vaf7dNAzF9xGlLLQtuNwJpO54MipYodTIIM1gqOiJYiXob0UVLVH5HYLbbb17RWZvlkfHsQbmx3crIWqgcs9EMXb1n3kcrGxlZmnV7gBGCzdwKncIWalZuBpzyEIow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760555827; c=relaxed/simple;
	bh=QOKuoLijWqDEgtLrKNMIIZK8h8NytKaQ0oRSreCJi1o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JS31myP/sLtYpFGLE/ydSO6BM/5FJ4dZ7/ozxpI+o2uffoI1CBEZdtup8BNUqvv8wvP5WzVEyTfIN5792Hjbv8MNlWhe82hfAiu4zNiXn5AAC43VfA0eFyA5HbKKv+4Yp2Xrj7uBNfdKmHObk3pzQ1clH/9ceMUyHsYnT52CboQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XO0gRiwR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB4B7C4CEF8;
	Wed, 15 Oct 2025 19:17:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760555825;
	bh=QOKuoLijWqDEgtLrKNMIIZK8h8NytKaQ0oRSreCJi1o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XO0gRiwRDYaiXC2cKXCLnf9WLGljrS9NAe4zHLFCZK2GizwGht/Ogv6W+U3rRs5K7
	 XwYreE0AYn2ixXt0OlBE1qe0XybdPpfCWKhw/r80brwIJUUUDZujb2NnATrpdWFb6y
	 8HbpVECU8ZKlN9a7SqJBUPYpoOlmua2soQa908h61Yjt59v0o3qRk9TldL61z3KAmW
	 4VtFqdKcMaaAgfb14Aj5mR6oh7qf2MOjMrC6+dYVTdvZaSZb0kafvr85CU/2qSOVgZ
	 pE2gHhuBY1JQTgqjhtHTXbGZH/tHJJ9LBY/QHM0yxRtsoASS2SN0nQqVl/e9B4LzNm
	 VWbXmTRWVChFQ==
Date: Wed, 15 Oct 2025 21:17:02 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Sam James <sam@gentoo.org>
Cc: Carlos O'Donell <carlos@redhat.com>, linux-man@vger.kernel.org, 
	Collin Funk <collin.funk1@gmail.com>
Subject: Re: [PATCH v4] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <siitzhjycuol2zjpvk3bokxbrj2thnplp6bh46qvplgqlo5b32@pn3ekpszpenk>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <4599445186b3e659166f5c73f682467703396e9e.1760543375.git.alx@kernel.org>
 <1924e1ed-bb96-4a08-a47e-8e77857fa431@redhat.com>
 <7n2g7ccnlfcjm2pgptwwuq3pn6dpnrwvqfxa4exa2hnjikajwk@men5xbekuoop>
 <878qhc6lv5.fsf@gentoo.org>
 <e36y5jnoxqshixvvaqsmamuz3qvun3f2j6oarpo3wzedufnvq3@ckwmkcqb7pnn>
 <pzpqnukol5vapop3js7vmnwtlvagmivpqpwr3uy7idntrls6jp@vmfilg5dvobt>
 <87tt0056a4.fsf@gentoo.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kl5654hxaprbf4xr"
Content-Disposition: inline
In-Reply-To: <87tt0056a4.fsf@gentoo.org>


--kl5654hxaprbf4xr
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Sam James <sam@gentoo.org>
Cc: Carlos O'Donell <carlos@redhat.com>, linux-man@vger.kernel.org, 
	Collin Funk <collin.funk1@gmail.com>
Subject: Re: [PATCH v4] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <siitzhjycuol2zjpvk3bokxbrj2thnplp6bh46qvplgqlo5b32@pn3ekpszpenk>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <4599445186b3e659166f5c73f682467703396e9e.1760543375.git.alx@kernel.org>
 <1924e1ed-bb96-4a08-a47e-8e77857fa431@redhat.com>
 <7n2g7ccnlfcjm2pgptwwuq3pn6dpnrwvqfxa4exa2hnjikajwk@men5xbekuoop>
 <878qhc6lv5.fsf@gentoo.org>
 <e36y5jnoxqshixvvaqsmamuz3qvun3f2j6oarpo3wzedufnvq3@ckwmkcqb7pnn>
 <pzpqnukol5vapop3js7vmnwtlvagmivpqpwr3uy7idntrls6jp@vmfilg5dvobt>
 <87tt0056a4.fsf@gentoo.org>
MIME-Version: 1.0
In-Reply-To: <87tt0056a4.fsf@gentoo.org>

Hi Sam,

On Wed, Oct 15, 2025 at 08:11:47PM +0100, Sam James wrote:
> > BTW, I assume TTS means text-to-speech.  Please don't use abbreviations
> > not supported by wtf(1), or parenthesize their meaning in the first use.
>=20
> I normally try to honour that. Anyway, I'm not interested in discussing
> further at this time. I don't think the way you've suggested this
> subproposal is constructive.

I'm sorry if my wording didn't feel constructive.  I too felt that was
possible before sending, and tried to come up with better wording, but
didn't come up with anything better.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--kl5654hxaprbf4xr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjv8ygACgkQ64mZXMKQ
wqlyaBAArtNoQLgR/jpX0P5c4bhnCeBluqFdDqoygkGcU16e1PHpg+vwU5nVNMXb
EzBv+zxH2idjioCryZ7TdfGAEcIOzh/U9SDYrBXAIOsJ381iL1BBdF/ckyNFAGbM
M/t99qIjuKP1RZLyghIRXO939pt74xVTpl92b+ldOBhDZisVE8yHvBuxKZTec97m
r8mML3qs9HGiX2Xn32pAExj6gHEoOxhbeI5fGRKOux2gBGe2Y+TkWY7loFtJ4nYf
/bE1WFxhvMl/LXv0QPGAc3uyjX/NIMXKUGqYgbqDSYSmC8PaUpNqM6rVXti7mrqG
GJrTtA+Z1LVCSG54dg7yTxSxrUCweJkGsuiWrtdSWEUHnTWM/wl7M7AbGQSjiYiN
l4qweHdhbVCcDVf+X0YeRK4dCdJ2xuL0l4fLSvC/w1r702BPh8iZc5TDJpX4LfHY
ecq/GFpT+exnmuXI774NwTNMIJrv/lGT54QxIXHkUNunkaZ4SzJDhQfYOhSR4dFN
xiiXRdft+GKbIb71/MpbBJCL0rKVSYNjoVh1xPgtV2BYeLNBx4lutb3FZZ/ezIPf
k56jToeoC/LiT14Z283RntDKwPC5TDQytRiVfdayvhX9UlBdh7UyUOd9sSTuzYc+
fCZzDUUbI0e94XjlSKRrI2Cq8+FBRaOG+gFyh5rjopMCbf/K3UA=
=rGoK
-----END PGP SIGNATURE-----

--kl5654hxaprbf4xr--

