Return-Path: <linux-man+bounces-1743-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A12D96735D
	for <lists+linux-man@lfdr.de>; Sat, 31 Aug 2024 23:43:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CBE22282E65
	for <lists+linux-man@lfdr.de>; Sat, 31 Aug 2024 21:43:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5552916EC1B;
	Sat, 31 Aug 2024 21:43:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JnDvzCr5"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141421DDF4
	for <linux-man@vger.kernel.org>; Sat, 31 Aug 2024 21:43:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725140584; cv=none; b=cUY9vdoRn4kdDc//QdJ4sAeJg0nw5e2I3v+/6AqGN0jUaKNEmtx+JsOh7J5UxbiFMWa30LxCzKvddyXhWX/kLlV8k3sP56g2cjBUv/8FCZ07JJnJ8ns5qLUDhzCiK6rbv4n1hd8dxkcRgmi92HIdeDnmWmD79FmIkfGwCBv6iAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725140584; c=relaxed/simple;
	bh=rQ8DRopYeV4xCGRQtiIR/l2o60Ay141fJZ5YcJ6s+dA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iysxOQ/0Y6Cq+zDU0de4HgEURTKxRYk1zHUDivsqu0C+ZysRXrOhdQ+fKnNK9laR5A8+p1YfJfM01CUBgMqMpnzCp9DhuQHpKfLiEuvaQfn9rHINKZaHmc4wh2mS8pXUKSM8J7/9LHNtdwd5PNj6JHaoTYvAlWSOHxsP4FeDqOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JnDvzCr5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 449AFC4CEC0;
	Sat, 31 Aug 2024 21:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725140583;
	bh=rQ8DRopYeV4xCGRQtiIR/l2o60Ay141fJZ5YcJ6s+dA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JnDvzCr5RE5QOr8+gD07b5ZOXvZL/7S491POc8RWVh9qK5mdLupK+MbWUq/jfdEit
	 w99kbgzt2wg/n35O4IXLJhLf6Vaz4mIIEArE6QWe83ESI3kVt83SzljlfYszAcyKDJ
	 avyfLNETS/xInyhE0FLvhe/Mam5Go1z9KGtajvWhapG+twdniGH4MtRW8EQc31TgMf
	 Z8LYubAzWv8mvfBPli4y2xe9RQ6nNDbRiepRBsDXSyaHe6SClf1Eh+qEk7CClsZDlL
	 3Y24GOH3i/aEfwYsHnsaYFY+aJeCS+GgXqcqg9TIsmnczdsZDcHELMV/grf6qixtIV
	 1N9Z2nHG0FlhQ==
Date: Sat, 31 Aug 2024 23:43:01 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/5] stdio.3, signal-safety.7: srcfix
Message-ID: <tfgnb73vim5h5eb7jo7hzfqdc3vilxwdg3zenovywjikzlthom@jilf525zjzow>
References: <m74zkuysq5s2jgqm3usgr3eoj3qanyewqu2nqwrwxghhm2rqgm@pezvgfvx5o7u>
 <ncv4wczkcxldrdy3doqzae44vsouevafkwwszx5uh4pulwwlnr@v4keelsw2v7o>
 <dg74uszi4ni5mtr2cxznqgdj57hgdh7pmzktiog6vyzvyttpep@r3qenmyr3cop>
 <20240831212321.qhuqc4g3iqdhuzqr@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6in2m3pbpk3zj54h"
Content-Disposition: inline
In-Reply-To: <20240831212321.qhuqc4g3iqdhuzqr@illithid>


--6in2m3pbpk3zj54h
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/5] stdio.3, signal-safety.7: srcfix
References: <m74zkuysq5s2jgqm3usgr3eoj3qanyewqu2nqwrwxghhm2rqgm@pezvgfvx5o7u>
 <ncv4wczkcxldrdy3doqzae44vsouevafkwwszx5uh4pulwwlnr@v4keelsw2v7o>
 <dg74uszi4ni5mtr2cxznqgdj57hgdh7pmzktiog6vyzvyttpep@r3qenmyr3cop>
 <20240831212321.qhuqc4g3iqdhuzqr@illithid>
