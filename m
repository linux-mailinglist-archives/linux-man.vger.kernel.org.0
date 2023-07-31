Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B0B6776951F
	for <lists+linux-man@lfdr.de>; Mon, 31 Jul 2023 13:42:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231136AbjGaLmg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Jul 2023 07:42:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230487AbjGaLmd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Jul 2023 07:42:33 -0400
Received: from mail-oa1-x29.google.com (mail-oa1-x29.google.com [IPv6:2001:4860:4864:20::29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B598EA6
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 04:42:31 -0700 (PDT)
Received: by mail-oa1-x29.google.com with SMTP id 586e51a60fabf-1bba7717d3bso3129140fac.1
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 04:42:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690803751; x=1691408551;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=laa21BR2vqWTa7Fn/NGOwylCWyx3nhpcSPvmxMGF8nM=;
        b=NrGpU8OLe+aP4rPNMBi4qRX4wfw/AW8tvz2yP8UJywORXzOT6LJrwoJIecBMq7XTMH
         w59Ejml/+Eksw0FNuejLwX8+RgI7UQirT426N4/3MRp29G2O8u8juZESIimWrm+cxuOm
         cinOem/ORxOlBUPA/E80SpBOgiqtIQ+e0kZpnCKTuzSyPTjy9qD3ieiBvfW7OgiLs6gH
         mJBc6n8zVeEs0SPqUDYWBeeUHniGHzSCNOCdNfJX5WCGeHCuPugJrwIy+1ydInXqH1F/
         sv/Kc5vow60Em9KTrOImnZ9JBHSIRzc+em9ze4lcA8HFA+sbyGk0FK/mLO2fw+4Xczvz
         SNTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690803751; x=1691408551;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=laa21BR2vqWTa7Fn/NGOwylCWyx3nhpcSPvmxMGF8nM=;
        b=TmoxewmO1ph5bZC/1rQ4zzjBvjDa/HBH5KsyDdxAC8An+PCXks9DGIVzNKZXU+zKcl
         uqaYBAoPYORZVWlmEGWqWlStQYHbKvXa3Lo7QTp+PK81qRn2SXrCE7owP3XXc6x/3ewm
         Dsg6K/B4cSstNnTZP6KNUwEEMEViLVwQbxFpH9vQk5BV93QoDxX1pawL/RRkrY3FvSBc
         FH9MGNves+jRPLZsAlRFEqkAB2L8IZianttKBbck+IDss7woNKL2nS4v9FPuk6BW0YpX
         JCKu2Nvtig3GshqwAIbfHpkIZxkR7bSrC4/GDDt1FlYIV12TmKrd7S/DBFxvYN1uIK6/
         axmA==
X-Gm-Message-State: ABy/qLbRxZgHWJ5UZeCY4iscL+TtXIAXNW4Kt0+VcebAVlkAS0SslLOW
        IspXm83X/4HfiOTNFglBUuiP7o37TTY=
X-Google-Smtp-Source: APBJJlEtO/RDMTy9ojX2F+F1RAeGUm6jynjM9Bw9VaJZ7VV9mdVTYY7f400pbTKnHsDhKaFbUFroow==
X-Received: by 2002:a05:6870:46a5:b0:1b0:25b4:4b7a with SMTP id a37-20020a05687046a500b001b025b44b7amr12371317oap.51.1690803750864;
        Mon, 31 Jul 2023 04:42:30 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id x47-20020a4a97f2000000b005634ef4f1c0sm366907ooi.31.2023.07.31.04.42.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 04:42:30 -0700 (PDT)
Date:   Mon, 31 Jul 2023 06:42:29 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man*/: srcfix
Message-ID: <20230731114229.255gdzlt3pq66fvo@illithid>
References: <20230730193202.sly7va2kiv2edegr@illithid>
 <538191f8-a1bc-ab53-2a13-a8166637bb30@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="zh7atycm63sritmh"
Content-Disposition: inline
In-Reply-To: <538191f8-a1bc-ab53-2a13-a8166637bb30@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--zh7atycm63sritmh
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-07-30T22:29:36+0200, Alejandro Colomar wrote:
> On 2023-07-30 21:32, G. Branden Robinson wrote:
> > Clean up in preparation for "MR sed".
> >=20
> > Format only one man page cross reference per input line.
[...]
> > --- a/man5/proc.5
> > +++ b/man5/proc.5
> > @@ -3459,7 +3459,9 @@ .SS Files and directories
> >  .TP
> >  .I /proc/locks
> >  This file shows current file locks
> > -.RB ( flock "(2) and " fcntl (2))
> > +.RB ( flock (2)
>=20
> I guess you'll want a \c before flock(2).  RM ain't no macro.  :)

Thanks!  Another good catch.  I was trying to get over the goal line
too quickly yesterday, to little effect since the diff "ball" was too
large for vger even gzip -9 compressed, and was somehow corrupted in the
copy I sent directly to you.  Can I just omit the diff entirely when
re-submitting?  I'll include the (vastly shorter) sed script in the
commit message; you said you prefer to run such scripts yourself anyway.

The above scenario is "snaggable" with an additional case in MR.sed.

# Handle case: leading punctuation, as in ".RI ( foo (1)".
s/^.R[BI] \(\\%\)*\([^[:space:]]\+\) \([@_[:alnum:]\\-]\+\) (\([1-9a-z]\+\)=
)\([^[:space:]]\+\)$/\\%\2\\c\n.MR \3 \4 \5/

To anticipate complaints:

The *roff markup produced by this is a bit viscous, exercising two
escape sequences that man page authors often neglect to use, or use
incorrectly.[1]

diff --git a/man1/localedef.1 b/man1/localedef.1
index 183f08f58..77ab69c4f 100644
--- a/man1/localedef.1
+++ b/man1/localedef.1
@@ -53,7 +53,8 @@ .SH DESCRIPTION
 files,
 compiles them to a binary form quickly usable by the
 locale functions in the C library
-.RB ( setlocale (3),
+\%(\c
+.MR setlocale 3 ,
 .MR localeconv 3 ,
 etc.),
 and places the output in

On the bright side, this is only about 1% of all uses--and of course the
decision to cast a man page cross reference at the beginning of a
parenthetical is always(?) at the discretion of the page author.

And when I say "about 1%", I'm not waving my hands.  Here is the
diffstat summary from application of my "MR.sed" script _without_ the
foregoing replacement.

 1100 files changed, 15264 insertions(+), 15264 deletions(-)

=2E..and here's what results from the replacement shown above.

 56 files changed, 320 insertions(+), 160 deletions(-)

The other complaint that I foresee is that while `MR` prevents man page
names from being hyphenated, that practice gives the formatter less
flexibility when performing adjustment, which can make the text "gappy".

Here's an example from my before-and-after diff.

--- DUMP1       2023-07-31 06:15:47.059827045 -0500
+++ DUMP2       2023-07-31 06:16:03.059756758 -0500
@@ -2503,2 +2503,2 @@
-              This  specifies  the  caller=E2=80=99s  session=E2=80=90spec=
ific  keyring  (ses=E2=80=90
-              sion-keyring(7)).
+              This   specifies   the   caller=E2=80=99s    session=E2=80=
=90specific    keyring
+              (session-keyring(7)).

But people who hate this often hate adjustment anyway, and that's what
another new groff 1.23.0 feature is for.

groff_man(7):

    -dAD=3Dadjustment=E2=80=90mode
        Set line adjustment to adjustment=E2=80=90mode, which is typically =
=E2=80=9Cb=E2=80=9D
        for adjustment to both margins (the default), or =E2=80=9Cl=E2=80=
=9D for left
        alignment (ragged right margin).  Any valid argument to groff=E2=80=
=99s
        =E2=80=9C.ad=E2=80=9D request may be used.  See groff(7) for less=
=E2=80=90common
        choices.

man-db man(1) has also long supported an "--nj" option to do the same
thing.  In its Git repository it now uses the foregoing means if groff
1.23 or later is the formatter, as opposed to a rougher approach with
some side effects.

This problem also will never arise with mandoc(1), since it refuses to
perform adjustment (or hyphenation) even if you _do_ want it.

[1] For *roff non-experts, groff_man_style(7) says:

    \%  Control hyphenation.  The location of this escape sequence
        within a word marks a hyphenation point, supplementing groff=E2=80=
=99s
        automatic hyphenation patterns.  At the beginning of a word, it
        suppresses any hyphenation breaks within except those specified
        with \%.

    \c  End a text line without inserting space or attempting a break.
        Normally, if filling is enabled, the end of a text line is
        treated like a space; an output line may be broken there (if
        not, an adjustable space is inserted); if filling is disabled,
        the line will be broken there, as in .EX/.EE examples.  The next
        line is interpreted as usual and can include a macro call
        (contrast with \newline).  \c is useful when three font styles
        are needed in a single word, as in a command synopsis.

--zh7atycm63sritmh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTHnhwACgkQ0Z6cfXEm
bc6yVw//bViA1XFh1PXhL1QpPXe43JphU08y4wpXGty+gmoEtNOTtPRe9zFp+SyV
MW2lHh+B1Mvfe7mD+5Q1nQeyTEXt+ZCD0gMA1btPaKkHjJdm9a/3DmesyObiiAFn
TdyPpuQdGzODZAYCkTahc+WuEFwiRdnMepI7lvt+wJzH4sHFSRT1kshmC6DGY7l8
Zvsg2ruGdNI5MD2EhcQmhETngEVKmupfuGu3H7mGShjPc/r9rjt3KCkufeMkgeYI
QP4YjT/LzZ5Hrw0wsjm+A2cDdS70fdqljx68Sa+FaD9arAoE2ki163bJeD7EGHWn
VaMMljQOUP2hi4dj0Z8nOncuA+ui2GDhgcDqjruqcW+xRetzIBtqdGvcFFa2/mpe
lGZKSrLMQk1ngY2vApFY6itYxleegvcxOnZ3fZZdrDCb9TWmidMLgs4emaEOiiag
UrmeFOVjfFT2eq1U11/d/f/ywRrPqLS13GZ+MiUwAuRhS8QBX8u+ufafEtYIIRyL
qv5NfxZPG7bSDkMxKNE8OF1gvTXlFQs+TcRy1IlL7m8tZXIiaxTqTVuDR38/jdcf
4nNIZvzCT8KgMwllpS6Bcj2wd1a396lLPHblI3nInM04+aAVL0QsHv7K/sIbEMhc
zHYxtxSX9mPUbXVL9cZ5PKlEyXzMfIPomwduTnl7yMuGFVlWGOk=
=0kb3
-----END PGP SIGNATURE-----

--zh7atycm63sritmh--
