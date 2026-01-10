Return-Path: <linux-man+bounces-4790-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FAED0D5ED
	for <lists+linux-man@lfdr.de>; Sat, 10 Jan 2026 13:07:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AD9AD30089A6
	for <lists+linux-man@lfdr.de>; Sat, 10 Jan 2026 12:07:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A427934107E;
	Sat, 10 Jan 2026 12:07:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oPhu1HE4"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 672B4341055
	for <linux-man@vger.kernel.org>; Sat, 10 Jan 2026 12:07:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768046845; cv=none; b=Tu8kMsBmxiSB7d6qzuEbHJ7Vo8FsAuWStqvcVTNutk3C5C3mtLACpEwOblyX+pEcO7LvBEVsvHzeDw9VuxSeWgN16lDeP8NoSQd73OiSkMfhuA3y+bRnpsaGZhGHVSciDXVnH6yXeegW0IIFgOAd2QX4Y4b2TwRoILsCkaXLoqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768046845; c=relaxed/simple;
	bh=LAfqfU+TeB4wvkRjrgUlbcJUHTWpS1MTA0dqcN49ZDE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fnX944fbdwvHp959Mh/wUtNsuSo/Dx32y70Rbf6s0By+WrnySzKfv2Im4J/Oy9GdWBQPUg9rgYhMccDVA2kXWPR4nw/wvZwpM5dT/yS4ojhb4crGw5Y84zB3Vii9+y+SlTUfnAEx7Cj3S/n3ZcSBtWaNZIRV4IIsauACvakgW4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oPhu1HE4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C87CC4CEF1;
	Sat, 10 Jan 2026 12:07:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768046845;
	bh=LAfqfU+TeB4wvkRjrgUlbcJUHTWpS1MTA0dqcN49ZDE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oPhu1HE4/IVDmUmKNozNQ5GHqpgUSQh6Fr6C5NOUYZl/b8jr/lK7cw+xIMp2naYQY
	 BXSYcU0G9ckA00LhpNmWwpGXQy7X3Qla64pPBjHZ1guyW0ZJeNUET+Jb5chDAeVmtC
	 3MbJGvFcROPnagl8hiopOPfBL/+hhLVWCU30D8eUVlXl8ztKEAUZ92jc3G3t9T57gB
	 2V4nZqzZUte7Ho2qCEF2TGSMqX3tZbLnsW74k+PNOgSgyxsWm2cWqLthNpqihkcijn
	 4BHRR036mY/VRAD3uUqlVkkEJiS9AVnf9t8NyF3Z64Gs3psV3RdjPROewCOyLgfeK8
	 r3HCiG6soBShw==
