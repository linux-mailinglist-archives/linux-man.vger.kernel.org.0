Return-Path: <linux-man+bounces-2003-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2529D0455
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 15:33:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7D6952826FD
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 14:33:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56947208A5;
	Sun, 17 Nov 2024 14:33:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IOOYv2Id"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145E819414A
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 14:33:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731854018; cv=none; b=E3UJ3zuuWqFwWSzM0MA4hJeKCI+HKkTHy5Nfx4cEPCG5ENE8QBxfUBPLG6GCq4WhEFkk4Z25kTthw8guwNtwdhB2CNr0WGagWBBoYOI41UNfmkSw+Z/XT9SvZkzPnLwhdNvMFE/JKwvGDztuLj+dtcD1UYNfgi5E+lKWY7pjs/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731854018; c=relaxed/simple;
	bh=+68Yhuit1JZzQ5v0dNHcfAS0da2MIsEKOTp+hIWLO/o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BUB+PC3QsBHcohWwI6rA88nKz2p0GX8ZLjqbD6DSZ+RVHS5slU8qIxHusiJSxXTncIJSVx0YaJpkcgLqszy/VZCiDD0YNAMuOafnD1Ai0VtZQ9sceI6dtpgtlXWtHXFxg3Wi0UqGqiOpj5UzwM5d6lq6mrZWnZ+2BfYTlkm4kI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IOOYv2Id; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B494FC4CECD;
	Sun, 17 Nov 2024 14:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731854016;
	bh=+68Yhuit1JZzQ5v0dNHcfAS0da2MIsEKOTp+hIWLO/o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IOOYv2IdoPU93cNaemcSDePUjAx8lZ6ShK4xtia0m6JBcgImZADgmagEykbrabn+v
	 /pmeS28nG0itGRY6x+FXOOGA5QSyrvRndNLGPbxrKhqaFMkbdSI0a1Yu6AKlqs4p8K
	 2nR0ABBZzvuYicW7KwPH2uXB5Xbr169XXsmfUtlyLmG2Pcrh39lqUwF2yrILuINkTa
	 qxSYbvo/JvJCeUjtwXiXIYskv3NBlMjepZKY7TbezqdiIECXzku/GfAn2MOCRZ5YQh
	 COa187RidhW1mqoEM/qR8hec3LSdRU0ijsnP/Qb4xcwrMR0ZyDPMmmlcYYPaBDBjO1
	 cCxFK4fC6Wt7w==
Date: Sun, 17 Nov 2024 15:33:33 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org, 
	branden@debian.org
Subject: Re: Issue in man page pthread_attr_setschedpolicy.3
Message-ID: <ewbluvbiuqurszt2nquemzv4v7lb6p6vlmqoob6k5wiwweptmc@6pex5535xuee>
References: <ZznJfpN_LuCf-ERy@meinfjell.helgefjelltest.de>
 <6teowwb5747ra73s6kt4egc44obtwtmuilcrmxuf4n5p2ruusv@uuuf5gsdf3cw>
 <Zznh6miM2ROCvd5G@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pcd27pkz4fpkbrwd"
Content-Disposition: inline
In-Reply-To: <Zznh6miM2ROCvd5G@meinfjell.helgefjelltest.de>


--pcd27pkz4fpkbrwd
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org, 
	branden@debian.org
Subject: Re: Issue in man page pthread_attr_setschedpolicy.3
References: <ZznJfpN_LuCf-ERy@meinfjell.helgefjelltest.de>
 <6teowwb5747ra73s6kt4egc44obtwtmuilcrmxuf4n5p2ruusv@uuuf5gsdf3cw>
 <Zznh6miM2ROCvd5G@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <Zznh6miM2ROCvd5G@meinfjell.helgefjelltest.de>

Hi Helge, Branden,

On Sun, Nov 17, 2024 at 12:30:34PM GMT, Helge Kreutzmann wrote:
> Hello Alejandro,
> Am Sun, Nov 17, 2024 at 12:26:16PM +0100 schrieb Alejandro Colomar:
> > On Sun, Nov 17, 2024 at 10:46:22AM GMT, Helge Kreutzmann wrote:
> > > Without further ado, the following was found:
> > >=20
> > > Issue:    inherit-scheduler =E2=86=92 inherit scheduler
> > >=20
> > > "In order for the policy setting made by B<pthread_attr_setschedpolic=
y>()  to "
> > > "have effect when calling B<pthread_create>(3), the caller must use "
> > > "B<pthread_attr_setinheritsched>(3)  to set the inherit-scheduler att=
ribute "
> > > "of the attributes object I<attr> to B<PTHREAD_EXPLICIT_SCHED>."
> >=20
> > I think that text is ok.  Can you please clarify why you think the -
> > should be replaced by a space?
>=20
> Is "inherit scheduler" a name? Then it is ok.
>=20
> I assume the reporting translator read it as intrinsic attribute of
> the schedule, then the space would be correct, in my (non native)
> humble opintion.

Branden, would you mind revising this?  I believe it's correct, but just
in case.

Cheers,
Alex

>=20
> Thanks for clarifying
>=20
> Greetings
>=20
>             Helge
>=20
> --=20
>       Dr. Helge Kreutzmann                     debian@helgefjell.de
>            Dipl.-Phys.                   http://www.helgefjell.de/debian.=
php
>         64bit GNU powered                     gpg signed mail preferred
>            Help keep free software "libre": http://www.ffii.de/



--=20
<https://www.alejandro-colomar.es/>

--pcd27pkz4fpkbrwd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc5/rYACgkQnowa+77/
2zILYw//bJ+7KBJTAhJaCQovhGCjzS/kAR4O2xmaZ5SqrJvCPEnXv9adfayN6Nss
KZornsNbtKMgN/6Y6YTKmbA5D/vXDjtpEyPHZPsHNPnRuBpcSmEeOJVJR1N06o8V
mJAjDT/2vemMLHvjkIgkIOcgmfb6mI1CCsUVIYNmg/CQt2FFic5q622r/zo0Ig2V
Pq34295ke6/s8R0O31nJujmAivPDXdiNd9b4PJdFPO19fJGMwY1VoH5LmNT85h2B
8j3G+sY1w0p/BSy76wnU6/yt4jluK4jqf2RNLKtGUwxlGhi/nOeGH5juMBDiwtJN
P4f/cG3QKAiIhVXYSfbsfAVWurRjnE2ngVowS7uj29VEzaa/ofQ5FjhMMzDdwmej
TOyOmb5e9wXv7boYTRonO/EoBCinnSoikJuJniUNI8tBtfhD1K+mNC+fyIvpACgC
RbhIpV71XRaFoCs5lmez88I7lrru5wsPhr/rWhDp6JeGd3p018O5CzWxF2pcFbJt
/tHd9ni/EkwMndSAifPlsq5XhHkerUZxm3sMHHBG6lmFT+e+FPOdugP+Vo0vAirJ
O/wIKB2ANnJytxbP2c8VeCiVHXMAxbacIPmz6WVw8/lIdbJDRoGahiJH/by62o/s
MSfAB0CmwiP9cJaDEXc3TmOetKpEzgmM9SvnsXWVYZDxgyQQWUs=
=e0bb
-----END PGP SIGNATURE-----

--pcd27pkz4fpkbrwd--

