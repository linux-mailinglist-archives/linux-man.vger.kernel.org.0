Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C1283624DD4
	for <lists+linux-man@lfdr.de>; Thu, 10 Nov 2022 23:55:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230417AbiKJWz6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Nov 2022 17:55:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229559AbiKJWz5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Nov 2022 17:55:57 -0500
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6422451C3F
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 14:55:56 -0800 (PST)
Received: by mail-ot1-x329.google.com with SMTP id br15-20020a056830390f00b0061c9d73b8bdso1949170otb.6
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 14:55:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=16TWT8luwWDamLnoKqJ6wJalLOTHwVXRvmy/OOL1oC8=;
        b=ook/3dQVVDB01L+IfP/6wSULjIOFP8BhiguWlgMp8bj/x+4DfxPK8KtQ/8wtUcpoKd
         eRfgASCtCH8tyN/gn3tBC/4qr6M6INkeKHmxj7BX/KM9NLse5VTRiql9I4aVuOVOmA86
         a631hhOHZOmgdXVr/9TxRTVY+qLMearl7Kp+jcC+SKkmD3oCgOL1wsovDlXxD48HaGF3
         5/+TqkDCp1/ruqpt/PvEBMST35jZ5yi9+jv/Oyp5u7PdXNlU5iNP4vWcjChmuRSIyM+t
         gQrWJgmk7/vjNp6/mMMPjSSPvUcTvGTGrOhxcBcnZvAMgXzOoFE5yrUNI9tU7mndeGlr
         iAgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=16TWT8luwWDamLnoKqJ6wJalLOTHwVXRvmy/OOL1oC8=;
        b=QgLTcuuBEQJyYeOW1hoa5EoJlhxgsfbLImlDEFiRiaZc0nBlT3DQVcvjLivhzhqbb4
         VkZzbXs8x7rMhIJaJD5SF3OE/bn0i1p/jDNi9e9vMJxjlfsBg7jqpFAobiSmkjfr5EOT
         +ZK+PZD5nvQ8//Z9twO0yuMyxn1i57Earuaup3tskEIdfjIiNpvMLYByZycHfPlVn1bE
         Fz8DaHmT1l/v5vxYNEScPzOnw8gZZBiZ3R3bp6SNarRh+DBBr5gJK8HM77ycYlapAp1+
         Cf1WaTT1dCv0tdBqUj3Es+ybFORhUGq/HXXGwFNEe3ZMJBFQkbFOyvPMStJ/mOAW/tua
         ecCw==
X-Gm-Message-State: ACrzQf3dqcz/R1a3wAKMksYYv8uj8oeWpvq16yVfLt7hUjyQExrqJ/76
        letki28ZatmleThlOn5bWv5yqQZ0c2E=
X-Google-Smtp-Source: AMsMyM5KHH25rIikD6MUVKCGepyha0wfskcO4AnmwnAdFT6C7I36bSwYKIXwvKzhi4xpfhRzRLlpXg==
X-Received: by 2002:a9d:16d:0:b0:66c:5613:e633 with SMTP id 100-20020a9d016d000000b0066c5613e633mr2254145otu.113.1668120955635;
        Thu, 10 Nov 2022 14:55:55 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id i10-20020a4aab0a000000b00480e77f90f9sm247339oon.41.2022.11.10.14.55.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 14:55:55 -0800 (PST)
Date:   Thu, 10 Nov 2022 16:55:24 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     groff <groff@gnu.org>, Ingo Schwarze <schwarze@usta.de>,
        linux-man@vger.kernel.org
Subject: Re: MR macro 4th argument (was: [PATCH] Various pages: SYNOPSIS: Use
 VLA syntax in function parameters)
Message-ID: <20221110225524.hiojzgiiid5d3k65@illithid>
References: <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
 <20221110094033.ptpfsqpvvx2yd5xs@illithid>
 <8cca79d4-f31d-1508-0775-cef54e3755c1@gmail.com>
 <01da77c7-fed2-0fc1-ae6a-770885057a27@gmail.com>
 <5e3a103d-2aff-511a-e819-96dafb640c24@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="4ihxi7kmaw3g3gi4"
