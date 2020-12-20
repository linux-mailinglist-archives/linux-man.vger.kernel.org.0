Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4D3032DF488
	for <lists+linux-man@lfdr.de>; Sun, 20 Dec 2020 09:58:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727377AbgLTI56 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Dec 2020 03:57:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727372AbgLTI56 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 20 Dec 2020 03:57:58 -0500
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D205C0613CF
        for <linux-man@vger.kernel.org>; Sun, 20 Dec 2020 00:57:10 -0800 (PST)
Received: by mail-pl1-x633.google.com with SMTP id s2so3988838plr.9
        for <linux-man@vger.kernel.org>; Sun, 20 Dec 2020 00:57:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=hi407cXBexUZgWAKZvmXRgieQLCZR/sMrRzrhhW1KU4=;
        b=MLOL1LPqX5ffR6XzYFKhTV7kMEobqR+JvYwHHSi+kt/K0geJfnIPzAAhoWgGXMRrW/
         m8NLThZ+lnN5XgorDloRSkPEfUUllgA6tyHRmdWQds6JJxT+aE33KVEqBD9WuyK4J88t
         KrtDVsopm0QM9Dcb4p+nS/lAqpX9pYDGYT+l+rR2vvXHF7llpZ9qUByLKI3P+22C5Yqb
         BuEywsy2BxFxRThLJJZ+khcuCYMMqRrnmB/+IHCF9TLA1kPQPq0poJSCqTEL+erYLInO
         h2yF0PuyLOQ0uMgQrFydJ4QhzYBhSYO2v+1iN4DKENcPbp3VjPq7SchrZMxFAgx+zKLT
         oIMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=hi407cXBexUZgWAKZvmXRgieQLCZR/sMrRzrhhW1KU4=;
        b=shpkKQ51YjAeUPqPDnl3lmigAE2ODp2Egbfm8EHCOgSdKZU9PVSY8TULlCzpLWKCLz
         0cadCnVug9eqynjh9ApuQy2lp0kEMQBICiHnp4bBBd3LyK7BJopF1ZNaglsW6ZOpvnQi
         SrQ8gzjSvCZwiD9DGSr+2mMHWu4nLVKqelMnNbHgOlOxnMUBltd38PIjWKXHYiKos2mp
         SzVSKS6svpN+xjWxFd/AZwVH8/KDwWJh0ncO6gKCF2Du5V2m7So0RsXIf8Q38Cmez1It
         juxsFb1nLGD4htgg/nVThIbfDwPFVo9P3CKoGVChMYr2iKKKdKNgUvlVrj3GLSL3Zj3v
         CKPg==
X-Gm-Message-State: AOAM5316R1dtT2vsKlW/Vz+3/M+beawng1JK9mfyNPVvx69Ii4qtl1xm
        C05WrtM/figanlm8UAn5Pd/1AfJuJCc=
X-Google-Smtp-Source: ABdhPJwNhYQ4OyXdLZNLFXZIUPLbEbeH6vPC2441RPdVXfDrE4duic3rcSpG1vyfKRLwvO2/2zzplw==
X-Received: by 2002:a17:90b:4b0a:: with SMTP id lx10mr12236436pjb.205.1608454630055;
        Sun, 20 Dec 2020 00:57:10 -0800 (PST)
Received: from localhost.localdomain ([1.144.138.211])
        by smtp.gmail.com with ESMTPSA id b2sm12913695pff.79.2020.12.20.00.57.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Dec 2020 00:57:09 -0800 (PST)
Date:   Sun, 20 Dec 2020 19:57:04 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: Right margin for code (SYNOPSIS, EXAMPLES, ...)
Message-ID: <20201220085701.5wjihnjalt5bgk4b@localhost.localdomain>
References: <1f731252-395b-e8bd-ed5d-cc3b3eeea948@gmail.com>
 <CAKgNAkisA-6-GhYugwFLWp4pZLqHSU7T8unpTt5mibcMzApz4w@mail.gmail.com>
 <8d84a00d-cd4d-86b5-9ed0-9357324a824d@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="wqme3oxcgk4nx47n"
