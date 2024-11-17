Return-Path: <linux-man+bounces-2006-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E9DD19D045B
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 15:41:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A0FFC1F21C58
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 14:41:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F0E91D935F;
	Sun, 17 Nov 2024 14:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hi7950ma"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D414E1CB51B
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 14:41:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731854512; cv=none; b=raICUIuwW3t9mEHQcbFm8DmTedClxL7aAYSddFokDoAvF5qTy9mwLX2FCDkBxIYeYJOiClmLnh7ituAuUT+G3f6CeGjmDZjsk51lWJXpy9rc5Viqtx+BAhWsjawIDgKothgcDDdegr5gDidrI14Km6/6ZXD9LLPNhxVoPtCERT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731854512; c=relaxed/simple;
	bh=EN3Gg9BA0qp1DMNUEwhXsPkSJXvIiUXPuoc4zysTdfE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BmapTOynCinWVvlwiFKD4trV9cUZTBHNHTpsO5VON7uBlajVtOclFlhtJpHAngjq2LRWjaZ+PvYR90S6FSH0QnbAVSq6VpiF+nE6GGcMVv/LqJiig7Z9DsM9JgrV1aFUP9CLTWyx6ciQ/FvWVfDMBdHoPTmO+eqqXH8YkE5fo74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hi7950ma; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7CBEC4CECD;
	Sun, 17 Nov 2024 14:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731854512;
	bh=EN3Gg9BA0qp1DMNUEwhXsPkSJXvIiUXPuoc4zysTdfE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Hi7950maLdTe172BIlBQrENGvPVXHKiu63iEbi46fTky0MzRxxdJQlt9e4chUQTHh
	 iGNr3eyG3B3lBqMEAt8MTo/8/fSRqQawQ5d5CYd7VXZTW25EwrRIUcuaP6lwgzVcAH
	 zxRdVl8pEhItQtwcpUDUoSjeCHgwn51Or4nZmGLcHi4dMJnDeGPil0BwlN9TZQLEaM
	 /AB3TGAlApQ0HO5IIo+ZOKD4i85XqgGstInByzNng0dQbxKx3Anbw7SmAyRnHbBkoY
	 vhxHVvFbqVGNhcSyjg8uU/dZzV0rcb0gvvMcgABllXlHK+NqXmK5MCT+yuInWQriCR
	 2uhzoB5vlceRw==
Date: Sun, 17 Nov 2024 15:41:49 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page time.1
Message-ID: <hdt4hklwdifacjrbbjzkrip3lbwq3dtahqdybl7c7rg5pzqk2u@gwivmrfycehh>
References: <ZznJgGCgquI-itJ8@meinfjell.helgefjelltest.de>
 <4i3vln6fjke2o4nfu6nljlzavfhlonjakqq2e5cwy66ukrvcyi@ovzpl2yz6p7q>
 <ZznlMOouQQ4_IuG-@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ff3le6x43g4clkso"
Content-Disposition: inline
In-Reply-To: <ZznlMOouQQ4_IuG-@meinfjell.helgefjelltest.de>


--ff3le6x43g4clkso
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page time.1
References: <ZznJgGCgquI-itJ8@meinfjell.helgefjelltest.de>
 <4i3vln6fjke2o4nfu6nljlzavfhlonjakqq2e5cwy66ukrvcyi@ovzpl2yz6p7q>
 <ZznlMOouQQ4_IuG-@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznlMOouQQ4_IuG-@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Nov 17, 2024 at 12:44:32PM GMT, Helge Kreutzmann wrote:
> Hello Alejandro,
> Am Sun, Nov 17, 2024 at 01:13:45PM +0100 schrieb Alejandro Colomar:
> > On Sun, Nov 17, 2024 at 10:46:24AM GMT, Helge Kreutzmann wrote:
> > > Without further ado, the following was found:
> > >=20
> > > Issue:    Should be two paragraphs and the first without "no-wrap"
> > >=20
> > > "Use the following format string, for conformance with POSIX standard=
 1003.2:\n"
> > > "          real %e\n"
> > > "          user %U\n"
> > > "          sys %S\n"
> >=20
> > I don't find that text.  Please check.
>=20
> Again from Debian.
>=20
> Should I report those seperately (but you did address Tobias earlier
> as well).

Feel free to keep linux-man@ in CC and add Tobias to the thread.  That's
ok.  I wonder where that text comes from, because I have a local
checkout of the debian downstream repo, and didn't find that patch.  :|

Cheers,
Alex

>=20
> Greetings
>=20
>         Helge
>=20
> --=20
>       Dr. Helge Kreutzmann                     debian@helgefjell.de
>            Dipl.-Phys.                   http://www.helgefjell.de/debian.=
php
>         64bit GNU powered                     gpg signed mail preferred
>            Help keep free software "libre": http://www.ffii.de/



--=20
<https://www.alejandro-colomar.es/>

--ff3le6x43g4clkso
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc6AK0ACgkQnowa+77/
2zJqSA//ewAuV2zHNL6saNWNeWjCpR851vjki4kJEEjZafEYWp86UlaSXArXs66p
J/Ss35S+zKtmXMilVm0iFeE0MAcLEVZsdMSgp8ZeCwrzomhYS80r/4DIlMva8dwB
pgKvPAohXCnU/Iv3CNfz67dRRqrFU/F+nRu9GnnMaUpUfCywniI8ObKc4dxdvQYr
eKFK0r8MdCWpn8kVgJ4ew1SMlndhXW58MfYTMC8UVdu1JbcYETl/nteoe6DZhFQA
6kZ11SzT8ZLSzswzt7oH97njntEKcUuqEzjN6zFGjfc0HkZug8+JMYJCZrvl18Jn
jHtfZi4KubWEH04I+HH9pPk0+b6rzLWFHJzZQldQJNrXxlmDCF/KE4ZUvAnts8QY
8WcqBAFL/zUqbKJaQXjsP/laNPGKSAiOgsG+XhXVh2hXu0juUEbDBGCqTat52V+i
sq6ldAMZvLod1yyrDwGfEBS/V2dGJuA4hKCEwHpe7adMThDgfNcZODmAAmeQ437Y
k6YcmqxLQXWSFNWT+QqI2f5KpJYcxpSNSxN3mhwgzBEObZeMuDCpi7S27LdcQxLu
w4S0rjmoNlG7EiEB2PnTOQHVKTtqH1uXBmTW+vtnOThvDUNnJvoLcAMNn7chPOKk
JR+QjYVuEeU60VLQDuIDzDskeUuqOGoE0dOFdF6gs8XDH6XmHVM=
=+vrF
-----END PGP SIGNATURE-----

--ff3le6x43g4clkso--

