Return-Path: <linux-man+bounces-4046-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E66A7BB9C9C
	for <lists+linux-man@lfdr.de>; Sun, 05 Oct 2025 21:36:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A29493B8CC9
	for <lists+linux-man@lfdr.de>; Sun,  5 Oct 2025 19:36:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D57F1DB95E;
	Sun,  5 Oct 2025 19:36:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bdP9p+Y6"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499C6188713
	for <linux-man@vger.kernel.org>; Sun,  5 Oct 2025 19:36:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759692981; cv=none; b=TqG4v/n2UBABLN4YqxvTEvpzT88gJtoV+prrivC+BrAaibL4OX/DIDzLJqAxekaH3GfhWOEfJJ/i/wlfKP9TNhYdrBouufLpacDs6j8YGoEMV2IJeBZKBTaKwhkwftExoTM3754AfD3vi1xi5/YlvEOmalXFcyjgbyzIaCJMtv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759692981; c=relaxed/simple;
	bh=PpR+OCwL5WyOW2bcp9cMDjad6ZkzxhkXmJ8aL+hccuM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eEWwm7Bo6tjf2o4cHpT4pWUt4+9LK+gPexTeaJXVVHjivqJVWmJdBNIEYJxNeYK1+iy3qTw2UP9aqc6BZdtD/+VuPPMss8VCFLZBB/uzBAVSyfx3DmYmKlhf58yRVW3KSwTU6wp/CO9jy8h77IJtuY53eK09DBmu4qYCUxoRWv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bdP9p+Y6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41753C4CEF4;
	Sun,  5 Oct 2025 19:36:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759692980;
	bh=PpR+OCwL5WyOW2bcp9cMDjad6ZkzxhkXmJ8aL+hccuM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bdP9p+Y6io3hD2o0adjbslrOJyK26N+aJQ36pDBFUvYIqGZz+tPeLDek/U9U92U/E
	 bcDD6tAedlOwyAccZBnE0oTx32wwZdzaUldmEtGdSmSxIIDDyBab9DEFTPLpBTvw7H
	 PnFEkGulaJZ2w1pfX0WwTgJE9Ob7oKIO87HwKNbbgWVSAopAwurm7O3n6lUkFi/Hqa
	 VLWIYPTsbpLwOVLLMSPGGc0rg/w2D2TQE3OlEwEZB0GgrhkRXBWXbvEvOsLmlg4PaU
	 ZqOTf0Y7Zh2rfOE5/5c1ZeAUpy06HUfB3JJMKA3wx3FUi7glkmU6/+BmxJJtRL/zo0
	 nUZA2MYMPElig==
Date: Sun, 5 Oct 2025 21:36:17 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: tbl(1) issues in console_codes(4)
Message-ID: <qzojruyf7dcb5e44mnoyyfr6qwkylguuiabrddq56w2bfcgsh7@pxwcpzpmirgh>
References: <xl24ubmnak3ygqgnlh74z6gry4vi7dssvmuo2itsud6y3lirrd@cf74bnypoqmp>
 <20250925221012.lss5ixmixnqrnrwq@illithid>
 <yzqe6a4f4nvlto5pck454sc4l7vtakyot3qsq3bxu6dgscocdy@s7lzwinqdjsx>
 <20251005124545.hagkbqas5devc3iz@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="36aj4odsznep5svz"
Content-Disposition: inline
In-Reply-To: <20251005124545.hagkbqas5devc3iz@illithid>


--36aj4odsznep5svz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: tbl(1) issues in console_codes(4)
Message-ID: <qzojruyf7dcb5e44mnoyyfr6qwkylguuiabrddq56w2bfcgsh7@pxwcpzpmirgh>
References: <xl24ubmnak3ygqgnlh74z6gry4vi7dssvmuo2itsud6y3lirrd@cf74bnypoqmp>
 <20250925221012.lss5ixmixnqrnrwq@illithid>
 <yzqe6a4f4nvlto5pck454sc4l7vtakyot3qsq3bxu6dgscocdy@s7lzwinqdjsx>
 <20251005124545.hagkbqas5devc3iz@illithid>
MIME-Version: 1.0
In-Reply-To: <20251005124545.hagkbqas5devc3iz@illithid>

Hi Branden,

On Sun, Oct 05, 2025 at 07:45:45AM -0500, G. Branden Robinson wrote:
> > > I would format the document with `MANWIDTH=3D65` and, for any line
> > > that still oversets, stuff the descriptive table entry into a text
> > > block.
> >=20
> > I've done it with MANWIDTH=3D72 for the commit above.  However, if I go
> > down to 64, I see some cases where we're using text blocks, and
> > groff(1) still doesn't do a good job:
>=20
> Well, first, I personally wouldn't ever take the MANWIDTH down below
> 65n, except to troubleshoot a macro package or the formatter itself.
>=20
> A line length of 6.5 inches, or 65 ens on a typewriter using a "10
> pitch" font, which amounts to the same thing, is about a 55-year-old
> tradition in *roff.  Maybe longer, depending on what Jerry Salzer's
> default for "RUNOFF" was.  It's pretty deep in cement, like the
> presumption of U.S. letter paper size.  Of course these things are
> configurable (and I'm sad that the U.S. doesn't use ISO paper sizes),
> but due to inertia and the size of existing corpora of man pages,
> pursuing good formatting at a narrower line length than that seems like
> an unrewarding effort to me.
>=20
> Setting matters of style and strategy aside, I have a technical question
> to field.