Date: Sat, 10 Jan 2026 13:07:21 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: Re: origin of "void *" (was: [PATCH v1 19/25]
 man/man3type/void.3type: HISTORY: Update first POSIX appearance of
 void(3type)
Message-ID: <aWJA7ozSDmfFlSSd@devuan>
References: <cover.1767939178.git.sethmcmail@pm.me>
 <efe8112034e9388465c108fd0418d7e0c68d12ee.1767939178.git.sethmcmail@pm.me>
 <aWDZFvDvb-hAXQMJ@devuan>
 <N5rwikkzw2f0JXz95u_1kI4bAmDj9D2gkp_MrOGQRmYRpZUHBuRAP390fgTkgcNbzYe3YAfS3Zb-OT95Mc_XjSCLQwr-JnMM6fLmIlsN8NI=@pm.me>
 <aWI0djUqajn0xGZL@devuan>
 <20260110115228.bwtdqrpe5x3b2rrn@illithid>
 <aWJAhEW5BK4yohbl@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kqutidtwax3uhdzv"
Content-Disposition: inline
In-Reply-To: <aWJAhEW5BK4yohbl@devuan>


--kqutidtwax3uhdzv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: Re: origin of "void *" (was: [PATCH v1 19/25]
 man/man3type/void.3type: HISTORY: Update first POSIX appearance of
 void(3type)
Message-ID: <aWJA7ozSDmfFlSSd@devuan>
References: <cover.1767939178.git.sethmcmail@pm.me>
 <efe8112034e9388465c108fd0418d7e0c68d12ee.1767939178.git.sethmcmail@pm.me>
 <aWDZFvDvb-hAXQMJ@devuan>
 <N5rwikkzw2f0JXz95u_1kI4bAmDj9D2gkp_MrOGQRmYRpZUHBuRAP390fgTkgcNbzYe3YAfS3Zb-OT95Mc_XjSCLQwr-JnMM6fLmIlsN8NI=@pm.me>
 <aWI0djUqajn0xGZL@devuan>
 <20260110115228.bwtdqrpe5x3b2rrn@illithid>
 <aWJAhEW5BK4yohbl@devuan>
MIME-Version: 1.0
In-Reply-To: <aWJAhEW5BK4yohbl@devuan>

On Sat, Jan 10, 2026 at 01:07:03PM +0100, Alejandro Colomar wrote:
> Hi Branden,
>=20
> On Sat, Jan 10, 2026 at 05:52:28AM -0600, G. Branden Robinson wrote:
> > Hi Alex,
> >=20
> > At 2026-01-10T12:30:13+0100, Alejandro Colomar wrote:
> > [rearranged]
> > > On Sat, Jan 10, 2026 at 07:57:49AM +0000, Seth McDonald wrote:
> > > > I know that the void pointer type was not mentioned or used in
> > > > POSIX.1-1988.  Instead, the standard used the char pointer type for
> > > > pointers to generic data.  POSIX.1-1990 seems to implicitly require
> > > > void pointers - at least for conformance to "POSIX.1, C Language
> > > > Binding (C Standard Language-Dependent System Support)" - by
> > > > including them in some function prototypes.
> > >=20
> > > > On Friday, 9 January 2026 at 20:34, Alejandro Colomar
> > > > <alx@kernel.org> wrote:
> > > Hmmm, since POSIX.1-1988 was already written after some C89 draft, it
> > > seems void* was incorporated to C89 in a late draft.
> > [...]
> > > Yup, K&R C 1st ed. is too old and I wouldn't expect it to have
> > > void*.  I have a physical copy of K&R C 2nd ed. (1988) and it does
> > > have void*.
> > [...]
> > > Being a scan [of 1e], it could be authentic.  I don't have a physical
> > > copy of the first edition, so can't compare.
> > [...]
> > > If anyone else reading the list knows anything, it would be welcome.
> > >=20
> > > Be careful of online copies of K&R C, though.  I once found one of the
> > > second edition, and it was fake (by comparing it to the actual copy).
> > >=20
> > > Much better to get the physical copy.  Although the first edition see=
ms
> > > difficult to find.
> >=20
> > I have a physical copy of K&R 1e, but unfortunately it is in storage and
> > not easy to access.  However...
> >=20
> > I have before me as I type this a copy of Tom Plum's _Notes on the Draft
> > C Standard_, copyright 1987 (Plum Hall, ISBN 609-927-3770).  Publishers
> > treat years in copyright notices the way automakers treat them in
> > vehicle models, so I'd guess this puts the date of publication anywhere
> > from 4Q1986 to 3Q1987.
> >=20
> > In Chapter 2, "Comparison with Earlier C", on p. 24, it says:
> >=20
> > 	"A pointer to any object type may be converted to a =E2=80=98=E2=80=98=
generic=E2=80=99=E2=80=99
> > 	pointer and back again without change.  The syntax for generic
> > 	pointer is void *."
> >=20
> > Tom Plum was a noteworthy figure in C standardization circles; his name
> > shows up in much literature on the subject.  I'd regard him as an
> > authority.
>=20
> Thanks!
>=20
> I've now checked the rationale for C89, and it says that
>=20
> 	Several new types have been added:
>=20
> And mentions 'void', 'void*', and 'signed char'.  It seems it was an
> invention of C89.

Forgot to add link:
<https://www.open-std.org/jtc1/sc22/wg14/www/C89Rationale.pdf>

>=20
>=20
> Hve a lovely day!
> Alex
>=20
> >=20
> > https://plumhall.com/newsite/phall.html
> >=20
> > Looks like he passed away last year.  :(
> >=20
> > Regards,
> > Branden
>=20
>=20
>=20
> --=20
> <https://www.alejandro-colomar.es>



--=20
<https://www.alejandro-colomar.es>

--kqutidtwax3uhdzv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmliQPkACgkQ64mZXMKQ
wqmvwA/+NwnThRIkxxJ6ltC+RTFkX1YKTyTu2cfecWhWAyuaufHJCkAO+23Wu8CE
JQwza1i5J6cMrotci/7UxoDLGy94NVPqkm1efOSZqf3o8KzYlQxob+WYcqFtKWyP
NAyPOAXmjieHV4/gedyAX8T0jC2HRLQES6Wv8PYjsmFAjbxGVuL2IOcToGOZ+XQJ
hu2kImJCnPBaW4FskpB8nFbXClU0aNdG9L5i75ohdO9vd0zRh4S6UfBhGIt9reNq
53CbYSQ7n6PvHMuWbJ6MNjngIb7Y6bkTyBrdPRMxEhS5oVyiWPF9wn2yphRUIJAw
h17/YE78SrrXVVxgH78ClcKzV7wKeXyIVTWBlDT69qIIq4VRbSZiIEC1773uxfOz
Q8M34zN8CFVvJQWG0k4rVx5OG/3csaGdSvA5Tg5i1jbnGTP1CAoiCCNNXTstfGIo
ROBO7TMAN9YdJ4dtinatVKOZzF5VR3ZRCLFGn24P67q4mNv1DtE0eMtUk1G10XkU
2oL3Ilibuox1KSsmqGKPjIXbU/TFUpReKyV+DjiAs3o7q/cKp8O5hzCAXju6eNCC
I+LPd2VnXZUOOMeUkrYSeNBdKD78SfDF7BXnJMI9CPfhloSwL0CWK89oXXQa9/MQ
stHLFRad4oXdIbc5Fa4yaz1TsJQvXgCvfq4uDnFM1D7MnS17q2Q=
=m6vw
-----END PGP SIGNATURE-----

--kqutidtwax3uhdzv--