Content-Disposition: inline
In-Reply-To: <5e3a103d-2aff-511a-e819-96dafb640c24@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--4ihxi7kmaw3g3gi4
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2022-11-10T19:04:46+0100, Alejandro Colomar wrote:
> Of course I forgot to rename the title, and to agg groff@.  Nice.

It gave me time to reply to this one.  :)

> On 11/10/22 11:59, Alejandro Colomar wrote:
> I won't be applying the patch now, to avoid contributors seeing people
> suddenly not seeing man page references while preparing patches.  But
> I'll start preparing the patch, to see where are the most difficult
> parts.  And maybe report some issues with the usability.
>=20
> My first thing was to run:
>=20
> $ grep -rn '^\.BR .* ([1-9]\w*)'
>=20
> I'm surprised for good that it seems that there are no false
> positives.  I didn't expect that.  But since things like exit(1) are
> code, they are probably either not highlighted at all, or maybe are
> italicized (as code is).  So that's a good thing.
>=20
> It showed a few lines that might be problematic, but that's actually
> bad code, which I need to fix:
>=20
> man7/credentials.7:270:.BR setuid "(2) (" setgid (2))
> man7/credentials.7:274:.BR seteuid "(2) (" setegid (2))
> man7/credentials.7:277:.BR setfsuid "(2) (" setfsgid (2))
> man7/credentials.7:280:.BR setreuid "(2) (" setregid (2))
> man7/credentials.7:284:.BR setresuid "(2) (" setresgid (2))
>=20
> Those are asking for a 2-line thing, where the second line is RB instead =
of
> BR. Which reminds me to check RB:
>=20
> $ grep -rn '^\.RB .* ([1-9]\w*)'
>=20
> There are much less cases, and also seem to be fine to script, with a few
> minor ffixes too.
>=20
> The big issue is that your MR doesn't support leading text:
>=20
>         .MR page=E2=80=90title manual=E2=80=90section [trailing=E2=80=90t=
ext]
>=20
> I remember we had this discussion about what to do with it.  A 4th
> argument?  There's also conflict with a hypothetical link that we
> might want to add later.
>=20
> My opinion is that the 4th argument should be the leading text.
> Asking to use the escape (was it \c?) sequence to workaround that
> limitation is not very nice.   Especially for scripting the change.

Here's what I did for groff.

commit 2ab0dacb95863a2e347d06cf970676c74c784ce2
Author: G. Branden Robinson <g.branden.robinson@gmail.com>
Date:   Fri Oct 8 00:46:41 2021 +1100

    [man pages]: Migrate man(7) cross refs to `MR`.

     # Handle simplest case: ".IR foo (1)".
    s/^.[BI]R \(\\%\)*\([@_[:alnum:]\\-]\+\) (\(@MAN[157]EXT@\))$/.MR \2 \3/
    s/^.[BI]R \(\\%\)*\([@_[:alnum:]\\-]\+\) (\([1-8a-z]\+\))$/.MR \2 \3/
     # Handle case: trailing puncutation, e.g., ".IR foo (1),".
    s/^.[BI]R \(\\%\)*\([@_[:alnum:]\\-]\+\) (\(@MAN[157]EXT@\))\([^[:space=
:]]\+\)/.MR \2 \3 \4/
    s/^.[BI]R \(\\%\)*\([@_[:alnum:]\\-]\+\) (\([1-8a-z]\+\))\([^[:space:]]=
\+\)/.MR \2 \3 \4/
     # Handle case: 3rd+ arguments or trailing comments.  This case is rare
     # and will require manual fixup if there are 4+ arguments to MR.  Use
     # groff -man -rCHECKSTYLE=3D1 to have them automatically reported.
    s/^.[BI]R \(\\%\)*\([@_[:alnum:]\\-]\+\) (\(@MAN[157]EXT@\))\( .*\)/.MR=
 \2 \3\4/
    s/^.[BI]R \(\\%\)*\([@_[:alnum:]\\-]\+\) (\([1-8a-z]\+\))\( .*\)/.MR \2=
 \3\4/

You can ignore the 'MAN[157]EXT' lines; they are relevant only to
within-groff pages (because all of our man pages undergo sed-processing
to be prepared for installation).

> If you want a 5th argument for a URI, you can specify the leading text
> as "", which is not much of an issue.  And you keep the trailing text
> and the leading one together.
>=20
> What are your thoughts?  What should we do?

