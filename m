Return-Path: <linux-man+bounces-1139-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D294904711
	for <lists+linux-man@lfdr.de>; Wed, 12 Jun 2024 00:36:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F122B1F23F81
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 22:36:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8570815533C;
	Tue, 11 Jun 2024 22:36:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TXIhvQ2c"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450A915278E
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 22:36:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718145388; cv=none; b=saZZkWHGTCbjNyrukcYzoXFLldTwXGB5W/DSigTH+PXdv7dZDWLdkr3jEMTueGrZf0feMOnKH+Ta7G926HuEIzRIXdCIi3QnZ4wtaaS9k2VwwQPansfAHIeUDdugIhyav4zZpBzXuYNjClV/ovuraQMel9e1kZ3kreC+yHVogc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718145388; c=relaxed/simple;
	bh=LCVI7ntrMskXq80kSkeYvGquDL7xvdVYUJhTBa47/jE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uBo+SoQKJ7/XTbySiuenVRmfXVvNmMc76ZuQ3HfMk3upZyVXglxsstMDPL7VxzqArD5YwmyM7n9PfK5FmIlRjifBmLb44zHUmbLv0hYw5n2g77ZgsDO+rZqNktNUyhvdh/zozWkdXcUbGAn0xUOf5ZQQ5hTHFme7tna+VzYBCJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TXIhvQ2c; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E65CC3277B;
	Tue, 11 Jun 2024 22:36:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718145387;
	bh=LCVI7ntrMskXq80kSkeYvGquDL7xvdVYUJhTBa47/jE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TXIhvQ2cGZMRpc+v6oMHx/07b74ZsdadBfjIH4IM1O9if+NI261Fuu9Q6YG97OMu8
	 1ecq0YVk8bPwOJd4FkEFjxFzptPOvIlTgU3Rg1MrVIwLWMxuIQVGC0FPRsmHLQpRuL
	 gnImI5W1Pw8Ax21P0CCUtxnlAFuVT5Ep+geMuczwI6p1FCLNs6IVwbFx9RVfVoU0k2
	 apco/nuf2A/UzjQlwPjSxNiLSk5RVfS5S+KbBjYFWK+QNf4gipIi6VEMEdMsqj/ObN
	 E3Vy9nrjbUWLwA3YzU4n5KsxfPds0gpiWxfyu9djjYAUlUPCn9CbK0P2aL2oynf9hk
	 rEqbC9/0T3Y+A==
Date: Wed, 12 Jun 2024 00:36:25 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] tzset: adjust for POSIX, and don't overpromise
Message-ID: <a7pxdy72bizcazfgvaavvxvzgjqmue3ja276gpjho63bisbnnm@b7xiiracxk77>
References: <20240610220013.2812749-1-eggert@cs.ucla.edu>
 <omukm4r74ityluf3cfvb3mv6z63yb6yiois4x3sddlmmrvhzgr@tp77lujszx5a>
 <775fa930-82e3-41d7-b43e-5b9061525eef@cs.ucla.edu>
 <7k3zem6o7y25szuxuxe6zmhi7xqioqe4d74s74y32yhceht2cr@lscysoj5eqoq>
 <d054fc63-6ea4-425b-94ce-14402d448ccf@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qamdiotvd5xqjyge"
Content-Disposition: inline
In-Reply-To: <d054fc63-6ea4-425b-94ce-14402d448ccf@cs.ucla.edu>


--qamdiotvd5xqjyge
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] tzset: adjust for POSIX, and don't overpromise
References: <20240610220013.2812749-1-eggert@cs.ucla.edu>
 <omukm4r74ityluf3cfvb3mv6z63yb6yiois4x3sddlmmrvhzgr@tp77lujszx5a>
 <775fa930-82e3-41d7-b43e-5b9061525eef@cs.ucla.edu>
 <7k3zem6o7y25szuxuxe6zmhi7xqioqe4d74s74y32yhceht2cr@lscysoj5eqoq>
 <d054fc63-6ea4-425b-94ce-14402d448ccf@cs.ucla.edu>
MIME-Version: 1.0
In-Reply-To: <d054fc63-6ea4-425b-94ce-14402d448ccf@cs.ucla.edu>

Hi Paul,

On Tue, Jun 11, 2024 at 08:25:35AM GMT, Paul Eggert wrote:
> On 2024-06-11 02:03, Alejandro Colomar wrote:
>=20
> > Feel free
> > to send patches to make those sections more acurate, by documenting the
> > actual first POSIX standard that documented them.
>=20
> I don't have time to do that with all the man pages, but I've done it with
> ctime.3 and tzset.3.

I appreciate that.  Thanks!

> > Of course, if a standard or system made significant changes to the
> > interface, we also document that there.  I suspect some of this 2024
> > change will have to go in HISTORY?
>=20
> I constructed another two patches to try to do that.
>=20
>=20
> > Thanks; I'll have a look.  (Hmmm, I need to make neomutt(1) inline
> > patches like mutt(1) did.  Or I'll review it with mutt(1) maybe.)
>=20
> I had forgotten that attachments are not your style. For convenience I pl=
an
> to follow up with all the patches (now 12 of them) in individual emails.

Thanks!

I've merged them all (some of them with small tweaks).

-  Use .I instead of \fI in new additions.
-  Use sentence case in commit message subject line.
-  Specify filenames as commit message prefixes.
-  The agreed POSIX version changes.
And maybe some other that I forgot about.

It'll be on the contrib branch here for around a day:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/log=
/?h=3Dcontrib>
and then I'll push it to <kernel.org>.

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--qamdiotvd5xqjyge
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZo0WgACgkQnowa+77/
2zJWmQ/7BiPpIUr78b+vc0W4z6Es6Td2cYUrWROGB1yXsqmAY1TdjLDVKYpLSyr1
6EO3apUAQdx9GIc+LKVQfnWoxUXETM1svJQsda+6jCPsaXu7RSeZnXNAwXJLW1aG
xcN5vTx/lz0IonDqada5RMEwwbu+6aMh6moclRCZjZ8lWC3QsA2KawLEkx2yPXMB
78UwmzPIWZJFNWHYt/HIIlVXIHvQQLxUt7rqgSTVzo8Cd+U7CPPrcm0WPgFSC1F1
zKJXmaSrmXStcczduoxK22xB5S8Mue73FX+Lj0l2yNTRn6gM2bIRC4QxD7PoDofw
9cY3qpdlN1sMswF/+ONWPiqtz8vmpRy72ZlG9W2nyAbxly1YiKhhB0p+dr69NDy/
wYGMV1/2+pCoky6kqyWx25O9gTkCIBU/tVy8L4CmpZTDByGHaQ2kMdDtCERH8528
J6vc/PflxqjcUphWsTIvRrhc+kpc+E6s0WSIkgwmNVRHuns0YKWu3UcUMU6nPukI
NZ0XZ9XJ/J+u1plbtbaSuHij3+uSymE+MciZdhv9cOUPDps0w3JSAtxjYGcsNqzi
FWn1PybQJwMRc6GmGL3v1f+Ymu+HzC7CtYiAwiLMXs/Pn+BfUVRvtCVt/jrF5u8c
VYiqsCM3zPgfzTAf4CbUqgnwkziSkDx+4eozaYfD8AoKSlSpcv8=
=Kqmk
-----END PGP SIGNATURE-----

--qamdiotvd5xqjyge--

