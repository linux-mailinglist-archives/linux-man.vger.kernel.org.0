Return-Path: <linux-man+bounces-2855-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 047C3AA7607
	for <lists+linux-man@lfdr.de>; Fri,  2 May 2025 17:30:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 90F443A9C7B
	for <lists+linux-man@lfdr.de>; Fri,  2 May 2025 15:29:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A660C1991B8;
	Fri,  2 May 2025 15:30:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="otjeOwpv"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 630301898E9
	for <linux-man@vger.kernel.org>; Fri,  2 May 2025 15:30:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746199806; cv=none; b=qLKgWBz1F9wxeNVmvS5XI3bBK9G73AU8X9ApQrSb2l3l+Dp4rYj8pqitp1Wv46iIEoYNUv9kW1bn7OPAGN2sQ2HP4FE8eG2tBRPPZCDue4F5YD7uLgjeIlXEe1eOavDTdv3zBsWVmDNnxR/R6QsWQh+Y0jTYpvIBDlpdfjXEi8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746199806; c=relaxed/simple;
	bh=w+rkiDPJV1YzlVMmsf3GI8AGf6ffvvNHwDTMsOnVCuc=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S29X/CVJYdP9Z3mYHwaplT7fsOUh4FTxPRXazB8IZ7s4rdb0eamVhxnfb75tHzv248hBfBB/ubL0axCyGk702tLqvChuIROpeCQ+JYe7ZzFeuzoCjQKMt8wVrZUvbxOKykRGwcOn4b2Zj9NFmR2XhEbOz5VsVCI90LpUfMtbWyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=otjeOwpv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BEB8C4CEE4;
	Fri,  2 May 2025 15:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746199805;
	bh=w+rkiDPJV1YzlVMmsf3GI8AGf6ffvvNHwDTMsOnVCuc=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=otjeOwpvV0TKLPGaZ4HyezkXSoL5C/TD4z9FlCgfN9l9nivUFPvQmwyJEI6lOdbdh
	 t/gyW/BZ93OC6MOyy8Yl4T0z0hXy5RbS8cn0z35A2NoIpW14gbKU2xd/Bm87F6jjfe
	 lz0l9TpW68ZOrdOOHPys1guWv4/B4g5ETFMo+u9vTUeMrfWNn5+haz1MGlRttspC9i
	 6rdqx+BOslwwKJmRjQTjv6PKaKX6RCspsddkHLNvTyNQiYmQn8eFZ4PUAw3xbKJ4Ce
	 2mCPgtHryEqurTPAUpkee7Q1HcIVmDztNjjQCLRhymPtCpSuweroZjgz1CWbqLPLqQ
	 FUxm8rbB+pRiw==
Date: Fri, 2 May 2025 17:30:02 +0200
From: Alejandro Colomar <alx@kernel.org>
To: groff@gnu.org, linux-man@vger.kernel.org
Subject: Re: Paragraphs formatted differently depending on previous ones
Message-ID: <kngp32npd7quhxdut6jwstqrvscoxap2l35rm4fofdje7ymi4r@xekljrcd6xy5>
References: <dbczpry2ukcht3d2pw4b2l7yla63eetfprfpblhvhwj2dpalvv@ba4itgqked3d>
 <20250502120139.yqstcq32hdtagozl@illithid>
 <n5coqz6wcslpxfj7l32b5m765xwzn53zlcqi7hgreefe3r5l4h@3o6auzkcijud>
 <20250502142907.yjzcdv6cdhryg2l5@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="z3ey5zugeu7tvtme"
Content-Disposition: inline
In-Reply-To: <20250502142907.yjzcdv6cdhryg2l5@illithid>


--z3ey5zugeu7tvtme
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: groff@gnu.org, linux-man@vger.kernel.org
Subject: Re: Paragraphs formatted differently depending on previous ones
References: <dbczpry2ukcht3d2pw4b2l7yla63eetfprfpblhvhwj2dpalvv@ba4itgqked3d>
 <20250502120139.yqstcq32hdtagozl@illithid>
 <n5coqz6wcslpxfj7l32b5m765xwzn53zlcqi7hgreefe3r5l4h@3o6auzkcijud>
 <20250502142907.yjzcdv6cdhryg2l5@illithid>
MIME-Version: 1.0
In-Reply-To: <20250502142907.yjzcdv6cdhryg2l5@illithid>

Hi Branden,

