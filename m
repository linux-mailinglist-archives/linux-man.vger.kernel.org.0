Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 66EB94E1C08
	for <lists+linux-man@lfdr.de>; Sun, 20 Mar 2022 15:24:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240618AbiCTOZY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Mar 2022 10:25:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236015AbiCTOZX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 20 Mar 2022 10:25:23 -0400
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AAD43137D
        for <linux-man@vger.kernel.org>; Sun, 20 Mar 2022 07:24:00 -0700 (PDT)
Received: by mail-pf1-x430.google.com with SMTP id g19so13437038pfc.9
        for <linux-man@vger.kernel.org>; Sun, 20 Mar 2022 07:24:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=b0eWpfhRWGCROfWUijvuM+eov4gd8VF6Y3wP74GVBIo=;
        b=p7i0I+SgY/oywmMY52N26lzvuri869LHfG4F5iHnjciMkW/0TJlPHJNeBQm0DsRdwL
         T2YHUgRpi3R8Kf+uVOlD0nEzsyd1DJeExtl/BG/pdUlVGlHQF+LeGH4IQ715Dawp9js9
         6BhSfiGHznaIjwZP+nBGTksZH4U8WOxZrIcPB4S1+fwu4BgCmgG9BXkM407dtyEAUdyD
         2gRY1N3Foi3I88aTlfbBmzWR6zQcToHGZIkXQBg33BNxprWuguF9mgnnjycPfKN5E5IY
         bg3ucc+9qnbixxvf5dBkDDl2Mb8PtGJytvDvO7/YKpl2zkEfU+yKZPMY7z7ny893IWUW
         6++w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=b0eWpfhRWGCROfWUijvuM+eov4gd8VF6Y3wP74GVBIo=;
        b=oklhCW13ZrEgFohZFaRVmh2WZkWB/SJ5G1FjrK14/R9k32tgZoVqb4qwyehwm8aQXq
         kgwRXHLc7d3G0L++pC8prWybli3oyS5ordEkvNQx4pA9juIj7xmPa4nXPF6Y+MR1Unsl
         ACE04tW7q4R/3kfw3yJKuUlTXZ9hG5/VTjGq2u1RC5960h1jvfCdYAZjQ5U/I1qqU37j
         d8jWeXKPZLbgO7StQHW2N4zespU4ijOnFCBzPKMtFsuhD4C9uFs/qbbts+2MTQk6nXEp
         KFt0PFpkc072cFIcAZMatKAqklcoKyIs6KFtIBL9cOkUPdzSxm5E6pSdU3h2BIirO0IZ
         UdYQ==
X-Gm-Message-State: AOAM530sbv4x7UX/br/Ms8M9M1bRT6C1TtSQJm69t5/cy4fkytK7tzvF
        GIxVjFXZPz7C5h9d/yVT4gUYWTSPK3Y=
X-Google-Smtp-Source: ABdhPJxdz6BfbdRK3Ab/xg12qOwNyYdS6OQUMnCLBw5p/a5lMRFATJx7sydiyPwnAtjiRouBzEVo8g==
X-Received: by 2002:a63:174f:0:b0:381:2bb3:2661 with SMTP id 15-20020a63174f000000b003812bb32661mr14660155pgx.197.1647786239452;
        Sun, 20 Mar 2022 07:23:59 -0700 (PDT)
Received: from localhost.localdomain ([1.145.30.29])
        by smtp.gmail.com with ESMTPSA id u10-20020a17090a2b8a00b001c6594e5ddcsm13500939pjd.15.2022.03.20.07.23.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Mar 2022 07:23:59 -0700 (PDT)
Date:   Mon, 21 Mar 2022 01:23:50 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] Makefile, etc/groff/tmac/deadly.tmac: Add lint and
 lint-groff targets
Message-ID: <20220320142348.nuisck2pkynilbq5@localhost.localdomain>
References: <20220318011753.96759-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="67l7mbgvni4q3br5"
Content-Disposition: inline
In-Reply-To: <20220318011753.96759-1-alx.manpages@gmail.com>
User-Agent: NeoMutt/20180716
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--67l7mbgvni4q3br5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi, Alex!

At 2022-03-18T02:17:53+0100, Alejandro Colomar wrote:
> etc/groff/tmac/deadly.tmac is a file written by Branden, to make
> make groff(1) abort when it finds a style problem, which then
> causes make(1) to also abort.

Oh, I'm glad to hear this worked out.  I had on my to-do list a reply to
you at one point when it wasn't working for some reason.

> Branden, I'm curious to learn how/if you're using it in your own
> Makefile in groff(1).

Nothing sophisticated.  :)

I use it only in doc/doc.am, in the targets that generate compiled text
and PDF versions of all of the groff man pages[1].  These will be new
documents shipping in groff 1.23.

I set the register `CHECKSTYLE` to "3" on the command line and
format the pages with "groff -mandoc".  Any warnings come out on
standard error.

> BTW, don't feel pressured by my premature usage of your unreleased
> feature to consider not changing it too much to avoid breaking this
> build system.  I assume that it may change it the future when you
> release and will adapt if necessary.

I appreciate that.  I have no disruptive plans--indeed, no plans at all
for further development of the feature.  I have thought of nothing else
do that is both feasible and helpful in fixing problems with groff's own
pages.  (I acknowledge your talent at asking for things that are
NP-hard.  ;-)

Regards,
Branden

[1] https://git.savannah.gnu.org/cgit/groff.git/tree/doc/doc.am#n232

--67l7mbgvni4q3br5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmI3OPEACgkQ0Z6cfXEm
bc7qhw//Zeo+BY93uxNoq8q2MKtdhfvD0fH8ptvFN8ZL+4fAwShBr3JaCjbFvjSM
+NmA76ltjWY0OyYKZX9Ytl6SLZV/wv55AD1MsXCqg30b4fAomaIJ3Jkqby0UyQF8
JzB84MiFOrl5Afm/pyUag4ptm6GG5N2w1tyeEg9JmVSotC1cw7IazSB6/FjIuyHn
SvR0KEdA8dxCHT0pR+URJtNsoNr54m0KTFVGWr+gRfaYaZDlpK5YA3RldrRxzbxP
65t0i903H+7Riq34SUSjRzVL0yYM9DtIJkN6FilSimD5P9vZMXa+NExBy+RXL3GP
S9wp+5EP6s+3Qt0lBg6vA0FQnVgiXkQXTP8sl5QNu1WxuxBzGe88PN1dxZ02fGTz
N5AJV9Tm8ilmR2O37UEk6G3tZZK4hZT73b+j1iOORqVjOStzfVb/C6HP2gJdsLiq
N3QIA4XvAUtzPWpGnyLdNhiiX2NvbdtcgSLJImvMMuKWs1T1wiBr5ROdKfe7xT5p
pnezJSK9y+9mmDG8rlvhSscuPMfRhQVwHeEPG16mcWW6oTseQSfgdy7Z5itoVBF0
1WZL84rC7lrhE1gqQJoIChtNPuKhzERcMdxpc0s3mYi5ajZVjaW+x6LTqBF5w+Jf
yh4hOEq8+75L13/MKos/6MjNOk4uecXBiokhQ0MkOi80p9DMvoE=
=SIbn
-----END PGP SIGNATURE-----

--67l7mbgvni4q3br5--
