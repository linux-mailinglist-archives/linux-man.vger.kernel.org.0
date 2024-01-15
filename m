Return-Path: <linux-man+bounces-365-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 20BD082D2A5
	for <lists+linux-man@lfdr.de>; Mon, 15 Jan 2024 01:12:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BF8041C2092B
	for <lists+linux-man@lfdr.de>; Mon, 15 Jan 2024 00:11:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E0C3188;
	Mon, 15 Jan 2024 00:11:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bNv6R5XW"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A5C160
	for <linux-man@vger.kernel.org>; Mon, 15 Jan 2024 00:11:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 402F7C433C7;
	Mon, 15 Jan 2024 00:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705277515;
	bh=Yqd/yZ1FXfiKKUqVhbMt1rCf/+3R87LAz/hZOgNNL+A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bNv6R5XWWY6HGZ9PJQwg7MaJfH9rbmtAeWsrp7rTi4554/IkdeJCLDq2VrgYSivwn
	 +C/4Xm1VPYZQAxQWzhKJRIXKEVCD56yQUDfpFb6eBpDuJdGf96dx3YT+/AwiJS8opo
	 qb+K7lW+kOf6otrRGgqo+AMSFIUabM0G4ugDz2hrSYs2Vyy0g0R0SXTf1rFfxgXFKv
	 Nc7409EX8sm2qYOqOuLeA/rSrOa9bwjW2c9GrrnaMm/o5GR+dkI4xN9URgtAhJ4lmQ
	 VqwsLbsXSr3tio9ObN3pyp0lacfJ+zjCzNAWE8eraMYSDgQmeBcDGVrJ0RhSKVEMzj
	 9mdTyXhb449hQ==
Date: Mon, 15 Jan 2024 01:11:51 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	Deri James <deri@chuzzlewit.myzen.co.uk>,
	"@debian"@web.codeaurora.org
Cc: linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>,
	Ingo Schwarze <schwarze@usta.de>
Subject: Re: [RECIPE] Pull the trigger on Mister Sed? (MR macro migration)
Message-ID: <ZaR4Rz9ardad3Ghf@debian>
References: <20240114154225.5tyuiqrgwyltqmj3@illithid>
 <ZaQmd0aP1XlFiAKA@debian>
 <ZaR4BqahP7QNVxMe@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PWpOgVME5G8zz7lU"
Content-Disposition: inline
In-Reply-To: <ZaR4BqahP7QNVxMe@debian>


--PWpOgVME5G8zz7lU
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jan 2024 01:11:51 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	Deri James <deri@chuzzlewit.myzen.co.uk>, \@debian
Cc: linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>,
	Ingo Schwarze <schwarze@usta.de>
Subject: Re: [RECIPE] Pull the trigger on Mister Sed? (MR macro migration)

