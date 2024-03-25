Return-Path: <linux-man+bounces-688-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 19CD488A57C
	for <lists+linux-man@lfdr.de>; Mon, 25 Mar 2024 15:58:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C035F30770E
	for <lists+linux-man@lfdr.de>; Mon, 25 Mar 2024 14:58:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7194E157A5B;
	Mon, 25 Mar 2024 12:05:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tUVwGTud"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 843AD1BB748
	for <linux-man@vger.kernel.org>; Mon, 25 Mar 2024 11:48:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711367323; cv=none; b=N08I0clyCnmTxuckQB/4jeTCx06tkmYIQlSaq8Eowrk5zpimgyC9GlCZZp/cR6p2ENA9HUsk+hqUe39Yiz7xoQoiWOXR9y+D78w2Mbe29gjB4pUYfyV6oiGrvhaCMm7BxRBpYlkofsdkbM8b56//rIe8kotcKMc1y0kll7IwGPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711367323; c=relaxed/simple;
	bh=r/uHTTvr74zMjIK4latyGTkk+sUhH2+tPbkhHFan3V4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Qn3M4T28f480JjlwWFUV7+4lu1hZfrVfTTQYwxgfNnsD1ka1jcUyMDuqs8XnrKsjtjDwE5gT1KEQaDy6Bsq5SNZ/D0gMkbSTHlyN0Caz22hkfzM/8vvo5KyjEFhBqzhiyA7hKEt3hiykgkxMW9+vRP0UrS6dJPOvhIaE55aEz3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tUVwGTud; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C4EBC433F1;
	Mon, 25 Mar 2024 11:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711367323;
	bh=r/uHTTvr74zMjIK4latyGTkk+sUhH2+tPbkhHFan3V4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tUVwGTudNuEanwkEHhh6zsdC8S0g5J0VfETNM2Xp781B7gh8+I+riAH+nc/is/3Sc
	 bmcj+G3OlHkkwjCU6CIiBYcTh0BPv1Nr8HC3TvBFVCXk6xNKe9gaHmmsfjPg3O2Rb8
	 ET04FQpzOaZwqhpZXs2nY59iw5xyyt20ut2qEWY9Zm+EaeV/qMOFv4Pa2/DDBxIsRN
	 w46+7zJyvBMVMO0ET4kWTcW+UPyUJckXdEpXIX+E/cCId6hjCZKsuS5+B58GOMxnNW
	 4qh++SVLDbkx9QWsmjhp0mNRZ+vyeDbbMC6CvFFVmH3gpL2YoZM3ENbbFwNJ4IoS8y
	 ObFC4PKUeNGjA==
Date: Mon, 25 Mar 2024 12:48:40 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: man-pages PDF book: fonts
Message-ID: <ZgFkmFxMYYPBZqjO@debian>
References: <Zf3BRmfTFvADOIBG@debian>
 <20240325041954.fofjtgghwhe4znm6@illithid>
 <ZgFioIO94vFupB53@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="9uQHCoV3Wo8mZEQC"
Content-Disposition: inline
In-Reply-To: <ZgFioIO94vFupB53@debian>


--9uQHCoV3Wo8mZEQC
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 25 Mar 2024 12:48:40 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: man-pages PDF book: fonts

On Mon, Mar 25, 2024 at 12:40:07PM +0100, Alejandro Colomar wrote:
> Hi Branden!
>=20
> On Sun, Mar 24, 2024 at 11:19:54PM -0500, G. Branden Robinson wrote:
> > Hi Alex,
> >=20
> > At 2024-03-22T18:35:02+0100, Alejandro Colomar wrote:
> > > I see that Debian provides the Tinos font in some package:
> > >=20
> > > $ apt-file find -x Tinos.*pf
> > > texlive-fonts-extra: /usr/share/texlive/texmf-dist/fonts/type1/google=
/tinos/Tinos-Bold.pfb
> > > texlive-fonts-extra: /usr/share/texlive/texmf-dist/fonts/type1/google=
/tinos/Tinos-BoldItalic.pfb
> > > texlive-fonts-extra: /usr/share/texlive/texmf-dist/fonts/type1/google=
/tinos/Tinos-Italic.pfb
> > > texlive-fonts-extra: /usr/share/texlive/texmf-dist/fonts/type1/google=
/tinos/Tinos.pfb
> > >=20
> > > The above is .pfb, not .pfa, which I don't understand and may not be
> > > usable for our purposes,
> >=20
> > PFA and PFB are closely related font file formats.  Reputedly, they
> > stand for "PostScript" (or "Printer") "Font" "ASCII" or "Binary",
> > respectively.  PFB was much more widely used on MS-DOS, due either to
> > the meager disk space there, the 640kB RAM limit, or because it was
> > thought that the fonts would be "pirated" (or even understood) less
> > because the nature of their contents was less obvious.  Who knows?
> >=20
> > Regardless, groff provides a tool for converting uncouth PFB to
> > civilized PFA.
> >=20
> > $ apropos pfbtops
> > pfbtops (1)    - translate Printer Font Binary files to PostScript ASCII
> >=20
> > The grops(1) and gropdf(1) man pages in groff 1.23.0 discuss using this
> > tool to prepare fonts so that groff can read them.
>=20
> Hmmm, so I could add a Makefile target to produce this .pfa font from
> the packaged .pfb one, and then get gropdf(1) to use this one.  --Using
> a Makefile pays for itself.--  The process is fast, it seems.
>=20
> $ time pfbtops \
> 	/usr/share/texlive/texmf-dist/fonts/type1/google/tinos/Tinos.pfb \
> | wc -l
> 19570
>=20
> real	0m0.012s
> user	0m0.015s
> sys	0m0.001s
>=20
> I'll try it.  This should remove a gigantic file from the project
> repository.  Thanks!  =3D)
>=20
> > (Why not "pfbtopfa"?  Ghostscript was already using that name.  Why does
> > groff provide a tool that does the same thing?  Good question.  I don't
> > know.  It is not a young program--it is old.[1]  Maybe at one time groff
> > was portable to MS-DOS but Ghostscript was not.)

