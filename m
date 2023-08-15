Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E9DB177CF4C
	for <lists+linux-man@lfdr.de>; Tue, 15 Aug 2023 17:37:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238081AbjHOPhN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 15 Aug 2023 11:37:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238205AbjHOPhL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 15 Aug 2023 11:37:11 -0400
Received: from mail-oa1-x36.google.com (mail-oa1-x36.google.com [IPv6:2001:4860:4864:20::36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E437F1BCC
        for <linux-man@vger.kernel.org>; Tue, 15 Aug 2023 08:37:01 -0700 (PDT)
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-1bbdddd3c94so4337930fac.0
        for <linux-man@vger.kernel.org>; Tue, 15 Aug 2023 08:37:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692113820; x=1692718620;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ehsS/Rtxbo1Y+xJwTWkZV3XylH7iTBL5Airg/uxJ1Uo=;
        b=jreBHKFkg3zFGVmgnR7k+HO2U9V0h6dMtS/XguvdygNKgRrpC6x6FXjjGXvEf/Ra5J
         E3CRWuvIJxeyXa5USeVY65QHKTt9U86FKfgSjuCnKPRDLqPm6UYk1i9uOr15xgT0j+5j
         qpyWxC3tx9GgevAi4PC6dfyuXVGn/WCzQSVCzHb04tveSesU6Rx7oy9yfmHaUYNwiKpZ
         c+AJjNuGiJL4KRBHBcjMN1i6vzRvZWThmHI1lW1rb/e17Csp3C4xTrJqcQHruQTl/2hO
         2NIIeglD2ZtPSezq8G8LTZFt1XmUjDEmZMqPpU9gjlDpHGPiCy7IrHLzU5WpdjbNiQkP
         5Gow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692113820; x=1692718620;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ehsS/Rtxbo1Y+xJwTWkZV3XylH7iTBL5Airg/uxJ1Uo=;
        b=T3GLIC9rW7jKsvfNnpdYJEIfcJ3sSQoKkLtAGKVMNFDAYOk03B0eDNU8LET7HSSmha
         HOayzD5Tt/DScGPxIMbjcH9vQjvSGsyGjqbbgsYIuD7JL8Q6ofZuifP+LNKrrsf+2wRY
         c+9rAXj2v3RKGjjlFGiI9v6oVNAu4+PokzeIlFZ47BMxrkbSx2odr1Bk4ljpw9rxeQnE
         +ZVajWUl33qhJdmAvuiAIgJwE/iIj/1kuivNumcPsyiA6SEKi0uTyGCIG7v/iR2AInxm
         s1Yb8P2sYlD7FD5XDi02yT29R9aHwE2AYGKYLdST8Gl+A5ks+UAX9PV9xRe7qFAG/dCm
         AFBQ==
X-Gm-Message-State: AOJu0YzgXAm0K+IfstXSlZCo9AwmILwxhR/MtHIi7QVTqAN+onaNokzg
        LPfwCctGPUumzva2RRMgXYkzOLcHAXA=
X-Google-Smtp-Source: AGHT+IFc048GFa4t/fu7Xa2CPP5FVCCscbpTFsf9LmbKgSp5PsZklTXY8UXCgMz/2YUnNBVH4I6gCQ==
X-Received: by 2002:a05:6870:2493:b0:1bf:9fa2:bf94 with SMTP id s19-20020a056870249300b001bf9fa2bf94mr13995801oaq.5.1692113820197;
        Tue, 15 Aug 2023 08:37:00 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id q65-20020a4a4b44000000b00541fbbbcd31sm5788596ooa.5.2023.08.15.08.36.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Aug 2023 08:36:59 -0700 (PDT)
Date:   Tue, 15 Aug 2023 10:36:57 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     linux-man <linux-man@vger.kernel.org>, cjwatson@debian.org
Cc:     Alejandro Colomar <alx@kernel.org>
Subject: Re: proc(5)'s sashimi
Message-ID: <20230815153657.kczpio6qmyceftnz@illithid>
References: <72378b09-c74b-2d9d-4732-00acd656d052@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="d755o3bqxkviniyq"
Content-Disposition: inline
In-Reply-To: <72378b09-c74b-2d9d-4732-00acd656d052@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--d755o3bqxkviniyq
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-08-14T16:06:16+0200, Alejandro Colomar wrote:
> One of the questions I have at the moment is how should we call the
> pages, and what should we write in the TH and NAME.  Branden, do you
> have any comments on that?  I used underscores for the page title and
> file name,

I think it's generally a good practice to have the page topic (the first
argument to `TH`) match the "basename" of the man page document's file
name.  That rules out slashes there.

> but for the NAME I used slashes (so the actual name of the interface).

This seems like a good idea to me.  Neither the man(7) package nor the
formatter care what is in that section.

Consider:

$ cat slashy.man
=2ETH slashy 1 2023-08-15 "groff test suite"
=2ESH Name
=2EIR /etc/slashy/ n
\- configuration of Roguelike game,
version
=2EI n
=2ESH Description
Eat and chop.

`nroff -man` and `mandoc | ul` both render this correctly.

> I didn't do any italics in the name, though, so /pid/ is no special in
> the name.

As shown above, I would go ahead and mark it up The Right Way=E2=84=A2.

Except...

Unfortunately, lexgrog(1) failed.  CCing man-db maintainer Colin Watson.

slashy.man: parse failed

For the time being, therefore, I would back things down to the
following, which _does_ work.

=2ETH less\-slashy 1 2023-08-15 "groff test suite"
=2ESH Name
=2EI /etc/slashy/n
\- configuration of Roguelike game,
version
=2EI n
=2ESH Description
Eat and chop.

$ lexgrog less-slashy.man
less-slashy.man: "/etc/slashy/n - configuration of Roguelike game, version =
n"

=2E..so you can still do quite a bit, just not change fonts _within_ the
page "name" (which can be a comma-separated list of names).[1]

Interestingly, the following _doesn't_ bomb:

$ cat moderately-slashy.man
=2ETH moderately\-slashy 1 2023-08-15 "groff test suite"
=2ESH Name
=2EIR /etc/slashy/n
\- configuration of Roguelike game,
version
=2EI n
=2ESH Description
Eat and chop.

Observe the missing second argument to `IR`.  `nroff -rCHECKSTYLE=3D1
-man` would holler about this, but lexgrog chokes only if there's an
argument there.

$ lexgrog moderately-slashy.man
moderately-slashy.man: "/etc/slashy/n - configuration of Roguelike game, ve=
rsion n"

Maybe this is easy to fix, but even if so you'll probably want to wait
until the fixed version has percolated in to distributions of interest,
or your man page won't be indexed, and not show up in apropos(1) or `man
-k` searches.

What if it's not easy to fix?  We could of course just give up on some
man(7) features.

Or...we could make lexgrog(1) unnecessary (more likely, a wrapper).

I've had an idea for a while: what if the man(7) package paid attention
to the arguments to `SH` macro calls?

And what if man(7) supported a string that could hold the name of a
section heading of interest?

Consider the difference.

$ nroff -man moderately-slashy.man
moderately-slashy(1)        General Commands Manual       moderately-slashy=
(1)

Name
       /etc/slashy/n - configuration of Roguelike game, version n

Description
       Eat and chop.

groff test suite                  2023=E2=80=9008=E2=80=9015              m=
oderately-slashy(1)

$ nroff -man -dEXTRACT=3DName moderately-slashy.man
       /etc/slashy/n - configuration of Roguelike game, version n

$ echo "sweet as"

This would be _really easy_ to do.  (Famous last words, I know, but
groff mdoc(7) already does a similar thing, for different reasons.[2])

lexgrog(1) could then become a wrapper around `nroff -man -dEXTRACT=3DName
-P -cbou`.  It would be easy to chop off the trailing blank line.  You
wouldn't need to chop off the leading spaces, thanks to a groff-next
feature that's already landed.

$ ./build/test-groff -rBP=3D0 -man -T utf8 -P -cbou \
    moderately-slashy.man | grep Rogue
/etc/slashy/n - configuration of Roguelike game, version n

(`BP` is the new "base paragraph indentation" register.  The "-P -cbou"
options strip all formatting, leaving you a pure character stream in the
output--no escape sequences, no overstriking.  See grotty(1).)

Colin, how do you feel about this idea?  I aim to do it anyway, but if
it doesn't excite you as a means of making lexgrog's job simpler--at
least on systems that run a sufficiently new version of groff--I may
kick it down the road until after we solve the automatic tagging
problem.  I want to be able to type something like this:

nroff -man -dEXTRACT=3DOptions/-e

=2E..and have it do exactly what you think it would do.  That future
doesn't seem very far away given what we're having to implement for PDF
bookmarks.[3]  At least at present, before difficult obstacles arise...

Regards,
Branden

[1] Further experimentation reveals that lexgrog seems to be tripping
    _only_ on second arguments to font style alternation macros.

=2EI /etc/slashy/\fRn
\- configuration of Roguelike game,
version
=2EI n

is accepted (but don't do it--`\f` is hateful).

=2EI /etc/slashy/n
\- configuration of Roguelike game,
version
=2EIB n "oh yeah"

=2E..doesn't break lexgrog but doesn't store quite the right data, either.

broadly-slashy.man: "/etc/slashy/n - configuration of Roguelike game, versi=
on n "oh yeah""

Maybe this means a fix to lexgrog on its own terms will be easy.  No
idea.  I seem to remember Colin mentioning before that it is dismaying
how much *roff syntax a makewhatis(1) or lexgrog(1) or similar program
has to understand to do its job.  I have no idea why brighter minds than
mine didn't think up a solution like my "EXTRACT" string above decades
ago.  Maybe they did, and I'm about to find out what's wrong with it...

[2] https://git.savannah.gnu.org/cgit/groff.git/tree/tmac/mdoc/doc-common?h=
=3D1.23.0#n1414
[3] https://lore.kernel.org/linux-man/20230815005022.47vpqsjoczn4vyii@illit=
hid/


--d755o3bqxkviniyq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTbm5EACgkQ0Z6cfXEm
bc5dFA/9EH0Uzb+s8epJXV0qZkg9gxNY/6YZMcdS8QAW6sgoDq0ptkRoIX3VdIgG
tqj+uHPqPd81Aq1K9vIsoG9/n3n17p/GO/pkbinEmXPCHpeh1zF6L8WDjuM1RG2b
DRiGle9fXX5gbqbnTt9Jbzcc0IwA0yy99nbxmkF+fQDIQYWXFUsQtRlr+JeRAArl
x7EWN+Pnq+QZSEFAE03p7U/ovkXrFKdIpvI6r7q1DRq91JYwHGreCDU/h9XS2fs6
paD2ztKITeuaMHG7WscvijQVuyn8LZSDMpbkpKiy7NAR7XtG3jcYMyikJbFT/szS
ZcnGyErATMPkJC3A4Ewktf874XxBfG91fBtxJIf6kMT3VLTnNfI4TI/X3/e+mAIw
I7y07S1Hva1W6cldiQ+7Y3Zk0he8lLYZmXSJgtRImO+V638o/xUYFQcI5LdHCvK5
u9u+5MOf6V1pqfaLNWoH8igSjrVdkU4VdN9D8TceJE/yG4OQ90FPXsJslPWGBBTC
Yf1j9xOdvtBDiyfUAAYqGzAh5/ok/sxkm710+iiwCeawf0IhCnQMbYX8OEryd6om
1e2G/BDGjSuJ++efxmtmjPu1rLOO5u5EUw7YSmRaYIryQF/jaiAjaJm531YtyrJO
DFVR8aAJvGtHK6pCcwIDyyYX4QLIUlwnSoQKfrCtaWnsLCedcMc=
=Njru
-----END PGP SIGNATURE-----

--d755o3bqxkviniyq--