On Fri, May 02, 2025 at 09:29:07AM -0500, G. Branden Robinson wrote:
> At 2025-05-02T14:42:12+0200, Alejandro Colomar wrote:
> > By default, I prefer keeping adjustment.  Often, I want to see changes
> > in adjustment too as part fo the diff.  Maybe I should add an option to
> > disable adjustment optionally, which could be useful in those cases
> > where the diff is a bit hard to understand.
>=20
> For myself, I found that editorial changes to recast wording or
> otherwise add and remove material led to cascading reports of
> differences _only_ to spaces in adjusted lines, which usually aren't of
> interest to me.

I've changed my mind.  I think it's better to disable it by default in
diffman-git(1), and I can enable it easily anyway.  I've applied the
following patch:

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D637b0aa571b61d98c717e7ab7490df8a3d9e4841>

commit 637b0aa571b61d98c717e7ab7490df8a3d9e4841
Author: Alejandro Colomar <alx@kernel.org>
Date:   Fri May 2 17:08:20 2025 +0200

    src/bin/diffman-git: Disable adjustment by default
   =20
    One can still enable it by setting an empty MANROFFOPT.
   =20
    Suggested-by: "G. Branden Robinson" <branden@debian.org>
    Signed-off-by: Alejandro Colomar <alx@kernel.org>

diff --git a/src/bin/diffman-git b/src/bin/diffman-git
index ede506c91..25c0a98b6 100755
--- a/src/bin/diffman-git
+++ b/src/bin/diffman-git
@@ -31,6 +31,7 @@ git rev-parse --show-toplevel | read -r dir;
 cd "$dir";
=20
 test -v MAN_KEEP_FORMATTING || export MAN_KEEP_FORMATTING=3D1;
+test -v MANROFFOPT          || export MANROFFOPT=3D'-d AD=3Dl';
=20
 # shellcheck disable=3DSC2206  # We want only non-empty variables in the a=
rray.
 opts=3D($s $w $u);

> > > for P in *.[157]
> > > do
> > >     if [ "$P" =3D groff_mmse.7 ]
> > >     then
> > >       LOCALE=3D-msv
> > >     else
> > >       LOCALE=3D
> > >     fi
> >=20
> > What's -msv?
>=20
> groff_tmac(5):
>=20
>    Localization packages
>      For Western languages, an auxiliary package for localization sets
>      the hyphenation mode and loads hyphenation patterns and exceptions.
>      Localization files can also adjust the date format and provide
>      translations of strings used by some of the full=E2=80=90service mac=
ro
>      packages; alter the input encoding (see the next section); and
>      change the amount of additional inter=E2=80=90sentence space.  For E=
astern
>      languages, the localization file defines character classes and sets
>      flags on them.  By default, troffrc loads the localization file for
>      English.
> ...
>      sv     Swedish; localizes man, me, mm, mom, and ms.  Sets the input
>             encoding to Latin=E2=80=901 by loading latin1.tmac.  Some of =
the
>             localization of the mm package is handled separately; see
>             groff_mmse(7).

Hmmm.

> > >     echo $0: $P >&2
> > >     echo "groff $ARGS $LOCALE $P" > "$P.cR.txt"
> > >     groff $ARGS $LOCALE "$P" >> "$P.cR.txt"
> > > ...
> > > done
> >=20
> > Would you mind sharing the entire script?  I might get ideas for
> > improving diffman-git(1).
>=20
> Sure; it's crude and dumb (like its author?)--I don't generally spend a
> lot of software engineering effort on stuff I produce only for my own
> consumption.  I've attached it.  The script name is revealing of some of
> my music listening habits.
>=20
> > (And maybe you can drop your script if
> > diffman-git(1) would be good-enough for you.)
>=20
> If it stops working for the limited purpose I require it, I may look
> into alternatives.  :)

I suggest you try it.  I has some nice features, like specifying the
amount of context lines, or ignoring white space changes (which is
useful to confirm that some change only affects spacing but nothing
else).  It also allows you to diff arbitrary commits, without having to
store a copy of the formatted output.

> > The RE movement is intended to indent the "Since Linux 6.7," para.
>=20
> I'd need to look at more context, and haven't, but `IP` already does
> that.

That para was a continuation of a TP, and now is changed to be a
continuation of a nested TP (thus the RS).  See the diff with some more
context, which might clarify:

$ MANWIDTH=3D72 diffman-git -U20 HEAD^
--- HEAD^^:man/man2const/TIOCLINUX.2const
+++ HEAD^:man/man2const/TIOCLINUX.2const
@@ -24,75 +24,84 @@
             Get task information.  Disappeared in Linux 1.1.92.
