Return-Path: <linux-man+bounces-3766-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA1AB3D199
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 11:19:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4E58C189C572
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 09:20:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6920F239E6C;
	Sun, 31 Aug 2025 09:19:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNqgCpcg"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284FD2248B8
	for <linux-man@vger.kernel.org>; Sun, 31 Aug 2025 09:19:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756631977; cv=none; b=NQ82ain/raKSUf9MPEzq+CW16B+X/zjTS2bgrJGse8uhKba5RCa+wvWQIYI3kGBX/4gnT/MvMMmZshMVxyoVsCfa80ki6yW3bCQdPYgd2gdX95qbpPmxnPLKhi4rx2bQA9Uhxzb+EVegSCg233xF+WN7tuBmwgp8PKlsb+obLqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756631977; c=relaxed/simple;
	bh=coEzUSqD/GlL8jFo1KVOqJZ3TqpgnFYMH/2BeQbLdKE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jFywjZ4IuNf26FYrEf7l5drulElHoFnkGd7nNE/ED7+reBcuGh7j/NpFMyzoIqaWpyKYFAOHrU9dgLnymAjS8+RLAU6ZeMGlJpYMV0HV2kRuQTspt4pRPzgE7YAi2qqoVgFB8uqNQvNHa3rGPFpLrY383jdRAN9IAYBmV0kXX2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNqgCpcg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45AB5C4CEED;
	Sun, 31 Aug 2025 09:19:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756631976;
	bh=coEzUSqD/GlL8jFo1KVOqJZ3TqpgnFYMH/2BeQbLdKE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dNqgCpcgG46fBkspDcT5o7AGIPfWsWxFnJpFXqX1l/mDzfLv9at0F+rPvEC+OcJS9
	 xNetiY7iQsTveXAl4EE2iJmhqwLK0bo7Eu61Yvk/38DVu57QQXd/CTMPwgeMUwFoES
	 txXVsYnWw6khW/4MJCkLtK8+y/6Aj5GbDKJHpG6LEc7Yau37tXmT8Hs7gFaDEupOob
	 RwaBI/xWxNcXBZMWAtJ6C27PnaEG1Q/xpJYuCofVYfRh13Qkt/EchglC+DXXaWAXRl
	 ogPZ2/8JtY7fnkkGSbx2PTMN6UezcML8bmviDH212YaVxo6hngXNE6C7DXazGbYFdT
	 Mmj1EzxzLbgBQ==
Date: Sun, 31 Aug 2025 11:19:32 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com, 
	linux-man@vger.kernel.org
Subject: Re: Issue in man page PR_SET_SECUREBITS.2const
Message-ID: <s42tfddj6xxryevfv2j52txms7wtclakulafaho5t7iw4ldez3@a57zcntfy6az>
References: <aKsmUDWxV2eeCmmT@meinfjell.helgefjelltest.de>
 <lnh4f63q5onlj54wt7qg76unbcvu5apinualih4byiatrfvjpv@5r53xpupbjws>
 <8ed88109-2dd4-4d26-ba5d-32bbf7cb2906@redhat.com>
 <j2ramfsczn2lparyohabohs5lslb2neyxgp73c23bq6vzqsn6w@t7hw5mdvt4q4>
 <f076ae23-e4b2-4294-9038-8a234aa009a8@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bggiywyypcm3syvg"
Content-Disposition: inline
In-Reply-To: <f076ae23-e4b2-4294-9038-8a234aa009a8@redhat.com>


--bggiywyypcm3syvg
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com, 
	linux-man@vger.kernel.org
Subject: Re: Issue in man page PR_SET_SECUREBITS.2const
References: <aKsmUDWxV2eeCmmT@meinfjell.helgefjelltest.de>
 <lnh4f63q5onlj54wt7qg76unbcvu5apinualih4byiatrfvjpv@5r53xpupbjws>
 <8ed88109-2dd4-4d26-ba5d-32bbf7cb2906@redhat.com>
 <j2ramfsczn2lparyohabohs5lslb2neyxgp73c23bq6vzqsn6w@t7hw5mdvt4q4>
 <f076ae23-e4b2-4294-9038-8a234aa009a8@redhat.com>
MIME-Version: 1.0
In-Reply-To: <f076ae23-e4b2-4294-9038-8a234aa009a8@redhat.com>

Hi Carlos, Helge,

