Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C6F83DCB0D
	for <lists+linux-man@lfdr.de>; Sun,  1 Aug 2021 12:12:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231470AbhHAKMh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Aug 2021 06:12:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231446AbhHAKMg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Aug 2021 06:12:36 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED6EDC06175F
        for <linux-man@vger.kernel.org>; Sun,  1 Aug 2021 03:12:27 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id ds11-20020a17090b08cbb0290172f971883bso27398108pjb.1
        for <linux-man@vger.kernel.org>; Sun, 01 Aug 2021 03:12:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=CvZea/HEA+RIaVaYpJguk8W157jqic9sEobAO84URAw=;
        b=is92gEqvlsP15p1N85yOuAU4MBzjhDBpfwCHabMr2b9snhkXZZZowJ0R8TNHxhNjdc
         I+O30LMZ7gUJdg2KzVC4FYqh0wLiaJbnKccrwNDZfVQT1iF780Ng6iHOhPh7q2dW+Koc
         3JQ/UeRPZdxJ0Q0nWJS2zBfNIfVNvV4K0e3n5Jfnu/Qzu8zS6JngTK92Xn9uYyIE2NWX
         po70MhuGPety0M2dN1IAkcugeowf583gHuNN+pgVw+dPLRRJ5vOCGQMhrLahCZt00UmZ
         yKr++9F5d97VjJtLxkWxN63W4KmzQsP5p1OQn8qBUW7llSaNeeQWXsjHeAggqV+Jt5yg
         knyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=CvZea/HEA+RIaVaYpJguk8W157jqic9sEobAO84URAw=;
        b=fgCqIdxIe6xb4Nmq/NC9h+VTZqtGOrZMYJdPDQ8SOXGrKK5otg2jaWWbBaVaesVRYc
         lpEnfDNVSdf4dURQgTKsh3qMA+TSnAMxXklISPzYHATqTl5T+XvjZEX0mjMmNdNATnPx
         4pbv2acIlELb0auRdpjoJgp+e4kpb8W42m93G0/a7uVFFMtGk7RENuP5p1fos7IEOK/C
         28Ch1Y+o9HwDDAaP04gDp6HkGnUCfD8ggIfA8uLq5zhbuzODV7UyrcficX4Wwfn3veF9
         oO6+pL3nD+0vdsnQZRuEF1kgrySk34pHl/Izc19Y47aCFqXkdbZTsKmKGR3AUN2Fvt7N
         HImA==
X-Gm-Message-State: AOAM5306D6Rl0qi3EaicQI2Adtwrambg3ePCjRY2adGDFD4Tyz5mo8VA
        F4MBCG4TEtJYqC5lGk051tw=
X-Google-Smtp-Source: ABdhPJyyhGKAf3ws7A9GlT/oUmcKDgSb7hpK3qiY3KIyo0+ZolB7iQDwZA8VdAj0uonauE8y0CpTlA==
X-Received: by 2002:a17:903:20c1:b029:12c:4a37:5cbb with SMTP id i1-20020a17090320c1b029012c4a375cbbmr9593606plb.57.1627812747556;
        Sun, 01 Aug 2021 03:12:27 -0700 (PDT)
Received: from localhost.localdomain ([1.145.37.91])
        by smtp.gmail.com with ESMTPSA id y9sm8768689pgr.10.2021.08.01.03.12.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Aug 2021 03:12:27 -0700 (PDT)
Date:   Sun, 1 Aug 2021 20:12:23 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] man-pages.7: Update non-breaking space advice.
Message-ID: <20210801101221.poigrttumltcdenl@localhost.localdomain>
References: <20210731034458.6s76okhgjxw42mpx@localhost.localdomain>
 <e097bf4a-7188-e810-7d3b-e4d1469397d3@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="6qmpho2jieyjwezk"
Content-Disposition: inline
In-Reply-To: <e097bf4a-7188-e810-7d3b-e4d1469397d3@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--6qmpho2jieyjwezk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi, Alex!

