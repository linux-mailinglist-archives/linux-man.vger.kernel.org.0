Return-Path: <linux-man+bounces-3714-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D4907B346F3
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 18:18:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C17F62A52F4
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 16:17:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA3532E7F39;
	Mon, 25 Aug 2025 16:11:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="NuNxzRn6"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A87B21E091
	for <linux-man@vger.kernel.org>; Mon, 25 Aug 2025 16:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756138267; cv=none; b=UaMXA+NS+4eAl6nKAf+VoJ9RV8BQ9x+r1zMn9nTNFm3rDMkAVrcglvl7sfn+a998ZUMwaMAKdS+9je0AKN+5SEhER+a6D+OD1SoDxGLH+UtR6hJdjZ8qAILOqBp/XvbIS/O8cBif2nv1h8dfPDE09ikpkjmkAaGEmSgFIQnmwV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756138267; c=relaxed/simple;
	bh=lRvbHm7m1URQDjhJ9s4MTBgrg+qRtDcUIhRu+hHxXdI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sEoKjPzyFVoWj52kMNQRMrB09RLIOtaJ3RZKFQxI/K7c2xiyCWP55sztHvTUpcsARK//mLY6mO95XFKqjpkdEwgel91EYzZ+oVlQL2uU19OOPy8VecSlZ3LKc2eURVjApteadt/SlCkMfl4f17tbKSfvtMyGfaT4vpBhDTmyNwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=NuNxzRn6; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756138261;
	bh=NlCxx/ZwwS936n5pEhcOVZwexUPH/ZVVqBN7sTdG4Gs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=NuNxzRn6U9R1GvlaLYG6Uqkt1bNiK77RkiEW6hmUJ6myaGj4t0168N5Qg0LX28pyV
	 Cfnt+YyNBakhyMfH4NkUuDe1LihsMfZVtVdq4I39U6msFb7qfwLdYGdPKmeFuN3kEm
	 1TCJgPU52tFL0rvcPahydoJCw282J+t+eUzys140ZR6RbrKRXSCXoNMqZ+lqJO4WKo
	 pld8nCKo9sXzDmFLxZzkCyjT4WQoF9/4RaW7c43OBQOp5AvL3THdzJUiz2KBUciTha
	 ULcnJu4XTsymGEK2OY1IGZ1flxFI20+7ULWe9/AL6DBsBSPTaOfezg8yU2iROYi4Ze
	 HuEWNJossanwQ==
Original-Subject: Re: Issue in man page PR_SET_SECUREBITS.2const
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020051.0000000068AC8B15.0031D887; Mon, 25 Aug 2025 16:11:01 +0000
Date: Mon, 25 Aug 2025 16:11:01 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page PR_SET_SECUREBITS.2const
Message-ID: <aKyLFcafAbwaaQCH@meinfjell.helgefjelltest.de>
References: <aKsmUDWxV2eeCmmT@meinfjell.helgefjelltest.de>
 <lnh4f63q5onlj54wt7qg76unbcvu5apinualih4byiatrfvjpv@5r53xpupbjws>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-3266695-1756138261-0001-2"
Content-Disposition: inline
In-Reply-To: <lnh4f63q5onlj54wt7qg76unbcvu5apinualih4byiatrfvjpv@5r53xpupbjws>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-3266695-1756138261-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
Am Sun, Aug 24, 2025 at 09:21:39PM +0200 schrieb Alejandro Colomar:
> Hi Helge,
>=20
> > Subject: Re: Issue in man page PR_SET_SECUREBITS.2const
>=20
> You probably meant PR_SET_THP_DISABLE.2const.  The text you quoted is
> there:
>=20
> 	$ grep -rn THP.disable
> 	man/man2const/PR_SET_THP_DISABLE.2const:9:set the state of the "THP disa=
ble" flag for the calling thread
> 	man/man2const/PR_SET_THP_DISABLE.2const:21:Set the state of the "THP dis=
able" flag for the calling thread.
> 	man/man2const/PR_SET_THP_DISABLE.2const:32:The setting of the "THP disab=
le" flag is inherited by a child created via
> 	man/man2const/PR_GET_THP_DISABLE.2const:9:get the state of the "THP disa=
ble" flag for the calling thread
> 	man/man2const/PR_GET_THP_DISABLE.2const:22:the "THP disable" flag for th=
e calling thread:

Yes, sorry.

> On Sun, Aug 24, 2025 at 02:48:48PM +0000, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    malloc =E2=86=92 B<malloc>(3) ?
>=20
> Maybe, but we should probably add a reference to malloc_hook(3) instead?

This I cannot judge on, I just see the reference to "malloc" in the
text and hence the question, if this should be turned into a
reference. If malloc_hook(3) is better, than of coures it should be
used.

> Cheers,
> Alex
>=20
> >=20
> > "Setting this flag provides a method for disabling transparent huge pag=
es for "
> > "jobs where the code cannot be modified, and using a malloc hook with "
> > "B<madvise>(2)  is not an option (i.e., statically allocated data).  Th=
e "
> > "setting of the \"THP disable\" flag is inherited by a child created vi=
a "
> > "B<fork>(2)  and is preserved across B<execve>(2)."
>=20
> --=20
> <https://www.alejandro-colomar.es/>

Greetings

          Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-3266695-1756138261-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmisixUACgkQQbqlJmgq
5nDUyQ//U221HF3If7CJ7y12BYGzR8Yop1/xOpCpub21aVi2FCVdbfcuTMgDlw6L
zpwqUsoGcUGSJOz4Fg2NTRg2OeCyZIID0LinxKxp2cEQv0x7iowSSbmRtVwrjjmz
xCCS+3ak9xxM2xzYMow0xhk0ISwbqDbnIIfv6QHvHIgauwodGBtxN8GyOguvk9t3
THbgcs45a7RJKGI6pCW1YWLUq6ikRM4R/Cj+n7c3KFO6YMCmSA6NL94saYhUwFrq
7iOTX/kXMl4PPCQhAmhfS+z55cDploMJv+sGoVU9UwUd4BDYogBEK80vdUmDEWm2
cvfblrcvS5Jt7B0Xx7jqyZKVlgKk8g8rGZlhxE9hYj6YN2VD+Gm4SM/bmEstea0I
Ii8pOXMn561jg7nuF2kFI5CgBNK1kVrMn45LsOIdGR8wdSXWVj8kxpvvRYw7g8i8
4sMIyZWOp9GEA/8NGt+cjAF0nUy/y8Y7nMKcTMUWhd+Jszqi4wku+NnKVpnmMT84
emB4zS2TREWTGqOnLICkjOgNAoCJaXm+BgNkmbHQL1m1GopVR7CVZ2yFyVixnb47
nde3m2nZqLKYJhSsm+CAYLXz3G+iF9JXrdpruetUGHCozcte4tWmiXUGtH5SS+YF
dYnF0SPZgMq9Bvi8d4QLfSqoquD+iYmT70qP12e9x99FE0w2/sQ=
=+w38
-----END PGP SIGNATURE-----

--=_meinfjell-3266695-1756138261-0001-2--

