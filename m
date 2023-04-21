Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 682FF6EA18E
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 04:16:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233468AbjDUCQf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 22:16:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229736AbjDUCQe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 22:16:34 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id BA231138
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 19:16:30 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id E402F699E;
        Fri, 21 Apr 2023 04:16:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682043388;
        bh=FWaZIdF67q4PE+0zg88i6rhHjCyayJ6BZo/MsrWOxUA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=lVTd4Cwz+gN3JY727Y3S9IjljqGCGYSqegtJZWqtjGHSlZ1MYwZGpL/yBIj93VXoi
         /HHGsRG6ABpCogmIk0sYwaN7bryjqvi+d6RcrKDmrIsXf501h9ph56LVZOtd2fTNOm
         BgBiLs7cOhTanFRmo4uMEZc4fTnIAwNm6+jpjlE/xrVrXgNYxDKjL7yLRpSgX6J/oL
         PUWTEDbdb5Klc2LucBv+ERURDprVmYUxAei35Sq+ozE2vconGsZecUO6GwU/kn+R3p
         29gO8dh0+5decjeqdef8RsVfLV/CPP38odvGuwuiVJey6Y4x7vOUZ+y2653qwn429I
         64/i8f/Y2OCLQ==
Date:   Fri, 21 Apr 2023 04:16:27 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v7 4/8] regex.3: Improve REG_STARTEND
Message-ID: <atartvvgxjv7wk5rvdtiyrxjc22lnsgkf75hy3nz3m7fw3m6j4@i7khsjrvuise>
References: <8c4487ff-17c6-f4f6-d8cf-59a82d9daeca@gmail.com>
 <sowec336dkzypq6kjouieoyesyfdejmo3j2err3kc4xcpine4l@2takvti7yrem>
 <5918ccbe-d218-df42-cf0f-5eb7b3354e2b@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="36t622iwpy37oaa7"
Content-Disposition: inline
In-Reply-To: <5918ccbe-d218-df42-cf0f-5eb7b3354e2b@gmail.com>
User-Agent: NeoMutt/20230407
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--36t622iwpy37oaa7
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Fri, Apr 21, 2023 at 03:42:48AM +0200, Alejandro Colomar wrote:
> On 4/21/23 02:39, =D0=BD=D0=B0=D0=B1 wrote:
> > Explicitly spell out the ranges involved. The original wording always
> > confused me, but it's actually very sane.
> >=20
> > Remove "this doesn't change R_NOTBOL & R_NEWLINE" =E2=80=92 so does it =
change
> > R_NOTEOL? No. That's weird and confusing.
> >=20
> > String largeness doesn't matter, known-lengthness does.
> >=20
> > Explicitly spell out the influence on returned matches
> > (relative to string, not start of range).
> >=20
> > Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
>=20
> Patch applied.
>=20
> > ---
> > Range-diff against v6:
> > 1:  4b7971a5e < -:  --------- regex.3: Desoupify regfree() description
> > 2:  5fb4cc16f ! 1:  ed050649b regex.3: Improve REG_STARTEND
> >     @@ man3/regex.3: .SS Matching
> >      -and ending before byte
> >      -.IR pmatch[0].rm_eo .
> >      +Match
> >     -+.RI [ string " + " pmatch[0].rm_so ", " string " + " pmatch[0].rm=
_eo )
> >     ++.RI [ "string + pmatch[0].rm_so" , " string + pmatch[0].rm_eo" )
> >      +instead of
> >     -+.RI [ string ", " string " + \fBstrlen\fP(" string )).
> >     ++.RI [ string , " string + strlen(string)" ).
> >       This allows matching embedded NUL bytes
> >       and avoids a
> >       .BR strlen (3)
> >     @@ man3/regex.3: .SS Matching
> >      +as usual, and the match offsets remain relative to
> >      +.IR string
> >      +(not
> >     -+.IR string " + " pmatch[0].rm_so ).
> >     ++.IR "string + pmatch[0].rm_so" ).
> >       This flag is a BSD extension, not present in POSIX.
> >       .SS Match offsets
> >       Unless
> >=20
> >  man3/regex.3 | 29 ++++++++++++++++-------------
> >  1 file changed, 16 insertions(+), 13 deletions(-)
> >=20
> > diff --git a/man3/regex.3 b/man3/regex.3
> > index 46a4a12b9..099c2c17f 100644
> > --- a/man3/regex.3
> > +++ b/man3/regex.3
> > @@ -131,23 +131,26 @@ .SS Matching
> >  above).
> >  .TP
> >  .B REG_STARTEND
> > -Use
> > -.I pmatch[0]
> > -on the input string, starting at byte
> > -.I pmatch[0].rm_so
> > -and ending before byte
> > -.IR pmatch[0].rm_eo .
> > +Match
> > +.RI [ "string + pmatch[0].rm_so" , " string + pmatch[0].rm_eo" )
> > +instead of
> > +.RI [ string , " string + strlen(string)" ).
> >  This allows matching embedded NUL bytes
> >  and avoids a
> >  .BR strlen (3)
> > -on large strings.
> > -It does not use
> > +on known-length strings.
> > +If any matches are returned
> > +.RB ( REG_NOSUB
> > +wasn't passed to
> > +.BR regcomp (),
> > +the match succeeded, and
> >  .I nmatch
> > -on input, and does not change
> > -.B REG_NOTBOL
> > -or
> > -.B REG_NEWLINE
> > -processing.
> > +> 0), they overwrite
> > +.I pmatch
> > +as usual, and the match offsets remain relative to
> > +.IR string
>=20
> Minor glitch: s/IR/I/
>=20
> I fixed it.  BTW, don't know if you knew, but you can run some linters
> to check these accidents by yourself.