At 2021-07-31T13:42:08+0200, Alejandro Colomar (man-pages) wrote:
> On 7/31/21 5:45 AM, G. Branden Robinson wrote:
> > * Advise usage of \~ escape instead of \SPACE; the former, a groff
> >    extension from circa 1990, has been supported by Heirloom
> >    Doctools troff since 2005 and by mandoc since 2019.  The
> >    advantage is that \~ is an _adjustable_ non-breaking space, so it
> >    will typeset non-jarringly both in .EX/.EE examples when filling
> >    is off, and in normal running text (which is filled).
>=20
> Thanks for the patch!

You're welcome!  I've found no use cases for "\ " in man pages.  \~ is
almost always what is desired.

> > * Say "non-breaking" instead of "nonbreaking".  These are the only
> >    occurrences of either in the man-pages tree, except in
> >    Changes.old, which uses "non-breaking".
>=20
> I'll do as usual and copy here an extract from man-pages(7) :) :
>=20
>    Hyphenation with multi, non, pre, re, sub, and so on

Ahhh, ha.  Yes.  This is an impedance mismatch between the house styles
of the Linux man-pages and groff, at least as applied specifically to
the word "non-?breaking", which sees frequent use in discussions of
typesetting.

> BTW, this one also doesn't apply.  I think it is probably your mailer.
> Can you use git-send-email(1)?

Apparently not.  :(

$ git send-email
git: 'send-email' is not a git command. See 'git --help'.
$ git --help -a | grep send
   imap-send            Send a collection of patches from stdin to an IMAP =
folder
   send-email           Send a collection of patches as emails
   send-pack            Push objects over Git protocol to another repository

I did a web search and did not find any reports that NeoMutt does
violence to Git-formatted patches.  Perhaps it is GMail's fault?  (I use
its SMPTS server to send mail.)  Does someone on this list have
experience with this MUA and/or provider?  Is there a trick?

This would explain my Michael despaired of my patch submissions even
when I kept their scopes under control.

Regards,
Branden

--6qmpho2jieyjwezk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmEGc4UACgkQ0Z6cfXEm
bc7kXRAAoIypyIdkQVqyz8ZXpvbK3aDCJDbgECP8bba70vTzMJe+W7sKmy6yX5kL
B/0YEQG3qwRHpHcvkKgIYydzXz/LXMRlOomBCQGAu8T5qCSc2jdd5pAEvBnS3KXV
V4qME7FX0TznIQG4DNVtFFRcISn35yFuL0+9KlxKR1BmOt+wY++JzQvWR4ii3yvT
rYj4/MUMk1SX1Cbr1aafl3ZyXGYqzl+rep7iYJJgHzcP9asBvkKdzxfl2u3WORmr
Zp0oMFebT5hoLCFAtSPdx0BRjERKyd/9+SSCmjeFmPE+kSmRBtMM6hKGJ49yC/RQ
peUCEJw86nD/Qk6wcVrUq+/ronVKgugGaKe8MfNzLmE98OVzR2EV3LdcpnidT+Lr
h2KmIj3C+z8Q9ezeVOO37PX1PohNOuDuLlzMM2egl3l7ETV5kxCI6XMtmF96Jf+Q
+ErOQRl9mmYnw+jYCT57Igl0UpDp7C0DoMLB4tJT/KgdU/FidZ9NGBLkv14LEjmc
uh3X7uTsYBkuSPZycgRp5dciy8+enxGWjVj0Dv9ekU/U0dr1lMjM5WsM/nnYpBoU
o6VNWVdgJa511ZBAPD0FQSWKUhtWbaU3c2eQNlCe/NuYwxEaHAlOTH0DSvJ1JeE7
D6JHncdGxVgEHr8XMk0fUgH8/6LhGVGj6LRIO23UjBxH+Pqg59c=
=7rnx
-----END PGP SIGNATURE-----

--6qmpho2jieyjwezk--
