Return-Path: <linux-man+bounces-725-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D604389CAAA
	for <lists+linux-man@lfdr.de>; Mon,  8 Apr 2024 19:22:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 10C911C23F82
	for <lists+linux-man@lfdr.de>; Mon,  8 Apr 2024 17:22:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C095014388F;
	Mon,  8 Apr 2024 17:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QuOpXzlQ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82010142E68
	for <linux-man@vger.kernel.org>; Mon,  8 Apr 2024 17:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712596953; cv=none; b=p1G2oXlcViE2kEtxLBGo13SwRN4nsQbZvV/+Ce7IxGgfZTTaH1jVCnbGRPmlTjf5sX5JFpBxK52a+YNnM1NMZzEcuekd/6ff5RhxmWUaY0bYpBQxYQ6KFrPPjjuaDip9z/d3fyurXDH4TKj4hjwxsyW0hRKFxAwh77Bt4seyXTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712596953; c=relaxed/simple;
	bh=E9HNanllUNS9/nUSgPNVeI5MgeND0LjAgmdSdCak11I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GATbCRMBG9Hk3Z+Pesrs7jlvJ28FHJC9oSzWjZFZQ1xG/g6AO50DPbbL3luhAVqXSt+1Qu8PIBba185vRbCsbeWrFk5OY/Xy4x2EtHM+ov5/+yrcIw+/EWA7qyBMk8cnoFvSwHeO6/unNkafch98Eu/sZvdCANbyEUFMoooQcLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QuOpXzlQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D366C433F1;
	Mon,  8 Apr 2024 17:22:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712596953;
	bh=E9HNanllUNS9/nUSgPNVeI5MgeND0LjAgmdSdCak11I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QuOpXzlQb9ly513KXenalZwDVboOiineca8+v8av3PGxI//F2bnWZqAbBOh3mrIDB
	 PI7AxafJRJ63S7pdvENnwK0suOewL4kHwmsHTIQMva/6gnlAJumk6FW1+n5pwb2Yhc
	 KjBVQ88Imbs0t4S8v+KSnl8hqteewCWw3JK2aP93n4BKhLytxZ1QsI2D95Gof6pBsv
	 LeCWVw9e7yR455Tfcd14l0N8QmiBsjyvLllipmhX22TtK6lbQq2kK47DBIZLaUUzz6
	 rWTZ/EI67s380h/9V55VxaxpibjHTj0f04bzeZJw/YTLbxTNHyDgv7YoTFdN7fKNj0
	 eVhao4UBNxj3Q==
Date: Mon, 8 Apr 2024 19:22:29 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Paul Eggert <eggert@cs.ucla.edu>, Time zone mailing list <tz@iana.org>,
	dickey@his.com, linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: [PATCH v2] tzfile.5: Fix indentation
Message-ID: <ZhQn1U_rIwKiJ5wx@debian>
References: <f34c6ff3-3b22-4e64-9eea-5009280f56fa@cs.ucla.edu>
 <ZhOrbl8GE4WhXGvD@debian>
 <20240408155925.vf4huybv22aiqohm@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="AOpqdVOpPQsq4PJF"
Content-Disposition: inline
In-Reply-To: <20240408155925.vf4huybv22aiqohm@illithid>


--AOpqdVOpPQsq4PJF
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 8 Apr 2024 19:22:29 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Paul Eggert <eggert@cs.ucla.edu>, Time zone mailing list <tz@iana.org>,
	dickey@his.com, linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: [PATCH v2] tzfile.5: Fix indentation

Hi Branden!

On Mon, Apr 08, 2024 at 10:59:25AM -0500, G. Branden Robinson wrote:
> [Caveat lector: this is not a short email and I hyperlink to multiple
> longer ones]
>=20
> Hi Paul & Alex,
>=20
> At 2024-04-07T23:33:38-0700, Paul Eggert wrote:
> > > > The lines are too long to read comfortably; this is inherent to
> > > > how a good font squeezes in more text.
> > >=20
> > > I'm not sure I understand this.  Do you mean there are too many
> > > letters in a line in the Linux man-pages PDF or too few?
> >=20
> > Too many. I'm getting about 100 characters per line in the PDF, which
> > is on the extreme high end of the usual recommendations (it should be
> > closer to 60 characters per line). There's no single answer here of
> > course (opinions do differ), but the man page lines are pretty clearly
> > too long in the PDFs.
>=20
> One straightforward means of addressing this problem is simply to
> typeset the manual at a larger type size.  Say, 11 or 12 points.
> groff's supported that for a couple of decades.  For these sizes, Werner
> Lemberg even chose vertical spacing counterparts inspired by TeX.
>=20
> groff_man(7):
>      -rStype=E2=80=90size
>               Use type=E2=80=90size for the document=E2=80=99s body text;=
 acceptable
