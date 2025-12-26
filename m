Return-Path: <linux-man+bounces-4574-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C1133CDE546
	for <lists+linux-man@lfdr.de>; Fri, 26 Dec 2025 06:03:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BC7C1301356C
	for <lists+linux-man@lfdr.de>; Fri, 26 Dec 2025 05:02:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FB55221F34;
	Fri, 26 Dec 2025 05:02:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="LPJtU6Rj"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5425215F5C
	for <linux-man@vger.kernel.org>; Fri, 26 Dec 2025 05:02:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766725363; cv=none; b=F1ax+7bUzvOJSgoANVRY/9UeK29Xu0gmSdnWMvfIjqZzgjgtevZNDpsdJbUSGqDsP19BeJe+Tvp0NL8EitYCGJhwgk9DtG6TsTXPSVl6Fej1pAiJhwH6rU+yDP0pzVP+nDMqEKIFogWZd2L0TS9WsuRg9Ao/od433Yev3iX65iE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766725363; c=relaxed/simple;
	bh=JDi28WWvRuk4/7JeaeenlrnX3WCDX79T5KMyfS4otMw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bGvhuJzwI7NjYCfi/dMvKnoVV7pg3v7P7qfwBAYg8y1+jc3WZ5x5Ts2s/kHpPBejT2SQan0ypBpHs816ik+3sm0TNRx6z8QCoykCdCvmNXGu27dE6srayqP0WQHLIlAeFi6wDDcfAqJEc7CId+EuNqeP5ciO0qtr0gR476bZMcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=LPJtU6Rj; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766725360;
	bh=zuR34irtfZPpadWJgmA2yyfXPkvMBVWWhmebBTa7jCg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=LPJtU6RjP8eScFekNP2L9TAvi0LDue2o1tI78FWEfTzpK2P5z9JjdjqmTdZpISoME
	 16mohtNYFRIoa8z06WPcrkLD1SbKgUwl0xSo0SxCFVIjF8pg2ApOJ3qcyFctWuBtNU
	 mVGCrYYrLfGIgttnEmzP/8gEepHhL50kSySkl2pbmJf+NmRlx2HOp0n3btogyGKZav
	 ac7xj8aH9q1CC3kwgdzzLBFCvMxMW+eb6X75vJ4xFk/iFy76H9WgPjn4nnC3jQyirQ
	 X78pgY1KC15ni4Cs7JogneNzETWZ+Emoxhm75c0m8g9AOkbqtErrx5IUdUYrPNvk7H
	 HUsIyM7eCjTCQ==
Original-Subject: Re: Issue in man page  PR_SET_PTRACER.2const
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000200D3.00000000694E16EF.00039DAE; Fri, 26 Dec 2025 05:02:39 +0000
Date: Fri, 26 Dec 2025 05:02:39 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  PR_SET_PTRACER.2const
Message-ID: <aU4W77-jt6gNqh5D@meinfjell.helgefjelltest.de>
References: <aUv631U4dmX0wzKb@meinfjell.helgefjelltest.de>
 <aU1A1nItvZiTB0Vc@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-236974-1766725359-0001-2"
Content-Disposition: inline
In-Reply-To: <aU1A1nItvZiTB0Vc@devuan>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-236974-1766725359-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alex,
Am Thu, Dec 25, 2025 at 02:49:23PM +0100 schrieb Alejandro Colomar:
> On Wed, Dec 24, 2025 at 02:38:23PM +0000, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:     Replace comma by fullstop (in SEE ALSO!)
> >=20
> > "B<prctl>(2),"
>=20
> I've decided to just remove the comma.  Thanks!

I thought this was mandatory, but I now read:

> Do not terminate this list with a period.

So I remove that from my mental model.

THanks for handling.

Greetings

         Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-236974-1766725359-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmlOFu8ACgkQQbqlJmgq
5nBTPBAAiObk+YmYNpAZz7Yr+BGK1EjQ8uUnB5Dlqa+sj0ogEwB7tcyZe70KDWNw
zDrq5FpN9TkE4P8yKRge0kM+0U4FF4zGbqndtzZRr4TwwL6l2irJCkCMLSf/6jk1
TV/rHlDnLcdZlHTiFQmQ25W7M/vjH93zi/uu7YNKxIhyDZjZF21nhPkRaQA/5ouR
eagXmrE4o6RJYnzv7dPt+bGx0iwId/S5qIjMZ28LV/sAhNZ11OD4Scfd5OTS2lIb
VzbIj30T9rv8juX741MibZ9orwJFipsFBbc0obCjGFTMUrJv+rhOmN+2T4ogr+O6
gM89M+i1McormPIyol9kVeyjjzkDtNT9dn05mg6kls6qWEKej09jtSCanlbdk/Pt
gbf4UP1gWk9W/vEH5+KejcXhhmH9ZS0J55+TYmJgoqeRh7ijbToGyz94CbdYGtXv
7WI+aD64ygCRRZBeAR3nZ7bIpcUjjLGYCHEd8KAtZvOx2OGGATjiXYctcWtIvv1M
+uZWLzWOXLCCiLb5X8dZrH+NdH5/Ayt29fR6Q9qtfGr/NIjrs5W1a4sKPkp9ja5H
3WijO4F01FLLWEi/BGBKarTVPoKykvIYZf9Vc42Vn+sJ5WyQLHcyc4V8MFeRSQw+
NXrqFRjO5QkWQmtbnHPsJY5vlNNCpW1iTii3QD5nHzo6dn9gQak=
=K9AP
-----END PGP SIGNATURE-----

--=_meinfjell-236974-1766725359-0001-2--

