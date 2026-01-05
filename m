Return-Path: <linux-man+bounces-4632-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E35CF4839
	for <lists+linux-man@lfdr.de>; Mon, 05 Jan 2026 16:52:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D73F7302BB82
	for <lists+linux-man@lfdr.de>; Mon,  5 Jan 2026 15:51:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F7EF30DEC1;
	Mon,  5 Jan 2026 15:44:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iT0/dYNI"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E403230BCC
	for <linux-man@vger.kernel.org>; Mon,  5 Jan 2026 15:44:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767627884; cv=none; b=jbMWrEOq4OYR7XKnZ9e6GCrfCGH94T8/8cTBBY1xJIB8UAyhPZ1MVg5aHKak1arHC0WOwjX3iZYtEV6vW1WszSM5f2AYzw4Afx/G4aGecTmMWU8Gn41gD4yJAzD2FdQYbGr32biVUcUIUkAkTqnjzeeDY/n7t7UQf1lzzBa3DEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767627884; c=relaxed/simple;
	bh=RKVpdH/Yoxy0Pf73TBYNFOa3xslGV52v7mt97TNtibo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OHeFRw1QqJCe5epXcKfqmOyHD6xzc9seTuqiqSimlXyaqHHhuoXhlppm5vtE1zluWEn+S6JU6rEDGXzmHwfEVxtP9iIu+v+lQngy2D51DM1tQJ/GeI+DHDrE8YFe6O+b2f4mIrrdBq89L4nvYqIy3g8IvBJ+v9+iZYf48kgzwr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iT0/dYNI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32F10C116D0;
	Mon,  5 Jan 2026 15:44:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767627884;
	bh=RKVpdH/Yoxy0Pf73TBYNFOa3xslGV52v7mt97TNtibo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iT0/dYNIWtUaIuKnEy/DrjKax/0quyVTctKvBs+infi9NY2qmprEKSngi7aOaDhYW
	 OqocnaMtYcFZ1K6Y8Y461qG+oGbDkb/iA5KXzBaBciFCLQxA9JTgWVs3JQmj58/YVn
	 gahhviKnLce0zx3UwnMbYrNb81j1hQIMBYquFz6tb+rnYjPNK+0dbm/eabQDJU5ymi
	 gWpb+Yg8vUx41DZiIjH5F6YHpVKC4MOJVRsLPlPvQTye3dChCVHZlEn/KXFk2jogq6
	 RnQbKZbjljItddCA118EPayfAR+g8r2QtwhBFKk1VfDkjSpkSObo0HqNfkfdBdQMxO
	 gwNSdSHsB6GWg==
Date: Mon, 5 Jan 2026 16:44:40 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: Re: [PATCH v1 01/12] man/man2const/F_DUPFD.2const: HISTORY: Update
 first POSIX appearance of F_DUPFD(2const)
Message-ID: <aVvbr9qBMV9Eohwh@devuan>
References: <24e850c16b1a16da197c3e86ec756a7f585ef732.1767599119.git.sethmcmail@pm.me>
 <2ebaafd230336d02405815949315e1b0bdf2685f.1767599119.git.sethmcmail@pm.me>
 <318b6e1e5d8a89b28ecfafc42794efd8a8ef32d4.1767599119.git.sethmcmail@pm.me>
 <20260105153227.6tm44wrjaonclphz@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tbxfwmyefcivctne"
Content-Disposition: inline
In-Reply-To: <20260105153227.6tm44wrjaonclphz@illithid>


--tbxfwmyefcivctne
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: Re: [PATCH v1 01/12] man/man2const/F_DUPFD.2const: HISTORY: Update
 first POSIX appearance of F_DUPFD(2const)
Message-ID: <aVvbr9qBMV9Eohwh@devuan>
References: <24e850c16b1a16da197c3e86ec756a7f585ef732.1767599119.git.sethmcmail@pm.me>
 <2ebaafd230336d02405815949315e1b0bdf2685f.1767599119.git.sethmcmail@pm.me>
 <318b6e1e5d8a89b28ecfafc42794efd8a8ef32d4.1767599119.git.sethmcmail@pm.me>
 <20260105153227.6tm44wrjaonclphz@illithid>
MIME-Version: 1.0
In-Reply-To: <20260105153227.6tm44wrjaonclphz@illithid>

Hi Branden,

On Mon, Jan 05, 2026 at 09:32:27AM -0600, G. Branden Robinson wrote:
> At 2026-01-05T19:18:39+1000, Seth McDonald wrote:
> > F_GETFL(2const) and F_SETFL(2const) first appeared in POSIX.1-1988.[1]
> > -SVr4, 4.3BSD, POSIX.1-2001.
> > +SVr4,
> > +4.3BSD,
> > +POSIX.1-1988.
>=20
> What ordering is used for these?

Ideally, I would like it to be in chronologic order.

> 4.3BSD was 1986.[1]
>=20
> POSIX.1-1988 was, nominally, 1988 but we all know how standards
> sometimes lag.  It seems the record is murky in this case.[2]
>=20
> I've seen dates of 1988 applied SVr4, but no reports that it was
> publicly available until 1989.[3]

If anyone wants to do research and improve those --as Seth is doing--,
I'll welcome patches.  :)


Have a lovely New Year!
Alex

>=20
> Regards,
> Branden
>=20
> [1] https://www.oreilly.com/openbook/opensources/book/kirkmck.html
> [2] https://luplab.cs.ucdavis.edu/2021/11/04/the-hunt-for-posix-1-1988.ht=
ml
> [3] http://ps-2.retropc.se/sites/unixarchive/Documentation/AUUGN/AUUGN-V0=
9.6.pdf



--=20
<https://www.alejandro-colomar.es>

--tbxfwmyefcivctne
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlb3FoACgkQ64mZXMKQ
wqnzuxAAq1LaUzu+4brwyMZCUovj8Auw58JL9mib1OEcUYEOurx6pu//yxoWQyt0
d/9xpdGI1Nzzsc7gEikBwFNj/XKAunl0baOIukUiETM4P3/6R0XRVmGfPDRInzEH
dY8iIARBGixF6ZDm3w/4PvRDGhFwXVM8KypC+a0HMXiQpWTkNnXeEILUligMXJLM
zcKkaIc9lXI/QH3uiNqakN8350OAjZWT0KnYWz+agpmk0bfv8YKpJYulH3YvXSuD
aFPQDAxnG9+7g39WxZSqKuUSSJ3t4VVSusmUajSQRMdivBnig5S2w0IepIH7Fe9A
BxBvZ9l3wi6NB7NGduG5mZS8ZaRhMIlmOjeNozAW/uEaRqIXfgf18o3tXwvPKEih
yfMWl+VeH3yuSJvAgGj6ck4ayDTOvJtKrUw5lXo24tLw7/eu3w/Jt1nNlZDosF3X
f9SzIALtj1Uq6ksat/v7v1bi97SvpUL+gezjJCiRQpsE/xOQFDE4YtfxlHxwUxwO
CcX0XXktLKTW0wGLLE8AnlVSs8xT6abw/KJ6WU5FAQWXD0TGo/2U7nqtXQwnGKjI
Qq8pZ/sc2b2368qVycfrqOfGGBTvJ0rLvUr5Xj28UcPJByZQiZv/2ryW/OdnDacm
YJewKfLRIokzX417roAsc+aplKuw2llj5z9iX3cahEMcIS9TQIc=
=f9yI
-----END PGP SIGNATURE-----

--tbxfwmyefcivctne--

