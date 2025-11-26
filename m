Return-Path: <linux-man+bounces-4328-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 347FAC899EC
	for <lists+linux-man@lfdr.de>; Wed, 26 Nov 2025 12:58:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 13A124E49ED
	for <lists+linux-man@lfdr.de>; Wed, 26 Nov 2025 11:58:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 806F3325704;
	Wed, 26 Nov 2025 11:57:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U7aP36O9"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C45325490
	for <linux-man@vger.kernel.org>; Wed, 26 Nov 2025 11:57:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764158272; cv=none; b=KQC4K/e2rim/csbZNLet92Hltw6IuEexAfmrdVC/6rm7GzniNGdIPTfyGbLCuNZLlNZCEmrIaBeeES8JvEhTiW/E4xfjJq0jiD9A9g6HmFrf3UpAYt8X6bm0gXRgxhTweKIV7dZ06LvUKjUYsB4wwnHkWJQLQSkJIcHpdBl+mjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764158272; c=relaxed/simple;
	bh=6cJtWzcFthz8rFBI/OnvSAHdzXPtkUC6r1st5h82OXs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Xy4bLsIfFnvn5AHS+iTnRdegwdG4Ag3VVmCON+LG+GAdwVbxJ+yKVfviL38rDuaDbMjueYnMu7u+1XUWqY30pYD1omnNInRymv2eHcg7I8T5Is4oroKN+XNLiFFrCRiBssuKiHuCS9loOSYywQ9YxMnpAh4r3e5PW5STayfjKyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U7aP36O9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1EA0C113D0;
	Wed, 26 Nov 2025 11:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764158271;
	bh=6cJtWzcFthz8rFBI/OnvSAHdzXPtkUC6r1st5h82OXs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=U7aP36O9x2/hYQbfnV4Wh7nYbZJmP7ecruAM2HRjJd29F/mOhi2oqwrsfZmFEp8ny
	 /jatNIcwZ42sRiGIqipWfOrBPuS03veZkvbnGxTTf7DxCszWLgB9J4aTLbgIDylRej
	 KACovnafIIHOqN188mGb84RErk+4De36VZSNFlIZ1DJFNCwgr+MSAtH2e0ut/Jvwox
	 X3Zkuwm3/j58a+B5lqLViRY7z40TRZb054x9so8FDr6vYNaEz3f/1QiA/q9pMUNZgz
	 k2jFDvDahVwkhL07ZmtkU5iJvzED7QW+1a6d9UNOoujMurmBY//nOWPHSYcUBRtDji
	 HY7PS4B/JM0Cg==
Date: Wed, 26 Nov 2025 12:57:48 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Collin Funk <collin.funk1@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/getopt.3: Restore angle brackets.
Message-ID: <i526ocx5oztrostv55e77cq4fjsdet3g6hf4hej5q5wyyheyrt@eyz2knpjir55>
References: <a719bf4893291d95db164329b2c6add4e4a0e3e7.1764119717.git.collin.funk1@gmail.com>
 <20251126020524.cq7alectskkzbjh5@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tsnxdhiki7n3c6t2"
Content-Disposition: inline
In-Reply-To: <20251126020524.cq7alectskkzbjh5@illithid>


--tsnxdhiki7n3c6t2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Collin Funk <collin.funk1@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/getopt.3: Restore angle brackets.
Message-ID: <i526ocx5oztrostv55e77cq4fjsdet3g6hf4hej5q5wyyheyrt@eyz2knpjir55>
References: <a719bf4893291d95db164329b2c6add4e4a0e3e7.1764119717.git.collin.funk1@gmail.com>
 <20251126020524.cq7alectskkzbjh5@illithid>
MIME-Version: 1.0
In-Reply-To: <20251126020524.cq7alectskkzbjh5@illithid>

Hi Collin, Branden,

On Tue, Nov 25, 2025 at 08:05:24PM -0600, G. Branden Robinson wrote:
> Hi Collin,
>=20
> At 2025-11-25T17:15:39-0800, Collin Funk wrote:
> > While looking at 'man -S 3 getopt' the underlining under PID looked
> > strange to me.

The underlining under 'PID' means that it's a variable part.  We use
that syntax in many pages.  This is documented in groff_man(3), as
Branden said.

However, you might have also noticed some dotted underline that extends
until the end of the line.  I think that's a bug somewhere --might be in
the terminal emulator, because I see it in xfce4-terminal(1) but not in
xterm(1)--.

