Return-Path: <linux-man+bounces-4042-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AB38BB95B6
	for <lists+linux-man@lfdr.de>; Sun, 05 Oct 2025 13:09:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4DEE71891742
	for <lists+linux-man@lfdr.de>; Sun,  5 Oct 2025 11:09:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09B362737E4;
	Sun,  5 Oct 2025 11:09:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdLVj0s/"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB0CB270541
	for <linux-man@vger.kernel.org>; Sun,  5 Oct 2025 11:09:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759662569; cv=none; b=b92kuLnmSgY2Q008AKNIat0d5fIG/OOyaSZWlQXEV/WDjuJNJc70AOmiNO0Wb+fRKWRg4RsnOCfNtkNoeOGhgJUyfevvF8QR9Sqri908H04Tg5RppkuJiqlWfqAt1O/pXydFfBYmCSKXpkPbC9/2CEyYXhnJerFsTvkRJiFNLmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759662569; c=relaxed/simple;
	bh=BmnlAeLGkSMfloAlBm1hM+Vjw2WiTXh++zicorkU8RM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nWmTV7KZ/ypLUF+KaCDQTNf7+V/rfX62M5sjW/U8ucHUx5tz7QODbMwjK9bQgC/v+Dv6+6JSjoyLGx5NnABeVoBWB5AOLO/Rq5xv0ALO7bXsYWacZJwdR/5sBw1X82ja3vjE1lMV2QEQHWKxSPt8h6fDf85zhEZn5oxeBuLapcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdLVj0s/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86E32C4CEF4;
	Sun,  5 Oct 2025 11:09:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759662569;
	bh=BmnlAeLGkSMfloAlBm1hM+Vjw2WiTXh++zicorkU8RM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cdLVj0s/EfnVogFeGYQGLaJGh+7aYoDncfqSKG7Rmw3qaHH5n8Z2CpSkSJAl7hsMJ
	 9Nc5BXU0+KvvJClAZedleCvRKkXGFv7hzYz9hP/5TieUAPfLOJDxbGjrztuQBnyWiq
	 0qvp10qMyEY+sWecCtHLkooJRit7cf1I5Htd2gPEHbV9KvWN2HeRvzRVcXSqL7gAZ1
	 NDB4bm4WXkuBE0McNYii+E+BjXUKo0huCmdue7GIRZMkYhxW5DJ+nPz/z7zVE7nJpH
	 agtyuP+GPIXmhPyrtFSoTTje4jifUeafF6Xu8+K9ukuxceWxnSMb7/eGjrON1EFALD
	 mbsJTwmM0H92w==
Date: Sun, 5 Oct 2025 13:09:25 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: tbl(1) issues in console_codes(4)
Message-ID: <yzqe6a4f4nvlto5pck454sc4l7vtakyot3qsq3bxu6dgscocdy@s7lzwinqdjsx>
References: <xl24ubmnak3ygqgnlh74z6gry4vi7dssvmuo2itsud6y3lirrd@cf74bnypoqmp>
 <20250925221012.lss5ixmixnqrnrwq@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="i46teymzqibu6d3m"
Content-Disposition: inline
In-Reply-To: <20250925221012.lss5ixmixnqrnrwq@illithid>


--i46teymzqibu6d3m
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: tbl(1) issues in console_codes(4)
Message-ID: <yzqe6a4f4nvlto5pck454sc4l7vtakyot3qsq3bxu6dgscocdy@s7lzwinqdjsx>
References: <xl24ubmnak3ygqgnlh74z6gry4vi7dssvmuo2itsud6y3lirrd@cf74bnypoqmp>
 <20250925221012.lss5ixmixnqrnrwq@illithid>
MIME-Version: 1.0
In-Reply-To: <20250925221012.lss5ixmixnqrnrwq@illithid>

Hi Branden,

