Return-Path: <linux-man+bounces-2579-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD11A4CCEC
	for <lists+linux-man@lfdr.de>; Mon,  3 Mar 2025 21:50:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E23E3A8D48
	for <lists+linux-man@lfdr.de>; Mon,  3 Mar 2025 20:50:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7355F1EE7A7;
	Mon,  3 Mar 2025 20:50:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RtI4jEaT"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3077511CA9
	for <linux-man@vger.kernel.org>; Mon,  3 Mar 2025 20:50:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741035042; cv=none; b=iyIhJbfZDQnhp6NprHAqZvtHHC0JNCA/CCda/YnHrKfYxO4G0xmIRIhhyhSXLscEmHqMt3Vlma8tiNULhtWTErC/M07L8dRd8ZkY22jkiAkilQWgb+3vTc25blpFrUAcrLKyfqeo9hjFiRBU+4Rvvr7089A/2YuW/SnYFBQbpSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741035042; c=relaxed/simple;
	bh=2+qSblYWL8qgU6qMAywWXjzwn1avAX+NdpH0FsLkhaA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RIHvfgq3vMk2510Vpx3hK7XVyofI0FJdddPslwc41F5ZSImme2RqKFlpc3X6+Qd0v1xuC2nnyqTgLE42JX+Z8/FaTTJkFvu7SDKXAIBD1zqqFzwf+CYPekvJYSjm8Pk1K8NmYT2lvJVEvqk3BwB+f+12AtXNgZK9vusSb0a31YQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RtI4jEaT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E30F1C4CED6;
	Mon,  3 Mar 2025 20:50:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741035041;
	bh=2+qSblYWL8qgU6qMAywWXjzwn1avAX+NdpH0FsLkhaA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RtI4jEaT7MmdCayrlm3LR/cQ+jpEJPhwdUPPmA2Y/luBcbWhAVt8Z4rE6TkisJWhe
	 qXKGRCMq94iMWXXKYSHg1eoNLgwoJMLVIJdtAdUS5XHbZsnAN6JbzpT8pNGD3Z68sW
	 dZmDT0HMnwQeSLeensWn14aaSo9riuIBDOaRrOlOUbPxJirQDUDddHEvSDCpE7ISZi
	 WfW8bMJ9Osv5RawVhNkDJoH3UsX2hpIzSdi/LJr3USxSgdQ8141KwatPktwQYAyp2J
	 WzsdADrU0i5TtiPVaodq0AkXzxEhWC+9Leg/SgGjjiZCAjE5+aIdhixukecvBr4NoF
	 oOuh/1pVANSvA==
Date: Mon, 3 Mar 2025 21:50:38 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Konstantin Ryabitsev <mricon@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: man-pages-posix.git
Message-ID: <j5hugubo4xx3suuqvti362rw65s5h6xdb2rg72dl2ytgmye7id@hrntif3ypsht>
References: <vnfyvsdn22gik4gfjownodrnfzsju52rhk6tt4po47yqb5azjr@7eyng2tgpiem>
 <20250303-taupe-stingray-of-competition-1bc3dd@lemur>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hhgmqttlvoun4kdz"
Content-Disposition: inline
In-Reply-To: <20250303-taupe-stingray-of-competition-1bc3dd@lemur>


--hhgmqttlvoun4kdz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Konstantin Ryabitsev <mricon@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: man-pages-posix.git
References: <vnfyvsdn22gik4gfjownodrnfzsju52rhk6tt4po47yqb5azjr@7eyng2tgpiem>
 <20250303-taupe-stingray-of-competition-1bc3dd@lemur>
MIME-Version: 1.0
In-Reply-To: <20250303-taupe-stingray-of-competition-1bc3dd@lemur>

Hi K,

On Mon, Mar 03, 2025 at 03:44:26PM -0500, Konstantin Ryabitsev wrote:
> On Mon, Mar 03, 2025 at 07:41:04PM +0100, Alejandro Colomar wrote:
> > I notice that the man-pages-posix.git repository is now not visible in
> > <web.git.kernel.org>.  The git repository still exists (I have cloned it
> > right now, both via SSH and HTTPS), but it's not visible in the website.
> > Is that okay?
> >=20
> > It may be due to not having pushes in a long time.  I just wanted to
> > confirm if all is okay.
>=20
> Yes, we're now automatically hiding repositories that haven't seen any
> activity in 3 years, as part of the strategy to reduce the impact of host=
ile
> crawlers. See this for more:
>=20
>     https://korg.docs.kernel.org/cgit-meta-data.html#preventing-auto-hidi=
ng-of-repositories

Thanks!  Makes sense.  I was worried if somebody accidentally removed
anything, but as long as I don't push to it, it can continue hidden.


Have a lovely night!
Alex

>=20
> -K

--=20
<https://www.alejandro-colomar.es/>

--hhgmqttlvoun4kdz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfGFh4ACgkQ64mZXMKQ
wqm8wA/+J/L8YpxjmQRV3CnEjYkke8SZd1EGAfUjcelcUjOKFtnVInciCUtgXm/M
2k25Z8slcWYI6aPOfBIuh8H/My/mxB1LgylagE8DjVlatx1ShsRugWD/GyJQy2XZ
nB1EhMsOt7FmJkNGZ4iS0LuYy/hgUjpQwuDk/YTedmJkT0yzOynW5vDNrtieKAWq
lMXo8UwaGJ5N+dlTMh+K32c524OD09GXGZ1nVf3xQGJAzfPelR9sPXYHRvroNUj6
wC8ezrEpNarn2zMyY/hCln8lc6BDtIkQdkZMUy3F/+S+WgkxgJv6kL9ZQAdE06AO
U1rSez9UJ8MU2LHmS63u7UBjfxu1sowTL7pYDv6ha0xYYEC8vLy05Ksct16+D+eA
mLFkcDTNikxPl+tbwo6FysXYZiJQJfGEghVxivw8DWs4NhseJ+AAgEqbLyU4raQX
Efjn6WNHfnu46eqUi0iGEMb2l2Te6pOhsazJu4T4SFpXrm4SHQAddmPy0qy+svgg
BgDeBSkvdcUxBZ/+duXaACsb7WCScvPdPaLpbP1xLx3HMe8fagNdpO1gIgY+yiIm
JHRziw3GzadiZHKRttCcfKX3JsAbMU+xE2b1hUyWK5IJRu/01lIQnCcrQfy/jwWA
GTh2TaTwt0/HVbkS2as9NlSO8uImeKVCfWdh2vFAHGdHp6l5IYU=
=JhTI
-----END PGP SIGNATURE-----

--hhgmqttlvoun4kdz--