Oh, and there's also pfb2pfa(1), it seems.

alx@debian:~$ apt-file find bin/pfbtops
groff: /usr/bin/pfbtops                  =20
alx@debian:~$ apt-file find bin/pfbtopfa
ghostscript: /usr/bin/pfbtopfa           =20
alx@debian:~$ apt-file find bin/pfb2pfa
texlive-binaries: /usr/bin/pfb2pfa       =20

>=20
> Which one do you recommend?  pfbtopfa(1) seems to have problems:
>=20
> $ pfbtopfa /usr/share/texlive/texmf-dist/fonts/type1/google/tinos/Tinos.p=
fb
> Error: /invalidfileaccess in --file--
> Operand stack:   in1   (/usr/share/texlive/texmf-dist/fonts/type1/google/=
tinos/Tinos.pfb)   (r)
> Execution stack:   %interp_exit   .runexec2   --nostringval--   --nostrin=
gval--   --nostringval--   2   %stopped_push   --nostringval--   --nostring=
val--   --nostringval--   false   1   %stopped_push   1949   1   3   %oparr=
ay_pop   1948   1   3   %oparray_pop   1933   1   3   %oparray_pop   1803  =
 1   3   %oparray_pop   --nostringval--   %errorexec_pop   .runexec2   --no=
stringval--   --nostringval--   --nostringval--   2   %stopped_push   --nos=
tringval--   --nostringval--
> Dictionary stack:   --dict:746/1123(ro)(G)--   --dict:0/20(G)--   --dict:=
88/200(L)--
> Current allocation mode is local
> Last OS error: Permission deniedCurrent file position is 980
> GPL Ghostscript 10.03.0: Unrecoverable error, exit code 1
>=20
> > > Can we similarly get the Unifont for zh_CN PDFs?
> >=20
> > As I understand it, GNU Unifont is a low-resolution bitmap font intended
> > for terminal emulators.[2]  I expect it would look offensively bad when
> > typeset.
>=20
> That's the font Deri used in his patch:
> <https://lore.kernel.org/linux-man/2607548.uBY7QHFjlC@pip/>
>=20
> I guess that's better than nothing.
>=20
> Have a lovely day!
> Alex
>=20
> >=20
> > Regards,
> > Branden
> >=20
> > [1] https://git.savannah.gnu.org/cgit/groff.git/tree/NEWS?h=3D1.23.0#n3=
211
> >     https://www.youtube.com/watch?v=3DK2tgZCabTzs
> > [2] https://unifoundry.com/unifont/index.html
>=20
>=20
>=20
> --=20
> <https://www.alejandro-colomar.es/>
> Looking for a remote C programming job at the moment.



--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--9uQHCoV3Wo8mZEQC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYBZJgACgkQnowa+77/
2zKuRRAAlYLdXGYQ0/wNTq7kgHhgxCgjddIcbDmbTRGR4Wyk/LsvJ7JFAJurV1fh
BcOqX4VBL7LNQ0lsY/mOC64gKnHVlkqXq9U/sFDDKsJfg8Fp2+DpwsT0Veo3ufKc
b3tLfdugLtFIzIcAZWUDQemxBXb4ls7UMAqO+Oyixu9sGlf9Bm1gfLBP0dj2fVXr
mK/K4ghOcgHNRO9CDcbJ9DRKHYutMaWK1kdI2fnrGb8+Js36YPHretH2ryEB+8Oc
9UvGolCN9SzNg6HLgLkx5OBeIqzkfKxatqBeZ9ECk9wDdZymiWyPxQXxS+bd1noS
ewDWyoFEDbc1C1f6TKNomvPmGPLTyCb3Xrt5fuTC1yh/Y2ThZM2vqvFm2EsXEt+N
l5kCrVJhxn9wRI+lyuTFcXxeujaZBBTDk2HyC2uSiuDzpGh5EWa3T6kU4rYH0osm
U9IkRF+WHgusaWeRQpnLylDpPgwll/FOo4u8Z41FRXVDlDa9xbWbxNb4VUjwd13D
WI1IGP401PZhs4O1prz52fyGCXJMcUP03yCZHSZ0Mi/8UfdRP+qgQ++HCo4XODQs
8oxRELlBipN2cgxyUjLWCE3OsXiPQ/mca4GjRU5xQSYAyHbCpnK4+gSIAeS7bRst
AKNyYvI+mZtvpMWbmTnpoIBkUSRzghNG+uZJlkLWZ+HWH2qS6kA=
=GdYD
-----END PGP SIGNATURE-----

--9uQHCoV3Wo8mZEQC--

