Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3D65C431008
	for <lists+linux-man@lfdr.de>; Mon, 18 Oct 2021 07:57:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229847AbhJRF7g (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 Oct 2021 01:59:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229533AbhJRF7g (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 Oct 2021 01:59:36 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D034DC06161C
        for <linux-man@vger.kernel.org>; Sun, 17 Oct 2021 22:57:25 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id y1so10442570plk.10
        for <linux-man@vger.kernel.org>; Sun, 17 Oct 2021 22:57:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=9w13mJ7JZarxaLne1Q6L1mPF7cNg55WnlWrtLqilqoY=;
        b=I6OcIwvijwy00zYpmPzc5Q01bsjRnz3pbqDibksMQlpT5luE2u+jAVQG02vTm36wqZ
         DPYYthtndPsPj5P5+D3+qLTRvx9o11Ae1LF2KWtF86BKo0TVZsXNwuV/Ovvv5ZMKD5+6
         1cebVbVjB53HWD+FNoJlpFCCDm4ujjipIOJsuZDsekp1jTUG/N3qK1e/WO2cPJ2MIKiW
         eJeVwFHDuuWQwm2kvO+yb3kQi+hpZcLeUZerfPTEEtWOLxE1uQ4xmSUelvD1JU/TEkRS
         nKQdldl0M8+dVjLJavQEboMdSsjgqSCOcfUhaZD9S9V7kSHXiKHq+XofjZLdVQBJEBLn
         74ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=9w13mJ7JZarxaLne1Q6L1mPF7cNg55WnlWrtLqilqoY=;
        b=78dgG3oWv+l9gFZe/QoxAlwryXqTnEj+/tIajQYe90E/dJJyXN0GsjbzCyXqXPPcxp
         B9s2KaPHu9kJSBY9fvf1FEB2b+gVwz23g4g6wpV1Gc8nqK+pQ8349pA/SNqfK3bvabgK
         BmAjf9TeRWpoDGH/9rl9Bsdtz7TXrwDHnI1ESEcS5hpXHThwHvyYxTeJAIuKl/yEzW3e
         bxCKL1rsY9CI2jey23Km1SLwn8k6dEmzsJky8nKldIyr7QvIGe7VWeod/TDw/O4RVV5F
         X3D61w9UG7p+JXAYXFXbyUbFqf+2rsfahE54GF8rjBxmT2reEkkCkp6gctcJBMULrMTH
         oSEg==
X-Gm-Message-State: AOAM5337sBpVDsBF3Y+bUabEMvqCM3VlFlaDb8wa4rYi9RMFP9f9SS8T
        daNe9RC6rWO6OwjyEHf+plE=
X-Google-Smtp-Source: ABdhPJzvEuwpVe7sDpTbpr5FTbGr95FMnouqSYURpVDCO1mBt9RHx2nF6myw5b8pnF+0y1aTC7UrWw==
X-Received: by 2002:a17:90a:4:: with SMTP id 4mr30510419pja.221.1634536645274;
        Sun, 17 Oct 2021 22:57:25 -0700 (PDT)
Received: from localhost.localdomain ([1.145.58.248])
        by smtp.gmail.com with ESMTPSA id t14sm17726999pjl.10.2021.10.17.22.57.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Oct 2021 22:57:24 -0700 (PDT)
Date:   Mon, 18 Oct 2021 16:57:20 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Jeremy Kerr <jk@codeconstruct.com.au>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] mctp.7: Add man page for Linux MCTP support
Message-ID: <20211018055719.i3rjz2brwqsygqrp@localhost.localdomain>
References: <20211014070519.2037226-1-jk@codeconstruct.com.au>
 <97962dba-3787-2cd2-bc96-63b009ce9af8@gmail.com>
 <e6a15bfbb2337b78c9e1305956e71cebd7b4328f.camel@codeconstruct.com.au>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="gwyyfk6lmv7zh4e6"
Content-Disposition: inline
In-Reply-To: <e6a15bfbb2337b78c9e1305956e71cebd7b4328f.camel@codeconstruct.com.au>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--gwyyfk6lmv7zh4e6
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Jeremy,

At 2021-10-18T13:05:25+0800, Jeremy Kerr wrote:
> > > +Addressing data is passed in socket system calls through
> > > +.B struct sockaddr\_mctp
> >=20
> > That escape is unnecessary.=C2=A0 Did you see it in another page perhap=
s?
>=20
> I thought I'd seen some odd line-breaks at the underscore, but can't
> replicate that now. Will remove.

My groff experiments don't reveal _ or \_ as being permissible
break points[1].  However, the structure tag _could_ break like this:

sock=E2=80=90addr_mctp

In other words (if my UTF-8 gets mangled), after "sock".

To prevent that, you can prefix the word with the hyphenation control
escape sequence, "\%".  This escape sequence is extremely portable; it
dates back to 1970s AT&T troff.

Further, if you wanted to prevent breaking between the "struct" keyword
and the structure tag, you could use a nonbreaking adjustable space
escape sequence, "\~".  While this was a groff innovation (about 30
years ago), it's been adopted by Heirloom Doctools troff and mandoc(1),
so it's pretty portable to systems likely to install the Linux
man-pages.

So we might write

=2EB struct\~\%sockaddr_mctp

for instance in running text (that is, in sentences).  (When filling is
off, as in code examples and the synopses of most pages documenting C
interfaces, neither of these escape sequences is necessary; unfilled
lines are neither automatically hyphenated nor adjusted.)

Just a typographical FYI.  I know these issues sometimes frustrate
people.

Regards,
Branden

[1] I'm using groff's defaults.  It's possible to change the groff
    "hyphenation code" of any character, but few do so.

--gwyyfk6lmv7zh4e6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmFtDK4ACgkQ0Z6cfXEm
bc4dtRAAqeNaNwN+G4Vwti7P+U9xMFKAU1b2gKyQPKvhQIzy3pquvJ7qFENsT8/H
Dl6As/JAjJ7Az610QQOqC5iT3RGAUkdx5mdUQlCylbDQXl9HTBOS4xkKmcCXGPyX
iZewwX5FbSVWBv3Gf0Fjo8+E6gK1wDQr6QUAo9M4u4IV62Y5XLv9A2BldRxFMFky
tapykDSqaCe3Oje9KBsRHtjg5IpGNUjGxVdpGK4+xtDa2DvqOqi6y5FjsIhuRvmH
HRhXGmGL+J8h8nAoggRq89aAUaMEdi55FZ4fwnx6l28XCRAo4+LJov3Qq1sgMDEw
xk76wM1SMjuwYWGlnUivQoGR4cbpkzFS5oHlPK4aFp53XPVpvxUK8EKnIVXKei7q
XuTS9YMry6PqEBYLkTzlYJyLXA4n4hhqot/Lyf9oui1C751UUuZAdFwIAvakSpOO
XyW6O64D/dTyS1TYsHulFz+z7H6q0sr7DUx+OuGfVgWds3UUVM7R1aSatEWNubQ2
BJNuS8ZcyUH0r33pqwKJTr9shhBGko3xS8+JzWvkoMd/XoSo1QPuaQFb+Hx4jVii
JZQ7C+iZ2UHp3G8EVoENUUC09t9WXj6MPXa/78Xyf93ZHaaUMIZOccev2yqJ3k2B
aEiBOMUMAaPi52R7hPW9X3MLxl1t9njhQncDcOiaxoNKdt1G+Kc=
=N5xc
-----END PGP SIGNATURE-----

--gwyyfk6lmv7zh4e6--
