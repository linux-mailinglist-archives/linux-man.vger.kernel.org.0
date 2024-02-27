Return-Path: <linux-man+bounces-484-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF4A86A16B
	for <lists+linux-man@lfdr.de>; Tue, 27 Feb 2024 22:17:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F1471B22997
	for <lists+linux-man@lfdr.de>; Tue, 27 Feb 2024 21:15:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BD4013AA36;
	Tue, 27 Feb 2024 21:15:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYcpnQSI"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D19938DE7
	for <linux-man@vger.kernel.org>; Tue, 27 Feb 2024 21:15:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709068505; cv=none; b=Sq1lCUCZ/bdFXB0BfiahrXkW4rW52P/EQarDeichaJ5bRRed29nTZh9nzUzNEBfUkGCbVgzKilRD3ESnpEcyDfd8+mN7ucUKMAhefsKkueQgc2sDck7Iy+wZNkeU/M8d+GhqPMpPZuWNbePBBb5amLRSNBorjVJsz2SS6zvtTmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709068505; c=relaxed/simple;
	bh=shdzx8s69Ka7boXMBPZMjd05mN/UUc48hTQ7QXHgUsA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PXJD/zoywgmr/ps+6yHaKgGw7XUya4MYIIBVTACHPzc7j2CSkqafopFvNRzJG3IgylWiCoeOEJP0ehGbergDdThKTukSFu25MA/pixKpUMH/1/giLcSEsMB922sbNNcUIwwQQLZEuwJnHZgGu72zGqG5w6bL2cNnxpXBVAGZIBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYcpnQSI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D08F3C433C7;
	Tue, 27 Feb 2024 21:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709068504;
	bh=shdzx8s69Ka7boXMBPZMjd05mN/UUc48hTQ7QXHgUsA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UYcpnQSI19Ce4nMwXF8BN6d2V+mtErKKX9yZuQ63o0XMORMkhqpDuek6JkKeZWr6i
	 KhiBf7eDgFXPRioZlc8o13wW3NoPZc1PIRf5oHFoxjP6rMKU8GEO0NG7jLaZ1Oa7v/
	 j+rl0pDdVEjLfiGmQd36swJqdlM1uPMq6/T0geuNiTM9IMKsQCIE9vslvnTIK64jZh
	 um6ofx3olT3U6aLYIfXjo2JU/V2mgcYwqTbanQetJthLcL2AlRHMKIu/mNFmiy9+Ny
	 YlU/isdeglebASIFeJYeqa08h2uVQpssJaZVf9e1dJL6lgk1rX2tWZ145us1ESOmMc
	 aO+8OsBXxDmOQ==
Date: Tue, 27 Feb 2024 22:15:01 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Thomas Orgis <thomas@orgis.org>
Cc: linux-man@vger.kernel.org, Eric Blake <eblake@redhat.com>
Subject: Re: [PATCH 1/2] sigaction.2: HISTORY: SA_NOCLDSTOP wasn't added in
 POSIX.1-2001
Message-ID: <Zd5Q1bPvS5onFlXp@debian>
References: <20240214095707.1824c25c@plasteblaster>
 <20240225115307.438556-1-alx@kernel.org>
 <20240225115307.438556-2-alx@kernel.org>
 <5BA9FE20-851A-4074-8BA3-15F2A5BD3C0F@orgis.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Y1HHXl3v6DNjrHmS"
Content-Disposition: inline
In-Reply-To: <5BA9FE20-851A-4074-8BA3-15F2A5BD3C0F@orgis.org>


--Y1HHXl3v6DNjrHmS
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 27 Feb 2024 22:15:01 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Thomas Orgis <thomas@orgis.org>
Cc: linux-man@vger.kernel.org, Eric Blake <eblake@redhat.com>
Subject: Re: [PATCH 1/2] sigaction.2: HISTORY: SA_NOCLDSTOP wasn't added in
 POSIX.1-2001

Hi Thomas,

On Tue, Feb 27, 2024 at 07:12:16PM +0100, Thomas Orgis wrote:
> Am 25. Februar 2024 12:53:15 MEZ schrieb Alejandro Colomar <alx@kernel.or=
g>:
> >It already existed in POSIX.1-1996, according to just a few lines above.
>=20
> ... it existing in 1990, not 1996? Or is=20

Oops, I misread.  It's my accident in the commit message.  :)

>=20
> >@@ -1020,7 +1020,6 @@ .SH HISTORY
> > POSIX.1-1990 specified only
>=20
> a typo? I am by no means an expert on POSIX revisions.
> More interesting in this context seems to be the subtle change
> in SA_NOCLDSTOP behaviour with XSI enabled noted in the spec
>=20
>   https://pubs.opengroup.org/onlinepubs/9699919799/functions/sigaction.ht=
ml
>=20
>   SA_NOCLDSTOP[CX]  Do not generate SIGCHLD when children
>   stop [XSI] or stopped children continue.=20
>=20
> Should this detail be documented, too, for this flag? Get SIGCHLD only
> if continuing, not when stopping unless with XSI?

Yup, I also noticed that.  I'm no expert in that, so I would be more
comfortable if you or someone else send a patch.

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--Y1HHXl3v6DNjrHmS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXeUNUACgkQnowa+77/
2zLjVg//Z/++fwFTkf/ttu0195gvH2tOdnj7lO27+hZ5qd3TxvChQkDLjF9OopTr
ahKJKhVN43wGuPnXFY6GSUP12DP3VwLP9gf2DCMB2/JC2P1bBw70D/7HbbomK6Ad
6iQzt2DNsLVMeBRQerrfZ4pAz8b3vo1jI/Y/PyKxGzvzQf0oWcv830Xd00y3gkah
9znfj7P/uzKo1WFjmU1anlVdF3cnyZiaW+1+Irwt5nzValFRg9KUcATjGoLptDNQ
vHW77IsqPSxMwi8T3bH+E/c75pbNyRIch7Py8AWoLYkRpJ9sEPXpU6smWqKbpI9c
5PhXARfi46IaRWOnwvcypLeYcAwQ9HzXy1etgC4Wf3hhEVzpPz6OZRj0op/X+jST
geEYr+OE7t/cX9pVH+w1Gt4Cz/iUd6dws3ExXAKxQypBEeKqdaYsfSQprhfLZfhW
I6pGnVPBBTLC3Sej2pUCHbkPpLMFtqoDwAFWq+IzazMLUbj2YSco5bzxyB/eB6hA
0P1RZX9SmzDtJR/N7sKNjszd7lkICYkL06cGwHTo/rfGmIZkBzhRecsq+/svBuLe
SPIf93OCNkNE5BaX3KNFe8ni10ujTfRqH1C8J4xuIzGQNDHClcGUAuq9my6BpFhd
zGI8lTO20X3wOjHLr+3BcYpk04NyrPS8KX+VFVjD+WK8rtmwrJU=
=mwze
-----END PGP SIGNATURE-----

--Y1HHXl3v6DNjrHmS--

