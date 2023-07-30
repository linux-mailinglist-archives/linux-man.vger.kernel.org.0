Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 943FE76862F
	for <lists+linux-man@lfdr.de>; Sun, 30 Jul 2023 17:21:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229604AbjG3PV6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Jul 2023 11:21:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229527AbjG3PV6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Jul 2023 11:21:58 -0400
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E611C6
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 08:21:52 -0700 (PDT)
Received: by mail-oi1-x22c.google.com with SMTP id 5614622812f47-3a5ad44dc5aso2826610b6e.3
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 08:21:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690730512; x=1691335312;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LI2MDegxisfixkMHgU8uwgOOUxRkd3yxMFnGbJi300c=;
        b=s0Xyp8VXvnLJtDlZPuIYoEnl4KSWxsNrGhnxokSpeSJSfvEea11qVqim/DAr60/0V9
         RnFxYO4yK/IxH3kVgUwe47tUo/Bkxb2A/kbdKWjahDVgo8lpKaXup6x5bqtCuSyg5Q+V
         GUSN65qf69dVss2MmvzkOxloftHovzRw+WoYCSnQPP6SymbT0/LwD/Yi2MtGLgl5vU3B
         WQEvnp0MhxhV27clqiiQuaBzSyPH1zOmiPtYc/2pJFAEwxBpTzLewxieJrgPEaC7SzCy
         L/XS1GSXrETGB7sz65aGRn4Qhb8c2KCSqrMv6NOdhPWFBJi6FRWD8sd874OAC3a7qxIs
         e2sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690730512; x=1691335312;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LI2MDegxisfixkMHgU8uwgOOUxRkd3yxMFnGbJi300c=;
        b=WDuk0WkBbCEAaA3QMJPHwqsYGEdEMkGv0B8PEpWK1qzaOTgUFRdXqGwy9+WTCfnBpL
         tr7wqrmJV1cqDZEqr87qmBKS/UzbCB8xgekTZcGzILNJsi6BW5dcT6y6rblOsw/nkbl7
         wAXf+1wlKrCbFjBZi9+gFet3yU816yfmS/HN0/okYjqSUVaBhoPhqfTPqrUrRNQgsmyI
         /MRF7XtOfbT3wDqLYZo+9QNxu5FVcJTWOmW2jeS3PO6LRcMiy0VKQMabvg4da2SQsp9G
         tlNB5DMEIi4/3mIZXAtkFOVUDyY7CHAP0HkmeCaKCACExv6yLNiIowkn89aMpdMNshGs
         cWaQ==
X-Gm-Message-State: ABy/qLb1EEi1rTfDe9iwZOp6dTOknX9/UntkeglZgOHxd0w/8BXHMTJ3
        uK9MShE3N106G+yciaxFHNbYdWhjtPPV8g==
X-Google-Smtp-Source: APBJJlEdFY03HCqziQd0Z/EzAPB3FXMIr+Xe/Uvie+8ZhARUGGwNipOWg1tGZTyGcqxBRYBeqP8uzw==
X-Received: by 2002:a05:6808:2a6c:b0:3a4:17b0:2b12 with SMTP id fu12-20020a0568082a6c00b003a417b02b12mr6710487oib.11.1690730511603;
        Sun, 30 Jul 2023 08:21:51 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id t16-20020a056808159000b003a38eba0bcdsm3393506oiw.0.2023.07.30.08.21.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jul 2023 08:21:51 -0700 (PDT)
Date:   Sun, 30 Jul 2023 10:21:49 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v3] time.1: ffix
Message-ID: <20230730152149.ajvi7zhskzzsp5jz@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="w32teuie6rqg2d7l"
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--w32teuie6rqg2d7l
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Mark up ellipses properly.  They should be in roman.  The item preceding
an ellipsis should be in the singular.  Use unbreakable space between
metasyntactic variable and subsequent ellipsis.

Quoting groff_man_style(7):

    =E2=80=A2 Symbols that are neither to be typed literally nor replaced a=
t the
      user=E2=80=99s discretion appear in the roman style; brackets surround
      optional arguments, and an ellipsis indicates that the previous
      syntactical element may be repeated arbitrarily.
[...]
    =E2=80=A2 The dummy character escape sequence \& follows the ellipsis w=
hen
      further text will follow after space on the output line, keeping
      its last period from being interpreted as the end of a sentence
      and causing additional inter=E2=80=90sentence space to be placed afte=
r it.
[...]
    \|  Thin space (one=E2=80=90sixth em on typesetters, zero=E2=80=90width=
 on
        terminals); a non=E2=80=90breaking space.  Used primarily in ellips=
es
        (=E2=80=9C.\|.\|.=E2=80=9D) to space the dots more pleasantly on ty=
pesetting
        devices like dvi, pdf, and ps.