I am reluctant to extend the interface of `MR` at this point because as
it is it has two nice properties: it aligns with mdoc(7)'s `Xr` macro
and with Plan 9 from User Space troff's `MR`, which did it first.

(Admittedly, P9US troff's `MR` macro doesn't supply the parentheses.  I
don't know if they intend to change that.  I'm willing to supply a patch
to change their implementation and their man pages to align with what I
did in groff.  As shown above, I believe my sed-fu is in order.)

I think man page authors should learn when the `\c` escape sequence is
appropriate and use it when warranted, and recast their sentences
otherwise.  That is why I provided an explicit example in the
groff_man_style(7) page.

    .MR page-title manual-section [trailing-text]
        (since groff 1.23) Set a man page cross reference as "page-
        title(manual-section)".  If trailing-text (typically
        punctuation) is specified, it follows the closing parenthesis
        without intervening space.  Hyphenation is disabled while the
        cross reference is set.  page-title is set in the font specified
        by the MF string.  The cross reference hyperlinks to a URI of
        the form "man:page-title(manual-section)".

            The output driver
            .MR grops 1
            produces PostScript from
            .I troff
            output.
            .
            The Ghostscript program (\c
            .MR gs 1 )
            interprets PostScript and PDF.

`\c` solves problems that are complicated to solve any other way.  As
far as I have seen, you don't ever need it in mdoc(7) pages, for
example...but you pay a price.  You must learn which of mdoc's several
dozen macros are "parsed" versus "callable" (and what the heck the
package even _means_ by those words); you must learn that `Pf` and `Ns`
exist and when to use them; you must learn that certain two-letter words
will not behave as you expect; and if you thought using mdoc(7) meant
you wouldn't have to type any groff escape sequences, think
again--you'll be putting `\&` all over the place.

People can use mdoc(7) if they want to (and now that I'm learning it
better, I will consult as I am able), but its reputation in some circles
as a superior solution to man(7) on all fronts that should have kicked
its predecessor into the grave long ago is due solely to irresponsible
hype from its exponents.

If you need help automating a change to adapt some Linux man-pages
documents to use `\c` before an `MR` call on the next line (where you
were using `RB` before, for instance), just let know.  I am nearly
certain that a sed script utilizing its hold space feature can get the
job done.  (I've used the hold space profitably before, but occasions
for it come up seldom enough that I have to review my past solutions
before the knowledge comes back.  Or maybe it's creeping senescence.)

Regards,
Branden

--4ihxi7kmaw3g3gi4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmNtgVUACgkQ0Z6cfXEm
bc6i9xAAjif9Q1FanoWGWTtLpAoo2kuc4j8mkoYV4LUItT33IuDVPZ9i2w5/Ud80
kUzuBOXsLJ7Ggg3Bs+8vm4eI8Pdfi8S/Qnm8EfGuNU5PU+iCcZuowFJ26mUGPICY
M0M57zvn3bPd7pQcwiE/44/d/uv8m0JVo0txpaNA4irmZPB16cZGqep1U6vkiEVx
DuEdzi1i/1huhAG9MEvZG1xTLKu/u0LTEn/G9ogbziW5Gofit34vXss4W7y0paHC
nYwYqlytY2WnjhmWAgLGkEiCtPcUu/oA1qmQBc89w1SvlnDCPgR2C6K211GigEcd
ExrMggTaJbIJ01um65uRUj5zOVjwhfQxPHJYRNDCpKHWnYitMxLA7qmOOmIKCLuK
ptHlXnc648yiFWUU+pRiWBJkXbylQSxcsd9nJ3YeNAd8jRqV4XzYaNrDWzbhz5pG
8Nw2VEHFLFi1+xMQEdVrdqxuEbcbyKjkEigodQ1d0ChVqWx/godi+ksf+lVra3V3
5ahzj7z2NyOW3QP+P7mUSxAD0ADDj+ajiOUub0txSfTjd5L8OtKql+LedyHUTGR9
Qq3rRC8gozQphysFwlWxnSBACS7nCfmNBvRLqK0bui9syd85Hk42ExL1cNKVhGPd
xyn6FzyAYM1HyKnu3+RdxQkGla/gXQN3tbZSl6p7XCqebg/4Xds=
=I/9k
-----END PGP SIGNATURE-----

--4ihxi7kmaw3g3gi4--