=20
      subcode=3DTIOCL_SETSEL
             Set selection.  argp points to a
=20
                 struct {
                     char  subcode;
                     short xs, ys, xe, ye;
                     short sel_mode;
                 };
=20
             xs and ys are the starting column and row.  xe and ye are
             the ending column and row.  (Upper left corner is row=3Dcol=E2=
=80=90
             umn=3D1.)  sel_mode may be one of the following operations:
=20
             TIOCL_SELCHAR
                    Select character=E2=80=90by=E2=80=90character.  The ind=
icated screen
                    characters are highlighted and saved in a kernel
                    buffer.
=20
+                   Since Linux 6.7, using this selection mode requires
+                   the CAP_SYS_ADMIN capability.
+
             TIOCL_SELWORD
                    Select word=E2=80=90by=E2=80=90word, expanding the sele=
ction out=E2=80=90
                    wards to align with word boundaries.  The indicated
                    screen characters are highlighted and saved in a
                    kernel buffer.
=20
+                   Since Linux 6.7, using this selection mode requires
+                   the CAP_SYS_ADMIN capability.
+
             TIOCL_SELLINE
                    Select line=E2=80=90by=E2=80=90line, expanding the sele=
ction out=E2=80=90
                    wards to select full lines.  The indicated screen
                    characters are highlighted and saved in a kernel
                    buffer.
=20
+                   Since Linux 6.7, using this selection mode requires
+                   the CAP_SYS_ADMIN capability.
+
             TIOCL_SELPOINTER
                    Show the pointer at position (xs, ys) or (xe, ye),
                    whichever is later in text flow order.
=20
             TIOCL_SELCLEAR
                    Remove the current selection highlight, if any, from
                    the console holding the selection.
=20
                    This does not affect the stored selected text.
=20
             TIOCL_SELMOUSEREPORT
                    Make the terminal report (xs, ys) as the current
                    mouse location using the xterm(1) mouse tracking
                    protocol (see console_codes(4)).  The lower 4 bits
                    of sel_mode (TIOCL_SELBUTTONMASK) indicate the de=E2=80=
=90
                    sired button press and modifier key information for
                    the mouse event.
=20
                    If mouse reporting is not enabled for the terminal,
                    this operation yields an EINVAL error.
=20
-            Since Linux 6.7, using this subcode requires the
-            CAP_SYS_ADMIN capability.
+                   Since Linux 6.7, using this selection mode requires
+                   the CAP_SYS_ADMIN capability.
=20
      subcode=3DTIOCL_PASTESEL
             Paste selection.  The characters in the selection buffer
             are written to fd.
=20
             Since Linux 6.7, using this subcode requires the
             CAP_SYS_ADMIN capability.
=20
      subcode=3DTIOCL_UNBLANKSCREEN
             Unblank the screen.
=20
      subcode=3DTIOCL_SELLOADLUT
             Sets contents of a 256=E2=80=90bit look up table defining char=
ac=E2=80=90
             ters in a "word", for word=E2=80=90by=E2=80=90word selection. =
 (Since Linux
             1.1.32.)
=20
             Since Linux 6.7, using this subcode requires the
             CAP_SYS_ADMIN capability.
=20
      subcode=3DTIOCL_GETSHIFTSTATE


