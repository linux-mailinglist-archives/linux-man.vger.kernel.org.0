Return-Path: <linux-man+bounces-1549-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE7E93E149
	for <lists+linux-man@lfdr.de>; Sun, 28 Jul 2024 00:10:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D490CB212FE
	for <lists+linux-man@lfdr.de>; Sat, 27 Jul 2024 22:10:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05BD539FD8;
	Sat, 27 Jul 2024 22:10:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZ3vU501"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF4482D058
	for <linux-man@vger.kernel.org>; Sat, 27 Jul 2024 22:10:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722118210; cv=none; b=LraGqpJ+hlMydSdBT0MdX/RXqohp8x87fu0O7lqc3+VRJWqTwTy9gWbedAXgHvwOT4g/RuqBowIokkBG2r1eE5+M1M5DYP43Zs8wOP9hvLF96iaVGnIEhakQOQ6oJe3jZPenOAmUJQm86z57vlE+omQi+NyTMdb0Sm4Iw3njK+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722118210; c=relaxed/simple;
	bh=vcf/esEIvd52cZhS7K8F3a/yFi0xqBE+73szTtDUMXo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NjYHiUrnr1DAW0dWsDjlPtxTgV65L5tMlbfoVNBhdvky8S/yGEGOYIer4d3yo90c6421C5gQ+kY3QgSx5zFTimL9tqC/7R+YEZlmdwnPrP5HV0aqwDDyOuQZusud5nrhL2wZxjmrpK24sHojNK3D/oror1egolSIPQ9Z5GSqfSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZ3vU501; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CEB2C32781;
	Sat, 27 Jul 2024 22:10:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722118210;
	bh=vcf/esEIvd52cZhS7K8F3a/yFi0xqBE+73szTtDUMXo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IZ3vU501tmzXVkwXniqnVGs5aZxAHGXHN3ya8XbCfeQawpmtJHNizCHS/ZWHKeI0K
	 nkAHPqHJ3RuGH2caEZSMz4ExaUH2pNti5wVFotFlA86siR6ZTDGFedaGKSA4E+i2wh
	 uyEUuyP9gq7yxqppuWHujQXXlH+Nikb7XiTlb2iISs3hspOaE9OVjxlxltgvhGv564
	 tX8FrZfqvnPPpQ4z9KQpnHZRlqFhsPhM6sTGGOQ+C+Cs/VsSE/kqTEIQQpJJ5Fw1YQ
	 2MY78W9V8+DWY3JcZivxzcCt96QIgRAscvHxL3pzgiEzZVbxqSVdLIJlnuJ8HdRKxq
	 H8v5QtWiyV1Ug==
Date: Sun, 28 Jul 2024 00:10:07 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 0/3] man/man2/syscalls.2: srcfix (0/3)
Message-ID: <wosg7o3wuxbzk4xpd6itlvencdgh525bzf3nix4syaa5yun2fh@oyxz5arcdbmu>
References: <20240727192727.ldyru77nzhq56r6r@illithid>
 <c4qi75zodfn6dxffy5nvqpqj6uagjeuzq6vsnis5q2lam4eyfj@45vgiyz3wlrn>
 <20240727210927.d3iiwpbvkvtp2mzs@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lflkscuolargcdu6"
Content-Disposition: inline
In-Reply-To: <20240727210927.d3iiwpbvkvtp2mzs@illithid>


--lflkscuolargcdu6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 0/3] man/man2/syscalls.2: srcfix (0/3)
References: <20240727192727.ldyru77nzhq56r6r@illithid>
 <c4qi75zodfn6dxffy5nvqpqj6uagjeuzq6vsnis5q2lam4eyfj@45vgiyz3wlrn>
 <20240727210927.d3iiwpbvkvtp2mzs@illithid>
MIME-Version: 1.0
In-Reply-To: <20240727210927.d3iiwpbvkvtp2mzs@illithid>

Hi Branden,

On Sat, Jul 27, 2024 at 04:09:27PM GMT, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2024-07-27T22:30:54+0200, Alejandro Colomar wrote:
> > Do these changes only apply to syscalls(2)?
>=20
> Yes.
>=20
> > No other page has anything like that?
>=20
> Yes, there are other pages with something like that.
>=20
> man/man3/stdio.3
> man/man7/namespaces.7
> man/man7/signal-safety.7
> man/man7/signal.7
> man/man7/suffixes.7
>=20
> I have a script that pattern-matches macro-style man page cross
> references and font-style cross references.[1]
>=20
> Here are the counts for man-pages master:
>=20
> $ wc -l macro.MR stragglers.MR
>  16193 macro.MR
>    892 stragglers.MR
>  17085 total
>=20
> After this patch set:
>=20
>  16696 macro.MR
>    389 stragglers.MR
>  17085 total

Hmmm, sounds good.  I'll apply this set.

>=20
> This series is not a total solution, but it takes a bite out of the
> problem.  Further, I think I've finally got a reliable stack of sed
> scripts and a procedure that shows my work and is easy to use, so other
> tables with font-based cross references in them should migrate with
> greater ease.
>=20
> > BTW, I prefer if the patches from a set are replies to the cover
> > letter.  :)
>=20
> That's difficult for me because I generate the series _first_.[2]

That's usual.  Generating them _after_ would be weird.  :)

>  At
> that time I do not know what the MUA will construct for a Message-ID for
> item 0 in the series.  Do you have a suggestion?

Yup.