On Mon, Aug 25, 2025 at 04:00:58PM -0400, Carlos O'Donell wrote:
> On 8/25/25 3:41 PM, Alejandro Colomar wrote:
> > Hi Carlos,
> >=20
> > On Mon, Aug 25, 2025 at 01:52:03PM -0400, Carlos O'Donell wrote:
> > > On 8/24/25 3:21 PM, Alejandro Colomar wrote:
> > > > Hi Helge,
> > > >=20
> > > > > Subject: Re: Issue in man page PR_SET_SECUREBITS.2const
> > > >=20
> > > > You probably meant PR_SET_THP_DISABLE.2const.  The text you quoted =
is
> > > > there:
> > > >=20
> > > > 	$ grep -rn THP.disable
> > > > 	man/man2const/PR_SET_THP_DISABLE.2const:9:set the state of the "TH=
P disable" flag for the calling thread
> > > > 	man/man2const/PR_SET_THP_DISABLE.2const:21:Set the state of the "T=
HP disable" flag for the calling thread.
> > > > 	man/man2const/PR_SET_THP_DISABLE.2const:32:The setting of the "THP=
 disable" flag is inherited by a child created via
> > > > 	man/man2const/PR_GET_THP_DISABLE.2const:9:get the state of the "TH=
P disable" flag for the calling thread
> > > > 	man/man2const/PR_GET_THP_DISABLE.2const:22:the "THP disable" flag =
for the calling thread:
> > > >=20
> > > > On Sun, Aug 24, 2025 at 02:48:48PM +0000, Helge Kreutzmann wrote:
> > > > > Without further ado, the following was found:
> > > > >=20
> > > > > Issue:    malloc =E2=86=92 B<malloc>(3) ?
> > > >=20
> > > > Maybe, but we should probably add a reference to malloc_hook(3) ins=
tead?
> > >=20
> > > In a modern system you care about malloc not malloc_hook.
> > >=20
> > > The hooks have been removed and glibc has directly integrated THP usa=
ge in malloc instead.
> > >=20
> > > https://sourceware.org/glibc/manual/2.42/html_node/Memory-Allocation-=
Tunables.html
> >=20
> > Thanks!  Do we need a more thorough rewrite of this page is needed?
> > Or just replace malloc by malloc(3)?
>=20
> Yes, the existing text is only correct for < 2.34 glibc system.
>=20
> A > 2.34 system has THP support with the tunable to support THP (for lega=
cy libhugetlbfs users).
>=20
> And a glibc =3D=3D 2.34 system lacks this feature and doesn't support suc=
h hook + interposer deployments.
>=20
> The quickest fix is to reference malloc(3) for now.

Thanks!  I've applied that fix.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D4de21772d70d210ff9085c65ed380b0463d47a49>
(use port 80.)


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--bggiywyypcm3syvg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi0E6QACgkQ64mZXMKQ
wqmQOA/7BkrIKqdoYPzgS/nBrHQUFdFVgRoJ/ndb8Gn8PEIhGf5YT87MIQHzzccd
Fwo6iVh0ejsTijqE4rNvr1oCGc6M63FkPA1QcBnJwI1VixxG4Dj9ZE8MPRM/mZHH
08ECAqSDK3cv2BlujQFSGobJ1SwMi3fdG29SU0+uVsG334p/NZ9WY8l8iz+WzJRV
FkvXw4zbqknZUUw/OXHKN+imOpob9r2kLE/4uooyxXgiyJ4r5O95cxdL2Xlbs9Na
0JL7nC6GdaJq2Ec5Yojb9k9SYzqQWjiJZlC1RFpNgCFCE32dGXZI1mUhfvJ8tjiI
dIOeUsSNevcJbfWS8BfQ+3OUTlgXMfGM9IjrMk39GZ+2OG+Y3eFF+dbG2zI+4T5p
SoFB32hzN86ffDioHh2Eyeu7/50XFhcguUhhbARBGc1GShRDJFJxLHE3C58/B8JU
GVIuqCvsFP3ZU3aNMCf3qOJgScH5AylZB0gdWxkFeXW1I3SkLDGFhrHf5jAGSIdi
2O2Hfxquyn6aVQ/eB/l1Njd9eNlD1ysl0O6x1xjiLqrbBRmZe8gTwXbLsmInHYeC
j6bLH3yXfQBuhwcLZ+vK1izaCOFCCnYLbpT4hPrHIs/lTmURyAQAd6LAp+MplIrE
bCbCkwbpS1FiXK4otawNuDzB4RdQB9pyUlaniL1lZsw1eaWY0Vw=
=NpfM
-----END PGP SIGNATURE-----

--bggiywyypcm3syvg--