> #!/bin/bash
>=20
> set -e
>=20
> if [ $# -ne 1 ]
> then
>     echo "need a directory argument (e.g., \"old\", \"new\")" >&2
>     exit 1
> fi

Being diffman-git(1), it uses the git(1) repository to find the old
pages and the new ones.  No need to specify paths.

>=20
> if ! [ -x ./build/test-groff ]
> then
>     echo "./build/test-groff does not exist or is not executable" >&2
>     exit 2
> fi
>=20
> groff () {
>     ../build/test-groff "$@"
> }

I use man(1), so it would be a matter of passing an appropriate PATH to
run your development groff version.

>=20
> BFLAG=3D
> #BFLAG=3D-b
> DIR=3D$1
>=20
> MANS=3D(
> ./src/utils/lkbib/lkbib.1.man
> ./src/utils/tfmtodit/tfmtodit.1.man
> ./src/utils/hpftodit/hpftodit.1.man
> ./src/utils/pfbtops/pfbtops.1.man
> ./src/utils/afmtodit/afmtodit.1.man
> ./src/utils/lookbib/lookbib.1.man
> ./src/utils/addftinfo/addftinfo.1.man
> ./src/utils/xtotroff/xtotroff.1.man
> ./src/utils/indxbib/indxbib.1.man
> ./src/roff/nroff/nroff.1.man
> ./src/roff/troff/troff.1.man
> ./src/roff/groff/groff.1.man
> ./src/utils/grog/grog.1.man
> ./src/devices/grodvi/grodvi.1.man
> ./src/devices/grolbp/grolbp.1.man
> ./src/devices/grops/grops.1.man
> ./src/devices/grohtml/grohtml.1.man
> ./src/devices/grolj4/grolj4.1.man
> ./src/devices/grotty/grotty.1.man
> ./src/devices/gropdf/gropdf.1.man
> ./src/devices/gropdf/pdfmom.1.man
> ./src/devices/xditview/gxditview.1.man
> ./src/preproc/preconv/preconv.1.man
> ./src/preproc/tbl/tbl.1.man
> ./src/preproc/soelim/soelim.1.man
> ./src/preproc/eqn/eqn.1.man
> ./src/preproc/eqn/neqn.1.man
> ./src/preproc/pic/pic.1.man
> ./src/preproc/refer/refer.1.man
> ./src/preproc/grn/grn.1.man
> ./contrib/pic2graph/pic2graph.1.man
> ./contrib/hdtbl/groff_hdtbl.7.man
> ./contrib/mm/groff_mm.7.man
> ./contrib/mm/mmroff.1.man
> ./contrib/grap2graph/grap2graph.1.man
> ./contrib/rfc1345/groff_rfc1345.7.man
> ./contrib/eqn2graph/eqn2graph.1.man
> ./contrib/gpinyin/gpinyin.1.man
> ./contrib/mom/groff_mom.7.man
> ./contrib/gdiffmk/gdiffmk.1.man
> ./contrib/glilypond/glilypond.1.man
> ./contrib/chem/chem.1.man
> ./contrib/gperl/gperl.1.man
> ./man/groff_tmac.5.man
> ./man/groff_out.5.man
> ./man/groff_diff.7.man
> ./man/groff_char.7.man
> ./man/groff.7.man
> ./man/roff.7.man
> ./man/groff_font.5.man
> ./tmac/groff_trace.7.man
> ./tmac/groff_me.7.man
> ./tmac/groff_ms.7.man
> ./tmac/groff_man.7.man
> ./tmac/groff_man_style.7.man
> ./tmac/groff_mdoc.7.man
> ./tmac/groff_www.7.man
> )

I calculate the MANS dynamically with a regex:

	case $# in
	0)  git diff --name-only;		;;
	1)  git diff --name-only "$1^..$1";	;;
	*)  git diff --name-only "$1..$2";	;;
	esac \
	| grep -E '(\.[[:digit:]]([[:alpha:]][[:alnum:]]*)?\>|\.man)+(\.man|\.in)*=
$' \
	| sortman \