$ make check
# ...
GREP    .tmp/man/man1/memusage.1.check-catman.touch
=2Etmp/man/man1/memusage.1.cat.grep:132:           Memory usage summary: he=
ap total: 45200, heap peak: 6440, stack peak: 224
=2Etmp/man/man1/memusage.1.cat.grep:135:           realloc|        40      =
   44800             0  (nomove:40, dec:19, free:0)
make: *** [share/mk/check/catman.mk:36: .tmp/man/man1/memusage.1.check-catm=
an.touch] Error 1


$ make lint
SED     .tmp/man/man2/add_key.2.d/add_key.c
LINT (checkpatch)       .tmp/man/man2/add_key.2.d/add_key.lint-c.checkpatch=
=2Etouch
bash: line 1: checkpatch: command not found
make: *** [share/mk/lint/c.mk:64: .tmp/man/man2/add_key.2.d/add_key.lint-c.=
checkpatch.touch] Error 127

git grep checkpatch first says I want checkpatch(1).
No such manual exists, at least in Debian.
Then it reveals I actually want checkpatch.pl from a linux checkout.
Probably call it [scripts/]checkpatch.pl then?

Then it reveals
  CHECKPATCH              :=3D checkpatch
which means that just
  export CHECKPATCH=3D~/store/code/linux/scripts/checkpatch.pl
doesn't work, and I need to pass it as an argument (should be ?=3D).
The same for all the other linters.

$ make -j25 CHECKPATCH=3D~/store/code/linux/scripts/checkpatch.pl lint
# ...
LINT (mandoc)   .tmp/man/man1/pldd.1.lint-man.mandoc.touch
mandoc: man1/getent.1:6:14: WARNING: cannot parse date, using it verbatim: =
(date)
# (same what feels like every page; bullseye mandoc 1.14.5-1)

