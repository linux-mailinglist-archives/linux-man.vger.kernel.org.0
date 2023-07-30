Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 89F1A76868C
	for <lists+linux-man@lfdr.de>; Sun, 30 Jul 2023 18:55:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229476AbjG3Qzp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Jul 2023 12:55:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbjG3Qzn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Jul 2023 12:55:43 -0400
Received: from mail-oo1-xc2e.google.com (mail-oo1-xc2e.google.com [IPv6:2607:f8b0:4864:20::c2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04A6D10C2
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 09:55:43 -0700 (PDT)
Received: by mail-oo1-xc2e.google.com with SMTP id 006d021491bc7-56c711a88e8so1273883eaf.2
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 09:55:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690736142; x=1691340942;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7VN1+O5qE2nucuDoK6c3EH4913mIORSKi1JW+gf2DQQ=;
        b=p1LXha7PKKth3+UtWtyTlIwugW0QpxfZl3FTaQVfs6MBMZ4s7d0IRnvhk5HltxzBG8
         KHia1Kx7MduPOmCu+UPbhVW1MFt038tF4niN6r+6nB2hGc4ziqTWL9XX2nX7jOFUeJQU
         c8o1xl65+7iLulen0PLFSP44BMN4JfAAULuJSzAqLqAFFfjd8dyCmCfgiNDrja8MmObq
         jbhzAOoGYJnf6jBuqAF2+OkNlWw+crAr6zrYbI0ZD1Su+ckbwmD3IWB07ouZYnB4lvGm
         AfRUtYbEr0YSf07RqaV1uBgEhqL8/JRRe7U4tFNPA7LC+qKVSEnZx3aVJ5BrdWIngcTG
         8HaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690736142; x=1691340942;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7VN1+O5qE2nucuDoK6c3EH4913mIORSKi1JW+gf2DQQ=;
        b=WjllFT9oLEqKpyyBjIejJEm+Z+ft3gCLmNhaWJkwfdD7cr0h0uO2U2m2kVpEF1Zhst
         vKrSwGiV8sgWJygrBYN4up41bj5xvTIshyCU5IieraA9HYDP32KjhBxy6q/cFc1JY6+i
         vX19EN/q77ssRotOETpRyVs8B3Q2KGZYFeLnDxnvcEZS+vYvmIAfUtX7eHjQ2jJVf3ZM
         Lg1x2mgn6jvRH3vTQ/ws8R8S9/tIqGB7Fb+o/s86tx+1Jkucc2FIsyGEyRvOo+7Vn1cq
         Om9rxoEk3Zi0nmO6eBX3zpFQPqjEggIly6BnfrH5/v29UOxOQrrlhpdhHqcRoIyXp75I
         okNg==
X-Gm-Message-State: ABy/qLaNg5o7sb3mRwz17T5JvhP9eWapem8kHTDD4iozxWM7jVAKqvAX
        GwhxIOOnBM8v9ztZ+Yba/bisIWpJRcpKHw==
X-Google-Smtp-Source: APBJJlFCmMYoyylXF4P6p3zlJTWP8X52UgGJngj8RZVyQPhL66GUEb2aGPReAfhoT7/SAv1pwBtqBg==
X-Received: by 2002:a4a:6f19:0:b0:566:f052:696d with SMTP id h25-20020a4a6f19000000b00566f052696dmr6696347ooc.6.1690736142213;
        Sun, 30 Jul 2023 09:55:42 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id c20-20020a4a4f14000000b0056c81dedb3bsm1855863oob.8.2023.07.30.09.55.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jul 2023 09:55:41 -0700 (PDT)
Date:   Sun, 30 Jul 2023 11:55:40 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v4] time.1: ffix
Message-ID: <20230730165540.ob524sgwdx57uvzc@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="4vcxdjn4nioz2l5u"
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--4vcxdjn4nioz2l5u
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Mark up ellipses properly.  They should be in roman.  The item preceding
an ellipsis should be in the singular.  Use unbreakable space between
metasyntactic variable and subsequent ellipsis.  (Whitespace-separated
arguments should be separated from a subsequent ellipsis. "[-v...]"
suggests that both "-vv" and "-v -v" are permitted; "[-v ...]" suggests
only the latter.)

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
    Several features of the above example are of note. [...]

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

v4: Motivate why we don't jam ellipses up against whitespace-separated
    arguments.
v3: Quote groff_man_style(7) regarding use of unbreakable space \~.
v2: Include more background on proper ellipsis usage.

Regards,
Branden

--4vcxdjn4nioz2l5u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTGlf8ACgkQ0Z6cfXEm
bc58MRAAn5dj/y/iG2hw9/sF4+QfB8vXFe1af2H1O+dueNE4Xczjlb2KsWDcnrxw
kf8F9+TwrbjLl5/DWAZ8ZwomLa1QdH3xwV48NB5b9W3A4ivgfo5i06W+hsOGXTZe
IqaRjYJP7mnl8sJywWU1rFgB9VPEUmxv5TFgLvmcyTE30u861Vi5D8gAD85F9ISF
rQWdzVMtCplZr8st3UiH/XOLFZQbPb4uHk/abfovDgA/ab6fmijwoHo78513ZxUr
Epn2IKoM/ZRJ0sPGulPjWkdRjUoeVhDE5RM5uFMTrAjIyd+GBqJNGJNv8DbiXy9c
i+VCORHTBeWZBYauoBwJvdgQmsnZwmZXNKce2oXFlKY9W2gQPg72+6kDHQ+XaQxA
8s6Nyh/lFGl42quq8aieSlsAxI3xdTpHbyR/1TbzOVBRJlKuBqUgoZJw/Rw30cbT
Jc0/M5ryg+t+NHJisaeP5tH6+dct9vb8Tv4BUumPcAI5yJLSSu8ooGJlv27slMsN
B45YBmO8evf9X5w+WrxtrTOAwnXa/HjwCppBitVHRTfSwPcqva6I8mwZ1fmjd/8w
Up5U2641TeZi6NoJGtCrkMbjbvUXgJBFUCtHd6UiYol3uydGm6mj88+UwoOScIbI
hUdxQr8q1zP+9A3Wo7+a34Yvi+NOdUhyEtSCrHnCKP6Ey5JzQok=
=3G3V
-----END PGP SIGNATURE-----

--4vcxdjn4nioz2l5u--
