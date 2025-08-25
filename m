Return-Path: <linux-man+bounces-3711-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C99B3464F
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 17:52:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 86D533A48E2
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 15:52:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D0E32E7F0A;
	Mon, 25 Aug 2025 15:52:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="JHQ6/BRl"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D534E19066B
	for <linux-man@vger.kernel.org>; Mon, 25 Aug 2025 15:51:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756137121; cv=none; b=LtZq4kasDVFCQUTOs6Wj5FHayPplnuOqwOTVEqoHM7twBnJ1au/8IICT2JuDDQdZw8x9QFnxZZdtfecnGX+Sk7TRbItizkd+I7U5go6FzBLs6tD/S4cmNkZjhGV7GMGBFAttPeLyCo+hEJIwou2hUy2V8qvk2ptDHbPoYSgCkgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756137121; c=relaxed/simple;
	bh=/WKKbLQoRLFl+DN01nua7sYgfi9o3vJcIAD9BxtAVU8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y3GWbZX1Geo74CWl0il84GQQqmUYjPNQzbu/k2V7Zn/ywpkjcCU4wf5QydrEiGUFzK/00CvKoK7adeZTqQnWAzz7Qu600gv/hI5/As0LFkEZDhLrejFfY7eHndLEQWGWS58WSXF8Uj7MEiU8nc87yViC8DoX+3d16J/1NTJm8RA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=JHQ6/BRl; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756137112;
	bh=q6AxosvI6Shnx0OmWTAbfIY6zvtrQvag3snI0KTzilA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=JHQ6/BRlETrfFy/qeLqyotkC5D8jr6y6yRUf4aNWKhRza1JxKfd3K1yJVjYyGNHzN
	 WAYitzwA9f4NsfBbWkQhbx03DNpaqQiubna5Q1ibItBP/0wDGL/MVQ2PBjHxayfBYy
	 bejt0AUpomM7SNAw7LKslXDkmkGNs64pp0ZAVZsAJxUVKp2uil1+DFWD1yW8/uO8Iz
	 Vr2a7A0f6WTkgBxqVZp8SU70nu/pcPxYW6yvYA44bYtWbKeYSl28DO4U46GbOZcHsa
	 dUxiNY5dr+BB08GXTaYknLrkvp9Xj270Vv5vM3ET1iaVj61iIE2K42SEXpljB8Wrt4
	 ucl/jNurF3nCQ==
Original-Subject: Re: Issue in man page resolver.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000200E3.0000000068AC8698.0031D34E; Mon, 25 Aug 2025 15:51:52 +0000
Date: Mon, 25 Aug 2025 15:51:52 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page resolver.3
Message-ID: <aKyGmOPnZmlZhcgh@meinfjell.helgefjelltest.de>
References: <aKsmQBB8CZKAhQvH@meinfjell.helgefjelltest.de>
 <x25fz5cv4jolv37nec5btlbyu7d2ciulxwnb5bipgpzgorehrs@qflc77gpwpne>
 <aKs8ipbVrLo_fFC-@meinfjell.helgefjelltest.de>
 <qiswqsy2zq4yxmkblwuw3zxj2ev3utg525bfhst2sthvpecvyb@enfc6paekaj6>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-3265358-1756137112-0001-2"
Content-Disposition: inline
In-Reply-To: <qiswqsy2zq4yxmkblwuw3zxj2ev3utg525bfhst2sthvpecvyb@enfc6paekaj6>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-3265358-1756137112-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
thanks for the verbose explanation.

On (hoepfully) finale question:
This new formatting is not (yet?) reflected in man-pages(7)?a

Greetings

         Helge
--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-3265358-1756137112-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmishpUACgkQQbqlJmgq
5nCuKA/+Np/U7UhGiuyI0H0A4iEqL3dZwhyqV2+Q22Lq7mddl6/rS+1LIRPHwdO1
4GhNQ/1tvGBLZUvv2vfIgkspRQXpWw0XXkSbLsdhm3xJUoNxuDYap3GPt6lvjy3+
P5b5o1JgnX6lHtHc6ifVNMq0pM47km663NTJl2zTFLZA20JKaL+TBzLAJFXm0NRB
SvPGdrShbV+XPWxpGRwu6FhRzQjzGAif4l+sIfSCqCZ7UJ7ptn1rYt1fziRPV6A7
VKJ3fQFftXNBvuWS3jYm2zVFjrAEf68Rg5NSfTaJaakunK547f4CsnilrnEd09g7
Q8EI7CdI+2TZIIR343mi40ObXonoqMW/+9U1xVUKf3LLFTY4mzf6dVB7geBf62cU
t2wXjrAx+saGwOfTuBuymBS4T2nbDazxUUGOZQQNZItWRnFWuMO+hDpdnihJZv7c
Vg/cLnx0jNvol8FDrdd6jnjr/vgjThPE12aFBFyj552MgH4OJzOwx53VE3NquQ/X
9Y92wDPcYw2Um1aITACgTPd+BglVMl7MTssHAShTrE4ri7oTjmPvq3Z5RdlcRaSL
k8YLN2mFap9TmG7Am8kxGhyzU3V0QqnB/AfL1g3ZAMMBoApD2X4PSlR9kydIBlug
vwDVeT78Dnxu1+KIUXxrWj2ujbTM5rEPcGqKOfKZjR7u/BzxEDA=
=qS2j
-----END PGP SIGNATURE-----

--=_meinfjell-3265358-1756137112-0001-2--

