Return-Path: <linux-man+bounces-3494-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E465B2C42C
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 14:53:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0D7805A78E7
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 12:51:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81CC533CE8A;
	Tue, 19 Aug 2025 12:50:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VNyEv/K1"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40ABA33A03A
	for <linux-man@vger.kernel.org>; Tue, 19 Aug 2025 12:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755607837; cv=none; b=EpTIBkeEbYY1u7Lw6ojs6pimz4mm50miMK/hPoqRqCFJ6MdfspPztEO2q/oUCIb+nl8edozT7rDLW/H8vGoYtEjt1zRCd6odCW+UW2scF6J7UO3aQ8mZal6Uqlo2Hgfp5rWLQoj5WJgXizOu1R8f+pVDJDpEgFqB/gDPWeTm6Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755607837; c=relaxed/simple;
	bh=BZxqD9A4CYWP388Qx3a/DQVsDT6ggiqFq+XgQfJidfk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hfglfBUP2kAM2Pm+PgC+NeTxYgtSeRzSSSuJcvhtFervJRH8/TtL9t1hWYzBGB+tZ8TRx3uhSWfWKYBfMcU2YidRLbICphVk9MsGE3xPhLEHKq0t5ISQrsSiNeN0LJfYuwDl7z2+FnRKmbcCmvae5fLkvs/E/OugdrR08SJVPkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VNyEv/K1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8401EC4CEF1;
	Tue, 19 Aug 2025 12:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755607835;
	bh=BZxqD9A4CYWP388Qx3a/DQVsDT6ggiqFq+XgQfJidfk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VNyEv/K1IPMyRcjZOt+BJ5I1YLvFXJ7Z6RtEP+1V+Pmsn7noohFqpF4omIhe4w+v/
	 DzH7MgPAX6zpIFQyPtzsa/63mSWtqUr9Q50asEaZ2u5IFx1wGiYerx6NvpCjwD8jhM
	 n2G2+KZeGrf1yvMtGXHFYmQQ9TBMkRznZerxewfxur6g8HAbEuj7/UGpaMHLhW7fYp
	 T3581MW6mcwIKjpUBuKhOsJYju6s1TsrTOaKmewXwNFnmGjmKM4urVtAQhX5mgzZPT
	 4iAeGh0kpqAoGV2BjfWlg+T0bMym5qzL6N3fauIF4lNbFOc8o5DknGgHTmMvOgggyv
	 oba9uu44fnhGg==
Date: Tue, 19 Aug 2025 14:50:31 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "Dr. David Alan Gilbert" <dave@treblig.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man3/strftime.3: Check parameter
Message-ID: <cj4pybbqz74oxknh3fh44ejvwsxus5spmsvwsjdlg7xfw4t7d3@bynwkotgfzw5>
References: <20250818174553.70132-1-dave@treblig.org>
 <sa3mkaxgskcwrma3g7chd6d2bokswwk6i32bn74ueca3qr7f63@tn4ddlmihqon>
 <aKRj_-jnlO_BxWHr@gallifrey>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="d5k67k5va2oay4lj"
Content-Disposition: inline
In-Reply-To: <aKRj_-jnlO_BxWHr@gallifrey>


--d5k67k5va2oay4lj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "Dr. David Alan Gilbert" <dave@treblig.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man3/strftime.3: Check parameter
References: <20250818174553.70132-1-dave@treblig.org>
 <sa3mkaxgskcwrma3g7chd6d2bokswwk6i32bn74ueca3qr7f63@tn4ddlmihqon>
 <aKRj_-jnlO_BxWHr@gallifrey>
MIME-Version: 1.0
In-Reply-To: <aKRj_-jnlO_BxWHr@gallifrey>

Hi Dave,

On Tue, Aug 19, 2025 at 11:46:07AM +0000, Dr. David Alan Gilbert wrote:
> * Alejandro Colomar (alx@kernel.org) wrote:
> > Hi Dave,
> >=20
> > On Mon, Aug 18, 2025 at 06:45:53PM +0100, dave@treblig.org wrote:
> > > From: "Dr. David Alan Gilbert" <dave@treblig.org>
> > >=20
> > > The strftime example requires a format paramter.  If you don't
> > > pass one it crashes.
> > > Check for the parameter.
> > >=20
> > > Signed-off-by: Dr. David Alan Gilbert <dave@treblig.org>
> >=20
> > Thanks!  I've applied the patch.  (But see some minor comment below.)
>=20
> Thanks!
> Is that something that I can spot locally?
> Since I seem to be working my way through the set checking most of the
> examples, I'm probably going to be posting some more so I should
> get the checks running.

Yes, you can.

> I'm trying to run:
>    make -R lint build-all check

