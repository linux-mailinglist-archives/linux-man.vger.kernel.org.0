Return-Path: <linux-man+bounces-2756-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5974EA8178B
	for <lists+linux-man@lfdr.de>; Tue,  8 Apr 2025 23:25:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3AAE81B8296C
	for <lists+linux-man@lfdr.de>; Tue,  8 Apr 2025 21:25:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EC3F2451C3;
	Tue,  8 Apr 2025 21:25:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ubjPKO5+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E05861C3314
	for <linux-man@vger.kernel.org>; Tue,  8 Apr 2025 21:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744147524; cv=none; b=DS+W1PGA+tnBaJ6mAzzGk6dtuPHfyFMGvFHXaA3MudlUeBVKeHXdeOYVs00lK+MfWmhKLqrtVzJlFm3Yr2u3CrlCdnDdcbRTm9bWcY/R/en5DZcoe9cbMttzwJIu0ZkixX1bpbGqODpI1VI/HXqPXwJdJoa1Sg7KtNPA07xrBK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744147524; c=relaxed/simple;
	bh=x4BGcVxKvv7leqx0v5LGj1QcTh99aWeUXyHHxVa7HMw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dzK4Oy/wIDMucgvhMe0z497XP7EMu550x3eyn2cWlxeFpjOqdO3AB1m+bjkZ5aCU8u7JF4/7V6ceDGTIhcvtRLobvppbRpAEISkVfFFXDC/dT7j1Qkd3eYir2DpheQuqazfmBXzyN7dMv8XVVRDHegbJKBxfkrEahSiEU1PnC60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ubjPKO5+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C658C4CEE5;
	Tue,  8 Apr 2025 21:25:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744147523;
	bh=x4BGcVxKvv7leqx0v5LGj1QcTh99aWeUXyHHxVa7HMw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ubjPKO5+tmBXuJNYfmsc/ZPDEqGyKMw+j1fKJ1va2mm501Hc6QpVFFcWCf7W5rdsC
	 5K2Lij1QV7fIMJer6I5P/cIejrFLV/0B0tOZ94qYncv2686TU2M0Q2mgaZjP1TZnVD
	 8xlJ963bx/9WVBafF0emGNxA29HttRl29LT3xJ0XhAEqhO1HIX10OOdPzct3NqfQ9r
	 MJ4FnhudAC44i339lRWu59ZsiS2WcS3F8woEpUg+7o08+72uu70xGPezJwzF2jQ6Hd
	 grFIzLl3WkhES6VAUnFnCFkEC/R67wL8eeXonngkT2wIN42HydCKEZtaW0iseMbLsJ
	 9NdpHJq0EFKLA==
Date: Tue, 8 Apr 2025 23:25:19 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Eugene Syromyatnikov <evgsyr@gmail.com>
Cc: linux-man@vger.kernel.org, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>, Amit Pinhas <amitpinhass@gmail.com>
Subject: Re: Removing in-source contribution records contributer
Message-ID: <37qabjc65x7co7f3oiibpgwtvhnigk5z7tpmmzgrjhisi4nqmz@ypx33dbbltdn>
References: <cover.1739389071.git.amitpinhass@gmail.com>
 <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
 <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <CACGkJdsEQENG1ZOQ14iueMzh4p5ywDenYp5eaN-itvrFfK+kmg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rijrp5tsdbcqdxyn"
Content-Disposition: inline
In-Reply-To: <CACGkJdsEQENG1ZOQ14iueMzh4p5ywDenYp5eaN-itvrFfK+kmg@mail.gmail.com>


--rijrp5tsdbcqdxyn
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Eugene Syromyatnikov <evgsyr@gmail.com>
Cc: linux-man@vger.kernel.org, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>, Amit Pinhas <amitpinhass@gmail.com>
Subject: Re: Removing in-source contribution records contributer
References: <cover.1739389071.git.amitpinhass@gmail.com>
 <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
 <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <CACGkJdsEQENG1ZOQ14iueMzh4p5ywDenYp5eaN-itvrFfK+kmg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACGkJdsEQENG1ZOQ14iueMzh4p5ywDenYp5eaN-itvrFfK+kmg@mail.gmail.com>

