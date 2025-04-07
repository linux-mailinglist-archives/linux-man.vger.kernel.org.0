Return-Path: <linux-man+bounces-2751-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B4DA7F0AB
	for <lists+linux-man@lfdr.de>; Tue,  8 Apr 2025 01:05:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 463D03ACD44
	for <lists+linux-man@lfdr.de>; Mon,  7 Apr 2025 23:04:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4733220966B;
	Mon,  7 Apr 2025 23:05:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="if6YFlTL"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0710B22333A
	for <linux-man@vger.kernel.org>; Mon,  7 Apr 2025 23:05:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744067106; cv=none; b=r8IG9OI0aeL1R/6DImWNvAyS4NgGXmtJaBjiD0Zzy+9iIXeS0oh1krGaiQrAjLlJFG8hvm4aEns6QaTiGWFibUHu20k+MrsgRPDEIzIcu1DJ4A/gQD4LeU96kjCp6i0YnjHHCgOuRFX7a7bXJjoZk6x2jq3GQsirSiVMt4io7fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744067106; c=relaxed/simple;
	bh=TZhg+IVcRvr8EeVT6yp6YdMjNBBjiJPp0bjkzYJ+cZ8=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QUvmOSt/mMcJqbcfv50CRshMgoWf71eAqYVBJ5SdFi+b1G8UWz1I0xG9dpxgBRWoLlrh5820huRHccqEVnKV5fA1tTvjKKMiILs3MISF/X3jHYY2UIzUmfv8WKCZ+7Sk8vfw0Yyn7b+VgensaU3AWR0DvqDZb06NWU47BJHjVyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=if6YFlTL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CCD7CC4CEDD;
	Mon,  7 Apr 2025 23:05:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744067105;
	bh=TZhg+IVcRvr8EeVT6yp6YdMjNBBjiJPp0bjkzYJ+cZ8=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=if6YFlTLD4gU9GctanR81PMe3Zi0lBIkIfnT2Kg9CLh8kOQuYrL6dWOIlvQ8f8+65
	 mTfxgJc5AqeOi3dd4P7vnkR1P2ZMaWMiiTA0BFeTJNQITPO5g/eLwVSgOThN3Qp0/5
	 wO8YntxSsvUrf3/4mnyCcU89+8c/rXLOdQhxkDQKCs7lvM+NSvRW5gO40lr/FlP9+n
	 ajmtVPw5mRlxI9qRvcLKEKbMDQaQp8pugWlaQyGnE/vlT7i5TbU6PAyv1ceHqP2EX1
	 Nbvuv3Vo8Q4OaVIlBATqyLP99793XtFFgAOU2wGOrZVkPEczFovHsHfPG9F3VgkqKg
	 EZKKZXqc3OE1A==
Date: Tue, 8 Apr 2025 01:05:02 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Removing in-source contribution records contributer
Message-ID: <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
References: <cover.1739389071.git.amitpinhass@gmail.com>
 <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
 <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wziklwqc4ys65aix"
Content-Disposition: inline
In-Reply-To: <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>


--wziklwqc4ys65aix
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Removing in-source contribution records contributer
References: <cover.1739389071.git.amitpinhass@gmail.com>
 <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
 <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
MIME-Version: 1.0
In-Reply-To: <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>

[CC -=3D Amit]

Hi Branden,

On Thu, Feb 13, 2025 at 12:20:58AM +0100, Alejandro Colomar wrote:
> On Wed, Feb 12, 2025 at 05:02:10PM -0600, G. Branden Robinson wrote:
> > At 2025-02-12T21:26:20+0100, Alejandro Colomar wrote:
> > [...]
> > > >  .\" Modified 2004-06-24 by aeb
> > > >  .\" Modified, 2004-11-30, after idea from emmanuel.colbus@ensimag.=
imag.fr
> > > > +.\" Modified 2025-02-12, after correction from <amitpinhass@gmail.=
com>
> > >=20
> > > We don't update those anymore.  We now rely on the metadata in git(1).
> > >=20
> > > Every now and then, I consider if I should just remove all of those
> > > lines, to avoid confusing people.  If anyone is interested in the
> > > history before git(1), one can certainly look at those lines in old
> > > versions of the pages.  Anyone reading the mailing list opposes
> > > removing those lines?  (I'll ask again before removing anything, with
> > > a proper subject line.)
>=20
> Okay, time has come to open this melon.  :)
>=20
> > If you do this, I suggest you replace these lines with something like:
> >=20
> > .\" See the Git revision history at
> > .\"   $URL
> > .\" for records of changes and contributors to this file.
>=20
> Good idea.

