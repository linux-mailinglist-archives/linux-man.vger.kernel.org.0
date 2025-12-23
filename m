Return-Path: <linux-man+bounces-4470-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5545ACD77D9
	for <lists+linux-man@lfdr.de>; Tue, 23 Dec 2025 01:35:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9058830019C1
	for <lists+linux-man@lfdr.de>; Tue, 23 Dec 2025 00:35:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B35B01F03D7;
	Tue, 23 Dec 2025 00:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AlCtJxK3"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CE2A1DF736
	for <linux-man@vger.kernel.org>; Tue, 23 Dec 2025 00:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766450123; cv=none; b=CIETnT3haeMJlyhmQvSVxdn0d8QaVE/vyXKmyWu3cDKz5U8gKupG7Fnbv4UfnB6ks42lWDimeQYoBRVs0OXfHpEIEcrmb/gxv2jd5FC15frcVGXZZQjHiFYtRaziv3WaUchC0L6R927i8bhlYLn1STXEa3oqrkjX2YYSotLoRVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766450123; c=relaxed/simple;
	bh=Y0BeKHxvjU1E/dDKwWBxcoWneWNJeP0LrFvi2fBPwiM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rjO5m6upyMgOkFbCr/QJxlxVv0ThVk5g0wT3eiusp6v/KmGtjrkf+JnFaDW967Zv0rYZkfiO7/NUb8TFby5pl/WPkOOupV2/kyIfCheXeWJzwYrGAEgbr2nbA0mUiC2g6e5nEwIlUV6eSVy67zKVePOjBB7DnauuZ7t+tEyRi+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AlCtJxK3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17E07C4CEF1;
	Tue, 23 Dec 2025 00:35:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766450123;
	bh=Y0BeKHxvjU1E/dDKwWBxcoWneWNJeP0LrFvi2fBPwiM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AlCtJxK3oCWZkGUQj1S6/LDB/aKFzwxs+BVUfkALPbrartuAzLQZ5Wl0e5yUvV5qZ
	 4550BzxBYxSRbStGjgAJmODXkd5f2+VSwLhcJ0lWoaQ16kA4ZLsNchJCvmvW49vzVQ
	 6uM732RBgELMRlhILCTSbdJ4irBMcc38x8swazjQDivX8hFHbBrshRbxaO/mVrZUDw
	 5dp/QDMkNeNpCgQiSeOkb0KQ64XgYIKLVzx4j8wNnTItoDD+o1xwuhIBjzVHtzDXDY
	 56jykSbzfTbPRJKAfnoWexgTxQggIlb4/1N3JvQ6C8LrmNP7cI6TUnpUzJuy0cESL5
	 ZHfQaDyWzUIiQ==
Date: Tue, 23 Dec 2025 01:35:18 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Seth McDonald <sethmcmail@pm.me>, 
	Eugene Syromyatnikov <evgsyr@gmail.com>, Ingo Schwarze <schwarze@openbsd.org>, DJ Delorie <dj@redhat.com>, 
	Paul Floyd <pjfloyd@wanadoo.fr>, John Scott <jscott@posteo.net>, misc@openbsd.org
Subject: Re: [PATCH v4 1/1] man/man3/aligned_alloc.3: HISTORY: Document bogus
 specification from C11
Message-ID: <aUnjliwquUfEXp31@devuan>
References: <f19bb100f31e5c5b9f0edaf1807ef66d99627316.1766439016.git.alx@kernel.org>
 <cover.1766439016.git.alx@kernel.org>
 <20251223001524.fkzuimnouq4537rd@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="k4fj77hxm3gnsqhj"
Content-Disposition: inline
In-Reply-To: <20251223001524.fkzuimnouq4537rd@illithid>


--k4fj77hxm3gnsqhj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Seth McDonald <sethmcmail@pm.me>, 
	Eugene Syromyatnikov <evgsyr@gmail.com>, Ingo Schwarze <schwarze@openbsd.org>, DJ Delorie <dj@redhat.com>, 
	Paul Floyd <pjfloyd@wanadoo.fr>, John Scott <jscott@posteo.net>, misc@openbsd.org
Subject: Re: [PATCH v4 1/1] man/man3/aligned_alloc.3: HISTORY: Document bogus
 specification from C11
Message-ID: <aUnjliwquUfEXp31@devuan>
References: <f19bb100f31e5c5b9f0edaf1807ef66d99627316.1766439016.git.alx@kernel.org>
 <cover.1766439016.git.alx@kernel.org>
 <20251223001524.fkzuimnouq4537rd@illithid>
MIME-Version: 1.0
In-Reply-To: <20251223001524.fkzuimnouq4537rd@illithid>

Hi Branden,

On Mon, Dec 22, 2025 at 06:15:24PM -0600, G. Branden Robinson wrote:
> Hi Alex,
>=20
> Content looks great; as you've likely guessed, I have commentary only on
> man(7) markup.
>=20
> At 2025-12-22T22:33:09+0100, Alejandro Colomar wrote:
> > I've rewritten the entire subsection from scratch, similar to the
> > email I wrote detailing the history of the specification.  I think
> > this is explains the turbulent history of this API better, and allows
> > programmers to decide if they want to trust this API or not.
> >=20
> > Does this look good?
>=20
> At 2025-12-22T22:33:13+0100, Alejandro Colomar wrote:
> > Document the turbulent past of aligned_alloc(), and how libraries have
> > actually implemented it.
>=20
> Nice summary!