If I pass MANDOC=3D~/code/voreutils/mandoc (recent(ish, it was recent last
year) CVS, + some patches I forgot that fixed some egregious formatting
errors):
LINT (mandoc)   .tmp/man/man5/ftpusers.5.lint-man.mandoc.touch
LINT (mandoc)   .tmp/man/man5/gai.conf.5.lint-man.mandoc.touch
LINT (mandoc)   .tmp/man/man5/group.5.lint-man.mandoc.touch
LINT (mandoc)   .tmp/man/man5/host.conf.5.lint-man.mandoc.touch
mandoc: man5/erofs.5:78:2: ERROR: skipping end of block that is not open: RE
mandoc: man5/erofs.5:79:2: WARNING: skipping paragraph macro: IP empty
mandoc: man5/erofs.5:78:2: WARNING: skipping paragraph macro: br at the end=
 of SS

And it passes! Those are the only errors I saw, even on the version with
IR\ string$

When I ran with 2>&1 | less to make sure, I got=20
/etc/bash.bashrc: line 7: PS1: unbound variable
/etc/bash.bashrc: line 7: PS1: unbound variable
/etc/bash.bashrc: line 7: PS1: unbound variable
/etc/bash.bashrc: line 7: PS1: unbound variable
/etc/bash.bashrc: line 7: PS1: unbound variable
/etc/bash.bashrc: line 7: PS1: unbound variable
/etc/bash.bashrc: line 7: PS1: unbound variable
/etc/bash.bashrc: line 7: PS1: unbound variable
/etc/bash.bashrc: line 7: PS1: unbound variable
/etc/bash.bashrc: line 7: PS1: unbound variable
/etc/bash.bashrc: line 7: PS1: unbound variable
/etc/bash.bashrc: line 7: PS1: unbound variable
/etc/bash.bashrc: line 7: PS1: unbound variable
/etc/bash.bashrc: line 7: PS1: unbound variable
SED     .tmp/man/man2/add_key.2.d/add_key.c
SED     .tmp/man/man2/bind.2.d/bind.c
SED     .tmp/man/man2/chown.2.d/chown.c
SED     .tmp/man/man2/clock_getres.2.d/clock_getres.c
SED     .tmp/man/man2/clone.2.d/clone.c
SED     .tmp/man/man2/close_range.2.d/close_range.c
SED     .tmp/man/man2/copy_file_range.2.d/copy_file_range.c
SED     .tmp/man/man2/eventfd.2.d/eventfd.c
and indeed
Makefile:SHELL :=3D /usr/bin/env bash -Eeuo pipefail
and
$ sed -n 6,7p /etc/bash.bashrc
# If not running interactively, don't do anything
[ -z "$PS1" ] && return

(That should be ${PS1-}. What's even funnier is that
 $ sed -n 14p /etc/bash.bashrc
 if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then)