MIME-Version: 1.0
In-Reply-To: <20240831212321.qhuqc4g3iqdhuzqr@illithid>

Hi Branden,

Any advances with git-send-email(1)?  I've added some more documentation
for it:

	commit 60660c87e8f75edd9f9d93666315f313dd3743db (HEAD -> contrib, alx/cont=
rib)
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Sat Aug 31 23:38:20 2024 +0200

	    CONTRIBUTING.d/git: Recommend format.thread=3Dtrue
	   =20
	    This generates patch sets as threads, with a Message-ID pre-set for the
	    first mail.
	   =20
	    Cc: "G. Branden Robinson" <branden@debian.org>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/CONTRIBUTING.d/git b/CONTRIBUTING.d/git
	index 4f1003a61..0029e7ee2 100644
	--- a/CONTRIBUTING.d/git
	+++ b/CONTRIBUTING.d/git
	@@ -1,38 +1,42 @@
	 Name
		Git - instructions for configuring git(1)
	=20
	 Description
	    git-diff(1), gitattributes(5)
		To produce useful hunk contexts in manual pages, we need to hack
		git(1)'s idea of a function name, and also to tell git what is a
		manual page.
	=20
		    $ git config --global diff.man.xfuncname '^\.S[SHsh] .*$';
		    $ echo '*.[0-9]* diff=3Dman' >>~/.config/git/attributes;
	=20
	    git-format-patch(1)
		Send patches to the right addresses.
	=20
		    $ git config --local format.to 'Alejandro Colomar <alx@kernel.org>';
		    $ git config --local format.cc '<linux-man@vger.kernel.org>';
	=20
	+       Generate patch sets as a thread.
	+
	+           $ git config --global format.thread true;
	+
	    git-send-email(1)
		If mutt(1) or neomutt(1) are configured in the system,
		git-send-email(1) can be configured to use any of them as a
		driver.  Recent versions of neomutt(1) can enable crypto with -C.
	=20
		    $ git config --global \
			    sendemail.sendmailcmd 'neomutt -C -H - && true';
		or
		    $ git config --global sendemail.sendmailcmd 'mutt -H - && true';
	=20
	 See also
		git-config(1)
		git-diff(1)
		git-format-patch(1)
		git-send-email(1)
		gitattributes(5)
		mutt(1)
		neomutt(1)
	=20
		CONTRIBUTING.d/*


On Sat, Aug 31, 2024 at 04:23:21PM GMT, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2024-08-31T22:43:04+0200, Alejandro Colomar wrote:
> > On Sat, Aug 31, 2024 at 01:20:27PM GMT, G. Branden Robinson wrote:
> [...]
> > I guess \# doesn't appear in your actual script.  What I usually do to
> > avoid problems with git(1) is to indent everything.
>=20
> Reasonable in some circumstances, but I had a second problem--one of the
> sed commands was very long, and I didn't to make an overlong line even
> worse with indentation...
>=20
> > > \# blocks to themselves use text blocks, and convert them to use man(=
7)
> > > \# macros instead of troff(1) font selection escape sequences (which
> > > \# cannot be done outside a text block).
> > > /^\.\\"/b
> > > /^\\fB[^\\]*\\fP([0-9][a-z]*).*T{/s/\\fB\([^\\]*\)\\fP\(([0-9][a-z]*)=
\)\(.*\)/T{\
>=20
> ...thus.

I prefer long lines than scripts that need to be fixed before running.

>=20
> > > diff --git a/man/man2/syscalls.2 b/man/man2/syscalls.2
> > > index c259901e7..89c4e7f10 100644
> > > --- a/man/man2/syscalls.2
> > > +++ b/man/man2/syscalls.2
> > > @@ -139,8 +139,8 @@ .SS System call list
> > >  .\" instructive about x86 specifics.
> > >  .\"
> > >  .TS
> > > -Lb Lb Lb
> > > -L2 L  Lx.
> > > +Lb       Lb Lb
> > > +Lw(26n)2 L  Lx.
> >=20
> > Ughh, I've applied it.
>=20
> I expected you wouldn't like it, and, yes, it's ugly and not
> future-proof,[1] but:
>=20
> 1.  It was really important to me to demonstrate that the large changes
>     I was making diff-wise didn't regress the state of the rendered
>     page.  Hence "dump-page.sh" and doing the cmp(1) comparison.
>=20
>     When this page was converted to text blocks, the leftmost column
>     shrank by (IIRC) 2 character cells.  I didn't want a corruption of
>     text to hide amid that.
>=20
> 2.  The table format can be further changed after the (intrusive) `MR`
>     migration; either restoring the previous or using the `x` column
>     modifier in multiple columns, which I know GNU tbl supports and I
>     think mandoc(1) does too.
>=20
> 3.  Indecision about what to do put a lag of a month in following up on
>     my previous "migration preparation" attempt,[2][3] so I decided to
>     just cut through the difficulty by applying the principle in the
>     first point.

Sounds reasonable.  I've applied patches 1, 2, and 3.  I haven't applied
4 and 5.  Please resend, as smaller patches if possible.

Cheers,
Alex

>=20
> Regards,
> Branden
>=20
> [1] People who pray might want to pray that Linux system call names
>     don't get _even longer_.
>=20
> [2] https://lore.kernel.org/linux-man/20240727210927.d3iiwpbvkvtp2mzs@ill=
ithid/
>=20
> [3] ...although subscribers to the bug-groff and/or groff-commit lists
>     can make some pretty shrewd guesses about what accounts for _most_
>     of the delay.



--=20
<https://www.alejandro-colomar.es/>

--6in2m3pbpk3zj54h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbTjmQACgkQnowa+77/
2zKFrQ/+O+jo/XD7sIPHF0HGI89WktQF3xwHw0WlefjzXBvujcnj++MLe2Sna8C0
cpNxE8QbcIKXhMyKtFOQ4AJYqtc1wwB3BICJnqxHSLJW5dBeV2y0Uu5xUkP0A8KX
PiB5b8dlNwplJZ+vzL2XtI3z2C+CAhYzEHgYQA53dlFs1yoEZJS5PZ7WX8pNVEL1
VSzAZNj+me+wyaWQ+RdvXY0wGf++FObplYhz8WAFwSrXn/CKoCMv5aZrzvZqfjKp
jqEHXuaJ9XLgl1g2ImmjAJYHlHIDqfucz0w/RPlNIXCZmY8CkvNW93f/spC1manE
jryBtHtk+WcF0un6iVYcIvtRzdsYvg//tjnLLskX2hy+P6Q72DqatDNcs8TWxZ7F
sZn6e0dySKBNWj79BsaiLq0AgRYM9nwpk/CUHBNAysl+e1kYbp3jdDiovZbtJ3OG
scwNmCp2Sevob/mtGyEKJaK9zXKX723sdL1MtUPaWQffNO9CJ+Ow5iG7fz0TDW2m
soktKhNPrDmyu8ta9+Uetfjbqq8/hbkyUYHxLMFRch0NYExW+yG5LDjut3woaRiG
WHmgS15OWdSXlSJQ8tP+YW3dI5H8D916VCqBE/peVS4e4r8IVgNIvBannPOph59p
T7j1XzHyu55UjD2GnUuIXMfStNRuFq8C3Y+TEyaXoWxw5CDc3CA=
=T4hb
-----END PGP SIGNATURE-----

--6in2m3pbpk3zj54h--