> >  These angle brackets were replaced with spaces in
> > commit bc34639b160d8bd3d3daf748e8a54bc1df429901 for some reason.

[...]

We should have documented the formatting change in that commit message.
Or even better, apply it in a separate commit.

> Semantically, I expect "PID" was placed in italics (underlined on
> traditional terminals, but consider MANROFFOPT=3D-P-i in your
> environment) because it was a mutable parameter, not a literal part of
> the environment variable's name.

Correct.

> Personally, I find both the old and the new renderings inconsistent with
> Unix man page tradition.
>=20
> groff_man_style(7):
>    Font style macros
> ...
>      Because font styles are presentational rather than semantic,
>      conflicting traditions have arisen regarding which font styles
>      should be used to mark file or path names, environment variables,
>      and inlined literals.
> ...
>             Use italics for file and path names, for environment
>             variables,

We follow most of this paragraph, except for a few historical
differences:

Macro names and environment variables go in bold instead of italics.

(And possibly other similar things I'm forgetting.)

>                        for C data types, for enumeration or preprocessor
>             constants in C, for variant (user=E2=80=90replaceable) portio=
ns of
>             syntax synopses, for the first occurrence (only) of a
>             technical concept being introduced, for names of journals
>             and of literary works longer than an article, and anywhere a
>             parameter requiring replacement by the user is encountered.
>             An exception involves variant text in a context already
>             typeset in italics, such as file or path names with
>             replaceable components; in such cases, follow the convention
>             of mathematical typography: set the file or path name in
>             italics as usual but use roman for the variant part (see IR
>             and RI below), and italics again in running roman text when
>             referring to the variant material.
>=20
> So I'd say:
>=20
> > -.BI _ PID _GNU_nonoption_argv_flags_
> > +.IR _ PID _GNU_nonoption_argv_flags_

For now, I'll keep the current style, which is consistent in the
project.


Have a lovely day!
Alex

> Regards,
> Branden
>=20
> [1] groff_man(7) in the forthcoming 1.24.0 release:
>=20
> Options
>      The following groff options set registers (with -r) and strings
>      (with -d) recognized and used by the man macro package.  To ensure
>      rendering consistent with output device capabilities and reader
>      preferences, man pages should never manipulate them.
> ...
>      -rCHECKSTYLE=3Dn
>               Report problems with usage of this macro package exhibited
>               by the input at verbosity level n, where n is an integer
>               in the range 0=E2=80=933, inclusive; 0 disables the message=
s and
>               is the default.  This feature is a development and
>               debugging aid for man page maintainers; the problems
>               diagnosed, and range and meanings of the supported levels,
>               are subject to change.



--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--tsnxdhiki7n3c6t2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkm6zYACgkQ64mZXMKQ
wqlE7w/8CYCnifV4fZsJj7sDcGYzfi4PFuX75R0Cv19timF+8Sjlb5ktPfq2Ba1U
DNi1cWtG+R1l5PfSrBRM2qNAeI2GfzKqZi2oyY7y+5tcJ3yvBjjPcD9r4wQnCtVv
XbrUw1DNr97ichQ1aldky5JVC6zHnkZp+zgFcxEy7Hr5Wtzdc380KTYLM0RcSGWD
0KI0BrlbEyyWhtySNs7YEb5xfZ3AT7gVze0d0veuWwwriXlhqEdMOHIRJYgh3ZHj
ImG6fcgcsmzcwfkyqKqoutkSWvXyPTmDt97LIw3/8pN9YguKItUk+/4qZlx7EyW+
vGkoZr/LSITgbkubYXyM06lJoflSTR5bxPp/IVuvfutwNQnAMjdEFrVoD0e6Je9F
905NfF/neX/FzBqEE6kbZkYQ1LhOQ7QOF8N6Ya6ol+7Abn8qzWD0/1yB9vAX8zWQ
G0Dgkeql6FMNbTlMLIaKrmkY/fkII1LfrcEQR8orW1UgUVyVIWcRZUfZfvttXArK
41C+vgFaTkql3ILxs6Ib56BR/pynYWZCYmDOxdEBynse95zLzkHqPa3LOk1fzLNJ
hd1QV27y1LoXWvy2+LWbw0r9hvJvhRATTsxRAXgcXMYD0kHKIT2aZBHCiu/3gNDZ
2GTFgnxGXyg4eNh8bKNvzqtdjF0HgrwP1vV+nNUlllSh1sR/bAY=
=5buS
-----END PGP SIGNATURE-----

--tsnxdhiki7n3c6t2--

