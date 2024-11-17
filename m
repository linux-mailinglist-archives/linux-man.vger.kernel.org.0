Return-Path: <linux-man+bounces-2021-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C219D0475
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 16:16:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2E9A6B217AF
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 15:16:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AB6C192D89;
	Sun, 17 Nov 2024 15:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="sZOZ88wd"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E4F9C2ED
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 15:16:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731856582; cv=none; b=dMKG+SMny2ur5l5JiFb6Tprcf+l1q8ey98hrWWw0w07tvi+E1MR6TpKrqzG4aR4DzE6iFO0Lfzy7F6+oaguUlI3hx1cp7lOljzCgwPR1zLULC0qLC815CmzgUSEoLf0blPYDIx3ZhbsTxI+E+sD9/trB7rK9nVIKn35glsHxbjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731856582; c=relaxed/simple;
	bh=jYjPKf9zsr7wD2r1byjJYQHu6twKObyyqZgjg8JpFwM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DnNg4TpYIufV7yjWiWidRqjV92Y+XIqmT3sT2AlsfPrzFHN+DJNTVEgp3dUOpXrYWBfT1vrLfF3GEjsBDGbEkGAu9T8XaJBHs8vkdi2f2Y4HJoVHbdkiFPe3TroeaiJyB2LZI3Otfue4fnByijFV0g1Lx1AA4bcettlXHADvi0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=sZOZ88wd; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731856579;
	bh=CuMDp/fLir8e7wMvzCQaE0mW+r4P1fcBsb+H0XvoCEs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=sZOZ88wdtOju5btsgXiQvLOVV3KkEN7D/qDLp0b+j34kXkAmGqL+0X8203Jxv84+Y
	 4YjyN38SStYBIco0LF3jOWKuWWSeFmCNkwDo3miFA1VmHWrhGy+IzV2MsafPLz2lD9
	 tUU0i6e3m2cbTxREUs5xt5W5M5/dBga4gCPslESDRAEGkNsQv4wgj1PZ0+zIFVTtju
	 +b9MD5l0b9F8yo2mwOkMN1P3AVQ3YQ23uKc9PZgijqYQg3F056I5//L5j4tq0ZgBcT
	 kXDgaMUUsr/S5GnPKZSV+eg/Tee5JytzBk7GdhLpaqf/j7Ftl5Wfg8YDo5xm5+Wm19
	 WSI3fDpDdr4tw==
Original-Subject: Re: Issue in man page clone.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000200D0.00000000673A08C3.003FF380; Sun, 17 Nov 2024 15:16:19 +0000
Date: Sun, 17 Nov 2024 15:16:19 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page clone.2
Message-ID: <ZzoIw383yIqC14CS@meinfjell.helgefjelltest.de>
References: <ZznJge9al7KNW0tN@meinfjell.helgefjelltest.de>
 <rdmt5cqz7vgbne5vwxel3ws2scki2yjzdt5iqc3t73sh4weyki@k3z5rxxkria5>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-4191104-1731856579-0001-2"
Content-Disposition: inline
In-Reply-To: <rdmt5cqz7vgbne5vwxel3ws2scki2yjzdt5iqc3t73sh4weyki@k3z5rxxkria5>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-4191104-1731856579-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
Am Sun, Nov 17, 2024 at 04:01:29PM +0100 schrieb Alejandro Colomar:
> This was fixed in
>=20
> commit befb4aaa6d3e2bf1bf975a3585c23b863a534092
> Author: Alejandro Colomar <alx@kernel.org>
> Date:   Wed Nov 1 16:02:49 2023 +0100

Yes, ashes on my head. I usually double check the FIXME, but this one
slipped me. The text is correct in all distros.

Greetings

          Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-4191104-1731856579-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmc6CMMACgkQQbqlJmgq
5nABhg//ewqKVQfcpO+9+SP5MhdaoECV52ul5XIi6jSSYMJGHPFKIIk5qcCYvAVv
1J7qb4aBi2pU/O6I24oRCTTzIggPx/FmXWzHqljcJKphSs98yYNPNPwU++n/iL5b
orDU0jQrSgShdQ2CISbq7E4vNVz7vhE5X/v0LLxkxHYke/zUsnKLEFUHCKPBEkjH
6ROGRXHyev7H8HzYhNBn8iMUS+H+XwfOkgfiqOUUXl6+Wxs5vOIQfduoLEViICu3
vtQNZ3pa+hPYIyhFIPo4suvvG2ZKZyOesT0NdnblsMbHh9Lxt46nD4XEmmBA0BSN
RyVWg/gjHd2JFPDnUHGPMOMnLfpEIL7nNGVADqBMgBI/SGhCR93bcioaGobhZ5nN
n6aNU48LP8xwiXJgOC7r5aOxhzR1LjbOgMF6+uo8H36+94617PdMKSNXCS9UcgPu
aXbC3uhy5cmq0y1FmiVvQnRdjM9VYekz7fm3yj2B8ZbR7fvwsi5wpE0r1grM0thy
YzLO0WocAmEH1Qr1Ui4y0g/OF0Q1PpEpUeG1VnqBDHF6siABz+nNn0VuBlABztSk
DQD8RcXkVEWqjmdDpxgAQHKUNsuXmNiZwqLEU52DFaQTxA2O8U/iXpGMcnS9ctOg
SSH+ldKkDpPRTkHIK+mxeQXI2ndo4mx1eyF3FFqa0N5WvWqrsrQ=
=/9h6
-----END PGP SIGNATURE-----

--=_meinfjell-4191104-1731856579-0001-2--

