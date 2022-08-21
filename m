Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D70559B214
	for <lists+linux-man@lfdr.de>; Sun, 21 Aug 2022 07:28:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229906AbiHUF2m (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 21 Aug 2022 01:28:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229379AbiHUF2l (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 21 Aug 2022 01:28:41 -0400
Received: from mail-oa1-x2e.google.com (mail-oa1-x2e.google.com [IPv6:2001:4860:4864:20::2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 723F12A273
        for <linux-man@vger.kernel.org>; Sat, 20 Aug 2022 22:28:40 -0700 (PDT)
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-11cb3c811d9so7764939fac.1
        for <linux-man@vger.kernel.org>; Sat, 20 Aug 2022 22:28:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc;
        bh=4RqBD95/YTTvkNySVp4gXc4xmKCvEE+JgUe3hHbozes=;
        b=Citza3lLoZ+R69m8XBdA0qqm+Ndp2fLFpN+y0c1JFVDfSDptXef9N3/FV2Tk5QOQNP
         jPF6B8sIou/xm5VxJ8Dd7F2zFnFVTL1Ub4Q7L7u/yKvPzgjrAs8cuyUEnAMNQ5spNQr2
         hKBo+9nVT8H62IcVXLrcFZuqPGZmHI/DmNllTYuSbrDysD8oaNUXOjiNAHEYYkPJ28f9
         ZXGggyETTbBYYbRlCFo8k5KxYk7nO2p48KrhV27qVmobVxC/p2DskezZh1AQi7TnQOLK
         Gb/Z+bU0+2auWt0tab3m3kE+Y/SsZ5UEqrzPXccdG0uWNP59JBZtE90ufSffCyOZ8TDp
         cwOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=4RqBD95/YTTvkNySVp4gXc4xmKCvEE+JgUe3hHbozes=;
        b=A+o6DP+mqZYmHxXrbVpdJWjQAaNZA0BRVZ+rIZYqidySmzsAfpHN8tY0oaskbqWlTI
         Fs3xukzIhUR9y/37O8FKUfN9fO0Ehotyuuu+tTQF7H3QrUpiAnnWfVGMQ89LIy+qamSR
         TENOETYHST69i/Q1AySIZCMHKFSjSlPQM6P39qvuuLHPUzgkVcvT7tU59IbGkNj7Y4XF
         U2jmJuAuUHgOsZPJVcpwMngbfrad5p8pnQ/vK9dqOLqLWjVZQXPCCpoolOfnKcsmxU18
         OpllAacAY1GwaKT1JjWmmedBHMLXinNQPnvhnkAMH94hkdub447IWL5VBHlHpAmYFu4l
         ypYA==
X-Gm-Message-State: ACgBeo1PKGd7XAnDhHBQqfrhMbDa9vJ3di8wvKeswXPX9Bgp4/0MTWJ4
        MfeeDWqrUN5XbC+yHkmdO3NiNzRs7S0=
X-Google-Smtp-Source: AA6agR59nRxmfxKShuQ/LfZI5arKHqUQFV/nHa6EXH3LD3Vw9jz6qwe5HwYeeS9uud9g9l1I2FNUGA==
X-Received: by 2002:a05:6870:600e:b0:115:8100:1947 with SMTP id t14-20020a056870600e00b0011581001947mr9826745oaa.134.1661059719783;
        Sat, 20 Aug 2022 22:28:39 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id m9-20020a056870058900b0011bb6582378sm2286917oap.51.2022.08.20.22.28.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Aug 2022 22:28:39 -0700 (PDT)
Date:   Sun, 21 Aug 2022 00:28:37 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Jakub Wilk <jwilk@jwilk.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 01/10] fanotify_init.2: tfix
Message-ID: <20220821052837.tpxk3qe7vfwo7cef@illithid>
References: <20220819190859.6248-1-jwilk@jwilk.net>
 <a5484dc8-33a7-e10b-2b73-7a44698a529c@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="etubuvjbknp2nu2m"
Content-Disposition: inline
In-Reply-To: <a5484dc8-33a7-e10b-2b73-7a44698a529c@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--etubuvjbknp2nu2m
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2022-08-20T01:28:04+0200, Alejandro Colomar wrote:
> > -capability to create and intialize an fanotify group with limited func=
tionality.
> > +capability to create and initialize an fanotify group with limited fun=
ctionality.
>=20
> should this be 'a fanotify' instead of 'an fanotify'?

Answering this requires people to document how the function/feature name
is supposed to be pronounced.  Use "an" if what follows is a vowel
sound.  Spelling is not a determining factor.

Unfortunately it is a tradition in Unix culture not to make
pronouciation of its lexicon of (historically) hermetically terse
identifier lexicon clear, so that the names of commands and functions
that are well known enough to come up in conversation at conventions can
be used a shibboleth to distinguish self-taught users and programmers
(and clueless sales personnel and would-be entrepreneurs) from
"authentic" Unix experts who underwent a proper apprenticeship, and
through a chain of masters, can trace their tutelage to a luminary at
the Bell Labs CSRC or UC Berkeley CSRG--someone with a name to be spoken
in hushed tones like "Ritchie" or "Joy".

Does "troff" have one syllable or two?  Does one refer to the text
editors as "ee-dee" and "vee-eye" or as if they were English diminutive
names "Ed" and "Vi"?  One set of choices will mark you as a person who
_might_ be worth conversing with; the other will get you a short look
down a long nose and the cold shoulder.  We've got gates to keep.

Both Unix and the Linux kernel, the latter particularly in its
development model, were levelling technologies.  They brought better OS
technology and programming environments to much larger groups of people
than had enjoyed them before.

But it is a sadly recurring theme of human history that as soon as some
levelling process occurs, a certain type of person promptly moves in to
restore a guild, caste, or other hierarchical social ordering that they
are more comfortable with.

If you can't get an authoritative answer from a principal author of the
fanotify API, I suggest reading the term as "eff-A-notify"; this will
then be implicitly documented by your choice of the article "an".  It
doesn't have anything to do with fans or the fourth degree of the major
scale, after all.

Regards,
Branden

--etubuvjbknp2nu2m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmMBwn0ACgkQ0Z6cfXEm
bc5vAg//W0uxwIuyfZfGFotqo/aZg22p+XcbK2LJiBp4LjSn37i9jyl9LCIycSqA
BGV3JUy0wbDOvqCOPwvGPKSgqiDKc1YyeGez9f4G44UYzPpU+mDzu2PAY+pkijTS
TzgxcOjDIoKEEnU2x3C+ZWddQMMuBirxj+f+qWaUC8QXqJ6xpaNjhwVMiIpKj8zC
T7r5KnD4FdQ4FwTftxgjykSvT4afZc1vCwF6QrI7nWhktMlkvOHDdRXQVIkWvkcQ
0arO3aHt9856dAxgxEtCj1/mLFOw1hj+pKyfi10/wCawe8UwYE8+e1UABqFm3w5t
fdMsEOn0AFFYVkz1/QOs/3h9ot3plU+8aADyyrb57oEdcthvLouBHfZy9zm90guS
q3yeKa/6W06rHET3UAmGv1mMvvwJxZfrfaOdpR2P9e9MleWf+DdOqDsWr+KULGiz
pa3RVjbXEM0kO4zSfoi7MxbmJCu7JDQylN/Ll3q5eZ/PmrGTnG8yqtn/TKrdA4BP
Dy/OyGwWssJxs45RGaJySsAsuPeCzfMCjoJZMozMyWpJh5LFGahx2raZRxcyX/WH
WpbgHWJ+KtbNTjgf4I3OblLw3qrs4lhxHmAcbqcjmopH1rUgyTIe8DZHOB4MES7Z
L+Riv9vps6mGvLEZmzGfjSjfWKlbh17tSxzV7RpR9N6erDs8iAA=
=C1sy
-----END PGP SIGNATURE-----

--etubuvjbknp2nu2m--
