Return-Path: <linux-man+bounces-3223-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 906AFAEB882
	for <lists+linux-man@lfdr.de>; Fri, 27 Jun 2025 15:09:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 297D11C2137E
	for <lists+linux-man@lfdr.de>; Fri, 27 Jun 2025 13:09:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 398172D9785;
	Fri, 27 Jun 2025 13:09:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nF6jaBYD"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8412202990;
	Fri, 27 Jun 2025 13:09:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751029770; cv=none; b=mxm7WrvklFOqHNtytNgRdab2HfkGYavwSjZm1MUIofHtFM6/Ock1E7604UVyDw9xnvIsrFiogSXBPCGFTYDUXEMCBzYesioqvIPA0mPM06ythSZ3odP+fRWclVYoOcjgNCMIwEdJTDc5c+qwlAO1rX2TM/MHbuqF+dtfGtvsvEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751029770; c=relaxed/simple;
	bh=f2QdlfBEVfLHhk+CnOZ8tARz1QewJmvG6TJKS4k11Ls=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bRa9YJ6PmQWGks5b97r4qy+Zk2wflhTEDBwBnPeqhV57xXSddFcOjvMKjijAP3pngPpYUtH0X6Od4ORHkl0mapT1mCN1k/HINufoClMrkWB0aLy7Mq7ooKvAbMcoj6iB+D03iHXDrmS6KrkKzIlnYL82rFdDh9XnZd236tPbmRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nF6jaBYD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69DE8C4CEE3;
	Fri, 27 Jun 2025 13:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751029769;
	bh=f2QdlfBEVfLHhk+CnOZ8tARz1QewJmvG6TJKS4k11Ls=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=nF6jaBYD2KJyAFGpwh/K0jHLoQ3ky3KFEDLNv5KwJJkNlkYYc4yd0E98swrq3xf2N
	 IRq33TX3/mhivDC7mLNB8i4Co0okKoQsqNaKkfkqX6xeH24RlDK7Fg5DOlpnojoBt8
	 7YFj0gL5M83Cq5xAL5dCA8a2GWIajI1e5q1Y1TM84zuUpp0UWpo4BeFMiZh+3lM094
	 MCRok5AXTWYmdq5BBGef5pE4sYNXG2SZzh6WbOgACMHXE6XPSufZvn1hBMEonCazUQ
	 Ixy1gDtQgLXpqlx8kpnuzo2VNgXw91uoeTaYlTXOfkMUlPv4PxrGpPfAouhTXs9Ixi
	 VFr18sYHrHVmw==
Date: Fri, 27 Jun 2025 15:09:17 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Vincent Lefevre <vincent@vinc17.net>, 
	Jilayne Lovejoy <opensource@jilayne.com>, seabass-labrax@gmx.com, Carlos O'Donell <carlos@redhat.com>, 
	"Andries E. Brouwer" <aeb@cwi.nl>, linux-man@vger.kernel.org, linux-kernel@vger.kernel.org, 
	libc-alpha@sourceware.org
Subject: Re: man-pages-6.14 released
Message-ID: <jpajowiaidwzpcfcfuwqnxvzmr7wlebmc5u6mo3s62vv5td26p@roz224sqq327>
References: <uidtufql6ftz72im7w6zggeihwhuwgnpxwb7j46fbp6ryvzv4i@cwyp6ewepeob>
 <20250509112627.GA924923@if>
 <bn2rs76dkhejmthy2wvul4ho26zzlwtkfg474ztiwggkxz7f3d@g25omktsd3ug>
 <20250509121454.GA952723@if>
 <3e82680d-149c-4a67-b838-bc73c0be3e4e@redhat.com>
 <e363mzanav4inu3wtk5pmyzfwlquxr5kwh7ytk5emtayizi7qi@dqxritlnl22g>
 <42dad79f-e0f2-4731-ac14-0189f5d278a0@redhat.com>
 <20250627002011.GA431181@qaa.vinc17.org>
 <wwtmtg6ar6gfxvezbcendmcuo3zzgferrmqvhvutos7vp3er2q@xljv6kkogidj>
 <20250627074925.GJ2809@qaa.vinc17.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wap2bey7khfz7tyf"
Content-Disposition: inline
In-Reply-To: <20250627074925.GJ2809@qaa.vinc17.org>


--wap2bey7khfz7tyf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Vincent Lefevre <vincent@vinc17.net>, 
	Jilayne Lovejoy <opensource@jilayne.com>, seabass-labrax@gmx.com, Carlos O'Donell <carlos@redhat.com>, 
	"Andries E. Brouwer" <aeb@cwi.nl>, linux-man@vger.kernel.org, linux-kernel@vger.kernel.org, 
	libc-alpha@sourceware.org
Subject: Re: man-pages-6.14 released
References: <uidtufql6ftz72im7w6zggeihwhuwgnpxwb7j46fbp6ryvzv4i@cwyp6ewepeob>
 <20250509112627.GA924923@if>
 <bn2rs76dkhejmthy2wvul4ho26zzlwtkfg474ztiwggkxz7f3d@g25omktsd3ug>
 <20250509121454.GA952723@if>
 <3e82680d-149c-4a67-b838-bc73c0be3e4e@redhat.com>
 <e363mzanav4inu3wtk5pmyzfwlquxr5kwh7ytk5emtayizi7qi@dqxritlnl22g>
 <42dad79f-e0f2-4731-ac14-0189f5d278a0@redhat.com>
 <20250627002011.GA431181@qaa.vinc17.org>
 <wwtmtg6ar6gfxvezbcendmcuo3zzgferrmqvhvutos7vp3er2q@xljv6kkogidj>
 <20250627074925.GJ2809@qaa.vinc17.org>