>=20
> Regards,
> Branden
>=20
> [1] $ cat find-MR-migrators.sh
> > macro.MR
> > stragglers.MR
> # Deliberately non-migrating: tzfile.5, zdump.8, zic.8
> git grep -n '^\.[BI]R \(\\%\)*\([.@_[:alnum:]\\-]\+\) (\([1-9a-z]\+\))' >=
> macro.MR
> # 1 false positive: _syscall.2
> git grep -n '^\.R[BI] [^ ]\+ [A-Za-z0-9_]\+.*(.*[1-9].*)' >> macro.MR
> git grep -n '\\f[BI]\(\\%\)*\([.@_[:alnum:]\\-]\+\)\\fP(\([1-9a-z]\+\))' =
>> stragglers.MR
>=20
> [2] $ cat ~/bin/man-pages-format-patch
> #!/bin/sh
>=20
> mbox=3D"$HOME/Mail/Drafts/messages"
>=20
> if [ $# -lt 1 ]
> then
>     echo "usage: $0 BEGIN..END" >&2
>     exit 2
> fi
>=20
> git format-patch --to=3D'Alejandro Colomar <alx@kernel.org>' \
>     --cc=3D'linux-man@vger.kernel.org' --stdout "$@" \
>     >> $HOME/Mail/Drafts/messages

Regarding --to and --cc:

	As described in <man-pages.git/CONTRIBUTING.d/git>:

	   git-format-patch(1)
	       Send patches to the right addresses.

		   $ git config --local format.to 'Alejandro Colomar <alx@kernel.org>';
		   $ git config --local format.cc '<linux-man@vger.kernel.org>';

	The above will remove the need for specifying --to and --cc
	every time.

About --stdout and $HOME/Mail/Drafts/messages:

	I prefer to use ./.patches/, and store one file per patch.
	I have the following in my <~/.config/git/gitignore>:

		# Store patches here:
		/.patches/

	So, I usually generate patches as

		$ git format-patch -o .patches/ master..HEAD -v1 \
			--range-diff=3Dmaster --cover-letter;

> if [ $? -ne 0 ]
> then
>     echo "$0: problem" >&2
>     exit 1
> fi
>=20
> git log --oneline "$@"
>=20
> cat <<EOF
> Patches generated in $mbox.
> Will now launch neomutt; use '<ESC>e' to send.
> Delete the draft(s) afterward with 'd'.
> EOF
>=20
> read -p 'Ready? ' junk
> neomutt -f "$mbox"

And for sending:

	I use git-send-email(1), with neomutt(1) as a driver.  This is
	also documented in <man-pages.git/CONTRIBUTING.d/git>:

	   git-send-email(1)
	       If mutt(1) or neomutt(1) are configured in the system,
	       git-send-email(1) can be configured to use any of them as a
	       driver.  Recent versions of neomutt(1) can enable crypto with -C.

		   $ git config --global \
			   sendemail.sendmailcmd 'neomutt -C -H - && true';
	       or
		   $ git config --global sendemail.sendmailcmd 'mutt -H - && true';

	Since you sign your mail, and I prefer that you continue doing
	so, you'll need a recent version of neomutt(1) (2024-02-01 or
	later):
	<https://neomutt.org/feature/cli-crypto>
	<https://github.com/neomutt/neomutt/releases/tag/20240201>

	With the above, I can send patches as:

		$ git send-email .patches/v1-*;

	git-send-email(1) defaults to threading all patches so that all
	are a reply to the first one.

> # vim:set ai et sw=3D4 ts=3D4 tw=3D80:


Does that sound good?

Have a lovely night!
Alex


--=20
<https://www.alejandro-colomar.es/>

--lflkscuolargcdu6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmalcDgACgkQnowa+77/
2zL2Kw//fgbDOYEmUHduYm0Og0KpN/4dW+AleI+qnDz1q10lyvWBpJ4w0AwEWLxM
PForGLnQv0QYU724Wn5yIVM9woGb1vdrvozAfnn/GH0Cfg2LENUCSr1g2lPLOFn5
jCp61wPLQ+81APvXunQHwMt+xZcOftZJqy5PX+QPSWWeKH+DhI0GWE9dtPIWIBie
q0wTdapxbLw7IEp0UYR29+Rs76FtDmColU6BpRJp+mBbMpSuVeverwVwCRjyUpum
j0Kw0PXYM1dhyW3HCg3cnxAmXIekwWHYC1dsHVyFc4pBl7lWfcRTOloeo8qeDYbl
CKqW0GxZzPBGzBMlplcqVRhqGVq51l2kMuvIMp28lpFT57XO+mQwDiXELtlKtOIB
zmx91nHPIxr/EdLuuTTTxk4uHGUK2aqCR9Y2g0E6ne7+Ja9jDMfjFIC/WZIQ2cKT
4Rmj+ywUCurbH1TMkyjIUvvqI8/EE9YgmoFWS5ROIPkUo2XXYG8360fyvPsYazBJ
He7PDzB+0S36MqMyP2xAzaNnbazodvYYNmSKqTt7f55EEoikRFoFAl8Lhzno3eAR
sYqORPlPw3elyj4tZgNJwIikXDxKN+d8ApZ4Lclj+1/YgGFM8TS4I3h9B9hJppd7
4h/A24OHKmK3JTBj2lA7jdTFK5TUO3BTqqrDdgd4wTqEtnjajjQ=
=h2Zb
-----END PGP SIGNATURE-----

--lflkscuolargcdu6--

