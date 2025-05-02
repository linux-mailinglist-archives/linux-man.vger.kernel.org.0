Return-Path: <linux-man+bounces-2847-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E9ECEAA71B4
	for <lists+linux-man@lfdr.de>; Fri,  2 May 2025 14:26:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AFAA31C017B8
	for <lists+linux-man@lfdr.de>; Fri,  2 May 2025 12:26:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98EB1246785;
	Fri,  2 May 2025 12:26:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBJG7O1n"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58994210185
	for <linux-man@vger.kernel.org>; Fri,  2 May 2025 12:26:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746188787; cv=none; b=PUI7ZNVe3L+gKfKG4HJUHpJEyBkaJ9vPGLmqz3XkIo+dsDSFsy9tJCiQVd9xE9ksCjDB3GTE5+/Fd7ePuLqkIkJF0JiTbhLb0k0mhTcyyg3N2olP1VhyxoEQQm8OIVkY+Hwl+pcVp8m2zF0/ianDTaHORcMsgAq2hpBJke+Pssk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746188787; c=relaxed/simple;
	bh=kOs1pbUDkAJxcQcY8eqxdAnLVBE2buGKlIuKNrvb5LU=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PT9GPznBoKiZlLAAkXvFZIpYMPhmhNLBQLNsZKqqH7+68ubMdELf7VRjw/ooTX2TDJKpxB2jROBO/G4AlT6LDEGt9XH1+x/Oe+Ep4+u8MdHJ3KjHlaWGlpHS1/OBmuZmv0dPgIVKCfwPVhsMxKbX3CwZo06cmH1ZaZZgVv2UlSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBJG7O1n; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C73CC4CEE4;
	Fri,  2 May 2025 12:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746188786;
	bh=kOs1pbUDkAJxcQcY8eqxdAnLVBE2buGKlIuKNrvb5LU=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=BBJG7O1ncozrkrviYBBZglHKvUNbyzFU/Ru924E6U2mx6MxaMUxyEJ/jMzr6dl5Jh
	 iqLykn3gfdfjc7/7WtwXT/O1EbLQy9G05J1aMNUM/YRgKv8PrVT5k9XuJvBZGBVEVw
	 jB2cR5TU2TXRzl7ZMbQ1NuY7pliYFMWROy5RL4hoyTx4Dts7+m4xFp2qy+r7Vf3lFQ
	 d8Zt6lQVKSOoYAX23EyR8sT89saPgHF9ooFdrFqpq7Ma8pecbqFvlhkLlV4v0YnszS
	 18Reogez3OlwXoO7k3pUZ89zTCXfjIWPVH+pq7XYPNOewBK+Vi803/00xJAAXUGUpg
	 AjTcINeSK65tw==
Date: Fri, 2 May 2025 14:26:23 +0200
From: Alejandro Colomar <alx@kernel.org>
To: groff@gnu.org, linux-man@vger.kernel.org
Subject: grof --run
Message-ID: <fg6yru6cwn4itrn55mmnpt2eerjeph3z3ow3asowf2dhkq5iwv@qewmi2xgqgf6>
References: <dbczpry2ukcht3d2pw4b2l7yla63eetfprfpblhvhwj2dpalvv@ba4itgqked3d>
 <20250502120139.yqstcq32hdtagozl@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qdjqt3jr4oymapy4"
Content-Disposition: inline
In-Reply-To: <20250502120139.yqstcq32hdtagozl@illithid>


--qdjqt3jr4oymapy4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: groff@gnu.org, linux-man@vger.kernel.org
Subject: grof --run
References: <dbczpry2ukcht3d2pw4b2l7yla63eetfprfpblhvhwj2dpalvv@ba4itgqked3d>
 <20250502120139.yqstcq32hdtagozl@illithid>
MIME-Version: 1.0
In-Reply-To: <20250502120139.yqstcq32hdtagozl@illithid>

Hi Branden,