>               values are 10, 11, or 12 points.  See subsection =E2=80=9CF=
ont
>               style macros=E2=80=9D above for the default.
>=20
> > See:
> >=20
> > Nanavati AA, Bias RG. Optimal line length in reading - a literature rev=
iew.
> > Visible Language. 2005;39(2):120-44.
> > https://journals.uc.edu/index.php/vl/article/view/5765
>=20
> I've got this queued up to read during a doctor's appointment today.
> (More like a waiting room appointment.)
>=20
> I have a personal shell function that exercises the new groff man `PO`
> register to use the default line length but center the man page in the
> terminal window, and have been enjoying it for months.
>=20
> An inevitable problem we will face in trying to set man pages on
> narrower lines is the heavy use of tables and other means of filling
> disablement by page authors.  No sooner did they get a feel for the
> additional 13n additional elbow room that groff gave them (over
> historical *roffs' 65n), than they started overrunning that limit too.
>=20
> Documenters of C wanted function synopses to look just so, and turned
> off filling to get it.  Other page authors wanted to depict what the
> terminal would look like, and ran roughshod over considerations of
> circumstances under which a man page might actually be typeset.
>=20
> I wouldn't be at all averse to reimposing a 65n line length limit as a
> _style_ recommendation.  And I think I know where to poke the formatter
> to get it to emit a warning diagnostic if the line length is overrun
> when filling is disabled.  (This would be kin to TeX's notoriously
> discouraging "overfull hbox" warnings, but if I can't write a diagnostic
> message more intelligible than that, I'll put in for retirement.)

Since manual pages often have a few levels of indentation, lines need to
be rather wide on the terminal (and using those levels of indentation,
the actual length of the text isn't too much).  I wouldn't narrow the
line length in nroff(1) mode.

I find troff(1) mode the one that's hardly readable by default.

>=20
> At 2024-04-08T10:31:32+0200, Alejandro Colomar wrote:
> > Hmmm, with a set of macros C CR RC CI and IC to use them it could be a
> > good idea.  Branden, how does it look to you?  I don't think CB and BC
> > would be necessary.
>=20
> I don't like that idea at all.  I don't want to add _any_ more font
> macros to man(7).

Okay.

> > > Too many. I'm getting about 100 characters per line in the PDF,
> > > which is on the extreme high end of the usual recommendations (it
> > > should be closer to 60 characters per line).
> >=20
> > Completely agree.  CC +=3D groff.  Branden, do you think we can fix that
> > somehow?  Literally, the first thing I thought about the Linux
> > man-pages PDF when I saw it was "Lines are so long that it's hard for
> > me to read them.".  Well, it was the second; I first saw the front
> > page, which was beautiful; that thought was the first one when I say
> > the first page after the front.
>=20
> Pass `-rS11` (or -rS12) to the formatter when building and see if you
> like the result.

Hmm, that's much more pleasing!

commit 5ba7ca38f758370c9cbfcb901aa0f0f1efb31f52 (HEAD -> contrib)
Author: Alejandro Colomar <alx@kernel.org>
Date:   Mon Apr 8 19:15:35 2024 +0200

    share/mk/: $TROFFFLAGS: Use a larger font size
   =20
    Link: <https://journals.uc.edu/index.php/vl/article/view/5765>
    Reported-by: Paul Eggert <eggert@cs.ucla.edu>
    Suggested-by: "G. Branden Robinson" <branden@debian.org>
    Cc: "Thomas E. Dickey" dickey@his.com
    Signed-off-by: Alejandro Colomar <alx@kernel.org>

diff --git a/share/mk/configure/build-depends/groff-base/troff.mk b/share/m=
k/configure/build-depends/groff-base/troff.mk
index 051172ce7..b9b7518cf 100644
--- a/share/mk/configure/build-depends/groff-base/troff.mk
+++ b/share/mk/configure/build-depends/groff-base/troff.mk
@@ -6,7 +6,9 @@ ifndef MAKEFILE_CONFIGURE_BUILD_DEPENDS_GROFF_BASE_TROFF_IN=
CLUDED
 MAKEFILE_CONFIGURE_BUILD_DEPENDS_GROFF_BASE_TROFF_INCLUDED :=3D 1
=20
=20
-DEFAULT_TROFFFLAGS :=3D -wbreak
+DEFAULT_TROFFFLAGS :=3D \
+       -wbreak \
+       -rS12
 EXTRA_TROFFFLAGS   :=3D
 TROFFFLAGS         :=3D $(DEFAULT_TROFFFLAGS) $(EXTRA_TROFFFLAGS)
 TROFF              :=3D troff

>=20
> Regards,
> Branden

Have a lovely day!
Alex
--=20
<https://www.alejandro-colomar.es/>

--AOpqdVOpPQsq4PJF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYUJ9UACgkQnowa+77/
2zKT8A/8D+OZIeISIX/2/fMJliuEA37RlKuLFFMzoVls9qoERWH+agJJiV9F98e6
PBkMVnGd7Of9PWKcyvoHCQYVK7upbKuoVrRzJZQD8gnNvMDKING9nc9ukhdMVxWm
9UsMj6ra/7zMWhZAYFhDBU6Rb2hzHiDV0V4gWFvRYlU6LJP2dgnF+1hXZz89c2rk
pWJUsoZa4mNtHhfN8Zr3e+VF2sDvnkXHPdhKlUPrUzt5hKK1Uifjt2fAr8uEZcsO
l0aIwpsEwhkCSD1UK5rD3+5zGUdl5zCAipPGyvu1iMdI1Tp2uKqTCG+pOqj8grvA
pVTSJwpXHAkcNGpqMYJQmUfw0+LSNwTwej3zYBqOKho2pv9kROWlaKb4zLzDZsCD
rjGdoIOhOTgfDfEZ1xc6rAoPqsFRTF/KAquYrIwTkgMhKiORupTAToiu5MnK92Yf
VVfKUap2FPr+gxgBkngrS9pOIz3ImSEMYXGmQBpFqqhuM5fRxtFNJJE5NkY6DSnH
UIcr3VEf47EpV1sVrHOsRnw0WwaG1rb+yle02gh+bkUm3ZhgyEsXVJI360jscF/Z
F0GOirJDkgbCOiB5UYyEhNly/3EK2yd0P7ET4h3WfCGO+dGqOcusbrkjfQxpUdX/
Hrn/vtvB7ZJs+MMG3ElBxUfyiWgvXD1KywLrO+4lnWehRy6Ecbw=
=ugCS
-----END PGP SIGNATURE-----

--AOpqdVOpPQsq4PJF--

