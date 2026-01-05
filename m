Return-Path: <linux-man+bounces-4629-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E766ACF3D1C
	for <lists+linux-man@lfdr.de>; Mon, 05 Jan 2026 14:32:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6E6933145685
	for <lists+linux-man@lfdr.de>; Mon,  5 Jan 2026 13:26:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF571280CD5;
	Mon,  5 Jan 2026 13:19:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z1pnRS0x"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DC4F2857D2
	for <linux-man@vger.kernel.org>; Mon,  5 Jan 2026 13:19:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767619144; cv=none; b=mepGwnAH8+vys0ZJPx8wwv58JXYAEpTy9Yq+kqIQ5TWFLGo0VbUnyJHLsg3Y51o4PzpYzX6RaR5yRs5Z7nMvtIxFsK6X6D7xKyHs6ZVGb47Arny7Dl1fZmF/bN9q9Gj9s0vWENc9dg0GQbzW/9N8U6fIVUqMGCatA2338PXcq7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767619144; c=relaxed/simple;
	bh=MBfktryWSoovniv7DB6nI09WvmzVnLC4v31xaAGgJr8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LUIKy4jSxNHTalBvvYPr5lUiLEv1NWzoPc+uw71k+dOHmvCU7vFWUjPHCV6iTZoBF4FU1Q4iqUR+7UACDpP830JV0zyjKmvYPbjIceIBPf67z1PskMm6uw9frFwjOTZU13CRK1lYS4T+9GZ0p+UcqjRdQXpst17Oxdfp1XJ/qzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z1pnRS0x; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A1A8C116D0;
	Mon,  5 Jan 2026 13:19:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767619143;
	bh=MBfktryWSoovniv7DB6nI09WvmzVnLC4v31xaAGgJr8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Z1pnRS0xvZddhkr1+dqYnxyzjNhdbosKs/U14S+0k8k4JA9l2vyLZG4K5qjhK4oSk
	 ZnUltDIQQiGOUaxJ2EykCkg+AINp8oMz3wNxBxveDQ5Jhan7UwXDyMa0ojtj9z3g7x
	 OW+hlYsCrXlpKmuq5CKKusfrt5PQt3JfvOVeChQoloEFQq0NwD+llHLxVVVGDHmr18
	 ef9G7oNy6RJYiRAD+qPCxW0ZoPYMp0vgbR+C0JKlGIcFBFngXzWiepZWA8RtgvIoek
	 Icip7TPMiTfB+4bK9A40LUgQ2M8I1+03OhmVRzZYHzj4WELfP0jLGkg1g6zrHiKmDM
	 w6yxJmCryagag==
Date: Mon, 5 Jan 2026 14:19:01 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "Dr. David Alan Gilbert" <dave@treblig.org>
Cc: linux-man@vger.kernel.org
Subject: Re: gai.conf(5): Example table
Message-ID: <aVu5_QZHJAjYFKA7@devuan>
References: <aVr_-WDqRyRBL_G_@gallifrey>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yccqfddqh573bujn"
Content-Disposition: inline
In-Reply-To: <aVr_-WDqRyRBL_G_@gallifrey>


--yccqfddqh573bujn
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "Dr. David Alan Gilbert" <dave@treblig.org>
Cc: linux-man@vger.kernel.org
Subject: Re: gai.conf(5): Example table
Message-ID: <aVu5_QZHJAjYFKA7@devuan>
References: <aVr_-WDqRyRBL_G_@gallifrey>
MIME-Version: 1.0
In-Reply-To: <aVr_-WDqRyRBL_G_@gallifrey>

Hi Dave,

On Mon, Jan 05, 2026 at 12:04:09AM +0000, Dr. David Alan Gilbert wrote:
> Hi,
>   The 'EXAMPLES' section in gai.conf(5) has a table that matches
> RFC 3484; however that's not what glibc's default label table is;
> it's table has three extra entries:
>=20
> https://sourceware.org/git/?p=3Dglibc.git;a=3Dblob;f=3Dnss/getaddrinfo.c;=
h=3Dc0f496f96c752220e68bf0257d9ff1ffc624ebe6;hb=3DHEAD#l1341
>=20
> and partially in the more readable:
> https://sourceware.org/git/?p=3Dglibc.git;a=3Dblob;f=3Dposix/gai.conf;h=
=3D4616ed005b2e064175c88609b6d6022a6da4d5d8;hb=3DHEAD#l31
>=20
> I wonder if it makes sense to document glibc's default rather than the
> RFC default?

Yup; feel free to send patches documenting the glibc behavior.  It would
also be good to note that those differences are specific to glibc.


Have a lovely New Year!
Alex

>=20
> Dave
> --=20
>  -----Open up your eyes, open up your mind, open up your code -------  =
=20
> / Dr. David Alan Gilbert    |       Running GNU/Linux       | Happy  \=20
> \        dave @ treblig.org |                               | In Hex /
>  \ _________________________|_____ http://www.treblig.org   |_______/

--=20
<https://www.alejandro-colomar.es>

--yccqfddqh573bujn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlbukQACgkQ64mZXMKQ
wqkPERAAnKuJ5sSNHtq17vELWBM7PEZY9uEZHpk+w6eJl4TAcd1h4YyC9gT76Q0Q
jtOO6vRppk2G5NRg/HjwvDIekjAduTxV8MpTL4ODrRhRxh1ipE4ZLtbIwdIi6p8M
FmAvPMbyrbTN6EYOloPYdvriICVeTDX8YdFPvMNw6t/OuGC80nmI3/9gHwlBJofl
50/fP3fRFKUGDXvtUi9NwswDje/DGdy0HHgryov3uJ+R9wTYZqrcpkMsGk0hdKl5
FeZ9SKC02LmF8Bp846/BbKeLCdsbJ8z/B5PgAV1XMwT4MEke0nVP5b/4DHD+8Ijp
aeQWWdZBmg0cOVy4F4k18TdnKLmvw1BlOd1WljwOVdn3hkju3UFZHeUYswBVPXji
X10W/GAH1JyuMc74v+0LEwNf9t+qX5cSqMbRdys81Ouo5SVb4Lgam9ppLiJi0oHz
DSZDgZdxlgzjse4/C0xCC+ZYU0Jv7xjDbq3f47vn3P1jJVvTyxSFz8FEauww9AKz
b1uoAUVIMnP6WtWZsEjf8u9cmdg9oZu/z8L+ObFTgsHj3dESpAiufBz/h+hsRK23
WVjP+Y/ErodisezPgBh9OnlRNaaDIUEMJf0gxXjjDuckiGJrOs2aAqdShy7ullg8
pnFaT7SPlMoG0b8kNedbaIqAK/RxrxQeUWIlo+PAzmA3j/bGksk=
=pma1
-----END PGP SIGNATURE-----

--yccqfddqh573bujn--

