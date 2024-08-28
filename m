Return-Path: <linux-man+bounces-1723-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C6999962728
	for <lists+linux-man@lfdr.de>; Wed, 28 Aug 2024 14:35:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 05B791C2156C
	for <lists+linux-man@lfdr.de>; Wed, 28 Aug 2024 12:35:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C658E178364;
	Wed, 28 Aug 2024 12:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U7Fva8eP"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CF3B177982
	for <linux-man@vger.kernel.org>; Wed, 28 Aug 2024 12:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724848501; cv=none; b=ejOHz3rLkQn/c3cNOAf4bv6Xu3pzh1YW26laUMyo3I0RfPATey/Jh0fI4q46qo/0HNvg8Bfhawmn0ppFVY4WmRc6gdAi9Rv310oZQcv963ayz4XhyRem3VTDgLgv3/PwYEMNEAFuaAKEMz1ezznsJAu9mg0Ml10tj0hlIt/1RYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724848501; c=relaxed/simple;
	bh=4KntJoYxTcejd8R8ANYNpg/hXmEcGL4CRFY4eDVSQI4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U/nTIonxsfyBs7ooHftn/MoakWz7e6SO9gv4BdGug/mvcgr9RuEN6ju6DTSBVxMD8Exez7q7G9pF/vY+Vy/GFedvthnxymnmEJJKxMTyXcCv6smQRvRRUM8Xagq5v+cNYsIwB4dSlX3wgLWyFam7fxEBHaJwtlYmDyzQ8uIfopk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U7Fva8eP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36CECC98EC2;
	Wed, 28 Aug 2024 12:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724848501;
	bh=4KntJoYxTcejd8R8ANYNpg/hXmEcGL4CRFY4eDVSQI4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=U7Fva8ePF8DeAQEWA2H7nLe7yigu77KIGEkDDEkuFTmQU1bLYG5p/ohuu8xv+tunp
	 ceOlsQiS5SdY6J0mRcjWffsNkEedVlrl7kqAg8rNtQNxcirgP1QqDBYrItGhQpWjl+
	 io7gX3mI2Kn6q4BYaCy3L7Wc8sfCtAjGfwOvNlirCSJDPmSY2zMhQxck1wT0JlfBry
	 rSk6XP92N230cdFQpSoUopCfP2Wv9KWaF7RtqXKk9OgJK7lkzCLdPWNp1dzFqwcQMK
	 /VcQtb79MbzUkEmS6w7cbXsXlbPcT2zlrdhmT+LgD3aabYx8+DGL09G7FGTmASz0RA
	 3iEzNMhvjFUMA==
Date: Wed, 28 Aug 2024 14:34:58 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Florian Weimer <fweimer@redhat.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [PATCH v2] dlinfo.3: Document the RTLD_DI_PHDR request
Message-ID: <jscfc7bom5tjbwlfj4s7hk7vksleiaozfljgq3jqpz3tetqsgp@zhfsglz3qnvv>
References: <87o75chpwb.fsf@oldenburg.str.redhat.com>
 <n7mi3i227tecv4waqwxrcq7cg5ll5mws7iirecgvvlgjyh65bs@xmhcxfhfpufz>
 <87h6b4hnnk.fsf@oldenburg.str.redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sorq3fmuste6c4k2"
Content-Disposition: inline
In-Reply-To: <87h6b4hnnk.fsf@oldenburg.str.redhat.com>


--sorq3fmuste6c4k2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Florian Weimer <fweimer@redhat.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [PATCH v2] dlinfo.3: Document the RTLD_DI_PHDR request
References: <87o75chpwb.fsf@oldenburg.str.redhat.com>
 <n7mi3i227tecv4waqwxrcq7cg5ll5mws7iirecgvvlgjyh65bs@xmhcxfhfpufz>
 <87h6b4hnnk.fsf@oldenburg.str.redhat.com>
MIME-Version: 1.0
In-Reply-To: <87h6b4hnnk.fsf@oldenburg.str.redhat.com>

Hi Florian,