>=20
> MANS_SV=3D(
> ./contrib/mm/groff_mmse.7.man
> )
>=20
> mkdir "$DIR"
> pushd "$DIR" >/dev/null
>=20
> # the change logs, so we know approximately where we are
> cp ../ChangeLog .
>=20
> for d in chem gdiffmk glilypond gperl gpinyin hdtbl mm mom rfc1345 sboxes
> do
> 	cp ../contrib/$d/ChangeLog ./ChangeLog.$d
> done
>=20
> # our Texinfo manual
> cp ../build/doc/groff.txt .
>=20
> # our Texinfo manual via HTML
> cp ../build/doc/groff.html .
> lynx -dump groff.html > groff.html.txt
>=20
> # our ms manuals
> groff $BFLAG -ww -Tutf8 -ept -ms ../doc/ms.ms > ms.txt
>=20
> # our me manuals
> #groff $BFLAG -ww -Tutf8 -me ../doc/meintro.me > meintro.txt
> #groff $BFLAG -ww -Tutf8 -kt -me -mfr ../doc/meintro_fr.me > meintro_fr.t=
xt
> #groff $BFLAG -ww -Tutf8 -me ../doc/meref.me > meref.txt
> me_pre=3D../ATTIC/my.me
> groff $BFLAG -ww -Tutf8 -me $me_pre ../build/doc/meintro.me > meintro.txt
> groff $BFLAG -ww -Tutf8 -kt -me -mfr $me_pre ../build/doc/meintro_fr.me \
>     > meintro_fr.txt
> groff $BFLAG -ww -Tutf8 -me $me_pre ../build/doc/meref.me > meref.txt
>=20
> for F in ${MANS[*]} ${MANS_SV[*]}
> do
>     G=3D../build/${F%.man}
>     if [ -f "$G" ]
>     then
>         cp "$G" .
>     else
>         echo "warning: \"$G\" missing" >&2
>     fi
> done
>=20
> : ${AD:=3Dl}
>=20
> ARGS=3D"$BFLAG -ww -dAD=3D$AD -rCHECKSTYLE=3D3 -rU1 -Tutf8 -e -t -mandoc"
> NOCR=3D-rcR=3D0
> LOCALE=3D
> ARGS_HTML=3D"$BFLAG -ww -rCHECKSTYLE=3D3 -Thtml -e -t -mandoc -P-C -P-G"
>=20
> for P in *.[157]
> do
>     if [ "$P" =3D groff_mmse.7 ]
>     then
>       LOCALE=3D-msv
>     else
>       LOCALE=3D
>     fi
>=20
>     echo $0: $P >&2
>     echo "groff $ARGS $LOCALE $P" > "$P.cR.txt"
>     groff $ARGS $LOCALE "$P" >> "$P.cR.txt"
>     echo "groff $ARGS $LOCALE $NOCR $P" > "$P.no-cR.txt"
>     groff $ARGS $LOCALE $NOCR "$P" >> "$P.no-cR.txt"
>     echo "<!-- groff $ARGS_HTML $LOCALE -P-I$P $P -->" > "$P.html"
>     groff $ARGS_HTML $LOCALE -P-I$P $P >> "$P.html"
>     rm "$P"
> done

Hmmm, my script is dumber; it only calls man(1).  But I guess that's
enough.  You can always tell man(1) to pass stuff to groff(1).

	| sortman \
	| while read -r f; do \
		case $# in
		0)  old=3D"HEAD:$f";  new=3D"./$f";   ;;
		1)  old=3D"$1^:$f";   new=3D"$1:$f";  ;;
		*)  old=3D"$1:$f";    new=3D"$2:$f";  ;;
		esac;

		case $# in
		0)  cat "$new";       ;;
		*)  git show "$new";  ;;
		esac \
		| man /dev/stdin \
		| diff --label "$old" --label "$new" "${opts[@]}" \
			<(git show "$old" | man /dev/stdin) \
			/dev/stdin \
		|| true;
	done;

>=20
> popd >/dev/null

popd(1) at the end of a script is not useful.  Or do you source the
script?

>=20
> # vim:set ai et sw=3D4 ts=3D4 tw=3D80:


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--z3ey5zugeu7tvtme
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgU5PMACgkQ64mZXMKQ
wqnkGA/6AuHHR4xC+IgU9GaTnFU0fyN4OoBnkzBLnzH8xUU64LzK9HnGOn2qJU+O
e+ghrlLhg4uVhCNGaorleQ4K37eeoSJmnWAS8jVV6Ai/6xnnAguHVj7DqlLDTFOb
1twDiZ5KMiSBmoYsu5/BH1uQawHNjreBmJKiLj9/4J8IfLy/SRbGtX27cp3jVcJH
ISB7QZc76a/7SKBsgTU0IG2u4oczRJX196tsU/ahp6w1xs//nKbhAFZd4NP8pXQF
xrEVJW3lPNsWhFgQFJ0jiOTVHWI8I5n7Z5kDkCnhWA9JDdifRs0Th0qJMhOt9PXw
hp0IufFhHFBa8ZdISRnluOoD+Pl2yPxlRCZmRyhVPN60YHPZOLKjwPnbhY/cgF53
2nA4zsJ6pPTHFWDRk+6QmJ7w4aCow5sOPhNAh+g4/VEQxA5fEo1zI0H2ztGlgKt6
mktqgJAqMtFF//BvivczkKZccEl6PPOduwyU5DjcgBY4VDpgW5qVJ+wfu34XrQBJ
dellD78qVtxRbv6aVtbqHapxjUs/aK2dpWURH7SUo1xvX9Fx2oIcAeF/YU6AdjIw
DDKttLB2cxJtIdkq5+0YQ3NN/Ut5mLRPhuHGWcmA2sRETP8eiXfPU47owMqjIk7L
ZaRrYChQl889C7f1LKVs+wJ9mvXpqJZNsolcU5FGv6mg2rNMnr0=
=Si1V
-----END PGP SIGNATURE-----

--z3ey5zugeu7tvtme--