Hmmm, I used 64 as it's the multiple of 8 that's closest to 65.  But
it's good to know that 65 is historically important.

> > 	$ MANWIDTH=3D80 man ./console_codes.4 | grep '.\{81\}'
> > 	$ MANWIDTH=3D72 man ./console_codes.4 | grep '.\{73\}'
> > 	<standard input>:130: warning: table wider than line length minus inde=
ntation
> > 	$ MANWIDTH=3D64 man ./console_codes.4 | grep '.\{65\}'
> > 	<standard input>:130: warning: table wider than line length minus inde=
ntation
> > 	     ESC Z     DECID    DEC private identification.  The kernel returns
> > 				the string ESC [ ? 6 c, claiming that it is a
> > 	     ESC 7     DECSC    Save current state (cursor coordinates, attrib=
=E2=80=90
> > 				utes, character sets pointed at by G0, G1).
> > 	     ESC 8     DECRC    Restore state most recently saved by ESC 7.
> > 	     ESC % @               Select default (ISO/IEC 646 / ISO/IEC 8859=
=E2=80=901)
> > 	     ESC # 8   DECALN   DEC screen alignment test - fill screen with
> > 	     ESC (              Start sequence defining G0 character set (fol=
=E2=80=90
> > 	     ESC ( U            Select null mapping - straight to character RO=
M.
> > 	     ESC ( K            Select user mapping - the map that is loaded by
> > 	     ESC )              Start sequence defining G1 (followed by one of
> > 	     ESC ] P            Set palette, with parameter given in 7 hexadec=
i=E2=80=90
> > 				mal digits nrrggbb after the final P.  Here n is
> > 				the color (0=E2=80=9315), and rrggbb indicates the
> >=20
> > But if we check the source code for the first one, we see it's within
> > a text block:
> >=20
> > 	$ grep -C2 'kernel returns' console_codes.4
> > 	ESC Z	DECID	T{
> > 	DEC private identification.
> > 	The kernel returns the string ESC [ ? 6 c,
> > 	claiming that it is a VT102.
> > 	T}
> >=20
> > Why is that?
>=20
> It's because of item 7 I mentioned:
>=20
> > > 7.  Stop using `\0` escape sequences to achieve indentation of table
> > >     entries; favor `\ ` (an unbreakable space) instead.  We're not
> > >     laying out numeric data, and both are universally portable.  We
> > >     don't want to use groff's `\~` because we don't want these
> > >     spaces to adjust.  Really, we shouldn't be using space to indent
> > >     table entries at all.  That's what the `A` column classifier is
> > >     for.  Using `A` brings the additional advantage that if a text
> > >     block is in a column using that classifier, and it breaks,
> > >     subsequent lines are indented the same as the first.  This
> > >     advantage is unavailable with `\0` or `\ ` because you don't
> > >     know in the document source what the width (line length) of the
> > >     output device will be.  In fact, I'll attach a second version of
> > >     the diff capturing that reform too.
>=20
> The troublesome line is this:
>=20
> $ sed -n 150p man4/console_codes.4
> ESC % @         \0\0\0Select default (ISO/IEC\~646 / ISO/IEC\~8859-1)

Hmmm, thanks!

> > > Consulting my Git checkout of `man-pages`, I see that while some
> > > entries in this table use text blocks, others don't.
> > >=20
> > > $ nroff -t -rLL=3D65n -man -P-cbou man4/console_codes.4 | grep -E '.{=
66}' | wc -l
> > > man4/console_codes.4:130: warning: table wider than line length minus=
 indentation
> > > man4/console_codes.4:330: warning: table wider than line length minus=
 indentation
> > > 29
> > >=20
> > > Those warnings will be wanting attention.  Also, I noticed that some
> > > of the table entries overset _even though_ they're already _in_ text
> > > blocks.  How is this possible?
> >=20
> > Yup.  I'm intrigued.  That explains why the entry right after the one
> > I fixed was oversetting, even though it was in a text block.
> >=20
> > But I don't think it explains the ones I'm showing above.  At least
> > not so obviously.  The entry for 'ESC Z' is the first one that
> > oversets, and it's within a text block.  Would you mind explaining
> > that?
>=20
> It's the same problem with the same explanation.  The "ESC % @" blows
> out the table width, its column uses the `x` modifier, and that column
> is shared with text blocks.  Thus those text blocks greedily use the
> width of the "ESC % @" row.
>=20
> > > Fixing up a couple of spots where text blocks should have been used
> > > but weren't (diff attached), I get the following result.
> >=20
> > The diff changes more than I'd expect.
>=20
> To a man with a 10 kW clipper, everything looks like a yak...
>=20
> > > $ nroff -t -rLL=3D65n -man -P-cbou man4/console_codes.4 | grep -E '.{=
66}'\
> > >     | wc -l
> > > 0
> > >=20
> > > I made several other changes to fix things that drive me crazy.  Most
> > > are cosmetic.
> > >=20
> > > 1.  Stop using `ad` requests.  They don't do what people think.[3]
> > >     However, _do_ use `na` requests _inside text blocks_ where
> > >     necessary to defeat adjustment, because they work reliably
> > >     there, and cannot damage the rest of the page.[5]
> >=20
> > Would you mind suggesting a separate patch?
>=20
> Sure, I figured.  :)
>=20
> > And why do we want .na sometimes?
>=20
> If there's not a lot of real estate on the page/screen for a column
> using a text block, adjustment can look ugly.
>=20
> > Why is it necessary to not adjust sometimes?
>=20
> I don't know if it's ever _necessary_, but it can be appealing.
>=20
> > > 2.  Add paragraph macros before tables so that they set like
> > >     typographical "displays".  This is common (if not universal)
> > >     practice, sometimes done already in the Linux man-pages[6] and I
> > >     think it looks better.
> >=20
> > I'll do this globally.  Would you also do that for 'allbox' tables?
> > Or should I keep those as an exception?  (See man3 pages; section
> > ATTRIBUTES.)
>=20
> I don't have an opinion there.  I _am_ pleased to report that you can
> exercise either choice and groff 1.23 will not betray you.
>=20
> https://savannah.gnu.org/bugs/?63749
> https://lists.gnu.org/archive/html/groff-commit/2022-07/msg00134.html
>=20
> [...]
> > > 5.  Remove trailing spaces from entries in the "Linux Console
> > >     Private CSI Sequences" table.  This makes more efficient use of
> > >     space and, for some screen widths, permits more table rows to
> > >     fit on the line.
> >=20
> > Trailing spaces?  I can't find any:
> >=20
> > 	$ grep -rn ' $'
> > 	man7/bpf-helpers.7:37:.\"=20
> > 	man7/bpf-helpers.7:41:.\"=20
>=20
> They trail the _table entry_, not the input line.
>
> Inspect the "ESC [ 8 ]", "ESC [ 13 ]", and "ESC [ 14 n ]" rows.
>=20
> What you want to look for are spaces followed by tabs--assuming the
> table uses tabs as its column separator in the data entries.

Ahh, now I see.  I've fixed those.

> > > so let me know which of the enumerated items you want
> >=20
> > Possibly all of them.  I'm not 100% sure, but please send them all.
>=20
> Can do.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--36aj4odsznep5svz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjiyLEACgkQ64mZXMKQ
wqnohg/+PU2/2ETbL3PqNNrTRow29W8FVHR1Fgsac2Gsi99bqjJVG/L0QD25QuE5
Kmm3rMwtXXX1dNfdIwKfVQi0wfeFB/xYDEuwixhshpc94glW4MPvzUFq2Ss7nylw
DeCjgTjdvTTpc4U+VRQUV8D1RRdb00ROBf6vagzbnJ5ZqMwXV93yL5NIxLPCMgg1
37gFvqD4+R6U5RcxnmEKFfHNBL5yaC1v5lX0PG/e220td8n6e97L3mwa8FBxY0Le
J8m+YNlhBGp401Y3tpkGJroVhVwAyFE7EzFc/7Kv30NwlehqX3p4teifeCIm+pDw
S/D11E8ba4KHphueEc2sadcbSSevsyn6WEv0UzsC+M/Y11NVtMBhMFMawnt45Q2C
CEVdXxGvIf4a8XhHh4GH0/xG3hZrpgr3XFd6WMsdJA1MV0HhGnzICsZMuz3VLn+0
ZVp9HOJF1fmeQMdjlNN7PU4Y0jz+x5SzGi/jVm8x2C+6w8dLsoRI3vzf3rSJBtP/
w7Vzg1RwnXdUF19gFoZzCjPQZmWhk7BW0aamlYsHRUN92b6kV2KdHSTVI+FkgISQ
vmwVp2JAaukJ3aFMnBjOWpulKHjbGDRpsvD6oQtR+SQWaYX8WjLZeXmJOLGlUZXf
Sv80O/MRrlr1gqDfGt+OmxImC0K4990gHmiVwfdlMoYLnh07Ez8=
=bz7s
-----END PGP SIGNATURE-----

--36aj4odsznep5svz--