On Thu, Sep 25, 2025 at 05:10:12PM -0500, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2025-09-25T11:36:37+0200, Alejandro Colomar wrote:
> > I see some issues in console_codes(4), and I don't understand them.
> > There are tables where groff(1) prints past the 80-col right margin,
> > but I don't understand tbl(1) enough to understand why.  Could you
> > help?
>=20
> Sure.  By default, text formatted by tbl(1) is not filled.
>=20
> tbl(1):
>      Ordinarily, a table entry is typeset rigidly.  It is not filled,
>      broken, hyphenated, adjusted, or populated with additional inter=E2=
=80=90
>      sentence space.  tbl instructs the formatter to measure each table
>      entry as it occurs in the input, updating the width required by its
>      corresponding column.
>=20
> If you want to avoid overset lines with tbl(1), you must either
>=20
> 1.  pre-measure them so as not to exceed some reasonable minimum (for
>     man pages, I recommend "65n" for consistency with historical
>     practice and to accommodate low-vision users and others who might
>     benefit from or prefer fewer characters per line than the
>     groff/mandoc defaults of 78-80n;[1][2] or
>=20
> 2.  use text blocks.

Thanks!  I've done 2, of course.  :)

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dca93ed0eb34bd28d6e32b7b59c70f3ac55bb831e>
(Use port 80.)

	commit ca93ed0eb34bd28d6e32b7b59c70f3ac55bb831e
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Sun Oct 5 12:14:26 2025 +0200

	    man/man4/console_codes.4: ffix
	   =20
	    Also remove it from "share/mk/build/catman/troff.xfail", as it doesn't
	    fail anymore.
	   =20
	    Suggested-by: "G. Branden Robinson" <branden@debian.org>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man4/console_codes.4 b/man/man4/console_codes.4
	index adfe6c9b6..136e98a0f 100644
	--- a/man/man4/console_codes.4
	+++ b/man/man4/console_codes.4
	@@ -335,7 +335,9 @@ .SS Linux console controls
	 2      T{
	 set half-bright (simulated with color on a color display)
	 T}
	-3      set italic (since Linux 2.6.22; simulated with color on a color di=
splay)
	+3      T{
	+set italic (since Linux 2.6.22; simulated with color on a color display)
	+T}
	 4      T{
	 set underscore (simulated with color on a color display)
	 (the colors used to simulate dim or underline are set
	diff --git a/share/mk/build/catman/troff.xfail b/share/mk/build/catman/tro=
ff.xfail
	index a719a065f..7736fc74e 100644
	--- a/share/mk/build/catman/troff.xfail
	+++ b/share/mk/build/catman/troff.xfail
	@@ -1,7 +1,6 @@
	 man2/fanotify_init.2
	 man2/s390_sthyi.2
	 man3/unlocked_stdio.3
	-man4/console_codes.4
	 man4/lirc.4
	 man5/proc_pid_smaps.5
	 man5/tzfile.5

> > 	$ MANWIDTH=3D80 man console_codes \
> > 		| grep -n '.\{81\}' -C5 \
> > 		| head -n 20;
> > 	<standard input>:327: warning: table wider than line length minus inde=
ntation
> > 	197-       terminator) is interpreted as a zero.
> > 	198-       param      result
> > 	199-       0          reset all attributes to their defaults
> > 	200-       1          set bold
> > 	201-       2          set half-bright (simulated with color on a color=
 display)
> > 	202:       3          set italic (since Linux 2.6.22; simulated with c=
olor on a color display)
> > 	203:       4          set underscore (simulated with color on a color =
display) (the colors
> > 	204-                  used to simulate dim or underline are set using =
ESC ] ...)
> > 	205-       5          set blink
> > 	206-       7          set reverse video
> > 	207:       10         reset selected mapping, display control flag, an=
d toggle meta flag
> > 	208-                  (ECMA-48 says "primary font").
> > 	209:       11         select null mapping, set display control flag, r=
eset toggle meta flag
> > 	210-                  (ECMA-48 says "first alternate font").
> > 	211:       12         select null mapping, set display control flag, s=
et toggle meta flag
> > 	212:                  (ECMA-48 says "second alternate font").  The tog=
gle meta flag causes the
> > 	213:                  high bit of a byte to be toggled before the mapp=
ing table translation is
> > 	214-                  done.
> > 	215:       21         set underline; before Linux 4.17, this value set=
 normal intensity (as is
> > 	216-                  done in many other terminals)
>=20
> I would format the document with `MANWIDTH=3D65` and, for any line that
> still oversets, stuff the descriptive table entry into a text block.

I've done it with MANWIDTH=3D72 for the commit above.  However, if I go
down to 64, I see some cases where we're using text blocks, and groff(1)
still doesn't do a good job:

	$ MANWIDTH=3D80 man ./console_codes.4 | grep '.\{81\}'
	$ MANWIDTH=3D72 man ./console_codes.4 | grep '.\{73\}'
	<standard input>:130: warning: table wider than line length minus indentat=
ion
	$ MANWIDTH=3D64 man ./console_codes.4 | grep '.\{65\}'
	<standard input>:130: warning: table wider than line length minus indentat=
ion
	     ESC Z     DECID    DEC private identification.  The kernel returns
				the string ESC [ ? 6 c, claiming that it is a
	     ESC 7     DECSC    Save current state (cursor coordinates, attrib=E2=
=80=90
				utes, character sets pointed at by G0, G1).
	     ESC 8     DECRC    Restore state most recently saved by ESC 7.
	     ESC % @               Select default (ISO/IEC 646 / ISO/IEC 8859=E2=
=80=901)
	     ESC # 8   DECALN   DEC screen alignment test - fill screen with
	     ESC (              Start sequence defining G0 character set (fol=E2=
=80=90
	     ESC ( U            Select null mapping - straight to character ROM.
	     ESC ( K            Select user mapping - the map that is loaded by
	     ESC )              Start sequence defining G1 (followed by one of
	     ESC ] P            Set palette, with parameter given in 7 hexadeci=E2=
=80=90
				mal digits nrrggbb after the final P.  Here n is
				the color (0=E2=80=9315), and rrggbb indicates the

But if we check the source code for the first one, we see it's within
a text block:

	$ grep -C2 'kernel returns' console_codes.4
	ESC Z	DECID	T{
	DEC private identification.
	The kernel returns the string ESC [ ? 6 c,
	claiming that it is a VT102.
	T}

Why is that?

> Consulting my Git checkout of `man-pages`, I see that while some entries
> in this table use text blocks, others don't.
>=20
> $ nroff -t -rLL=3D65n -man -P-cbou man4/console_codes.4 | grep -E '.{66}'=
 | wc -l
> man4/console_codes.4:130: warning: table wider than line length minus ind=
entation
> man4/console_codes.4:330: warning: table wider than line length minus ind=
entation
> 29
>=20
> Those warnings will be wanting attention.  Also, I noticed that some of
> the table entries overset _even though_ they're already _in_ text
> blocks.  How is this possible?

Yup.  I'm intrigued.

> Recall the introduction to tbl(1) above:
>=20
> tbl(1):
>      tbl instructs the formatter to measure each table entry as it
>      occurs in the input, updating the width required by its
>      corresponding column.
>=20
> We need one more piece of information--the description of the `x` column
> option that (most of) the tables in this page use for their description
> columns.
>=20
> tbl(1):
>    Column modifiers
> ...
>      x, X   Expand the column.  After computing the column widths,
>             distribute any remaining line length evenly over all columns
>             bearing this modifier.  Applying the x modifier to more than
>             one column is a GNU extension.  This modifier sets the
>             default line length used in a text block.
>=20
> Consider that final sentence.
>=20
> If you have one non-text-block entry that oversets the line, and use the
> `x` table modifier, all your text blocks in that column of the table use
> the width determined by the one that caused the overset.
>=20
> And that's what's happening here.

That explains why the entry right after the one I fixed was oversetting,
even though it was in a text block.

But I don't think it explains the ones I'm showing above.  At least not
so obviously.  The entry for 'ESC Z' is the first one that oversets, and
it's within a text block.  Would you mind explaining that?

> Fixing up a couple of spots where text blocks should have been used but
> weren't (diff attached), I get the following result.

The diff changes more than I'd expect.

> $ nroff -t -rLL=3D65n -man -P-cbou man4/console_codes.4 | grep -E '.{66}'\
>     | wc -l
> 0
>=20
> I made several other changes to fix things that drive me crazy.  Most
> are cosmetic.
>=20
> 1.  Stop using `ad` requests.  They don't do what people think.[3]
>     However, _do_ use `na` requests _inside text blocks_ where necessary
>     to defeat adjustment, because they work reliably there, and cannot
>     damage the rest of the page.[5]

Would you mind suggesting a separate patch?  And why do we want .na
sometimes?  Why is it necessary to not adjust sometimes?

> 2.  Add paragraph macros before tables so that they set like
>     typographical "displays".  This is common (if not universal)
>     practice, sometimes done already in the Linux man-pages[6] and I
>     think it looks better.

I'll do this globally.  Would you also do that for 'allbox' tables?
Or should I keep those as an exception?  (See man3 pages; section
ATTRIBUTES.)

> 3.  Add missing `x` column modifier to the descriptive column of the
>     "VT100 console sequences not implemented on the Linux console"
>     table.

Please send a separate patch.

> 4.  Spell out column heading "param" as a complete word, "parameter".
>     To me, it makes little sense to abbreviate it when one of the
>     entries in its column is "100..107" anyway.

Please send a separate patch.

> 5.  Remove trailing spaces from entries in the "Linux Console Private
>     CSI Sequences" table.  This makes more efficient use of space and,
>     for some screen widths, permits more table rows to fit on the line.

Trailing spaces?  I can't find any:

	$ grep -rn ' $'
	man7/bpf-helpers.7:37:.\"=20
	man7/bpf-helpers.7:41:.\"=20

> 6.  Document the names of the "ESC s" and "ESC u" extension controls.
>     This one is non-cosmetic.

Please send a separate patch.

> 7.  Stop using `\0` escape sequences to achieve indentation of table
>     entries; favor `\ ` (an unbreakable space) instead.  We're not
>     laying out numeric data, and both are universally portable.  We
>     don't want to use groff's `\~` because we don't want these spaces to
>     adjust.  Really, we shouldn't be using space to indent table entries
>     at all.  That's what the `A` column classifier is for.  Using `A`
>     brings the additional advantage that if a text block is in a column
>     using that classifier, and it breaks, subsequent lines are indented
>     the same as the first.  This advantage is unavailable with `\0`
>     or `\ ` because you don't know in the document source what the width
>     (line length) of the output device will be.  In fact, I'll attach a
>     second version of the diff capturing that reform too.

Please send a separate patch.

> The page renders fine for me now, at 65 columns and wider.
>=20
> I figure you'll want these broken up into separate chunks for a proper
> patch submission,

:-)

> so let me know which of the enumerated items you want

Possibly all of them.  I'm not 100% sure, but please send them all.

> and how finely to slice the changes.

As finely as possible.  It's never too fine.  ;)

> Regards,
> Branden
>=20
> [1] https://baymard.com/blog/line-length-readability

Thanks!


Have a lovely day!
Alex

> [2] Why "78-80"?  From the "NEWS" file of the forthcoming groff 1.24.0:
>=20
> *  The an (man), doc (mdoc), and doc-old (mdoc-old) macro packages have
>    changed the default line length when formatting on terminals from 78n
>    to 80n.  The latter is a vastly more common device configuration, but
>    that line length had been avoided since the groff 1.18 release in
>    July 2002 (prior to that, the line length was 65n, as in AT&T nroff),
>    for an undocumented reason.  That reason appears to have been the
>    interaction of bugs in GNU tbl(1) with an aspect of grotty(1)'s
>    design.  Those bugs have been resolved.  A man(1) program can still
>    instruct groff to format for any desired line length by setting the
>    `LL` register on {g,n,t}roff's command line.
>=20
> [3] https://cgit.git.savannah.gnu.org/cgit/groff.git/tree/tmac/an.tmac?id=
=3D05036f82e9b09e026bbd8fa0504211a32a85fb62#n156
>=20
> [4] tbl(1):
>=20
>      Text blocks are formatted as was the text prior to the table,
>      modified by applicable column descriptors.  Specifically, the
>      classifiers A, C, L, N, R, and S determine a text block=E2=80=99s al=
ignment
>      within its cell, but not its adjustment.  Add na or ad requests to
>      the beginning of a text block to alter its adjustment distinctly
>      from other text in the document.  As with other table entries, when
>      a text block ends, any alterations to formatting parameters are
>      discarded.  They do not affect subsequent table entries, not even
>      other text blocks.
>=20
> [5] It groff 1.24.0, the _man_ package will perform a "paragraph reset"
>     at every `P` macro call (and several others), restoring the
>     adjustment and hyphenation mode defaults.
>=20
>     https://savannah.gnu.org/bugs/?67363
>=20
> [6] socketcall(2), TIOCMSET(2const), strfromd(3), double_t(3type),
>     mouse(4), mount_namespaces(7), namespaces(7), operator(7),
>     signal-safety(7), suffixes(7)






--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--i46teymzqibu6d3m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjiUd8ACgkQ64mZXMKQ
wqlynQ/+K3f+vqNkLjTpM9KMCKXVxsU6qRA9LeDrm/Hv7qERP1w2UTCbszvytfzw
OmBAQBP71u2HgaiBKjquWNRQANiExaK7ugN/RabfhZCNjcZjaC1QcrN5bveQjCjW
kB/I+0o04ljwNjfgEIGODSrJpoWnSHzBM7a3GNTrVgr4/kxAC83+mOYFg3ezkwvj
dc7T4wBgpzhvLpGshGPtvoy7aOIAmKMkQIS1NMxALPTgBKHMCqsRyvaIPot7xi0/
aGnvpI28ixaUHKc1K92EN/+nLxbXz508GyR2xKvfC91kL5sxA8ddY1Sq/B7prdIG
J1i67ohCOoNb5VIvgv72LcCuBTwnYdEy4mobvgt2sGgL0D0/F14iZBrUZbqmDaUb
82rLPGEM7RXAy045j3j5Sc++uPg4MXUzRQ2hgROlfox38luEl2TfF++wq+VxmQXg
1Q6n+rgmPMDxomSRvJgGEDLjIZuK+sfr4X99okE/H0kzJV2jZod/hLq96fMVxcC/
NvenuxQUcpwdmB/Hw50wX7Ce2LTgmQC1b7hPTYfH6q8BTFiQLRvMxkh1fH34BZdU
C0Ay3vxcMBvj1DkRNlkfQaCKO9eKjw80FdPrQdU/faMcs48rv7ScXUB2j2GoEQI7
QfbrtAoN16IkDbitnjD5DI1EDvwZqzsU79EOQ9K5HKys3+6OkBA=
=QLng
-----END PGP SIGNATURE-----

--i46teymzqibu6d3m--

