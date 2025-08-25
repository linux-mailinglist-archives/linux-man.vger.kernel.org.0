Return-Path: <linux-man+bounces-3712-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B424B3469B
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 18:02:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AE99D169BAB
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 16:01:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7789C2F361C;
	Mon, 25 Aug 2025 16:01:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="G5rC+wGX"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFAE42367B9
	for <linux-man@vger.kernel.org>; Mon, 25 Aug 2025 16:01:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756137702; cv=none; b=lE+n799egKV+lpNOA08aPYETgQ/xbqeFVzna4JoChik1Kpfc6RoMCN5o9ardBFe01frcvkYDdlI8dmHoui0fNOiPczOts68VPCvkINiCAzZZ1Ud0bLLAJzU5o5qpVsoSmXWLUXik1dydHBPmQDs8SmNXUz9B3AXNKlbVwPsoesw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756137702; c=relaxed/simple;
	bh=ar5HqRa43Iw3bUEnCs3HewTJomqg0sid/dnOmfNMdCk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KLzNrISRprB3aTwvqTFOYqRgZEVi91RMfZOB7cgJqD4aiPHJHUhfnF9fJyGKSV76YJkyh4oNxVBZA29VEv5YpIJCoG3MrDdnYeKFBydBeRr8cEeunApRL9Nu7xZ96K8u2RllBJtr6Cdf5U1OtpwVm5T33Q0YmXmF17meBZ70TYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=G5rC+wGX; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756137696;
	bh=l9Ob+QYvH4ulTssdjbSnVjPi0AtgFEIiK1MWKWEiOmg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=G5rC+wGXKCQ4tHF5B2UJ6lyT/t0wdg++tma1IhFB2psbIJAO+WLeEC+cBW0u17Ovw
	 rYJuvB8NUL2KQMeygJ412697Iy8L+L852+DwaWfxA5dpuY9uuHRdtna8TbgUqe3ZMR
	 WeC3yzZQo4B++QQ28daEp03g6JQqsnxGxZwjKNVqSiBsIj25qya3nwFvzQpVQBZKGp
	 4vSwd46zQyYbCjvdlsVxrKAgDNIk9fXHUTrWvQ5iC5sFTQZzlKXG7uTN8Dsd+GnPda
	 HlEkmp6R6OnJ+4rE23dlvDxHYGkXcQj5Wk5JgJ7kVxDavne6wP1dmfe6VDLYINmljR
	 6Iv3xxPgmxRpA==
Original-Subject: Re: Issue in man page pthread_attr_setschedpolicy.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020051.0000000068AC88E0.0031D54C; Mon, 25 Aug 2025 16:01:36 +0000
Date: Mon, 25 Aug 2025 16:01:36 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page pthread_attr_setschedpolicy.3
Message-ID: <aKyI4KbJh6LJC_8r@meinfjell.helgefjelltest.de>
References: <aKsmUGE8mAXnM917@meinfjell.helgefjelltest.de>
 <5n2mlo4l7kqloztcuruagrkglh23gkqfqckuqf6pajerx6qkwh@b6qqipttn4xy>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-3265868-1756137696-0001-2"
Content-Disposition: inline
In-Reply-To: <5n2mlo4l7kqloztcuruagrkglh23gkqfqckuqf6pajerx6qkwh@b6qqipttn4xy>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-3265868-1756137696-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
Am Sun, Aug 24, 2025 at 09:15:28PM +0200 schrieb Alejandro Colomar:
> On Sun, Aug 24, 2025 at 02:48:48PM +0000, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    inherit-scheduler =E2=86=92 inherit scheduler
>=20
> I think this is correct.
>=20
> I think it's this:
> <https://www.grammar-monster.com/lessons/hyphens_in_compound_adjectives.h=
tm>

Thanks for the pointer. I'm not a native speaker, but "scheduler" is
not a adjective, isn't it?

(In German, we would the hyphen between "schedule" and "attribute", so
I stumbled about the hyphen betewen the attribute and the noun).

> Cheers,
> Alex
>=20
> > "In order for the policy setting made by B<pthread_attr_setschedpolicy>=
()  to "
> > "have effect when calling B<pthread_create>(3), the caller must use "
> > "B<pthread_attr_setinheritsched>(3)  to set the inherit-scheduler attri=
bute "
> > "of the attributes object I<attr> to B<PTHREAD_EXPLICIT_SCHED>."


Greetings

         Helge


--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-3265868-1756137696-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmisiOAACgkQQbqlJmgq
5nC5sw//TaBNfavHdHQC85NKXdC9ct4C9QpjEtGLabyXNwXRrP/zePeIRiuyqogA
cQUe1TNv8fD/TV4irytCywbuy5FUsH9wQ+nLNa0U1Dj0hKDHZaYV3/HQXm5sd+rp
FsdHdDqd0QUeDTqM2tSW618xZ7pG43HrF/AoKN+tBLjCrG+q6q0rhH4/jMOmpHbv
HNBk8jFHsV5AX86NCcLLtoszQo0+XCp31+i+4LuRCt+gNutzdpnf0odC+r0OU6k4
hRiAAUXlBh7bVrL6RQXojhjJnpi0c1qUF0522DvXxkJwextTMVA2tYBbDFogdOqZ
XCn/MLGerVcGZhQwW2xfs9ko884IeZftUtUpsMT0mwwjc35UsgwNpRbkhkFtiJx3
VBw6s/nH6DdEH++dfzxhcPkj1ffaNw6HXZ4kl9Vwe6cqfXg8tXjF5nvjW30fh4J4
miE75Ekht//bUVWmLw+MMwu3o+Ez52bXFr6TWQkzzx0xpAIrgyoyMclG7GSZfG43
VM52AXhLKT6EuKBlghgE/L0FnBosuARViIOHQjFKPlu2/JEZBhhpLrVX6ah8ssHS
xTM4ceW77hJkpPiWRkNliVkysElWrD8KZeMeqMgEoUvAIsp82OdU57FzkY4vSpti
I7oYbT8RmoOMV0KzCK8G5SarH1QKSjYxP/nRTvA0/YRYB6tuazo=
=nM+6
-----END PGP SIGNATURE-----

--=_meinfjell-3265868-1756137696-0001-2--

