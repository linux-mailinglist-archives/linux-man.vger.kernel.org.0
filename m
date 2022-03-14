Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB65E4D81E8
	for <lists+linux-man@lfdr.de>; Mon, 14 Mar 2022 12:57:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239810AbiCNL4b (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Mar 2022 07:56:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239853AbiCNL4P (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Mar 2022 07:56:15 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2C0DBF7B
        for <linux-man@vger.kernel.org>; Mon, 14 Mar 2022 04:54:56 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id kx6-20020a17090b228600b001bf859159bfso17167591pjb.1
        for <linux-man@vger.kernel.org>; Mon, 14 Mar 2022 04:54:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=pyOJeM1/HL676Vqw66E/N4PmPf+GTQUzIMGUGUG7bAk=;
        b=CyPg18L4dB0B3IGYFiflrn7al/V0LFT1NjSNZ5UyMGzH8XMkdIbXyCegmKDOUsFpLS
         BLab0OFN2XdywBgl5KjFbL/vSo870zhrah4/F4X7Z+dT+4F15EFc9CX1W6IxIu233Qp9
         m+OZgm8RwoIoc8RVjuytFiHrgpK2ZqiDIYnhnDqHvFDLck6ArpdErvgOU5fLIh/cl7G7
         Uka4V2jDKx+5QWFvDw8NUlu2FK5k88tu3Wu6fEzmYf15QBSXgZy0t2PHCpG+aUOJ7Msd
         WSc7SpFsr7I2WEvwwLcbn6FfwgiMCkDySTXpBskHYAR7JfB1JQxYtlTyRSOUg2SozcVk
         dvJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=pyOJeM1/HL676Vqw66E/N4PmPf+GTQUzIMGUGUG7bAk=;
        b=hcxwvkfLruDfDScwGbWsxEwtZjvdPb2eFh+JKStYmFzL6ovrxqEI7rU3YRb+OWJyih
         OGihfa1fsXag9GpdcPz09r+1+w09ETAho9T90lcCQ9ewi93NN2u/ueQIhcfvnaosUKhk
         8EKar0nTcw99aEs/5Pofk+KtMolPMq1FtJppK+lRPNVzY9Qwn7Ve3wKttiEvWtbn14xV
         BYBMUd94cTCCZpLSv1vC3Yx8p1SXxDsP6arKcqZY4nk+Y87r0OIQeoiNMXxg4wCpmAYC
         +9sSn+YPuc7UxkB5LJ+NuK4B6kyGCyRopEbUl74EPbIg8Y08KmyJZvQIspmJ/koZYSdJ
         qdZQ==
X-Gm-Message-State: AOAM531YclZ2wJtneDcTTJPFGmNas1Cg6z6Sgx4dqEJQWOH5WQ7/4OKa
        zcdlb47C4ih9yY8BFmfK+nnDNr4LyTpKxQ==
X-Google-Smtp-Source: ABdhPJxY2PkR5CBFt0n6v4XF1WNqq+g2SanjH7NeX8xVnY6eBGT0TNNuf39sEcHcR5I0FN3QoHSfOg==
X-Received: by 2002:a17:902:f342:b0:151:bbc3:2077 with SMTP id q2-20020a170902f34200b00151bbc32077mr22834860ple.87.1647258896280;
        Mon, 14 Mar 2022 04:54:56 -0700 (PDT)
Received: from localhost.localdomain ([1.145.18.125])
        by smtp.gmail.com with ESMTPSA id l2-20020a637c42000000b003644cfa0dd1sm16232962pgn.79.2022.03.14.04.54.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Mar 2022 04:54:55 -0700 (PDT)
Date:   Mon, 14 Mar 2022 22:54:51 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mtk.manpages@gmail.com, mario.blaettermann@gmail.com,
        linux-man@vger.kernel.org, 692765@bugs.debian.org
Subject: Re: Issue in man page ascii.7.po
Message-ID: <20220314115450.ivj3obg7h774ry3d@localhost.localdomain>
References: <20220313123422.GA22388@Debian-50-lenny-64-minimal>
 <20220314005258.fxidkcogt7epsvci@localhost.localdomain>
 <20220314112926.GB11800@Debian-50-lenny-64-minimal>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="czlrm4kdnse5pto3"
Content-Disposition: inline
In-Reply-To: <20220314112926.GB11800@Debian-50-lenny-64-minimal>
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


--czlrm4kdnse5pto3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi, Helge!

At 2022-03-14T12:29:26+0100, Helge Kreutzmann wrote:
> Just to ensure that credit is where credit is due: This was a bug
> report by a l10n/i18n team member of Debian and the fix was developed
> by Colin Watson, see:
> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D692765
>=20
> Thanks for confirmation and fixing it upstream, so downstreams
> (translations) get it automatically.

For the sake of neurotic precision, I (and the groff documentation I've
been updating over the past 5 years) term the `\&` escape sequence a
"non-printing input break", not a "zero-width character" of any sort.
The reasons for this are that (1) `\&` affects how the formatter (troff)
interprets its _input_, and (2) this escape sequence does not directly
produce _anything_ in formatted output.  We're familiar with zero-width
space characters from HTML and Unicode, but such a concept is not really
applicable to *roff formatters.

To answer the question you raised in the Debian bug's history...

> Why don't you need it for line 1 as well? There is an ! also.

The "!" over on the left-hand side of the table has only one space after
it, not two.  For a potential end-of-sentence character (".", "?", and
"!" by default) to be recognized as ending a sentence, it must be
followed by a newline or _at least_ two spaces.

I have tried to make the formatter's behavior very clear in the groff
Texinfo manual[1].  I'd appreciate critique of any ways in which it
fails to be.

Regards,
Branden

[1] https://git.savannah.gnu.org/cgit/groff.git/tree/doc/groff.texi#n4775

--czlrm4kdnse5pto3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmIvLQMACgkQ0Z6cfXEm
bc6QUQ//ZeGLWmFCywGr6cB6bxubKWljIcaP9q/nGFzvQgP0A57S/uyInk85VVBZ
dRhFxch4BUQgUh+n7fbePHL6c5QtjHs4jr1d4KaLr0bnjelNjP3NSOKd7HeFBqHS
uv1XH/LvK7jnNYOt6kTU2jBKWT9h0rGEVcd2+jfUJLYaoSGADNGJi1JSXU7+R+HX
gfahS+7K31AyAQzSLlAtekNKmg8amLN0jzSBKRk/atqyBXujLlJP78jVU81+r/dP
oDUNz0iRClgr4Y91uWh0TE+HSA97jRjLUbwtdP7Zi6sk/e9yMT4pP4u/8KXLrMrr
PQHXVKo4yNG6nA81L1k/WzZFCjJK6LJxwdloBP+rBmYwUGtIWhhvVP1mNuy/hYmb
fdFV0E087LDXvCdiieg47+v7tKpHUf81WaZuzogq7DPNqOl3fVNW6DrS366kZz6G
KJik/nA0CAS7o4B7VKpCZ6wj402QZA0JcqnFPtf+ZjAbQLjnKkOJjV6sL7H5rvW8
gcc/goktiKY5UiqY2C8RZiIt2gi6EKv8LffiTuDk+CxAHOWAAOyOsDAP+jaK/n51
OqGZNlZjdcyTHkpg9E8ssi3hYqU2kKjKhVjhFM3g624W9lOvGHYdLTk+Jf6wNR+k
iQpMFWqICzeRFB0P1pEIaG+rJ2K3G3vK4fuChNcPuFmEqF7r8G8=
=hcW5
-----END PGP SIGNATURE-----

--czlrm4kdnse5pto3--