MIME-Version: 1.0
In-Reply-To: <20250627074925.GJ2809@qaa.vinc17.org>

Hi Vincent,

On Fri, Jun 27, 2025 at 09:49:25AM +0200, Vincent Lefevre wrote:
> On 2025-06-27 06:23:26 +0200, Alejandro Colomar wrote:
> > > I've always heard that a copyright notice was optional and only
> > > informative (so, in particular, there are no requirements to have
> > > per-file copyright notices instead of a single one for the work).
> >=20
> > I tend to agree with you.  I'll invoke some SPDX people, which might
> > clarify our legal doubts.  I suspect they're lawyers or have contact
> > with lawyers.
> >=20
> > For context to the SPDX people, we're discussing if the following is
> > valid or not:
> >=20
> > There were a lot of old copyright notices, each with its own format,
> > some more formal, some less...
> >=20
> > That was a huge mess, and the copyright notices were not always
> > respected: for example, in cases code has been moved from one file to
> > another, and the copyright notices weren't carried over.  In other
> > cases, some people (including myself) significantly modified some files,
> > but forgot to add a copyright notice for themselves.
> >=20
> > So, I eventually decided to unify the copyright notices for the entire
> > project, so that the copyright notices would look like
> >=20
> > 	Copyright, the authors of the Linux man-pages project
> >=20
> > And then a top-level AUTHORS file would list every author.  This is
> > quite more accurate than the previous copyright notices.  However, some
> > contributors are concerned that it might be illegal to modify those
> > copyright notices without express written permission.
> >=20
> > I've sent email to everyone whose copyright notice has been modified,
> > and I got around a third of explicit approvals, but the other two thirds
> > remained silent (in some cases, the emails probably don't exist, the
> > people are dead, or they don't read the email anymore).  Notably, nobody
> > has explicitly said no.
> >=20
> > What do you think?
>=20
> There is actually a more important issue: it appears that the man
> pages are not all distributed under the same license (according to
> "SPDX-License-Identifier:"), so that some care would have had do be
> done when copying text from one man page to another one. That said,
> I would tend to think that when such text has been copied, this was
> for related man pages, and there is a chance that such man pages are
> distributed under the same license.

Yeah, most likely it happened like that.  I recall having been a bit
careful about that, and don't remember moving text from significantly
differently licensed files.

> Unifying the licenses by asking
> the authors / copyright holders would be a great thing to do.

I did actually ask a few contributors, for cases where a license was
used only in a few pages, to change their license.  I got rid that way
of a couple of unique licenses.  That was some years ago, when I worked
in having SPDX license identifiers for the man-pages licenses.

In fact, some distros had complained that some of the existing licenses
were considered non-free, and we got explicit approval from all
copyright holders to change the license.

> Now, about the copyright notices, you also need to give the full
> list of the licenses that can apply, as some license may require
> the copyright notice to have some restricted form (such as being
> included in the file itself).
>=20
> For instance, the GPL licenses have
>=20
>   To do so, attach the following notices to the program. It is safest
>   to attach them to the start of each source file to most effectively
>   convey the exclusion of warranty; and each file should have at least
>   the "copyright" line and a pointer to where the full notice is
>   found.
>=20
> (or "state" instead of "convey"), for which this seems clear that
> the current decision is OK.
>=20
> I think that among the licences listes under LICENSES, only
> Linux-man-pages-1-para could be problematic, but only 18 files
> are concerned.

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--wap2bey7khfz7tyf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhel/0ACgkQ64mZXMKQ
wqmzRQ/+PQujnK2c66gHD7wguH50Xpk0WfnjF07xLQgZQfOzXl4vlZ/JxWeJwJ4N
YxIqN4ISWJ0Fh8mTSmwpAaNhLovQj4DOjdkVJBbzVHiawMCE+GK9LvoPqQDLx6KS
M1Lh7tl4AigWUrX+wIW7vYLW6/oE6oPw0OlkmdDjpaLAM7+fOc/Pv134M7FBAMpo
KLqthqtqFRauNhyfYWawG+QEHa6hiZymSYGSJDjAjcTzbCI+ERuoQaPufxBIFfGq
oMX7Z62xXzVZ9hF81Ihz2sz6Gxmr6H/jQe++oeW5g+pLN9YVlJoyL1NR9mM2cS04
uTNKhyAISR6fBkpOxlVDcqA5FKM/JaIRHxBhkgQNuDp4FbzNYJYG+eGpEFx6RySc
J5sxpoOp6IsNTpCsbw+HRx306TJ9zsAVhfFaF1HY/BSXmDgNICclbBw3JiUnXh5W
YQthlhXZY9TT5Jm/QhjyYXtk9I+0TsPXIUNGsxy/dvU6UxVm7VVerzZm0PQT7O84
G2WeQBIWaG9d/rek0RjVJaKk60Q39XShp+u58AnDmPTdyE022VjfgsjGh9kY+1J6
aqG+PXsvvIDXa3PDTXlcjf/ev72WmxP44VYF9YZ9uUGWatz3QFdMXVuz7fdEFBnD
uUQ5nYEE8o1hpidH6EZ+qCYG76mR0VN6wcEzFzJXkNA0Lh4XIg8=
=5rES
-----END PGP SIGNATURE-----

--wap2bey7khfz7tyf--

