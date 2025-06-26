Return-Path: <linux-man+bounces-3213-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 38188AEA88C
	for <lists+linux-man@lfdr.de>; Thu, 26 Jun 2025 23:04:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6670B4E251A
	for <lists+linux-man@lfdr.de>; Thu, 26 Jun 2025 21:04:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 099031FF7B4;
	Thu, 26 Jun 2025 21:04:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FdwKZEZ+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B99BD1D7984;
	Thu, 26 Jun 2025 21:04:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750971889; cv=none; b=t2+HO7onVIK641q6d6ax8FRf3do2xOUV/DkyJAxvzBuLFcd2CnBjUtgyfjsuPW9ppF3gLb7UB5kOYoka0g7Z0OlPMn7+eUuZs7FAJaAZ3qJrEoszyW53HQBQMgL18XjOM1bd2/Pph824+y4yyUcIDv1qCrekEaZ4tS8YuDc5NGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750971889; c=relaxed/simple;
	bh=YFJB1XcxtOWivqWH4uhOZ5kCezXChaPprpNEOpK0ocI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QbitqzaZo8wwv+8t05z6mukOQcprNdS1HibKHKxuFwEzCCPuIzwX/GhviyEMo2udhdUhRJlZGU3iXj5sV2tV9Rn+FIRAZnRVCw+LCbhMPKPO+KwZc5BWKw0SQ8dEqptfkU/8FbLmUIOc36hG/zSQdtKeHLsKMf5pq2wkFsD7n0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FdwKZEZ+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 141FAC4CEEB;
	Thu, 26 Jun 2025 21:04:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750971889;
	bh=YFJB1XcxtOWivqWH4uhOZ5kCezXChaPprpNEOpK0ocI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FdwKZEZ+H9h+9oTrqEvY3Jr+P9PQpcf7l8CXC/18r3RHDXSDv0/QV0fO/GjvRwJgp
	 2PrkQBEU2IVrH7YV6wzk0RGwNb1DANqGGkAED20uhXmBp7UB7r7IGgHWGAa3Acuq2w
	 6WyCqMNkvX1j8v7IDIIR0KJPQmMIYPH7xTKqCo0dQli7MiDhZIhMxl+mswHTKab65Z
	 CfU9HKoz11ewAGiwzgrDjITiumGjo3wD+bxwYbOixgpTamkoiH+zM6leyV7SR86jEZ
	 rZfR45GojneklqF94S4WrizyVEB4PIyGiZsbgb58G7EO+9wNt+KBJwdopzepjn6Pwl
	 TIxczH5mcl3sQ==
Date: Thu, 26 Jun 2025 23:04:47 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: "Andries E. Brouwer" <aeb@cwi.nl>, linux-man@vger.kernel.org, 
	linux-kernel@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: man-pages-6.14 released
Message-ID: <e363mzanav4inu3wtk5pmyzfwlquxr5kwh7ytk5emtayizi7qi@dqxritlnl22g>
References: <uidtufql6ftz72im7w6zggeihwhuwgnpxwb7j46fbp6ryvzv4i@cwyp6ewepeob>
 <20250509112627.GA924923@if>
 <bn2rs76dkhejmthy2wvul4ho26zzlwtkfg474ztiwggkxz7f3d@g25omktsd3ug>
 <20250509121454.GA952723@if>
 <3e82680d-149c-4a67-b838-bc73c0be3e4e@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6ljou54wzeco3awg"
Content-Disposition: inline
In-Reply-To: <3e82680d-149c-4a67-b838-bc73c0be3e4e@redhat.com>


--6ljou54wzeco3awg
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: "Andries E. Brouwer" <aeb@cwi.nl>, linux-man@vger.kernel.org, 
	linux-kernel@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: man-pages-6.14 released
References: <uidtufql6ftz72im7w6zggeihwhuwgnpxwb7j46fbp6ryvzv4i@cwyp6ewepeob>
 <20250509112627.GA924923@if>
 <bn2rs76dkhejmthy2wvul4ho26zzlwtkfg474ztiwggkxz7f3d@g25omktsd3ug>
 <20250509121454.GA952723@if>
 <3e82680d-149c-4a67-b838-bc73c0be3e4e@redhat.com>
MIME-Version: 1.0
In-Reply-To: <3e82680d-149c-4a67-b838-bc73c0be3e4e@redhat.com>

Hi Carlos,

On Thu, Jun 26, 2025 at 04:41:16PM -0400, Carlos O'Donell wrote:
> On 5/9/25 8:14 AM, Andries E. Brouwer wrote:
> > Hi Alejandro,
> >=20
> > > > I wonder about the legal status of such a change.
> > > > There is ownership of the pages, and a license that allows
> > > > others to do certain things.
> > >=20
> > > I also wonder about it.  We discussed it for several (~3) months, and=
 I
