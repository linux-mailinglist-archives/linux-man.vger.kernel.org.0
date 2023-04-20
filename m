Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 49ECD6E9C80
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 21:36:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231206AbjDTTgu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 15:36:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230049AbjDTTgu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 15:36:50 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 0CD9C30FE
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 12:36:49 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 59336698A;
        Thu, 20 Apr 2023 21:36:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682019408;
        bh=VSIiVjC+EaX5b4Wf6PD9iLcS7CZVbo7KTsrguHj5fqI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=g24P4ACV5sPocM6RqYDJItgYonV0ry+o23Gkie0OCWEFVf0jsus6LNqhLGnuBcjZ0
         T2hawKOlh8wTof5Gm57CJhoFZiMce1Dl5EYU6YJ1CO9XdMilsNm6Oezw3RZ/Xns5Hv
         KyFNwcqoh5cj4utedWGUQozdJplPabIE6I/Dtm2uGhRANOmbrnzuoICWB9AQUfGdIP
         j2p339WYTvvNgU65Ox5F4Q8eFr+251V7CzN7GRVnq3WNN8goY6nodDXIC5p3jnubpK
         GT2U7S0byArqu1YOUSQnedjhtdX+A70NtNwOVZMuWxoDHYwoTrdXPB8x6Jp3tOOPSl
         v+sbsA09W2tBw==
Date:   Thu, 20 Apr 2023 21:36:47 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v6 0/8] regex.3 momento
Message-ID: <cover.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
References: <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="f7vq4t3sglxsylfw"
Content-Disposition: inline
In-Reply-To: <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20230407
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--f7vq4t3sglxsylfw
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Should include all comments; includes Branden's wording.

=D0=BD=D0=B0=D0=B1 (8):
  regex.3: Desoupify regexec() description
  regex.3: Desoupify regerror() description
  regex.3: Desoupify regfree() description
  regex.3: Improve REG_STARTEND
  regex.3, regex_t.3type, regmatch_t.3type, regoff_t.3type: Move & link
    regex_t.3type into regex.3
  regex.3: Finalise move of reg*.3type
  regex.3: Destandardeseify Match offsets
  regex.3: Further clarify the sole purpose of REG_NOSUB

 man3/regex.3              | 226 ++++++++++++++++++++++----------------
 man3type/regex_t.3type    |  64 +----------
 man3type/regmatch_t.3type |   2 +-
 man3type/regoff_t.3type   |   2 +-
 4 files changed, 133 insertions(+), 161 deletions(-)

Range-diff against v5:
1:  fcb8df21b < -:  --------- regex.3: Desoupify regcomp() description
2:  7240de5b7 =3D 1:  1ad1aa6e9 regex.3: Desoupify regexec() description
3:  108f30cd7 ! 2:  6c4d26f89 regex.3: Desoupify regerror() description
    @@ Commit message
         Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczle=
weli.xyz>
    =20
      ## man3/regex.3 ##
    -@@ man3/regex.3: .SH SYNOPSIS
    - .BI "            int " eflags );
    - .PP
    - .BI "size_t regerror(int " errcode ", const regex_t *_Nullable restri=