Thanks! :-)

> [...]
> > +the specification of this function had
> > +.UR https://port70.net/~nsz/c/c11/n1570.html#7.22.3.1p2
> > +several issues
> > +.UE .
> [...]
> > +.UR https://www.open-std.org/jtc1/sc22/wg14/www/docs/summary.htm#dr_460
> > +DR460
> > +.UE
> [...]
> > +.UR https://www.open-std.org/jtc1/sc22/wg14/www/docs/n2072.htm
> > +N2072
> > +.UE
>=20
> I'd put hyphenless break points after each sequence of slashes in these
> URLs, and before each dot.
>=20
> I`d spell these `-`s as `\-` so that they appear as hyphen-minuses when
> printed, not as hyphens.

Yup; thanks for the reminder!  Also fixed the \[ti].


Have a lovely night!
Alex

>=20
> groff_man_style(7):
>    Hyperlink macros
> ...
>      Prepare arguments to MR, MT, and UR for typesetting; they can
>      appear in the output.  Use special character escape sequences to
>      encode Unicode basic Latin characters where necessary, particularly
>      the hyphen=E2=80=90minus.  (See subsection =E2=80=9CPortability=E2=
=80=9D below.)  URIs can
>      be lengthy; rendering them can result in jarring adjustment or
>      variations in line length, or troff warnings when one is longer
>      than an output line.  The application of non=E2=80=90printing break =
point
>      escape sequences \: after each slash (or series thereof), and
>      before each dot (or series thereof) is recommended as a rule of
>      thumb.  The former practice avoids forcing a trailing slash in a
>      URI onto a separate output line, and the latter helps the reader to
>      avoid mistakenly interpreting a dot at the end of a line as a
>      period (or multiple dots as an ellipsis).  Thus,
>             .UR http://\:example\:.com/\:fb8afcfbaebc74e\:.cc
>      has several potential break points in the URI shown.  Consider
>      adding break points before or after at signs in email addresses,
>      and question marks, ampersands, and number signs in HTTP(S) URIs.
> ...
> Portability
> ...
>      \-     Minus sign.  \- produces the basic Latin hyphen=E2=80=90minus
>             (U+002D) specifying Unix command=E2=80=90line options and fre=
quently
>             used in file names.  =E2=80=9C-=E2=80=9D is a hyphen in roff;=
 some output
>             devices format it as U+2010 (hyphen).
>=20
> I recently noticed someone on StackExchange opining that "man" (they
> weren't clear on whether they meant the man(1) librarian or the man(7)
> macro language) doesn't support URLS: "unlike man, at least [lynx(1)]
> supports links!".
>=20
> That claim is a combination of falsehood, misleading implication, and
> out-of-dateness.  It's not man(1) that needs to support hyperlinks in a
> terminal, but the pager[1], and less(1) does, since version 661 (June
> 2024).  grotty(1) has offered OSC 8 links since groff 1.23.0, July 2023.
>=20
> Regards,
> Branden
>=20
> [1] ...or the terminal emulator, in the event one uses cat(1) as the
>     pager or runs "nroff -man" directly, like a hard-bitten,
>     two-fisted-drinking, shirtless veteran of the Unix Wars.
>=20
>     (You can leave Australia, but 'Straya never truly leaves you.)



--=20
<https://www.alejandro-colomar.es>

--k4fj77hxm3gnsqhj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlJ48AACgkQ64mZXMKQ
wqmkVA//eZW3e0UKvUfBUI0WVFrYhtXAQ/qnW8IlPF26h5ZWJuad+1DSWTxm86w8
9lz5E6R+6As6ojE14IUhmdWFzKa7sCsPJdQn0ierEvRwTWBNhU7n6kBH0XtSXOEw
tmCRoAaHtLjMeN7Nc0sp3DhCr9tXf0/DHEampo7vNJ891AslQUi4f0jOozL5mCtD
kjCgeUYMr6ECa/IPT807desrgK+n2eRbDlIrSgfprbuN/9wdK5FNnOK2uk2Vn+qG
uGDUGqpBA+P1WLoVOtTL8HmKKE8MRxrVBuqKzd8dozy1trWozzebAIYkwG7q+7Vv
ZZwj/eBvFwi/hAVukqUgVPaIb+i+5w69xq/zN/5YWYsfxn74UnM65dQmB9KxyIvk
cTOVX3+VPBD779IiwgJr78pAskJbG2XKVKMvPpyAG4BP+xqi7S/I40gLXMt1aXev
T7tEe9MQQuwI2ZRr4VT7d5itMo74w4fmZExTUopg2PonJVTwgK1G0eTQy6Rvv1Fw
6ft3CHeFpnszMlsGfbgy4AknS5LUuN5bEL5b6FUO/NnDRW2EqCxS9I1HOlvFJcex
1nCJUb/3nW0FOOSW6VIkb36dXvXbVz5OHabNCUtupiIOoA/evT6z59lJnkcqatfI
ponp5AWK2wJpNXVs4iR7nYtjddWsKxsaKNi0epSAVpNnIRb0wFM=
=kaR9
-----END PGP SIGNATURE-----

--k4fj77hxm3gnsqhj--