> > > documented links to the discussion in the commit message:
> > >=20
> > > commit 9f2986c34166085225bb5606ebfd4952054e1657
> > > Author: Alejandro Colomar <alx@kernel.org>
> > > Date:   Fri Apr 11 02:19:48 2025 +0200
> > >=20
> > >      *, CREDITS: Unify copyright notices
> > >      Link: <https://lore.kernel.org/linux-man/jpin2dbnp5vpitnh7l4qmvk=
amzq3h3xljzsznrudgioox3nn72@57uybxbe3h4p/T/#u>
> > >      Link: <https://www.linuxfoundation.org/blog/blog/copyright-notic=
es-in-open-source-software-projects>
> >=20
> > So I read this last link, and see
> >=20
> > "Don=E2=80=99t change someone else=E2=80=99s copyright notice without t=
heir permission
> > You should not change or remove someone else=E2=80=99s copyright notice=
 unless
> > they have expressly (in writing) permitted you to do so. This includes
> > third parties=E2=80=99 notices in pre-existing code."
> >=20
> > The main topic of that link is how one should document new contribution=
s,
> > and writing "by the contributors of the foo project" is OK for new stuf=
f,
> > of course provided the new contributor agrees.
> > In my opinion it is illegal to change existing copyright notices,
> > unless you get permission from all people involved, which seems unlikel=
y.
>=20
> I agree with Andries.
>=20
> This is also my interpretation, you cannot remove these entries without
> express permission from the copyright holder.

Well, we got express permission for a third of the copyright holders in
the last few months.  Also, we got no express notices in the contrary,
so around two thirds have remained silent.

We could restore those that haven't expressely granted permission...

The thing is, as someone else mentioned, removals happen also implicitly
by moving text from one page to another and not copying copyright
notices, so how much does it matter an intentional rewrite of the
copyright notices into a different form (but which keeps their
copyright, as part of the AUTHORS file), compared to an unintentional
removal of copyright by moving the text (these do actually remove
copyright, so these are the problematic ones).

By rewriting the copyright notices, we'd actually be honoring the
copyright, even when text is moved from page to page.  I think that is
more important.  And since all explicit notices have granted us
permission, even if some have remained silent (in some cases, their
email probably isn't monitored anymore), I think we should go forward.


Have a lovely day!
Alex

> In glibc we did not remove any copyright notices, but *added* under DCO
> "Copyright, The GNU Toolchain authors."
>=20
> Example:
>    1 /* Map in a shared object's segments from the file.
>    2    Copyright (C) 1995-2025 Free Software Foundation, Inc.
>    3    Copyright The GNU Toolchain Authors.
>    4    This file is part of the GNU C Library.
>    ...
>=20
> --=20
> Cheers,
> Carlos.
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--6ljou54wzeco3awg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhdtegACgkQ64mZXMKQ
wqkKHw//Uop15pce4Po1Xf+bYzkClcH0romBAtS4SK4Wc7kJz609SUXyI/Z0bqAA
/4j6jSq5BMc28Wnw2PUqUZodS2wZ5jKm0FrcoT7ut2AAle5iGhHUAfoHKcmsJAMW
5Ze9QWu55Rvoo6c9tRPw8E5WEyN4QbQ6cp+xiqjK3x7UOAQDbYvJ0WIPb6fWEJ9G
uUjlIygCz8uZsZiQT5K1Xf2MzXnY03oI0IknvVYevUhH/jStCCJEPB18w/HZsJuK
G4QRoTN7375B6h462jdypEtlnbvsO7ry1kkv7azJh1q2/TlzWnPsvBDdotEjHcbm
/flbT11dWKB5o3LJ/LAwmVxyK6EAYSiJTUaKwH5feN9ooDNhi7Hkleykv0GjZ8F/
4wazEGTLWbI5SiaIAaZfWwyejjIW9FfL/mpElMPhlsNxRWZ38THwYRf56dJvIGrh
94MoSvXYc3OwPUidfVKdFqpr89stUlQvfzM1YAT1COSVA0q0hjcO0wsFHDag+sRw
v2x0ckpCsxbOqDGM2uKvCHmui5e7C863XwCunuhQD9bu+StNHFmd31cT4P0jocCQ
f6a7Kn5oc1DrtlrYjlM2Js5k1LLXFqftmpqwmL7WYVD1L8UYg6It1523i1XUM+EQ
Hhf0owQ3YtsZnyxzMYHuhlWPwoSVTYVRjezVVPjemNZZRkmeBT8=
=UClA
-----END PGP SIGNATURE-----

--6ljou54wzeco3awg--

