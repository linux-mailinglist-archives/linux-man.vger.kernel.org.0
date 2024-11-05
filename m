Return-Path: <linux-man+bounces-1874-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE739BD8C7
	for <lists+linux-man@lfdr.de>; Tue,  5 Nov 2024 23:34:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 16398B21380
	for <lists+linux-man@lfdr.de>; Tue,  5 Nov 2024 22:34:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54A6F1D150C;
	Tue,  5 Nov 2024 22:34:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgO2nz+G"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12AD218E023
	for <linux-man@vger.kernel.org>; Tue,  5 Nov 2024 22:34:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730846059; cv=none; b=mLBH4JI7aqBqErdeQt7IjdfXfr4dPaGXSEUdYtk0qUwMzxvHwusKVv5Sf3PuGtRD/QgDKGAjd10IrPfY739gOvsehIPIP/ahjBQJUKvfvyGj9w3UzBjFGs/4o84u1Ng/TIU9QkCA0PR3nEUyNEu+ej/Jf9LoI1ujNnSl2SVpilA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730846059; c=relaxed/simple;
	bh=s8GCu+lDR1vutXvc1IL9xFGVgFl4NFZPpZPzeuHUlJs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Dp8y09B/S5qy/I2gbahjbDOCuZpCPQfcnVTZk+V7hMahodiKfEHMOzieiS+TFgfEgmjaty6wAw0n6hEmSzHBRVlvSzk5KiKI8GQJ6wCrmxFclNbG26uNDchHZz/XbQLo3dgucj43AJr7WIjMcVCA0PjP5EQEi4vNCXDb/1XwTgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgO2nz+G; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CF74C4CECF;
	Tue,  5 Nov 2024 22:34:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730846058;
	bh=s8GCu+lDR1vutXvc1IL9xFGVgFl4NFZPpZPzeuHUlJs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cgO2nz+GZ3skojKCXOVLgQeuYN2/r1mnP+vlArmIs+hJysMfDpSNBq9x4spYI6vct
	 QAtNejs5MLq5CW09lud3JhCIoxXp/sfT8Wes4XBB4EjUvhmH+ItKdVmXHNOcU9J95V
	 9CdORkJV4l+GWiZOyjcjK0McnD9D50qsqCrdOtRzr1qmQP9qSKqYSHvfWNfKQ5Jeu5
	 GN4TTN/zxGTzHx5qGPdBE/Iehd0eg+BWes2/Xc6aIZAzU+jO2gooFy0Zw2ert5eOrw
	 C4GL0/GvL+KPq/w/A4McICUtb/5XIl9C8nEnc2yl3nkIWSd7cMPoaVu3nKM1nU9kkM
	 u9m9w4Rd/WomQ==
Date: Tue, 5 Nov 2024 23:34:16 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Philipp Takacs <philipp@bureaucracy.de>
Cc: linux-man@vger.kernel.org
Subject: Re: bind EADDRNOTAVAIL at wrong postition
Message-ID: <auseqaq5nrc3rndajqtapsticsomipqpihgasfcmlnp2sgkczu@amngtstagdta>
References: <67816c00225a0e945f73e22641d4f299.philipp@bureaucracy.de>
 <20241101124840.icu2zoyzbmfnzckd@devuan>
 <9010315d55e27a361142b67cd5816ba4.philipp@bureaucracy.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="swez2e6qquuboztz"
Content-Disposition: inline
In-Reply-To: <9010315d55e27a361142b67cd5816ba4.philipp@bureaucracy.de>


--swez2e6qquuboztz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Philipp Takacs <philipp@bureaucracy.de>
Cc: linux-man@vger.kernel.org
Subject: Re: bind EADDRNOTAVAIL at wrong postition
References: <67816c00225a0e945f73e22641d4f299.philipp@bureaucracy.de>
 <20241101124840.icu2zoyzbmfnzckd@devuan>
 <9010315d55e27a361142b67cd5816ba4.philipp@bureaucracy.de>
