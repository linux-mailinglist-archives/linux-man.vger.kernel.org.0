Return-Path: <linux-man+bounces-751-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C74BD8A4252
	for <lists+linux-man@lfdr.de>; Sun, 14 Apr 2024 14:43:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3A556281594
	for <lists+linux-man@lfdr.de>; Sun, 14 Apr 2024 12:42:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D03CB1E53A;
	Sun, 14 Apr 2024 12:42:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KSkwJbr3"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90DDA1DFE4
	for <linux-man@vger.kernel.org>; Sun, 14 Apr 2024 12:42:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713098575; cv=none; b=icCM8bIJuFIA1IPXsdjmnrVvBa5AO9VV5JnPXOQ43jW9qAjCwHFMADqgh0GELEVvxs925km+xZFWdiNpaHBmxTm0zbNWUXXu6eZ/OaSSqCZdR0I591uN+pJOE1KKPGRZ/eHSkhsds5Qv4+7Pm2vYkDJpy8tdewwOmwKh8tQCHIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713098575; c=relaxed/simple;
	bh=Q2B+giiiR+dpF+eQOkEiJxItF+0DG1sYJwcbnOWtcvg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Js0fFEg4sEQGBbwu+Cke+2bigIOqMkgt0iGG/jh2nEy1jnUOgwxcyY4oMohLIXV4F1krwfTt9H00iHRAe7xkAKFlmoVYcqjkovGELgGPbAYWt73pFhvlLR3wZRU6U/k/fx4w8YmSTeFVOPABhCwL/3yFnTdP4D4mggfto53zNOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KSkwJbr3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4DD4EC072AA;
	Sun, 14 Apr 2024 12:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713098575;
	bh=Q2B+giiiR+dpF+eQOkEiJxItF+0DG1sYJwcbnOWtcvg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KSkwJbr3GTwuZN42y5PY+ZdKCF8CMr2BEZYpfPq9v7/NQ4tunHFwfaWqEL8bgayZ+
	 xuHgxVUFQBk/FB586EcojrHn/gktCJaF4G1/Zi9j545Ch8qGzZvX3+x8kYMK7VPotS
	 RYNgW3WZVmC3o1nAV9fbSGE04BOI6MZ6OKeaYmmm9L9WKsv+DyLzD+4kmqAJ+sImfS
	 35IEwdj5nAZ4S95lfy5KghBOikAPHiQPTP6/W+0ux2eCgNPOlkx8cGzvEgOraW7qaa
	 Dlb1jYinRCBZJi9BEJqn+LeLu8r7dxm+L/LBZ+s4pqkMLv8EU06WMwm0aVBXU/ML/2
	 4sCYlCa0K2kJg==
Date: Sun, 14 Apr 2024 14:42:51 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Deri James <deri@chuzzlewit.myzen.co.uk>, linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book
Message-ID: <ZhvPTME5eU13GlBI@debian>
References: <Zhu_-FE5sl3vSu1w@debian>
 <20240414115743.mzzwr2bd3j7lw46e@illithid>
 <ZhvM2Yy6lWGJLhtg@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sbk00q871LkraySW"
Content-Disposition: inline
In-Reply-To: <ZhvM2Yy6lWGJLhtg@debian>


--sbk00q871LkraySW
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 14 Apr 2024 14:42:51 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Deri James <deri@chuzzlewit.myzen.co.uk>, linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book

On Sun, Apr 14, 2024 at 02:32:25PM +0200, Alejandro Colomar wrote:
> Hi Branden,
>=20
> On Sun, Apr 14, 2024 at 06:57:43AM -0500, G. Branden Robinson wrote:
> > At 2024-04-14T13:37:15+0200, Alejandro Colomar wrote:
> > > There's also the page issue.  Now it seems to reset the page number f=
or
> > > every TH.
> >=20
> > This might be a simple issue.  Make sure that you're passing groff (or
> > troff) an option to set the `C` register to a true value.
> >=20
> > groff_man(7):
> >      -rC1     Number output pages consecutively, in strictly increasing
> >               sequence, rather than resetting the page number to 1 (or
> >               the value of register P) with each new man document.
>=20
> Hmmmm.  Maybe I should follow v7's tradition and restart the page number
> at each TH.  Let's call it an accidental improvement, and not a
> regression.  :)
>=20
> Although it would be interesting to learn when/why this changed.

It seems to have been here:

$ git show 6d87a75a6df0 -- scripts/LinuxManBook/build.sh;
commit 6d87a75a6df0696e780255d865bf65da09f36f01
Author: Alejandro Colomar <alx@kernel.org>
Date:   Fri Dec 1 00:55:11 2023 +0100

    scripts/LinuxManBook/: Simplify pipeline
   =20
    Call the groff(1) pipeline only once.  This optimizes around 2 seconds,
    while also simplifying the code.
   =20
    This change was originally written by Deri, with some parts written by
    Brian.  I took the script that Deri sent, and split it so that the
    groff(1) pipeline is called from the shell script, and the Perl script
    is limited to editing the man(7) pages.  This helps me understand the
    process, since my understanding of Perl is very limited.  It also makes
    this change smaller, so that it's less of a big-bang.
   =20
    Link: <https://lore.kernel.org/linux-man/ZWkO4qPC4BxkwBNm@debian/T/#m3d=
453440b02dd189bc12d2e629c4026206025b40>
    Co-developed-by: Deri James <deri@chuzzlewit.myzen.co.uk>
    Co-developed-by: Brian Inglis <Brian.Inglis@Shaw.ca>
    Signed-off-by: Alejandro Colomar <alx@kernel.org>

diff --git a/scripts/LinuxManBook/build.sh b/scripts/LinuxManBook/build.sh
index a6e578f64..8e373c073 100755
--- a/scripts/LinuxManBook/build.sh
+++ b/scripts/LinuxManBook/build.sh
@@ -3,25 +3,13 @@
 # SPDX-License-Identifier: GPL-3.0-or-later
=20
 (
-       "$(dirname "$0")"/prepare.pl "$1" \
-       | preconv \
-       | pic \
-       | tbl \
-       | eqn -Tpdf \
-       | troff -Tpdf -dPDF.EXPORT=3D1 -dLABEL.REFS=3D1 -dpaper=3Da4 \
-               -M"$(dirname "$0")" -mandoc -manmark -rC1 -rCHECKSTYLE=3D3 \
-               2>&1 >/dev/null \
-       | LC_ALL=3DC grep '^\. *ds ';
-
+       cat "$(dirname "$0")"/LMBfront.roff;
+       cat "$(dirname "$0")"/an.tmac;
        "$(dirname "$0")"/prepare.pl "$1";
 ) \
 | preconv \
 | pic \
 | tbl \
 | eqn -Tpdf \
-| (
-       troff -Tpdf -ms <"$(dirname "$0")"/LMBfront.ms;
-       troff -Tpdf -M"$(dirname "$0")" -mandoc -manmark \
-               -F"$(dirname "$0")" -dpaper=3Da4;
-) \
+| troff -Tpdf -F"$(dirname "$0")" -dpaper=3Da4 \
 | gropdf -F"$(dirname "$0")" -pa4;

--=20
<https://www.alejandro-colomar.es/>

--sbk00q871LkraySW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYbz0sACgkQnowa+77/
2zJUow//d6rPZ5odyYYgjVDZWIkoG7iFAYHuNf08cvjWrMLmBlEfSUZWigk4ZSeN
VT9jH5vJK8z9M2qG2kbKhT6sgJ0+uLkxWhtmnZbgpLdSoggAEu7YGt1h44Kan4fl
pSXBj1xHExksQJ5iWgtpifkqIN3NejZgvtu/xMc38NZU1UbvR6Pih6sGftm/4UHa
w6uQWME9nrPk4RDATir00Q5t2dtW4vP+X4GdRWsl08SJhWOWiraKCfiIbPyzaz3X
UBSJINJz79G8KoItLORbnTbe7DTJM0Opa5g7Nx3PQH5f8cWm890JfMUwcY5wk7c7
8IOSCBaEVDYX1RlmwfTz3zvuAXUcS/gEzRrbjsFJlExUUBCVzI9oL/vu6UCe99+S
VVMHWC9/deJdeI5JZ926JC/9CwbuevPsVGasHLxP/XUbKmjxopPDZEJB/AOdi/bm
CpfdnEaIhs5/GgGwiOfSn1IEbwXo5VN2vTfY6q2QfIDeg1Tj17wK4vjBZGdOTh5B
3nZSgWeL6JhNfSkNpuvQEix3E6DyP+Wu/2CyFMCem64dRA3NzNOXWMRXVu11tH9Q
V3EF2NCQa/ZT+BSF/NFm5DGDQvFZ8qQO6BI25rzdZyarhGuS7IeRRerzJ/Av2zsd
nC8eAekDqZrBDMwCQPzo1ckki9PNouUYcJNECrQcX3Szr2Se7Iw=
=W3Th
-----END PGP SIGNATURE-----

--sbk00q871LkraySW--