ct " preg ,
    --.BI "            char " errbuf "[restrict ." errbuf_size "], \
    -+.BI "                char " errbuf "[restrict ." errbuf_size "], \
    - size_t " errbuf_size );
    - .BI "void regfree(regex_t *" preg );
    - .fi
     @@ man3/regex.3: .SS Error reporting
      .BR regexec ()
      into error message strings.
    @@ man3/regex.3: .SS Error reporting
     -If both
     -.I errbuf
     -and
    ++If
    ++.I preg
    ++isn't a null pointer,
     +.I errcode
     +must be the latest error returned from an operation on
     +.IR preg .
    -+If
    -+.I preg
    -+is a null pointer\(emthe latest error.
     +.PP
     +If
    ++.I errbuf_size
    ++is
    ++.BR 0 ,
    ++the size of the required buffer is returned.
    ++Otherwise, up to
      .I errbuf_size
     -are nonzero,
     -.I errbuf
     -is filled in with the first
     -.I "errbuf_size \- 1"
     -characters of the error message and a terminating null byte (\[aq]\e0=
\[aq]).
    -+is
    -+.BR 0 ,
    -+the size of the required buffer is returned.
    -+Otherwise, up to
    -+.I errbuf_size
     +bytes are copied to
     +.IR errbuf ;
     +the error string is always null-terminated, and truncated to fit.
      .SS Freeing
    --Supplying
    + Supplying
      .BR regfree ()
    --with a precompiled pattern buffer,
    --.IR preg ,
    --will free the memory allocated to the pattern buffer by the compiling
    --process,
    -+invalidates the pattern buffer at
    -+.IR *preg ,
    -+which must have been initialized via
    - .BR regcomp ().
    - .SH RETURN VALUE
    - .BR regcomp ()
-:  --------- > 3:  4b7971a5e regex.3: Desoupify regfree() description
4:  fd1a104d6 ! 4:  5fb4cc16f regex.3: Improve REG_STARTEND
    @@ man3/regex.3: .SS Matching
     -on large strings.
     -It does not use
     +on known-length strings.
    -+.I pmatch
    -+must point to a valid readable object.
     +If any matches are returned
     +.RB ( REG_NOSUB
     +wasn't passed to
    @@ man3/regex.3: .SS Matching
     -processing.
     +> 0), they overwrite
     +.I pmatch
    -+as usual, and the
    -+.B Match offsets
    -+remain relative to
    ++as usual, and the match offsets remain relative to
     +.IR string
     +(not
     +.IR string " + " pmatch[0].rm_so ).
5:  198b7b4fa ! 5:  057a4a522 regex.3, regex_t.3type, regmatch_t.3type, reg=
off_t.3type: Move & link regex_t.3type into regex.3
    @@ Commit message
    =20
      ## man3/regex.3 ##
     @@ man3/regex.3: .SH SYNOPSIS
    - .BI "                char " errbuf "[restrict ." errbuf_size "], \
    - size_t " errbuf_size );
    + .BI "            char " errbuf "[_Nullable restrict ." errbuf_size ],
    + .BI "            size_t " errbuf_size );
      .BI "void regfree(regex_t *" preg );
     +.PP
     +.B typedef struct {
6:  c6bc9cfd0 =3D 6:  60ac1a4d1 regex.3: Finalise move of reg*.3type
7:  59b8294c8 =3D 7:  3313546db regex.3: Destandardeseify Match offsets
8:  2e199fc3c ! 8:  7fa669481 regex.3: Further clarify the sole purpose of =
REG_NOSUB
    @@ man3/regex.3: .SS Compilation
     -.I nmatch
     -and
     -.I pmatch
    -+Only report overall success:
    ++Report only overall success.
      .BR regexec ()
     -arguments will be ignored for this purpose (but
    -+will only use
    ++will use only
      .I pmatch
     -may still be used for
     -.BR REG_STARTEND ).
     +for
     +.BR REG_STARTEND ,
    -+and ignore
    ++ignoring
     +.IR nmatch .
      .TP
      .B REG_NEWLINE
--=20
2.30.2

--f7vq4t3sglxsylfw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBlE4ACgkQvP0LAY0m
WPEuJhAArPiWw3Kumc+vAsVhfMULLvJ1Q54bCaC+llVFOQLvBAeO2p9GRuwCbiNu
Mkco/rZ4QOuMqJ/5fhP97sz8YqiMD5Doa3l3j8BSpNJzw7tP5rWpwc+L6iHuKS+K
y0FAjIgfvlj59FTJOpPIjgVFbuPRV/JSmNfheWliJ4grZXnVmkyerukLvHKHYQat
IX/K69o6LwFzboqBsysVD7F+9ZS5litXBf1VrMR6hdS5XkFy6/KYYRF4VmqOmZr+
k+ojBCGGFKT0AgBnVP6JiKE/jFJIpGTTQdo6fgvj7RcYfO0K6r8jugkmFpQKgJTx
nKIlAvxGXvB3idkJZRqpIy5xdE4w301V5AOETScSDnqhHzNUgcc4qJMflJ57kkPL
wKUSr48lB9qfoSKfL9zENKXsOy9Z+ST9hoAJjG/si/drxhH6VuwKL0LGF/SMshj5
QP2jQ88a25fw6Nvzhg41DcSV+4Ekmors7I9mCP/AFevECFKix71G+uu0PZXQoyV2
6vNP/xuWCnHPsRtZpk9Nvh/NxOWdgwL7d4JN+y128Jwufz5fC9aQFau9nJj8tLE+
5MRQtATO0Jm5CRX/ZdLaq0iCYsseJvRajSAQMKEjxfjzwHYmzvZ85Xz//h6LI5SZ
VM9LlqN0+DX7AM31wX+mHTPtnGvosOC3ZyJURWi7G6wbc7vtTa4=
=PAZm
-----END PGP SIGNATURE-----

--f7vq4t3sglxsylfw--