$ make -j25 CHECKPATCH=3D~/store/code/linux/scripts/checkpatch.pl lint MAND=
OC=3D: CLANG-TIDY=3D:
LINT (checkpatch)       .tmp/man/man3/_Generic.3.d/_Generic.lint-c.checkpat=
ch.touch
ERROR:ASSIGN_IN_IF: do not use assignment in if condition
#17: FILE: .tmp/man/man3const/EXIT_SUCCESS.3const.d/EXIT_SUCCESS.c:17:
+    if ((fp =3D fopen(argv[1], "r")) =3D=3D NULL) {

Do not use assignments in if condition.
Example::

  if ((foo =3D bar(...)) < BAZ) {

should be written as::

  foo =3D bar(...);
  if (foo < BAZ) {

total: 1 errors, 0 warnings, 0 checks, 29 lines checked
make: *** [share/mk/lint/c.mk:64: .tmp/man/man3const/EXIT_SUCCESS.3const.d/=
EXIT_SUCCESS.lint-c.checkpatch.touch] Error 1
make: *** Waiting for unfinished jobs....
CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#17: FILE: .tmp/man/man3/dl_iterate_phdr.3.d/dl_iterate_phdr.c:17:
+    printf("Name: \"%s\" (%d segments)\n", info->dlpi_name,
+               info->dlpi_phnum);

CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#33: FILE: .tmp/man/man3/dl_iterate_phdr.3.d/dl_iterate_phdr.c:33:
+        printf("    %2zu: [%14p; memsz:%7jx] flags: %#jx; ", j,
+                (void *) (info->dlpi_addr + info->dlpi_phdr[j].p_vaddr),

total: 0 errors, 0 warnings, 2 checks, 54 lines checked
make: *** [share/mk/lint/c.mk:63: .tmp/man/man3/dl_iterate_phdr.3.d/dl_iter=
ate_phdr.lint-c.checkpatch.touch] Error 1
WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using '=
closeSocketPair', this function's name, in a string
#230: FILE: .tmp/man/man2/seccomp_unotify.2.d/seccomp_unotify.c:230:
+        err(EXIT_FAILURE, "closeSocketPair-close-0");

Embedded function names are less appropriate to use as
refactoring can cause function renaming.  Prefer the use of
"%s", __func__ to embedded function names.

Note that this does not work with -f (--file) checkpatch option
as it depends on patch context providing the function name.

WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using '=
closeSocketPair', this function's name, in a string
#232: FILE: .tmp/man/man2/seccomp_unotify.2.d/seccomp_unotify.c:232:
+        err(EXIT_FAILURE, "closeSocketPair-close-1");

total: 0 errors, 2 warnings, 0 checks, 612 lines checked
make: *** [share/mk/lint/c.mk:63: .tmp/man/man2/seccomp_unotify.2.d/seccomp=
_unotify.lint-c.checkpatch.touch] Error 1

(more pages)


I'm not sure I agree with the ASSIGN_IN_IF case, but I'm assuming
there's a mechanism to kill the lints you don't are about;
linux cdc9718d5e590d6905361800b938b93f2b66818e.


This continues until I've disabled every linter.
I'm assuming you have specific versions that work for you,
but, well.


Best,
=D0=BD=D0=B0=D0=B1

--36t622iwpy37oaa7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRB8fgACgkQvP0LAY0m
WPFJFQ//TQTX5MxYBro1sRh7YZnQlFylX4vPwi5ksTPSJ3RjZ7/jDgjPaqiY5NHO
szpFXXC82652yZjRwaYnfk5hcmdjUQreAtn+IZV/WmdbBuQwW17EGIdOM0VAzDNI
ngO5FEag/zmcq1yucjbek4Ov+tjsVEeab+RQeyrYpwnREfmLRlAUQF1UszIXW6xH
g3lFgEAdndkpC8E8YXL64ZOSRdRIO2xsHuBUHoq8HfLfpidzYYM662io4BaWX0N5
yY/HclaZjHqWkZSH0isOr/XuS8Py42Y/M2cBPpMECtR5/chX/I/1kY2ZD4g8tyq8
x4OQ/2MxFLm3wWUD3W44ncxZQ3OsUuyTwqO/glpfGZYbIDXh5J2C/SMKTDW+3n5N
pJ3PO7kiibPrE61j2XRLBNXmqPGVWl6TMOj/B6lpP6j3OpM+2WxEHFJZWgSaITzs
3mUPIg6ElWb5RSNWexqRVSbtWYO70OsQmhjDNuNg+OmsHVEGXmT1agQFuqTDLHwX
NgT9/UylyxmMW0wLEKuwHYziqmpJPvhN5pPIJ8ck88xN4Y9QuyeFH8NfG2WFzSIk
aVQbQ4JKDPkQKSRF5EtHpQemMSZ6aY9YeNEW8oenRfGpFyQPdoYl54ONufx12K8X
N8htsmDvoFRWeaZ5oiEWaO00GmpHxFlZWmqpYY/L1FddRY5N3KM=
=J8Qy
-----END PGP SIGNATURE-----

--36t622iwpy37oaa7--