MIME-Version: 1.0
In-Reply-To: <9010315d55e27a361142b67cd5816ba4.philipp@bureaucracy.de>

Hi Philipp.

On Tue, Nov 05, 2024 at 03:54:36PM GMT, Philipp Takacs wrote:
> Hi Alex
>=20
> [2024-11-01 13:48] Alejandro Colomar <alx@kernel.org>
> > Hi Philipp,
> >
> > On Sun, Oct 06, 2024 at 03:17:48AM +0200, Philipp Takacs wrote:
> > > Hi
> > >=20
> > > In bind(2) there are general errors and errors specific for AF_UNIX. =
The
> > > EADDRNOTAVAIL error is sorted at the AF_UNIX specific errors. But in
> > > posix[0] EADDRNOTAVAIL is a normal error.
> >
> > Do you know any system under which it happens with a socket other than
> > AF_UNIX?  It would be interesting to know if that's just a POSIX thing,
> > or if actual systems do have that.
>=20
> I found this while debugging a bug[0] on in the OpenSMTPD package of
> Debian. The problem was that the interface was not fully up but already
> had IP(v6) addresses configured. So OpenSMTPD get the addresses from
> the Interface and the bind failed with EADDRNOTAVAIL.
>=20
> There are also some other places where the linux kernel returns
> EADDRNOTAVAIL on non AF_UNIX sockets, for example in sctp[1].

Hmmm, then it looks like a documentation bug.  Would you mind sending a
patch?

Have a lovely night!
Alex

>=20
> Philipp
>=20
> [0] https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D1059700
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tr=
ee/net/sctp/socket.c#n399
>=20
> >
> > Have a lovely day!
> > Alex
> >
> > >=20
> > > Philipp
> > >=20
> > > [0] https://pubs.opengroup.org/onlinepubs/9699919799/functions/bind.h=
tml
> >
> > --=20
> > <https://www.alejandro-colomar.es/>
> > part 2     application/pgp-signatur   833

--=20
<https://www.alejandro-colomar.es/>

--swez2e6qquuboztz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmcqnWEACgkQnowa+77/
2zINsQ//V/LHN4cLtLgaKbmnLLXf3zt6Vq8eT7QSMu4EJ3M3SW8k8Y2r9/nHHlD1
EXdciXJP4lNTLglUhb34gGu7Wo+8Y0ESLM7AdtG+dsoUOXc0ASr4BWrfpRDLUXE3
bA+3mgMLHPAH18c6t1xqMUrCvJu9AVClnul1m4iQX1fnVX64NK1FDe+40vUw2xAK
o1TjmQvol6KrcBUdphvYQLcvfw+wFAP042rkrbcZcgq1NYc7Nk9+o1v8fL0iUFJi
9UKivXhNzaZSI5liydZMeUAFPeDx0T1LuJtvZE36+2ItYOvyVQM6hA/kSMjNPew7
WG0ZFkNiruYVQLUpCyql28MlEsrMCBV6E1hk5G5Krsdt3sPpvlrjlY9yljp7JryQ
MmHB8lyc/I+JINZLMBz6JvXbsMdiPk6+mvhRCkUdAop7n6NDxDVQbLo9WIZZeovr
2LFyOfbtu7YwMW8uOy/ZOs6t0uwiJaz9/1Sp30PqdeThgCO3BpqnSG1PfAlfk5Ua
6L2Mbju2Tn+OXzJnpJtAjWm+l8Evcd0Ypi+EEIvZ/4ljmS5pwA5+KpUrqoA32e6L
ClPI2PjJ41h25wfya+eMCY4ecIjPGVtRpmJxOie5EIRuI4wmNHSv/AGpucYXXiLH
NgD9XLqIo1IQcy1KH5omfSNnYu+ns15BSoyRmE4JgszCRYYwXaw=
=95wk
-----END PGP SIGNATURE-----

--swez2e6qquuboztz--

