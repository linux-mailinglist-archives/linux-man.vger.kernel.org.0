Return-Path: <linux-man+bounces-2849-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E8CA7AA7258
	for <lists+linux-man@lfdr.de>; Fri,  2 May 2025 14:42:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A0BA19C0E0E
	for <lists+linux-man@lfdr.de>; Fri,  2 May 2025 12:42:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E8FE182;
	Fri,  2 May 2025 12:42:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gtf0FDdN"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2C12251782
	for <linux-man@vger.kernel.org>; Fri,  2 May 2025 12:42:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746189737; cv=none; b=FirNtxvlSNVB5e8jb7q5RTBUbC1qx210NrS7ybmCxg/F2LcA4tpJwK4TEH9zMtX4C8MAMhaYMQdRYWeJj9c7CHMecaGOW0OTdTtDln5KIpBxVkAzDpttC6wzgFR1f1OqMPGVRzbenOybDZaXDmJwOiEy5rxGjGEttQ9eHbwUFCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746189737; c=relaxed/simple;
	bh=L+ZGlsZxuw9PIuYKwKAfyzgU3F5gsNf9eu3zVLXq8/A=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GzOsURzMcOUcKzyD5IArzfh1MWXFo+e41Ka6+ZlxI6ZalIsyTgjUPGljiuK5xv9LIhTyALqpSMjDW//RMQmp9FsnzEmsrwNW2FWxeg0IXKFYmedj1x2V/avXquhtArUMKIEwLYNHZ6G0ou/G+kY2rrnQgSpga8vPSUh4mZxSjNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gtf0FDdN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9EE69C4CEEB;
	Fri,  2 May 2025 12:42:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746189735;
	bh=L+ZGlsZxuw9PIuYKwKAfyzgU3F5gsNf9eu3zVLXq8/A=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=Gtf0FDdNGjSzjTs4yX4S/Mb7hyKhAfSFhO5Mx+jgm0Uj6yWTiMwSf2cNDoJE+h45E
	 EvCxfvIjzZStSQs6F8hyxj/bP02hbRzWyiCVMZXWhw7Q54sZNGDg2W499en4pRgrrM
	 CqRcly8CUZ8AXxbOliRuwn4NPEgFLJ4f5rWdKVjDFpx5qy8AIsnR4nCOqpMLAjxZaG
	 h2kuwze+jaFzyOljG+pS7t7hNXXFYx8gH8dFzf1gU398QoKxAEQ2T5Gfk8HLbSruHc
	 bOds94157ba6xN3eZcPovHRzXfiD8zqYLjjoEtfSRCuRXvtKDjXmJi86X7TUv2eDrg
	 H6fmLo6ToFdxg==
Date: Fri, 2 May 2025 14:42:12 +0200
From: Alejandro Colomar <alx@kernel.org>
To: groff@gnu.org, linux-man@vger.kernel.org
Subject: Re: Paragraphs formatted differently depending on previous ones
Message-ID: <n5coqz6wcslpxfj7l32b5m765xwzn53zlcqi7hgreefe3r5l4h@3o6auzkcijud>
References: <dbczpry2ukcht3d2pw4b2l7yla63eetfprfpblhvhwj2dpalvv@ba4itgqked3d>
 <20250502120139.yqstcq32hdtagozl@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oavzdha3pghc3uot"
Content-Disposition: inline
In-Reply-To: <20250502120139.yqstcq32hdtagozl@illithid>


--oavzdha3pghc3uot
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: groff@gnu.org, linux-man@vger.kernel.org
Subject: Re: Paragraphs formatted differently depending on previous ones
References: <dbczpry2ukcht3d2pw4b2l7yla63eetfprfpblhvhwj2dpalvv@ba4itgqked3d>
 <20250502120139.yqstcq32hdtagozl@illithid>
MIME-Version: 1.0
In-Reply-To: <20250502120139.yqstcq32hdtagozl@illithid>

Hi Branden,