Content-Disposition: inline
In-Reply-To: <8d84a00d-cd4d-86b5-9ed0-9357324a824d@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--wqme3oxcgk4nx47n
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2020-12-12T19:01:30+0100, Alejandro Colomar (man-pages) wrote:
> On 12/11/20 10:26 PM, Michael Kerrisk (man-pages) wrote:
> > Hi Alex,
> >=20
> > On Fri, 11 Dec 2020 at 22:14, Alejandro Colomar (man-pages)
> > <alx.manpages@gmail.com> wrote:
> >>
> >> Hi Michael,
> >>
> >> For code, for example function prototypes in SYNOPSIS, do you have a
> >> preferred right margin? 80? 72?
> >=20
> > If I understand your question, 80. But what prompts you to ask?

I researched the question of right margin/line length for a change I
made to groff earlier this year, and my findings were that you should
format man pages for 78 columns; this will probably work practically
everywhere.  Things other than tbl(1) tables will work okay at widths
even narrow than this.

Why 78 and not 80?  I couldn't find an authoritative answer, but my
guess is that 80 was viewed as too risky for terminals that would
misbehave with respect to wrapping or scrolling when a write was done to
the last cell on the line or screen.  That gets us down to 79, and
perhaps a preference for even numbers over odd ones explains 78.

Quoting my own research:

"...man-db man(1) has supported the LL register for eighteen years, and
Brouwer/Lucifredi man(1) for fifteen.  Heirloom Doctools's man macros
set the line length to 78n on nroff devices unconditionally.  mandoc(1)
similarly also always formats for 78 columns on terminals.  groff's
mdoc(7) macros grew support for LL in parallel with man(7) in 2002 and
never added the \n[.l] introspection at all."[1]

Regards,
Branden

[1] https://git.savannah.gnu.org/cgit/groff.git/commit/?id=3D7770e10fa4d5b9=
03b6923f466154c806c44de35a

--wqme3oxcgk4nx47n
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl/fEdQACgkQ0Z6cfXEm
bc70EhAApyzrhlHKfC6jlUPwmLlFwnaiIipQfPxc/UGtILnkmThs6z71WBGnCVe+
0C+ZRtzR2nHJUTfu+lzvCujLoGV3kdtweeeAtt9kbafjyPWPjdMser4tUeJ7wxZq
aofw+O6bQEwkTEYt1YWecimAXyo9fdGrd8wejBHylx9Qa/X/DMO8Hq8glNmXSAED
nSQlLbQ8z3cu1tKU0nxy1UF84tulxNbXVeu0/SUDM7bAT03HMoV6vEry/DzADpVM
LT15FcLeEx+KcYuGwv/4zNm8K/Z1IYDgnunbKTjSdkU0cIb7I+NVHQXvu6FU8EtP
Ddt5C+811TXSRQnAY8lQmXtRikxOn3/QTLpA6Zlx5xSoqnrESgCD71UhHJZhYpXm
qiScX8BAh8Jt2JlAV96I+vHHFrdzIRtauHJ9ter1d2kU0uPUZO/c/TMmy+Ox0FnS
FAQmf5r54PID/mDbaYNmN0gzIICOsb6yBxYxdPu9bgo2u2kw2Kr5NsxLKLw70uvR
40KL2DAdlV3TOVpNy7jbgmwvzhnXKBo9XrREyzP3S9WkOzSHrfz6jXoymHPJFLyO
ROcYP/6WyWS73ZH+tNmm6Vznhb7ywnFDcGBC+pHHBCdaI+MoKGTRTxI9IozyQfhw
0A86gpFxH6KwYBWxsgdU9+vJs8uJsDoiE1RIDXU79z7w1YMqqFM=
=Uxdm
-----END PGP SIGNATURE-----

--wqme3oxcgk4nx47n--