This is essentially what it does.  Here's the full script I use in my
server (the linters are run on pushes to refs/heads/contrib):

	alx@www:/srv/src/alx/linux/man-pages/man-pages.git$ cat hooks/post-update;
	#!/bin/bash

	set -uo pipefail;

	cd /home/alx/src/linux/man-pages/man-pages/.bare.git/;

	unset $(git rev-parse --local-env-vars);
	git fetch srv >/dev/null;

	export LANG=3DC.utf8;

	test "$1" =3D "refs/heads/main" \
	&& (
		cd /home/alx/src/linux/man-pages/man-pages/main/;

		git reset srv/main --hard >/dev/null;

		export pdfdir=3D"/srv/www/share/dist/man-pages/git/HEAD";
		export DISTNAME=3D"man-pages-HEAD";

		make -R install-pdf-book 2>&1 \
		| sed '/bashrc.*PS1/d';
		echo '$?: '"$?";
	)

	test "$1" =3D "refs/heads/contrib" \
	&& (
		set -Ee;

		export PS1=3D;
		cd /home/alx/src/linux/man-pages/man-pages/contrib/;

		old=3D"$(git rev-parse HEAD)";

		git reset srv/contrib --hard >/dev/null;

		make_opts=3D'';
		make_opts=3D"$make_opts -R";
		make_opts=3D"$make_opts -j4";
		make_opts=3D"$make_opts -Otarget";
		make_opts=3D"$make_opts --no-print-directory";

		export VERSION=3Dcontrib;
		#export GROFFBINDIR=3D/opt/local/gnu/groff/deri-gropdf-ng/bin;
		#export PRECONV=3D$GROFFBINDIR/preconv;
		#export PIC=3D$GROFFBINDIR/pic;
		#export TBL=3D$GROFFBINDIR/tbl;
		#export EQN=3D$GROFFBINDIR/eqn;
		#export TROFF=3D$GROFFBINDIR/troff;
		#export GROPDF=3D$GROFFBINDIR/gropdf;

		make_target()
		{
			make $make_opts "$@" 2>&1 \
			| sed '/bashrc.*PS1/d';
		}

		make_target lint;
		make_target build-pdf-book;
		make_target build-all;
		make_target check;
		make_target dist;
		echo '$?: '"$?";

		echo 'URI:';
		git rev-list "$old..HEAD" \
		| sed 's,.*,https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-=
pages.git/commit/?h=3Dcontrib\&id=3D&,';
	)

> but it seems to be missing 'checkpatch' and I'm not sure which checkpatch
> that is. (I'm on Fedora 42).

Yup, checkpatch is the one you can't run.  I have a fork of the kernel's
checkpatch, which I want to eventually package.  I need to find some
time to do it.

For now, you should be able to do what CONTRIBUTING.d/lint says about
make's -t and -k options, which will allow you to ignore those failures.
Let me know if that doesn't work.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--d5k67k5va2oay4lj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmikcxYACgkQ64mZXMKQ
wqnnIw//e8rIkY5JQrsqWKodf1ObQlMcai8McAlXgafBuEvyLp9gfLiLOKoqNUmc
iDQDPihpU+nBL27UzhZLDiG+jtGF3EYV3YStbNBBzuW65dW6J8ORvVlBOmcW5GpH
Z3SZLHtrb728tPYW8kugS7U0K+SGRyvAq6AsAZ+P+R3jxxQO3Old9zm/fqbADv2k
VFTTOHl0k04OpSUdWBjr0GEE+nlkVOZG14WwJ07xjCyIwjCzRRymXi518UIHZLRN
hEMLlPZ+HdXjWfV488PeiMMJ/v/g8CNVSOpUBXiWQtO6QAHLA4qQwoifNDAIXXBY
MeGacq8ykrZexduzjkcvfKQ1I/9Z34zdXsjdSf0c0XaYlgtqFUxCjYyXnwUqjqPh
qZp+BgbnXTPiF+e5grhN0JMHtquZgHmKjez7g3bGgQhrakLgPBu1sz6AFpZfx65F
V2DE/r2v1ds1qrfFrO+RKh/z0NeFLxjcWSqy2P9fXGZH0ettQZcBrsZecXwYbv+B
GsZkuxNTXBxXO00KKm5ko82HO7tvyfipWf8I39tnkUpe+JDaK9pgczfYpBVUf8fO
zVQKDjuZBL81AuIp2H3T2LKh0pyLP6asV2hDUPXw4exlP99i4Bi++oDbgx8hFKDz
tnc38GKA67X+MIVF8uzUHVJiPhaI9UoUO9qg95mMCzKKFtmGuVo=
=8cFS
-----END PGP SIGNATURE-----

--d5k67k5va2oay4lj--