On Fri, May 02, 2025 at 07:01:39AM -0500, G. Branden Robinson wrote:
> At 2025-05-02T12:56:51+0200, Alejandro Colomar wrote:
> > I'd like to understand why groff(1) formats differently a paragraph
> > depending on the previous ones.  I sometimes experience different
> > placement of spaces for an unchanged paragraph.  I use a script to
> > diff manual pages at different commits, which is useful to quickly see
> > the effects of a commit in a formatted page.  That script sometimes
> > shows suprious space changes (produced by groff(1)) for parts of the
> > page that haven't been changed, and which one would expect should not
> > be formatted differently.
>=20
> What you're observing is an artifact of the adjustment process that pads
> out filled text lines to a consistent width.  It's a feature of *roff
> formatters going back essentially forever--as in, to the early 1970s.
>=20
> And it is indeed not a man page-specific phenomenon.
>=20
> groff_diff(7) briefly mentions it:
>=20
>      When adjusting output lines to both margins, AT&T troff at first
>      adjusts spaces starting from the right; GNU troff begins from the
>      left.  Both implementations adjust spaces from opposite ends on
>      alternating output lines in this adjustment mode to prevent
>      =E2=80=9Crivers=E2=80=9D in the text.
>=20
> Some typography people refer to this practice as achieving "uniform
> grayness".  Imagine your eyes defocused so that the text of a printed
> page is a smear of gray--if every line were supplemented with space
> favoring either the left or right side, you would perceive the opposite
> side as being "blacker".  As far as I understand the concept, not being
> a trained typographer, it's the same thing, or tautologically related.
> Rivers create anisotropies in your grayness.
>=20
> I have proposed the term "adjustment parity", a property that tells you
> whether an output line requiring adjustment gets adjusted from the left
> or the right.  Roughly, if you change filled text in a *roff document
> that uses adjustment such that you add or delete an _even_ number of
> lines, the adjustment of subsequent lines won't change.  If you add or
> delete an odd number of lines, it will.  However, that's a *truly* rough
> statement because a change prior to groff 1.23.0 made GNU troff ignore,
> for purposes of adjustment parity, lines that don't get adjusted at all.
> I'll put some more background in a footnote.[1]

Hmmmm, it's very interesting.  I was guessing that something like that
might be going on.  So, now I've looked more closely at the diff, and it
seems that the blanks favour alternating left and right to compensate.
That seems quite reasonable, and indeed a feature.

> When diffing changes to man pages for the groff and ncurses projects
> (and occasional others to which I contribute), I disable adjustment when
> rendering the pages before and after, using the `-d AD=3Dl` option.

By default, I prefer keeping adjustment.  Often, I want to see changes
in adjustment too as part fo the diff.  Maybe I should add an option to
disable adjustment optionally, which could be useful in those cases
where the diff is a bit hard to understand.

> groff_man(7):
>=20
> Options
>      The following groff options set registers (with -r) and strings
>      (with -d) recognized and used by the man macro package.  To ensure
>      rendering consistent with output device capabilities and reader
>      preferences, man pages should never manipulate them.
>=20
>      -dAD=3Dadjustment=E2=80=90mode
>               Set line adjustment to adjustment=E2=80=90mode, which is ty=
pically
>               =E2=80=9Cb=E2=80=9D for adjustment to both margins (the def=
ault), or =E2=80=9Cl=E2=80=9D
>               for left alignment (ragged right margin).  Any valid
>               argument to groff=E2=80=99s =E2=80=9C.ad=E2=80=9D request m=
ay be used.  See
>               groff(7) for less=E2=80=90common choices.
>=20
> As you can see, I turn off adjustment when pasting man page contents
> into emails as well.[2]
>=20
> For example, the script I use to diff groff man pages before pushing a
> set of commits has this stuff in it.
>=20
> BFLAG=3D
> #BFLAG=3D-b
> ...
> : ${AD:=3Dl}
> ...
> ARGS=3D"$BFLAG -ww -dAD=3D$AD -rCHECKSTYLE=3D3 -rU1 -Tutf8 -e -t -mandoc"
> ...
> for P in *.[157]
> do
>     if [ "$P" =3D groff_mmse.7 ]
>     then
>       LOCALE=3D-msv
>     else
>       LOCALE=3D
>     fi

