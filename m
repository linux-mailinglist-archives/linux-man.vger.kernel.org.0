Return-Path: <linux-man+bounces-363-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D350482D1D7
	for <lists+linux-man@lfdr.de>; Sun, 14 Jan 2024 19:22:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 854701C20832
	for <lists+linux-man@lfdr.de>; Sun, 14 Jan 2024 18:22:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18199F4F3;
	Sun, 14 Jan 2024 18:22:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fk0c3SWz"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C937612E5E
	for <linux-man@vger.kernel.org>; Sun, 14 Jan 2024 18:22:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18C19C433C7;
	Sun, 14 Jan 2024 18:22:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705256571;
	bh=x7poERzvuYf19T8hG8xRUntGub7X2r1Trm2dwIr7KSI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Fk0c3SWzsvZGzGTKHlgmJV0IfNG5LHxHm4a7gXII99WkUd4mwmWbIFFxTQgc5dRl+
	 h6quCqEvLAobc6UU1ESHWLaIpDeaLAUEza0QCaPMMN2Yg+OrfwRWcziNeyXg2FUwuB
	 BeO+7GH41Ewe1sa1Ih4CzoNAhB1e/SfTgfRkX8n+JO4dbEvbTAjT1QyueUe6e67m7q
	 jbXHj1nJ7dP8HvtBxl1QaRk9WRvIhs9E2CK2AeBomlfthX32LPo9VQ7XEszbxYvlE2
	 2VtsZ/InywSVAMOrxzyuo97+KnhpUJ9W2i36AqTDuFaAFCx0/pkIg7fXnXKUjyU1U1
	 INrEpqROADY3A==
Date: Sun, 14 Jan 2024 19:22:47 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>,
	Ingo Schwarze <schwarze@usta.de>
Subject: Re: [RECIPE] Pull the trigger on Mister Sed? (MR macro migration)
Message-ID: <ZaQmd0aP1XlFiAKA@debian>
References: <20240114154225.5tyuiqrgwyltqmj3@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="k/IWZQoHEs7kvdgl"
Content-Disposition: inline
In-Reply-To: <20240114154225.5tyuiqrgwyltqmj3@illithid>


--k/IWZQoHEs7kvdgl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 14 Jan 2024 19:22:47 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>,
	Ingo Schwarze <schwarze@usta.de>
Subject: Re: [RECIPE] Pull the trigger on Mister Sed? (MR macro migration)

Hi MR. sed,

