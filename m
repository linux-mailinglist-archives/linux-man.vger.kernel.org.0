Return-Path: <linux-man+bounces-1156-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 45BBE9059D3
	for <lists+linux-man@lfdr.de>; Wed, 12 Jun 2024 19:25:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5A99E1C21280
	for <lists+linux-man@lfdr.de>; Wed, 12 Jun 2024 17:25:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EBA5181BB3;
	Wed, 12 Jun 2024 17:24:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="isixspal"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F2AA3209
	for <linux-man@vger.kernel.org>; Wed, 12 Jun 2024 17:24:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718213098; cv=none; b=n8T2LqpcVdJ00V+YDDaZlj44qxUgeukQCKnPN7uhq30fXBU2RjpEsW0RQeUPGNKuft37jHcHCMpETKqyILF43ryIQguJe7PgNrPhObIIPn2BWH/htFWNgMQZkoWccVH0gknPlj1ibP+VUl8WtZXAs3zCmMfRrbESPSt7VLgY0Tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718213098; c=relaxed/simple;
	bh=AIZJ8fHDkYNA3etoGG9FU4gpAZBN9zwM7j1aS86Xqeo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V+/Oq6DJZfwKZtvfP9T1Ez3qBN4j8R4/T1pFIrWg/nYqRioV++3XWZUCwd8Lt7PEl3CoDoodQROcrrSnL/KMMCzwl4pdSsjSuY0BHvNSr5wzUM1ukiKKdoRX1l/SEKP3xztkVfT/7MxQClJhGgtUsBeadFVG2Y7TrjHKK7Y9Y7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=isixspal; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55822C116B1;
	Wed, 12 Jun 2024 17:24:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718213098;
	bh=AIZJ8fHDkYNA3etoGG9FU4gpAZBN9zwM7j1aS86Xqeo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=isixspalvDwKZ6xHJOxPOrRQYgVXyRSQ++R8KUzFdkRz4tfh99XEfGXgUI5DeCBvn
	 V2yjX8Q/exhMGEO7MarjsF+MBF6coHRVYnoDYUNh4ykCemAWjd9ufabj0j6ltgaysj
	 cSLLCdldI4FcE48OQ2yk4T6ieRCM4iSOJRYN9RDlpbXROi7msVLC4KxagOEg7saQGN
	 J19tGF9YD1oYBIilfV1P6LCUrUMjNkA2taWQaR1Q+AWYbYzRcY5fL9KIG+sAi+naJh
	 6YRE1wdN3AlHAJHct1QE/NqfjYIu9uqxn/YeoeHuTxs4xP7cGfkxoZeOcc643iW51i
	 FNFg4osESsm9Q==
Date: Wed, 12 Jun 2024 19:24:55 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v4 1/1] ioctl_eventpoll.2, EPIOC[GS]PARAMS.2const: New
 page describing epoll ioctl(2)
Message-ID: <fludjlcybg5r6l7f6sccdchf3caykdl53f2cr6x4jnlg43kgj5@afurd53alr2c>
References: <20240611210941.1791446-1-jdamato@fastly.com>
 <20240611210941.1791446-2-jdamato@fastly.com>
 <dxbytf2nfionvg2a3mt4ocwrt72qlyqqf24vlun3g3v2qucmrq@6wzdibvvcaao>
 <ZmjaZm4gfz5lZL3b@LQ3V64L9R2>
 <h26ptahsj5x2tmlrub24u7krsnxpme4jhrs6zkwp6g72aqeadv@ux2eu3pfzueg>
 <ZmnV_qoKYp_xDm7B@LQ3V64L9R2>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bxtr2n5euzlj46iq"
Content-Disposition: inline
In-Reply-To: <ZmnV_qoKYp_xDm7B@LQ3V64L9R2>


--bxtr2n5euzlj46iq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v4 1/1] ioctl_eventpoll.2, EPIOC[GS]PARAMS.2const: New
 page describing epoll ioctl(2)
References: <20240611210941.1791446-1-jdamato@fastly.com>
 <20240611210941.1791446-2-jdamato@fastly.com>
 <dxbytf2nfionvg2a3mt4ocwrt72qlyqqf24vlun3g3v2qucmrq@6wzdibvvcaao>
 <ZmjaZm4gfz5lZL3b@LQ3V64L9R2>
 <h26ptahsj5x2tmlrub24u7krsnxpme4jhrs6zkwp6g72aqeadv@ux2eu3pfzueg>
 <ZmnV_qoKYp_xDm7B@LQ3V64L9R2>
MIME-Version: 1.0
In-Reply-To: <ZmnV_qoKYp_xDm7B@LQ3V64L9R2>

Hi Joe,

On Wed, Jun 12, 2024 at 10:08:14AM GMT, Joe Damato wrote:
> Thanks again! I was refreshing kernel.org's gitweb to see if the
> commit made it, looks like it is there:
>=20
>   https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?h=
=3Dioctl&id=3De450bcf6e35a5c227c5e80cdb4e44bb89516a5ee
>=20
> Very cool!
>=20
> Does the ioctl branch get merged into master before you do releases?
> Was mostly just curious because I'll be excited to see the new page
> in an official release in the future ;)

Yep, I created that branch a few days ago for doing a huge refactor of
the ioctl*(2), which I expect to finish this week.  (Also, I have a
contract starting in a couple of weeks where I'll need to learn some
ioctl(2), so this refactor will help get me started.)  When I finish
that refactor, I'll rebase on master and fast-forward master to it.
Then, I'll probably release 6.9.  I plan to release 6.9 before the end
of this month, after which I'll merge another massive churny patch,
MR.sed, which will be the main change in 6.10, which I might release in
July.

BTW, I will probably cherry-pick your patch to master later today, not
waiting for the rest of the ioctl(2) branch.

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--bxtr2n5euzlj46iq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZp2eEACgkQnowa+77/
2zJaBw//VAaVNL7bKxGHmKayXyWw5Hfcr6XSpasKt8ewBqgUNjFFMaYE5+n3DfPP
0qXoBPTCHyYs0jTWpUn2TE+P4DRtJGeXvvMJDnGK4S2jec2gBHTHfRQMn1Ywh6YU
TZvTMAvskAJUTn0IEEGNKaenFHXNJW100qGLfax1PoPTPmkTtWFJ13QY8cSWJJve
wcGMJougZxcy3/zCeCM/hkbC95MYkuDgcIwyti0Tc/8lKqbkxU03mzGFOZDHhvVH
1/q9TnzWbrkj1tYu8QmQanP7OMqLHutWuFCVVdKPj35ufNkYqtYvmJEXm4OVNWLG
ZGFkWvB6FC4EXutlBtlqXSdRJqGmgDWC2/kDfu0+u4LNZjCjAbOIQMb8UZgfcyZA
B+2KY1hzvefL6q1LvOz+BYq2IdWp+aUehUAKHPcOSSibtRK8255d9ZZR4mhO0ZAi
WOlpTSMfmIPoA4lBXo5Lg1Aom68SH3RGQGh8jsTy3ZpAx+CJAUm31jAJ6Auq/K80
ocgBb0AQqeYGPOjPB4okDyfgW31+ehUmciaiW7x4YITQ2d1d6BadgLjYcScJDCGz
ODllL+tEPcghDxWEPCGMnLdn8z7RY767EjmdhIfPG+Yj7AjD1jGRdt/0wF5pElAL
XOaQRFQ7BbpS3gE7MD7Y+Dc9Slwa+cnew41cnm5aCPBsxjmdfJ0=
=7jws
-----END PGP SIGNATURE-----

--bxtr2n5euzlj46iq--