On Wed, Aug 28, 2024 at 01:50:23PM GMT, Florian Weimer wrote:
> * Alejandro Colomar:
>=20
> > Hi Florian,
> >
> > On Wed, Aug 28, 2024 at 01:01:56PM GMT, Florian Weimer wrote:
> >> First added in glibc 2.36, backported upstream to glibc 2.34,
> >> so mention 2.34.1 for the first version.
> >>=20
> >> Signed-off-by: Florian Weimer <fweimer@redhat.com>
> >>=20
> >> ---
> >> v2: Fix commit IDs.
> >>  man/man3/dlinfo.3 | 15 ++++++++++++++-
> >>  1 file changed, 14 insertions(+), 1 deletion(-)
> >>=20
> >> diff --git a/man/man3/dlinfo.3 b/man/man3/dlinfo.3
> >> index 84b696f8c..8158356bd 100644
> >> --- a/man/man3/dlinfo.3
> >> +++ b/man/man3/dlinfo.3
> >> @@ -194,10 +194,23 @@ If this object does not define a PT_TLS segment,
> >>  or if the calling thread has not allocated a block for it,
> >>  NULL is placed in
> >>  .IR *info .
> >> +.TP
> >> +.BR RTLD_DI_PHDR " (\fIconst ElfW(Phdr *)\fP, since glibc 2.34.1)"
> >> +.\" glibc commit d056c212130280c0a54d9a4f72170ec621b70ce5 (2.36)
> >> +.\" glibc commit 28ea43f8d64f0dd1f2de75525157730e1532e600 (2.35.1)
> >> +.\" glibc commit 91c2e6c3db44297bf4cb3a2e3c40236c5b6a0b23 (2.34.1)
> >> +Obtain the address of this shared object's program header and place it
> >> +in
> >> +.IR *info .
> >> +This
> >> +.B dlinfo
> >> +call returns the number of program headers in the shared object.
> >
> > Can that number be 0?
>=20
> No, there has to be at least one PT_LOAD segment.

Thanks!  I've applied the patch.

Cheers,
Alex

>=20
> Thanks,
> Florian
>=20

--=20
<https://www.alejandro-colomar.es/>

--sorq3fmuste6c4k2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbPGXEACgkQnowa+77/
2zLytA/+PxmcUKtphIdljkN2mW1/bGy6OvFQiIY2PDG+wHr5fS2HiKw5WgGe6NOA
WMuF6xO55L9k+Gp5Z+BP6jRkyymO3UMz9aGj4ymYNaROHYZpkXUaEaHtQCk7ChlP
WRasb1OVRhkBWhTrFrN2OPlabsrBNZorxndE3DnhuXDAKaLY5tAdNVo8oZtyAVgl
j7jncrK1f83XNES4RpR0BeyuivVKpKZ6shS48zAGVdviULknPkkEUTZDFZ/5u2NQ
aP8xVAST7ALuEWAh3jlWQnVCk+9dh1Dl2mh9wjKGJEqh+Br1Xp0BH2/6lYYdQ4qx
WggSxfb6D95hzAZRJhKhgZTFeDukXkAgU58QT5HB82COFm1t2Dhj5tDdCFPavCkE
QaSEyHwBULVMsa2RAQ/LRcX9/ZYdVVNdPVrdrcSJgScFMJRp39e2U3nu8+EAcN9K
eKvCH+8hmvFxAwSoWQl45r1Ac0hea5Tu+tGhaCdlSWRt+OtBy/hujwrqHEPaOe2E
nV3qGoQb896fK/uzAoy4EGI1tM9ptJu9rbvFRa56jpftAowhmYTvdR+MYCXIAS/O
tcBX8YyJzb5gami9kvV20zyaCysn105/dauS7qwIrNtounn8mKOXg1YiuR6L8mLb
iphppHEYM3Gfw8nS/E0rQM3EHczhFRUp82bvFXdwdAIoz5jFCKs=
=cv0q
-----END PGP SIGNATURE-----

--sorq3fmuste6c4k2--

