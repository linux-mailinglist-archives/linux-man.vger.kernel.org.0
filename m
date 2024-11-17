Return-Path: <linux-man+bounces-1990-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA159D036B
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 13:05:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 04D85B252F9
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 12:04:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2CA2190493;
	Sun, 17 Nov 2024 12:04:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G99tm3gX"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8ED118FDDC
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 12:04:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731845065; cv=none; b=abTRqAy2YrVZH1WZsWT6rHC0e3811ZAPo3b80E9fLXxiFlKA6SxiGRbNKxqVNjGySkMWGvBUTzeZ+XkK3QJJinKunHElZiA7QIQbR7OXIpiFw5DnL5e4QOF9M/xyV1I9dE9hLA4E9cH46w5qltJigNhZDfku51QjzbEaq0hn5Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731845065; c=relaxed/simple;
	bh=A6diFyHWOUSDRmK730ndFgLoWql5TlA2s5evF1g+g34=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ksSLIUEPAIo2j1FsJ0iSqvSA4pGaB1ifOiV8079JrPHmj1bMsDiMGwDWMHEm57hTCcXJoEI/1xgzu/4QmVoQp7GKh7a5cPm+uCZ58VYn5fJWoCFhHe4EMe40cuZEm/M8YSUIfHwP7rHVnaNI7u28n9PV7IpCkyljCMKAwF0AyeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G99tm3gX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7AA37C4CED9;
	Sun, 17 Nov 2024 12:04:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731845065;
	bh=A6diFyHWOUSDRmK730ndFgLoWql5TlA2s5evF1g+g34=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=G99tm3gX2FQemIkiVlD8fvgoUgOZCk8QvF1+GZc/auKUtHgptW0ODcOevvEppaeD2
	 Wa4o+nCsUCcUoXuuM1nUfySENa2B1fnH+ZKbw2ba0QAWAJMGXaNQH9UCGt+2zVOIQE
	 DCiQleRhUoRQ4TMFUQIllpQOi/Iw9EZLCJj9ZdbCyJnemVpmqDnig+dFpC/T9rTOyd
	 IA2BBjZQG4db07zFBUmkjavMjyyLGgGtAv4QBmQbgc4JPw2113mJ2FkzPUfF4b5no1
	 Wc4ByNbWT6w1SLlRG6d0exURO5zgX0EWYOA13engI/MX8G+UoIkUI5D7zgw39HHKT7
	 +tOYHBv0iiMBA==
Date: Sun, 17 Nov 2024 13:04:22 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page tcgetsid.3
Message-ID: <rtpxcldgtcol5ywj353vhlckbpwlwoz7pcjwenwfckavklfkcr@oe23rdd5gsrn>
References: <ZznJgEQSTyUPDtoP@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="huyyfl7idxsdo4db"
Content-Disposition: inline
In-Reply-To: <ZznJgEQSTyUPDtoP@meinfjell.helgefjelltest.de>


--huyyfl7idxsdo4db
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page tcgetsid.3
References: <ZznJgEQSTyUPDtoP@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJgEQSTyUPDtoP@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Nov 17, 2024 at 10:46:24AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    Who is "our"?
>=20
> "When I<fd> refers to the controlling terminal of our session, the functi=
on "
> "B<tcgetsid>()  will return the session ID of this session.  Otherwise, -=
1 is "
> "returned, and I<errno> is set to indicate the error."

Reading the DESCRIPTION section should help clarify that.  It is the
calling process.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--huyyfl7idxsdo4db
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc528YACgkQnowa+77/
2zKCRg/9G6zeMCLrI1SHPcrgc3iwV/KZHry9Wsb192fzaDQ/KeQEjCS7ElM3lGQc
bMjlExweUnmuuNzXRcA4vaiPwmgcVQUwCd8F9gVTAy+Tq7mqtcOptURSiBMD8Ica
h60QKiqN0PIrHTZasxXVSNBYr6+aIYGTp4X5I6l0vJoaH/NdXn9buP6Neunjtpii
bvpxqxs6OTtGMjbG72HnnTqB7uWbQr5PJp6dFR0LW4/2cWh9caasCI3zJUGpTv0+
RFXUSBlfzqIw4S639LqlR3tBPm+WluMrw3biunHzXNxvz5W/ciPEG/xoQFAcOodM
QNjjHuYoOuAEifVcny8NQbbpfRkDwCq/2f75zMzi2dsKVzpvMYglmMDKUcKWERgV
1RhKO5cL2xFQOo/VllonJ14dk3YVoIK5w9e1rLs3ouThcZHBsKPoDxbMtzPp0yYD
v/Ypg++gwiB4jZZxdPv1qdlwLC8R4G+/pp01x9LT/+mf01GGFdPfHcfkhqF3AT0/
FoumoJaq04I1S7Q5cKePEazd/QrwDUMa/A9+9Uw+1IqCcRdvmFhvEjYLNrukqos9
5iz/z2GCWapMWPZaPTpoPGUjPkI8OYpFfZb/6DDxP1MS5s+Al6zTUeGGg5uAGS7s
tnxf0uU1en/m3eyrswLR6ZUMOEr/MvCHM2BCn3vlFti3LSQIAMw=
=tiR0
-----END PGP SIGNATURE-----

--huyyfl7idxsdo4db--