On Sun, Jan 14, 2024 at 09:42:25AM -0600, G. Branden Robinson wrote:
> Hi Alex,
>=20
> All past efforts at submitting a patch for this have met with vger's
> wrath and rage--even a diffstat is too much for it tolerate.  For those
> who don't remember what this proposal is meant to achieve, here's a
> backgrounder from October[0].
>=20
> groff 1.23.0 has been out for over six months[1] and every major
> GNU/Linux distribution, plus several non-major ones, is shipping it.[2]
>=20
> I'm attaching two scripts, "MR-migrate.sh" and "MR.sed".  Drop them in
> the directory of your man-pages checkout, and run the first with a POSIX
> shell.
>=20
> The migration script doesn't just alter the pages; it also generates
> "before.txt" and "after.txt" files containing the man page contents
> rendered as (UTF-8) plain text to verify that no changes to page content
> (apart from font style change to man page cross references attendant to
> the use of a new macro, which is user-configurable[3]) occur.
>=20
> I get the following output:
> $ sh ./MR-migrate.sh
> man4/console_codes.4:324: warning: table wider than line length minus ind=
entation
> man5/proc_pid_smaps.5:88: warning: table wider than line length minus ind=
entation
> troff:man7/ascii.7:28: warning: cannot select font 'CW'
> man4/console_codes.4:324: warning: table wider than line length minus ind=
entation
> man5/proc_pid_smaps.5:88: warning: table wider than line length minus ind=
entation
> troff:man7/ascii.7:28: warning: cannot select font 'CW'
> SAME
>=20
> Thanks again to Brian Inglis for reminding me not to update externally
> generated/sourced pages (bpf-helpers and Paul Eggert's tz project).
>=20
> Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
>=20
> Regards,
> Branden
>=20
> [0] https://lore.kernel.org/linux-man/20231025185341.mqvn7qlm3iby4zgm@ill=
ithid/
> [1] https://lists.gnu.org/archive/html/info-gnu/2023-07/msg00001.html
> [2] https://repology.org/project/groff/versions
> [3] You can of course find out how in groff_man(7).


> # Handle simplest cases: ".BR foo (1)" and ".IR foo (1)".
> s/^.[BI]R \(\\%\)*\([.@_[:alnum:]\\-]\+\) (\([1-9a-z]\+\))$/.MR \2 \3/
> # Handle case: trailing punctuation, as in ".IR foo (1),".
> s/^.[BI]R \(\\%\)*\([.@_[:alnum:]\\-]\+\) (\([1-9a-z]\+\))\([^[:space:]]\=
+\)$/.MR \2 \3 \4/
> # Handle case: leading punctuation, as in ".RI ( foo (1)".
> s/^.R[BI] \(\\%\)*\([^[:space:]]\+\) \([.@_[:alnum:]\\-]\+\) (\([1-9a-z]\=
+\))\([^[:space:]]\+\)$/\\%\2\\c\n.MR \3 \4 \5/
> # Handle case: 3rd+ arguments or trailing comments.  This case is rare
> # and will require manual fixup if there are 4+ arguments to MR.  Use
> # groff -man -rCHECKSTYLE=3D1 to have them automatically reported.
> s/^.[BI]R \(\\%\)*\([.@_[:alnum:]\\-]\+\) (\([1-8a-z]\+\))\( .*\)/.MR \2 =
\3\4/

Recipe applied. =20
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dd02c2e2a15b6b9f5c35d1bef150e23cff27372d0>

It's still not in master, so if you want to tweak the commit message,
feel free to suggest an edit.  I'll push tomorrow to master.

Since groff-1.23.0 is already available in most distributions (Gentoo,
Arch, Debian Sid --and Bookworm has backported support for MR--,
Fedora 39), I think it has come the time to apply it.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--k/IWZQoHEs7kvdgl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWkJncACgkQnowa+77/
2zJp1Q/9HSM7v1GAYKEQ83jhP8lX+uePGowyZ5KKE+4C1rO0bdEOtYKHnHGhavkE
SoPmFfk/lHYcPx56PcSj/smW1taDZ45DIKJkZxu/d5l1PxOk4YGps0/Q1PJev7TP
uSXAJ/dHgapEUYWymyzpId3itrinekKrhGkd1Yed3Ams+741xct6XdQf280ZvNHW
zUf1DF2nc9rYKaxpn90Bq8O3dwD2eOqTNK/PllwcIFeO/0U5tdTnUYjiDKIJYRsD
03XTJcopAS2IapOHH1d4XCLIu3l+1fO1QQIhXdQJWFAvHTpx51F/F77sVY7PU6pa
Vm2MkEXkZkCaR5YQfE+B++KuLv3Wt8nvkfq9IgCoPchu5Q4Rxn6JSRpAIJRVqln3
9lYT4TfkX5JRgXdAAckPzp/UrM+p/D9GjycWiduRJkeWJ4AQGEd9dGohcDaGhMh2
7Ccf7cvhhSUTneFoQNfVUdqYg/cNea0aXEBJ5sH4O97qSvEgBkWLJFrcZ60iSPN3
uZk8jIXRF0VQwmaDqsdgPqJ7XU3KkGV+wt8N9J+xVdq3H1bk2DH0oRV3ViCdHqXy
fhRnlLkwnCTr3N4UMsB93AeP/vYghA8rHkRYMupSZAWH/NO2jtE9u9vd+a35kvnd
iXX8y/LCZL7YOPEfn6qs0BMG4c1VUZnP02v9KfeGBkeFVcWeMD0=
=iBXh
-----END PGP SIGNATURE-----

--k/IWZQoHEs7kvdgl--