I'm thinking I won't do that.  I don't want to add that overhead to each
page.  People interested in the history of a page will already have a
look at the git history, and there they'll find the old states of a
page, in which they'll find this information.

And it would require some non-trivial work to add this note
consistently.  I'll go with a removal without replacement, I think.

I have the commit already pushed to my git development branch:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dc64b27120c90aad00f6e698bdf758f11196d97ac>


Have a lovely night!
Alex

> > That way (1) anyone diffing old and new versions don't see what looks
> > like an unmotivated erasure of contributor credits; (2) people who
> > have contributed and been credited don't feel as much of a sting, since
> > they know records continue to be kept in a publicly available (and
> > replicated, distributed place) and (3) future contributors know that
> > they can expect to be treated equitably with past ones.
>=20
> How about something like this?
>=20
> 	diff --git i/man/man2/mount.2 w/man/man2/mount.2
> 	index 178d59b52..f65c3947f 100644
> 	--- i/man/man2/mount.2
> 	+++ w/man/man2/mount.2
> 	@@ -4,18 +4,8 @@
> 	 .\"
> 	 .\" SPDX-License-Identifier: Linux-man-pages-copyleft
> 	 .\"
> 	-.\" Modified 1996-11-04 by Eric S. Raymond <esr@thyrsus.com>
> 	-.\" Modified 2001-10-13 by Michael Kerrisk <mtk.manpages@gmail.com>
> 	-.\"    Added note on historical behavior of MS_NOSUID
> 	-.\" Modified 2002-05-16 by Michael Kerrisk <mtk.manpages@gmail.com>
> 	-.\"    Extensive changes and additions
> 	-.\" Modified 2002-05-27 by aeb
> 	-.\" Modified 2002-06-11 by Michael Kerrisk <mtk.manpages@gmail.com>
> 	-.\"    Enhanced descriptions of MS_MOVE, MS_BIND, and MS_REMOUNT
> 	-.\" Modified 2004-06-17 by Michael Kerrisk <mtk.manpages@gmail.com>
> 	-.\" 2005-05-18, mtk, Added MNT_EXPIRE, plus a few other tidy-ups.
> 	-.\" 2008-10-06, mtk: move umount*() material into separate umount.2 pag=
e.
> 	-.\" 2008-10-06, mtk: Add discussion of namespaces.
> 	+.\" See git(1) commit man-pages-6.11^ (2025-02-13, "Remove in-source co=
ntribution records")
> 	+.\" for old records of changes to this file.
> 	 .\"
> 	 .TH mount 2 (date) "Linux man-pages (unreleased)"
> 	 .SH NAME
>=20
> I would of course make sure to commit this right before the release, to
> make sure I don't invalidate the reference.
>=20
>=20
> Have a lovely night!
> Alex
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--wziklwqc4ys65aix
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmf0Wh4ACgkQ64mZXMKQ
wqkg1BAAtShmSsyOMVwMKgpRGo71zPKzaQUIYEi34l7f5krGOmnIPlk9e8ekNnba
bbfKlWfutc1NISOjpK3qiuHD5WDKhHdBgTmzSqlOfApJNawu5PuFJOL2UxzoXGQF
cKVcvfAnQ6h09oGXmQyt6WvHceaNEoTdaPuQ4a/f+M9Ke0PcwkFqc3Sd748Abf0C
TRH8RzSgTzJ5F8/liwrWom5m6Tbcz5NqwJfEaB6tZKvfvr8/qrtfmiOvFWntNE08
T+mprmyhT6yiclmeTLyjHJxkVexi84f/FJ3/i6mFFTYjhnyUzbjMnJjqyyAXYzNx
IdB+IeOP6g452HRati4tv71DYAuPVcgAfpQkAxT7Vpb3jqWHarm0qnkiutX1XW1W
APFb4GUR1zssboDquJoKGcNg5U0CFKNJL2OeD4+ZgItShZyHJrrzSN9uV303ejLQ
pUitt4Sirzhfb2ryR3icQzpZFXmnxC7Yo/r7O4dCMBFGiWQX460n1DRp6Kq1YcA2
ACc3H4V6b85GIqstRoW3tOOgGJwQV6YQDG9iE9pTrnLDWPP5pCOQIdNypfYdn3DG
yERGYcpaE866LzY99ql2Ax90oXWSlWBJx7DJ2PJrxhJZf2DlQLYK25+07dyYx7Rk
ZV8P+BY3SBKAliByrDZ2VgU3V/ImVdTfZpDZ/EX11wEw7c5YZtM=
=KBh1
-----END PGP SIGNATURE-----

--wziklwqc4ys65aix--