On Mon, Jan 15, 2024 at 01:10:45AM +0100, Alejandro Colomar wrote:
> Hi Branden,
>=20
> On Sun, Jan 14, 2024 at 07:22:47PM +0100, Alejandro Colomar wrote:
> > Hi MR. sed,
> >=20
> > On Sun, Jan 14, 2024 at 09:42:25AM -0600, G. Branden Robinson wrote:
> ...
> > > I'm attaching two scripts, "MR-migrate.sh" and "MR.sed".  Drop them in
> > > the directory of your man-pages checkout, and run the first with a PO=
SIX
> > > shell.
> ...
> > > Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> > >=20
> > > Regards,
> > > Branden
> > >=20
> > > [0] https://lore.kernel.org/linux-man/20231025185341.mqvn7qlm3iby4zgm=
@illithid/
> > > [1] https://lists.gnu.org/archive/html/info-gnu/2023-07/msg00001.html
> > > [2] https://repology.org/project/groff/versions
> > > [3] You can of course find out how in groff_man(7).
> >=20
> >=20
> > > # Handle simplest cases: ".BR foo (1)" and ".IR foo (1)".
> > > s/^.[BI]R \(\\%\)*\([.@_[:alnum:]\\-]\+\) (\([1-9a-z]\+\))$/.MR \2 \3/
> > > # Handle case: trailing punctuation, as in ".IR foo (1),".
> > > s/^.[BI]R \(\\%\)*\([.@_[:alnum:]\\-]\+\) (\([1-9a-z]\+\))\([^[:space=
:]]\+\)$/.MR \2 \3 \4/
> > > # Handle case: leading punctuation, as in ".RI ( foo (1)".
> > > s/^.R[BI] \(\\%\)*\([^[:space:]]\+\) \([.@_[:alnum:]\\-]\+\) (\([1-9a=
-z]\+\))\([^[:space:]]\+\)$/\\%\2\\c\n.MR \3 \4 \5/
> > > # Handle case: 3rd+ arguments or trailing comments.  This case is rare
> > > # and will require manual fixup if there are 4+ arguments to MR.  Use
> > > # groff -man -rCHECKSTYLE=3D1 to have them automatically reported.
> > > s/^.[BI]R \(\\%\)*\([.@_[:alnum:]\\-]\+\) (\([1-8a-z]\+\))\( .*\)/.MR=
 \2 \3\4/
> >=20
> > Recipe applied. =20
> > <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git=
/commit/?h=3Dcontrib&id=3Dd02c2e2a15b6b9f5c35d1bef150e23cff27372d0>
>=20
> I was checking the book script from Deri (Deri, could you simplify the

(Forgot to send to Deri.)

> script now that we use MR?  So dropping support for old BR?), and
> noticed about syscalls.2, which has man-page references inside a tbl.
>=20
> That hasn't been migrated by the script.  I guess you'd want to also
> migrate those, right, Branden?
>=20
> Have a lovely night,,
> Alex
>=20
> > It's still not in master, so if you want to tweak the commit message,
> > feel free to suggest an edit.  I'll push tomorrow to master.
>=20
> BTW, I've amended now the author, which I forgot.
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/c=
ommit/?h=3Dcontrib>

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--PWpOgVME5G8zz7lU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWkeEcACgkQnowa+77/
2zKwWQ/+MLhhxYo7QXqqdG4pnBW8mbt8rRHlIkupIDvSMTKDSgRD0XZu9darAuCv
UgT+MLoPV4XUq+v8J1phDzdyl8fXmw8I5acPHUboeP8LLRzI+cWsUYdbn/Ada/BZ
a2OMruAZax8mV6TEHPe8/c9iveLsBZoRVAUPS5Vmkmy/OmVcA9K6UWdtk9fHuyzd
5QfHuxlxqoHnvt1+zUy0Mco/OkD62N+9ewSHH6ujn0++gjCqN7p6sJ6G9y8HJ6sl
kBZaU/th9Gt0HWdPEcEc1wd8WRpKBykn0uaYJXU6DXiSR/UrtBs2nHfY7YwujIom
rnC/nVrRdlQampDo31matSeE87Na7nyOHOvx8Ytaw59T81X/HA1K05zPiOKC/gBA
kZahSYXMlA2sXXCSPHu2pXvQJrdKzVGy3G/uu6awECeDsgbvy/wpTQZPRj7kdR2a
uQqjUbf0KKuqbanBHlKIpnga8VSZnFRuWZADEkj6Z5jzklQmMDB2IyE/y6HIjXXD
b6xQA94RZ545kUsPzR6hX92j4VRpx5zxg8PFJy/WtLI728T0UmRPjhH7kio3tPnK
9gn0GFFR0m6kA+cBYLwfItuKGiK3ahMwiFRB/h6kd0HPc/A9JzWc2fWIXIJoNUFj
Qfkxzou84cgrrzd00feRpgpWCWMzmv21GxWwaenKyt57OTcPMp4=
=OkDG
-----END PGP SIGNATURE-----

--PWpOgVME5G8zz7lU--