What's -msv?

>=20
>     echo $0: $P >&2
>     echo "groff $ARGS $LOCALE $P" > "$P.cR.txt"
>     groff $ARGS $LOCALE "$P" >> "$P.cR.txt"
> ...
> done

Would you mind sharing the entire script?  I might get ideas for
improving diffman-git(1).  (And maybe you can drop your script if
diffman-git(1) would be good-enough for you.)

>=20
> I then diff(1) the ".cR.txt" file I saved from my last push
> (corresponding to "origin/master") to the tip of the trunk.

That would be `diffman-git origin/master master`.

> I will point out something about your diff, though.
>=20
> > 	@@ -118,11 +130,11 @@ .SH DESCRIPTION
> > 	 this operation yields an
> > 	 .B EINVAL
> > 	 error.
> > 	-.RE
> > 	 .IP
> > 	-Since Linux 6.7, using this subcode requires the
> > 	+Since Linux 6.7, using this selection mode requires the
> > 	 .B CAP_SYS_ADMIN
> > 	 capability.
> > 	+.RE
> > 	 .TP
> > 	 .BR subcode =3D TIOCL_PASTESEL
> > 	 Paste selection.
>=20
> This change involving movement of the `RE` macro call can potentially
> change the output as well.

Makes sense.

> > There are several paragraphs which shouldn't report changes: every
> > paragraph that doesn't start with "Since Linux 6.7," should be
> > unchanged.
>=20
> ...unless the moved `RE` call creates a surprise.

The RE movement is intended to indent the "Since Linux 6.7," para.

> > Is this a bug?  Is it a feature?
>=20
> It's a feature.  Some people do hate adjustment of nroff output, though,
> which is why I added a feature to groff man(7) to support disabling it.

Hmmm, I like it.  It's good to know that I can disable it for diffing in
some cases, but even for diffing I want it enabled by default.  :)


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--oavzdha3pghc3uot
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgUvZ4ACgkQ64mZXMKQ
wqnJpA//Yl42gzxYvepNYokD4OrXcmbzG7MoQMMq6c5XnZHLRDmXFD6HT0yXZuyc
5s0X8gKE9Hqf/gHRGDLFwWd1oKhbGd4dzYrvVa9GBuJeEIXhA3udQXZqc9megsJe
+0s7mWEoemNmSP73y+P3BwVw+hocJKVvUHa29qu0n4Q9xj8pOJnijw/tJSmsGk1X
eAjnPN2aLV3+tCDI2o5Tni9z9XfjK2DOS86/YqqH5cSBR3lRTQmG2L/IDbrbJiW3
iznnGyQOhXq3KFk8o7h6R6MQGYzpyHboucUzAQ8nKqFyrB+j/HhXRTsO+TW0qH6I
vGkSp1SdAwBffaoAvbUFbRSHiJbpcqQ+VahLU/efpqX1owZNsJPVlh+mBZ77yTgS
Zvg5xXIRtO9vCZzEl3Y0apmfOkSl3JGwe+U/s34nd1WPHhHWXgzg75RINcI7VA+S
ujBLXAO2sHV++EMxECfvvO7QikKBL75yecWT247X5VBQ+lOEc/a0Iky8nTEWN4KY
tPmFGxY7RezCbO4xwX3gZb+jlFfHBVa8rowcFuDFeKIBCYviLpdglrLSnUS6Ga3g
lWdAb+VFzBjHPCon4CWsoDsHFKHcuxPoHvrdKZ/5gkOzyZT8Ffphjc3fiATXNQS4
YjBkz0YGz4IZ70oXiBcnbe7fYfgjWojrw3AKnof5fDMre401C+M=
=ywqM
-----END PGP SIGNATURE-----

--oavzdha3pghc3uot--

