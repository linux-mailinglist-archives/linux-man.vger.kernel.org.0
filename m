Return-Path: <linux-man+bounces-2420-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 37578A33344
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2025 00:20:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0EE137A325D
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 23:19:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF882209F53;
	Wed, 12 Feb 2025 23:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bcgO9nSs"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DED51FF1D6
	for <linux-man@vger.kernel.org>; Wed, 12 Feb 2025 23:20:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739402418; cv=none; b=S3ilTmlMU5dnRPieaGd7RLSpqFCeoIHwk7TIE8v/WTaslSzzUeEMxMnd6k5wo8qthUj83X2y2T+NPbpoEzJXl70DDX92/SuVx4iAawWkpQf8VMFynehRKzesLemOAmMq6Z9y1viNtd5mzicxXbBJ6mVX9Zjcwdi8fP5KZ05L+nU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739402418; c=relaxed/simple;
	bh=xmTXu4vao/wRYFrzAY6vps36kVCN+AYTURhgVFeqY/E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BzgmHIsbu0AHdDr8r+K+r1XdWLCnXP91IF2dlBUAjg5BSPrtBfTK/uLs6j/B229e6DnIUZPm6c06yDqSv/BKc3p8nx3yAc/GBtVNpnyfN3T93pi1ganqaGs3dOdOni74d0LZ3TT7DmkXO4s+i3GzPOA/84BBBJX4oco5lDt/oVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bcgO9nSs; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2BA1C4CEDF;
	Wed, 12 Feb 2025 23:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739402417;
	bh=xmTXu4vao/wRYFrzAY6vps36kVCN+AYTURhgVFeqY/E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bcgO9nSs1WR37WsCh/A28t9TURWFzNz0m9uVhpKt4eP4aAsfNJPrClynlbhsN3+wC
	 ZzlEasu5nNcYdrBZFwKytpp9kezTV70zDL56gQmXN0gPcyRQNYijOr2BEG47IZjvxd
	 2vdekfOa1xlsykjI2nDLASA6oMYJEVXzpJSB7MO3Khry+Xv/GOa48iDDkQn51GtC7Y
	 dlPIaXNojtsm8BsCn4Sms6I0OKttu+xeS/efWMC+2295/CZkiwgnYCbKfCJBO3iJH+
	 Q9q+GpdFkYZGSmiaRkdRUhFbZoVCTySYOzovxHXdwcnuv1EKA5NGIl5HrM4F8Luc5K
	 RUP0lN4NhgIPw==
Date: Thu, 13 Feb 2025 00:20:54 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Amit Pinhas <amitpinhass@gmail.com>
Subject: Removing in-source contribution records contributer
Message-ID: <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
References: <cover.1739389071.git.amitpinhass@gmail.com>
 <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
 <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nwb4plvphvljzvvg"
Content-Disposition: inline
In-Reply-To: <20250212230210.3kkixsk7bi3cdc4d@illithid>


--nwb4plvphvljzvvg
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Amit Pinhas <amitpinhass@gmail.com>
Subject: Removing in-source contribution records contributer
References: <cover.1739389071.git.amitpinhass@gmail.com>
 <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
 <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid>
MIME-Version: 1.0
In-Reply-To: <20250212230210.3kkixsk7bi3cdc4d@illithid>

Hi Branden,

[Subject reformed to the topic of in-source records of contribution]

On Wed, Feb 12, 2025 at 05:02:10PM -0600, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2025-02-12T21:26:20+0100, Alejandro Colomar wrote:
> [...]
> > >  .\" Modified 2004-06-24 by aeb
> > >  .\" Modified, 2004-11-30, after idea from emmanuel.colbus@ensimag.im=
ag.fr
> > > +.\" Modified 2025-02-12, after correction from <amitpinhass@gmail.co=
m>
> >=20
> > We don't update those anymore.  We now rely on the metadata in git(1).
> >=20
> > Every now and then, I consider if I should just remove all of those
> > lines, to avoid confusing people.  If anyone is interested in the
> > history before git(1), one can certainly look at those lines in old
> > versions of the pages.  Anyone reading the mailing list opposes
> > removing those lines?  (I'll ask again before removing anything, with
> > a proper subject line.)

