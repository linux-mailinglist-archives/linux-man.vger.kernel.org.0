Return-Path: <linux-man+bounces-1988-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A10789D035C
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 12:58:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5577B1F23045
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:58:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CEBE148827;
	Sun, 17 Nov 2024 11:58:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rwAMV85T"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152F6224EA
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 11:58:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731844691; cv=none; b=baGDe6alun6El1W7jVA1j1KopJaEQs1sJwT8yg11ddtonzv4jYqg94Xs9BJsaVyf6YWay6t5hIOyGpWK2vDlnqLjRsOa7alI7URIqtpMULy8JhHGsLn69Ri4b1PprD9sxugVPgx7Khc9fHfe4lkM4EAZ179Sfulf3yRcaxE1L+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731844691; c=relaxed/simple;
	bh=3sjbRqNwC/DP2ukys1hvGNYkJWgFWnqLPliVgKCX0LU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cwrTY7Fc37QfGaRBA+haCL5QaoDtS/Dt1xXOAKBy8p378lGCu/thohF+zBaIqm360OzSIjFD/asWHIBkNc185BGhf3HcVossk0tskktcDbU+iqwsrDlmtlF5jigLl13ypFp1lukMYYQPssHulRWmnR0c2e/+eD1VpKabLXbAmak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rwAMV85T; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7A52C4CECD;
	Sun, 17 Nov 2024 11:58:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731844690;
	bh=3sjbRqNwC/DP2ukys1hvGNYkJWgFWnqLPliVgKCX0LU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rwAMV85Tz5RZDIJnNFjdafWf/FKxR8YW/57Sp5kqiYno608xXq9LE3JrVtYVRGd8y
	 VbPyiVWc3EGV0EuYUXrvIASn6EuCAKVzDSC2LSaLu38Tncf5Rghx0a/hXaMpAZuo00
	 PTnPVF0G45Y7bNP99OBEFODoW4Pc/dP8jGnRNRYWkVEo9xx5OJmUmc1LdoeFDfnsIN
	 jPncH9jWvDMi4VeYLu/v0DJB73zs+O9wrLNL3cYOotYmV05Hu6IKw9PqXPKdOgSOjW
	 W4weE53bNnft1+TaV5IbAWW9yOyzFOqYayTO97Lgew5YIE0LqwctXzGXDOnUOviRc+
	 uoRDu1qo8+BwA==
Date: Sun, 17 Nov 2024 12:58:07 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page proc_pid_fd.5
Message-ID: <mvdmnfpnmfewedyojrdp4qr4g4ct4s6qb7whyq4owoa3pdfq6h@6qup2suyqknj>
References: <ZznJfkqbDXJWpVXm@meinfjell.helgefjelltest.de>
 <bkueim7gfjvp2w6tpqnjust3wwnibeuxmrt5pupeb3ycclujwm@6apz5kypcr5z>
 <ZznY6Q6IY9OKn0xg@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jzddw44zrwodqzfb"
Content-Disposition: inline
In-Reply-To: <ZznY6Q6IY9OKn0xg@meinfjell.helgefjelltest.de>


--jzddw44zrwodqzfb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page proc_pid_fd.5
References: <ZznJfkqbDXJWpVXm@meinfjell.helgefjelltest.de>
 <bkueim7gfjvp2w6tpqnjust3wwnibeuxmrt5pupeb3ycclujwm@6apz5kypcr5z>
 <ZznY6Q6IY9OKn0xg@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznY6Q6IY9OKn0xg@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Nov 17, 2024 at 11:52:09AM GMT, Helge Kreutzmann wrote:
> Hello Alejandro,
> Am Sun, Nov 17, 2024 at 12:30:28PM +0100 schrieb Alejandro Colomar:
> > On Sun, Nov 17, 2024 at 10:46:22AM GMT, Helge Kreutzmann wrote:
> > > Without further ado, the following was found:
> > >=20
> > > Issue:    When executing this commands, sudo prompts me for my passwo=
rd
> >=20
> > And what's the problem?
>=20
> From reading the example, this is not expected. But if this is
> implied/clear, then I can mark this accordingly in our file.

sudo(8) asks for a password depending on having run sudo(8) before, and
depending on its configuration.

I think we can omit it, but I'm open to being convinced otherwise.

Cheers,
Alex

>=20
> > > "$B< echo test | sudo -u nobody cat>\n"
> > > "test\n"
> > > "$B< echo test | sudo -u nobody cat /proc/self/fd/0>\n"
> > > "cat: /proc/self/fd/0: Permission denied\n"
> >=20
> > alx@debian:~$ sudo echo
> > [sudo] password for alx:
> >=20
> > alx@debian:~$ echo test | sudo -u nobody cat
> > test
> > alx@debian:~$ echo test | sudo -u nobody cat /proc/self/fd/0
> > cat: /proc/self/fd/0: Permission denied
>=20
> Greetings
>=20
>          Helge

--=20
<https://www.alejandro-colomar.es/>

--jzddw44zrwodqzfb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc52k8ACgkQnowa+77/
2zI7KhAAg8dISLxPMV2uP3u3mb4y8O6wD7++0tOymavMeV9oHfUuwDDOWPIc14NQ
802u/lauk2G0Ck8jLtxkcmgaBkCdpe75SzuLbUiyWD4MiBnJ+PtmLySFmkoaupup
PE3FtWe3vda6ROlmsDI1tfKxXTL4h4RPN+x/iFe9wHlSfe/Q2ZZpyNVIL9TqHwts
7eKU8Nkygf9R/Sa5BJDtAblKDjfDmEmmOjCXN7p3ga7YO75t0cnU1JkZ2tiUFjNb
blAdBL5wN928Mx0288DKmdcKUY5IKZ4iPwbH6DQs5/DKoTT4ognvCFbO0gafYI+v
7CJkDVIKEiuaCIGKyPHlG8yTBkIi/hVfzY2Hpk58b3ENsR7g5yvrBhPxd3SAujqO
EIFnrwYBOW764ThIPgqHLYWx6npfcPBBHtcLmrIfWZMSrDGZoUgPZVn+BI/T8nwG
hO+b0H3Nad7zJv3mtUizvxaq8Hwo9J84zh49TKJ0Kpj1cAZo55gZmeWsFWntPqe5
UGXwJXqGVCdnUWvG064Ve/f5TA12THnutq54TMU1O+genjPp/R62lDg1q+FSFg9g
33vpQL7BppSNc7jjVmmMr0QHtyTs5PPJrYk3wlDpyh1s6b4hdPqqs3NKNB+KPpMb
SLrtWL0uHE/XZan/0sQZIg29pPsfbQ5zmBQ1rTGokGX//DSFeo0=
=pMZz
-----END PGP SIGNATURE-----

--jzddw44zrwodqzfb--

