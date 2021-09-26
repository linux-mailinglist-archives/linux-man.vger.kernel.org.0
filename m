Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 22F324186A3
	for <lists+linux-man@lfdr.de>; Sun, 26 Sep 2021 08:03:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229498AbhIZGFF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 26 Sep 2021 02:05:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229485AbhIZGFB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 26 Sep 2021 02:05:01 -0400
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E04E6C061570
        for <linux-man@vger.kernel.org>; Sat, 25 Sep 2021 23:03:25 -0700 (PDT)
Received: by mail-pf1-x42a.google.com with SMTP id k17so12661179pff.8
        for <linux-man@vger.kernel.org>; Sat, 25 Sep 2021 23:03:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=7AwqWQLfC222Awr7sSKElX/MZRMZXd5wJoQsrJ19HWE=;
        b=ZVsEnVMttsjxlveojlcwa3P/ZGpBQpa72CeWqWA3p4NCs5caurk4E3M/1tFdhR0u6M
         qx6ADyWND5+NJL8ko+5zi+GOBUCgh0lY9ti+bIzyUOxHq6sqidzcb2aHvqbNE7e/rzG2
         9j53p21ZfkcppIDJ9hXQOLNqjeRmhoB0436xlS249HTAynjqME7VZnuWelRbJufO25aL
         6USkRLLnAKDvUCv86UpePtN2EcBkEExoIrpXT/Qj3MloUUgprvSMIRuSvyRf78IPSUgu
         MGZmv4qVc/tCQcQ5zUtZOk+NcVoCbP/t9vqMd+WxgJK+fg+2zBB8Zvz3C1XlTOmiCWqy
         I9ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=7AwqWQLfC222Awr7sSKElX/MZRMZXd5wJoQsrJ19HWE=;
        b=WupsoayQuxntNq/YpDf4bNoyYCTJuK2l17UAvahvdih+6qh72uFeKQKJg/gS+cHlen
         JrLVTodnTGeei/TRzaPWaK365KGUYNYO0KcykXlaKqhqF60fn4mN82I07t8Lk1O0erQB
         sxvApSPKCu8kJMRzlhb6p2uFZLD0P8Gc9tXcqRcWVD80BpYwO2n0clXz0m4Tw/UHESRO
         buS5frl+QBHU5cVmZFBThemmRV3Wkn2+w3lbaHYq526MihfPFfx+sf1Pb1ecNgktslwq
         06R4GijB5tmU9ANjyATYYcowLm2tv9tLJ8X53oTcHrenGU76E/2N3KUNfSOYEtBVNzYx
         HD8w==
X-Gm-Message-State: AOAM532PvRs5yhzdIIy2vKX5qiUJc6Q+ksU7q1UXZWxJYjUpBzClL7xr
        dUi/Y+RDFZNzE1N7T47t2tY=
X-Google-Smtp-Source: ABdhPJyQNU/v3J2AZiQ/O5eQOBDfcb1R0aodUACx7TTkKkq26HuI7M2OVfA8ixxQU1c+p1VaW0evyA==
X-Received: by 2002:a63:4f18:: with SMTP id d24mr10952851pgb.65.1632636205229;
        Sat, 25 Sep 2021 23:03:25 -0700 (PDT)
Received: from localhost.localdomain ([1.145.33.62])
        by smtp.gmail.com with ESMTPSA id i1sm15588441pja.26.2021.09.25.23.03.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Sep 2021 23:03:24 -0700 (PDT)
Date:   Sun, 26 Sep 2021 16:03:20 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: Rename VERBATIM license (was: Re: [RFC v3 8/9] Many pages:
 [Verbatim-man-pages] Use SPDX markings)
Message-ID: <20210926060318.pypfwwido5log7ss@localhost.localdomain>
References: <20210905132542.245236-1-alx.manpages@gmail.com>
 <20210905132542.245236-9-alx.manpages@gmail.com>
 <20210908043502.xcmj6yoxrneokwl5@localhost.localdomain>
 <8b513d06-3e9e-3d2f-6217-07bf2fa3765c@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="h5vrf2rjyazr4fci"