[...]
    Several features of the above example are of note. ...

    =E2=80=A2 The non=E2=80=90breaking adjustable space escape sequence \~ =
is used to
      prevent the output line from being broken within the option
      brackets; see subsection =E2=80=9CPortability=E2=80=9D below.
[...]
    =E2=80=A2 Why doesn=E2=80=99t the package provide a string to insert an=
 ellipsis?
        Examples of ellipsis usage are shown above, in subsection
        =E2=80=9CCommand synopsis macros=E2=80=9D.  The idiomatic roff elli=
psis is three
        dots (periods) with thin space escape sequences \| internally
        separating them.  Since dots both begin control lines and are
        candidate end=E2=80=90of=E2=80=90sentence characters, however, it i=
s sometimes
        necessary to prefix and/or suffix an ellipsis with the dummy
        character escape sequence \&.  That fact stands even if a string
        is defined to contain the sequence; further, if the string ends
        with \&, end=E2=80=90of=E2=80=90sentence detection is defeated when=
 you use the
        string at the end of an actual sentence.  (Ending a sentence
        with an ellipsis is often poor style, but not always.)  A
        hypothetical string EL that contained an ellipsis, but not the
        trailing dummy character \&, would then need to be suffixed with
        the latter when not ending a sentence.

            Instead of...              ...do this.
        =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80
        .ds EL \&.\|.\|.         Arguments are
        Arguments are            .IR src=E2=80=90file\~ .\|.\|.\&
        .IR src=E2=80=90file\~ \*(EL\&   .IR dest=E2=80=90dir .
        .IR dest=E2=80=90dir .
        =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80

        The first column practices a false economy; the savings in
        typing is offset by the cost of obscuring even the suggestion of
        an ellipsis to a casual reader of the source document, and
        reduced portability to non=E2=80=90roff man page formatters that ca=
nnot
        handle string definitions.

        There is an ellipsis code point in Unicode, and some fonts have
        an ellipsis glyph, which some man pages have accessed in a non=E2=
=80=90
        portable way with the font=E2=80=90dependent \N escape sequence.  We
        discourage the use of these; on terminals, they may crowd the
        dots into a half=E2=80=90width character cell, and will not render =
at
        all if the output device doesn=E2=80=99t have the glyph.  In syntax
        synopses, missing ellipses can cause great confusion.  Dots and
        space are universally supported.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man1/time.1 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man1/time.1 b/man1/time.1
index efb818cfd..8902b4b96 100644
--- a/man1/time.1
+++ b/man1/time.1
@@ -9,7 +9,7 @@ .SH NAME
 time \- time a simple command or give resource usage
 .SH SYNOPSIS
 .B time
-.RI [ options ] " command " [ arguments... ]
+.RI [ option \~.\|.\|.\&] " command " [ argument \~.\|.\|.]
 .SH DESCRIPTION
 The
 .B time
--=20
2.30.2

v3: Quote groff_man_style(7) regarding use of unbreakable space \~.
v2: Include more background on proper ellipsis usage.

Regards,
Branden

--w32teuie6rqg2d7l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTGgAYACgkQ0Z6cfXEm
bc4Ykw//aOIzeOCWMHm168OzBk2TYrF1z7uUs75Oi+leSo+Rl9mYz83uPmGy8KA1
RjVlfKnmMZSkiIVL06pOMWWbe5VBOZOOHZlfqHCQovkBZjSaWpJ6qhEwkkdz+Vgl
GRobUQjy/N93jUexEGwG5nsM6yq4ahtElypyxJnMfzVl5pVHQgP4zT8w9Ebbmpr2
xWFO4sz0465lpJzzvpBR8KkvXEqSh46hdC2k7iiG1RrksLaZ412LqOFZv/psuECN
lgpaE4LCJ5l+zmPM07UFRnsWLuU2TnW4Yz1qtWugZKLdLz3qnJENiSS/pBLP2m/D
vik4/9MrH4Sv9uioVtpcgh1GJET57HDIzNFLAKVD2U9wmAQMzWsWA06RfUZMEwaD
zyE94EbIt8rdeAVlfyEaOF1YCuJs+qYKSU4AMAzcsw+uSWNSIHVM9sJevMcB8M0y
0tlwxGNSkDo1xrX26Ai86tfmdVkQ03p9lJVBEuPmTcSlz+aqFU+zy/oILmgab/vj
J6dWiiAj0d4RRbolyINStG23KhAJTuqoM/p71YV0hcQiM94mqxTfVXwcnFkSS3fj
bmUkS7BjlblA1LYrIf3e52LsuaGT12AjTQ9qQPW5zSuuPgKrpR8w/o8BGG+NtNTZ
13Y2aQphQh72RXSeQgbfyeEyydjSaeneHirUzgTOFpAt+/Bc6os=
=Z4W2
-----END PGP SIGNATURE-----

--w32teuie6rqg2d7l--