Okay, time has come to open this melon.  :)

> If you do this, I suggest you replace these lines with something like:
>=20
> .\" See the Git revision history at
> .\"   $URL
> .\" for records of changes and contributors to this file.

Good idea.

> That way (1) anyone diffing old and new versions don't see what looks
> like an unmotivated erasure of contributor credits; (2) people who
> have contributed and been credited don't feel as much of a sting, since
> they know records continue to be kept in a publicly available (and
> replicated, distributed place) and (3) future contributors know that
> they can expect to be treated equitably with past ones.

How about something like this?

	diff --git i/man/man2/mount.2 w/man/man2/mount.2
	index 178d59b52..f65c3947f 100644
	--- i/man/man2/mount.2
	+++ w/man/man2/mount.2
	@@ -4,18 +4,8 @@
	 .\"
	 .\" SPDX-License-Identifier: Linux-man-pages-copyleft
	 .\"
	-.\" Modified 1996-11-04 by Eric S. Raymond <esr@thyrsus.com>
	-.\" Modified 2001-10-13 by Michael Kerrisk <mtk.manpages@gmail.com>
	-.\"    Added note on historical behavior of MS_NOSUID
	-.\" Modified 2002-05-16 by Michael Kerrisk <mtk.manpages@gmail.com>
	-.\"    Extensive changes and additions
	-.\" Modified 2002-05-27 by aeb
	-.\" Modified 2002-06-11 by Michael Kerrisk <mtk.manpages@gmail.com>
	-.\"    Enhanced descriptions of MS_MOVE, MS_BIND, and MS_REMOUNT
	-.\" Modified 2004-06-17 by Michael Kerrisk <mtk.manpages@gmail.com>
	-.\" 2005-05-18, mtk, Added MNT_EXPIRE, plus a few other tidy-ups.
	-.\" 2008-10-06, mtk: move umount*() material into separate umount.2 page.
	-.\" 2008-10-06, mtk: Add discussion of namespaces.
	+.\" See git(1) commit man-pages-6.11^ (2025-02-13, "Remove in-source cont=
ribution records")
	+.\" for old records of changes to this file.
	 .\"
	 .TH mount 2 (date) "Linux man-pages (unreleased)"
	 .SH NAME

I would of course make sure to commit this right before the release, to
make sure I don't invalidate the reference.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--nwb4plvphvljzvvg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmetLMoACgkQnowa+77/
2zJo2xAApdqHK8rbn4uea861ypK60Ge8HMKNXFh2tzRSHZ9ZIwIhHFqudLlRuZpw
v+5jS/XrRBuVzn0pMEh68LnJB9io8s+2HCm5m6kul/O6iiVCdlmlTLPBj4zMfxy+
su3974v1DBIOkqWwE657qkPBylrOTkd7zUxJhUIEUrqZUU2B1+VB18NM+WFUfK9M
++5jVpBd/qayhb+gx0ub8VqrawWa3vNd//lGDOmsEHwSh3E9+PSBjJQLxw9pHE1a
hROiyDhNtRp+GIA+ih2GhkUUma+EXuREET4wWvTAahadzjB4lApCsFUTg4Wyd38h
EsoSq1PbxlkAxuAESU3Yv0S32L04wVrBcjPi+izJ5NJkxYHFpMili2JyxthrwThH
R0QyVeIoZgTSJkeW24dBdtRzAxg49tMjSI+4P5NF4fXVaK8WefJ7BOnzD6DJqJST
UNgYHyW3GQT546GYM9aNst9g1QzV1LlY6K6z/Pq6MM/MDaVH/NcO1mVSOQ0G9BZ/
w78RPaeRV6flHpiMm+GwEfo4ouaREccd6uNm9v5qhGj6bQwauE0e3Rph5EXYJXZO
uNlKdv0DK53vlJl+nKXj7Ji5Vmt198PGzSbU+EOkHlMk82562uiiRrvE1Sw7q4Qn
NUcBp7dso2YeEpQAQqS56lunCOlXSi4/hK04CnMpZxZrib6xlsU=
=Y+y2
-----END PGP SIGNATURE-----

--nwb4plvphvljzvvg--