Hi Eugene,

On Tue, Apr 08, 2025 at 08:00:19PM +0200, Eugene Syromyatnikov wrote:
> > > > Every now and then, I consider if I should just remove all of those
> > > > lines, to avoid confusing people.  If anyone is interested in the
> > > > history before git(1), one can certainly look at those lines in old
> > > > versions of the pages.  Anyone reading the mailing list opposes
> > > > removing those lines?  (I'll ask again before removing anything, wi=
th
> > > > a proper subject line.)
> >
> > Okay, time has come to open this melon.  :)
>=20
> In strace, FWIW, we have the following:
>  * the copyright notice looks like "Copyright (c) <year>-<year> The
> strace developers.";

Hmmm, interesting.  And actually, it's more accurate than the usual
copyright lines.

I guess we could change the copyright lines to something like that, and
then have a CREDITS list of contributors.

Thanks for the ideas!


Have a lovely night!
Alex

>  * we have a script [1] to consistently add/update those before the relea=
se;
>  * strace(1) refers to CREDITS for the list of contributors, which is
> generated for the dist tarball by [2];
>  * dist tarball also has ChangeLog, that is generated from git history by=
 [3].
>=20
> That way, there's minimal attribution noise in the files, and some
> minimum level of attribution is done for the distribution tarball.
>=20
> [1] https://gitlab.com/strace/strace/-/blob/master/maint/update_copyright=
_years.sh
> [2] https://gitlab.com/strace/strace/-/blob/master/Makefile.am#L112
> [3] https://gitlab.com/strace/strace/-/blob/master/Makefile.am#L101
>=20
> --=20
> Eugene Syromyatnikov
> mailto:evgsyr@gmail.com
> xmpp:esyr@jabber.{ru|org}

--=20
<https://www.alejandro-colomar.es/>

--rijrp5tsdbcqdxyn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmf1lDkACgkQ64mZXMKQ
wqnRiw//bIeKQOKcZrGq+l7+QFL0D1HOR49OvZvJkJMn98v8DQ+qlWQOYeJ/9nqq
yDejF6xGl/zykQBNInwouc3x3QbkCxJxVY6t5PNtfO4ZlAMtDSPLHYBneNe1zRcY
bsaubxkqrqqZAUQW0aMNBUpkVHDPaL9KJN5/s5Qy0Q4tQKsN1j+IvoNcidxjFMoF
aeSht324nOfu9//+NzZzTFJmbrevTzxc4aiSV58P/gkT6Dr7AQUL+jM/tnJLSIzD
yryC+J5U4AJalhHpkupRISs/5kNgoNecZ2Wv5SIt4VQwaSFp3StqPbW1v7HFsrrA
7wOIwuyB2fjd9BwExnjyiLzHZmpB5c8mWatJ97Wx3NBs5xTeKdmapijIzyrfmtoH
c+5v7O1NUQgKwJg0fPFi8FjJn2rNgRxJpCxf+2FnsKM6hc5tO88BSilD2gR15okn
sN9KWYY4Gpkfv4cZ4p95/Zbfc9Ygj4EPjWhyHRSRrbexAMtZrtOMdjeI5xRDnHkY
B4MDa+jJX0Ir584bbOgy9klBYUMQE0CTtKEAkf/sILgAxCqVpwxBnXe27WtyuWbP
9hUKkK6xVc/kV+OXDjCR3pg4McpheAzPYExIBhCW3biUUZ/5oR2Tc1sBSZ6dZ+si
ImvG8zv9yq4lel012VE1FtEHaMmmbf1MNzlfHPiS8qUrYyEbnrg=
=OIf1
-----END PGP SIGNATURE-----

--rijrp5tsdbcqdxyn--