On Fri, May 02, 2025 at 07:01:39AM -0500, G. Branden Robinson wrote:
> [2] $ type mailman
> mailman is a function
> mailman ()
> {
>     local cmd=3D;
>     case "$1" in
>         -*)
>             opts=3D"$opts $1";
>             shift
>         ;;
>     esac;
>     set -- $(man -w "$@");
>     cmd=3D$(zcat --force "$@" | grog -Tutf8 -b -ww -P -cbou -rU0 -rLL=3D7=
2n -rHY=3D0 -dAD=3Dl $opts);
>     zcat --force "$@" | $cmd | less
> }

I was trying to simplify your mailman() function to the following pipe
(after parsing the options):

	man -w "$@" \
	| xargs zcat --force \
	| grog --run \
		-Tutf8 -b -ww -P -cbou -rU0 -rLL=3D72n -rHY=3D0 -dAD=3Dl \
		$opts \
		2>/dev/null \
	| less;

And I found out that grog(1) seems to be not accepting a documented
option: --run. [1]  Am I doing something incorrectly?  I never used
grog(1) before, so it might very well be.


Cheers,
Alex

[1]:

$ MANWIDTH=3D72 man grog | head -n17
grog(1)                 General Commands Manual                 grog(1)

Name
     grog - =E2=80=9Cgroff guess=E2=80=9D=E2=80=94=E2=80=94infer the groff =
command a document requires

Synopsis
     grog [--run] [--ligatures] [groff=E2=80=90option ...] [--] [file ...]
     grog -h grog --help
          grog -v grog --version

Description
     grog reads its input and guesses which groff(1) options are needed
     to render it.  If no operands are given, or if file is =E2=80=9C-=E2=
=80=9D, grog
     reads the standard input stream.  The corresponding groff command
     is normally written to the standard output stream.  With the op=E2=80=
=90
     tion --run, the inferred command is written to the standard error
     stream and then executed.
alx@devuan:~$ grog --run
grog: error: unrecognized grog option '--run'; ignored
usage: grog [groff-option ...] [--] [file ...]
usage: grog {-v | --version}
usage: grog {-h | --help}


--=20
<https://www.alejandro-colomar.es/>

--qdjqt3jr4oymapy4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgUuekACgkQ64mZXMKQ
wqkGQBAAsROs6eox2OAVBhHyHyDwXwxOSTMtGRMjiH3JLc4bqwvOgbOPMDwP6xnm
Kyy4uKpXLyGXuY07AKNTi3xBVSoBjr/37jd+LxOf0KzXx0rz0nvgRftNk1H6nD5Z
8v2UUllEjo6cso3Sgx716GzYSxHsBkna3cSsepgWdTaJdNxj6pTbKHsqRG6vL2iB
QTMgqyj6rArOL79BnAgcJmVPNK0s5L2dFgF8tmTNzzF4CBney9gw4UCEWCkKutvt
4PFhwXpX2QFp5IbJiRtOL/NMH5tFE+9lot4sS8gA064Qb65wC/HvIk+OHDTiiiMz
TgIu3ENBVNbOu1/Bq9leC3jtvKto8TH1VLiC8WP4xXr5s2VYC2i7lSH2/8krEjJQ
vDAhfmEMLPGId9NsGKn2vXrhGJtaGibRRukFDgdHjMye3UDNokMN3Nf/zvmW60Wg
Xgx+93jE5rXY3Lgr/hUy9fkSbo99h1mLcLtdTfNr4g22HQlr825TIYVQv9dD06Ux
hagFQLFbn1DzepU5asK7AVNWQLv2QAhHNW/fdfPcW6Sl6ZzuroDK2/PFxmxDMruK
MippKYKDA5qClIo7Uj5qd+XY90ckRvPZHxbT2YNG1Wc1dT8VQSO5OoglPhys4g1/
4qDt5+aHABZ2oZBLlc6ZiM331eb/OYMeva4eiYMrcnnBIVqHRTc=
=mPEM
-----END PGP SIGNATURE-----

--qdjqt3jr4oymapy4--