Content-Disposition: inline
In-Reply-To: <8b513d06-3e9e-3d2f-6217-07bf2fa3765c@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--h5vrf2rjyazr4fci
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi, Alex!

At 2021-09-08T10:22:09+0200, Alejandro Colomar (man-pages) wrote:
> On 9/8/21 6:35 AM, G. Branden Robinson wrote:
> > I'd like to request a different choice of name for the SPDX license
> > tag used by the man-pages documents affected by this change.
> Completely agree!
[...]
> > Any of the above could be further prefixed with "Linux-" to
> > reinforce the specificity to this project, of course.  If pressed
> > for a preference, I reckon I would pick "Linux-man-pages-copyleft".
>=20
> I like that name.  Less historical, but more precise.  Michael?
>=20
> Acked-by: Alejandro Colomar <alx.manpages@gmail.com>
[...]
> The identifier "Verbatim-man-pages" is already in SPDX, but it is yet
> unreleased.  They talked about releasing soon, so could you please
> jump in there and propose that change to SPDX?:
> <https://github.com/spdx/license-list-XML/issues/1310#issuecomment-911876=
593>

I've submitted a PR to this project[1].

> BTW, does the "traditional GNU documentation license" have an SPDX
> identifier?

It appears to be present in SPDX as the "Latex2e" license[2].  LaTeX has
a long history, so it's quite possible that it is the true origin of
what I have called the "traditional GNU documentation license" for many
years.

This is a point worth researching; thanks for prompting me.

> > I feel that the "VERBATIM" string is similarly misleading, but it's
> > not presented as an SPDX license tag, and I see that its use is
> > already well-entrenched.  I expected to find something like a sed
> > script in the man-pages scripts/ directory that manipulated lines
> > matching '%%%LICENSE_START(' but failed to.  Perhaps a convenient
> > new moniker could be adopted to supersede "VERBATIM" in this
> > context, once the SPDX tagging initiative is complete?
>=20
> The SPDX license text doesn't contain the LICENSE_START and
> LICENSE_END lines, so if we change the name, there will be no traces
> of VERBATIM (apart from the git history, that is).

Sounds nice and clean!

Regards,
Branden

[1] https://github.com/spdx/license-list-XML/issues/1310
[2] https://github.com/spdx/license-list-XML/blob/master/src/Latex2e.xml

--h5vrf2rjyazr4fci
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmFQDR0ACgkQ0Z6cfXEm
bc5SSQ/9EJrLB8GKx+92/7phDKi4jf9KxUc3jhEIWjoKBzTU4PymHRonWN3P/Gee
HhlrIG2P0WygYEPdN7jl6LCH0WoMWAHOKxx5CtunUDfT6Ps+92UKZb0+bH9527cP
31cam4XSF7mh8f98vLI29xNSSkAgOC7UfplBWwK3aD3ZjG+kAcoTfeDsTdy6aLdV
hw74NaIqJBvZ8RqYCJhgd5dMLviANJzo9qW6ovdwEgYuPdc+PxdtkLv4RHVPxSV9
1e4CUlzO++1JwueJGd5wzBn344/10JmmM8QcHs3nepE9Xf+EnYX0pAdDWaFv5rUv
8wjPHvzgDjzMZ5w7m41rXTBpEaTOd7vZtTfOHLFmN0gR56u49BWFOKnDktxrA4PP
KzLLPc232lUwOPzRy0YxKhrfCHnI2RHhyQhY71yHYUXrIA/Ztyt1fbKzt7IHTG+Z
2uEs68cQAK3qeB/ueUBrjrv4ecPFcGbztQGgI7BAEbhRbJiY+dlGtDcH+iNTp59t
ajzNjv51o44jIGUdPE73OLGknpUoOoAG8dEChP4Yw6qENWD7YyHjaGWtZvdj2jhs
StUclURRdDwn7a/obDtUYyu9U4W/ssfsQijhtYA5dDSSIfnoUC/4cGYeHIzGUm41
EJ9cBlfH/ux2BNiSOXoZBcGT3jPV8lxJXz1hBDTowmVynPTvpBM=
=ZhUR
-----END PGP SIGNATURE-----

--h5vrf2rjyazr4fci--
