Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B3504589E4
	for <lists+linux-man@lfdr.de>; Mon, 22 Nov 2021 08:37:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231183AbhKVHkL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Nov 2021 02:40:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229685AbhKVHkK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Nov 2021 02:40:10 -0500
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com [IPv6:2607:f8b0:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3F2AC061574
        for <linux-man@vger.kernel.org>; Sun, 21 Nov 2021 23:37:04 -0800 (PST)
Received: by mail-pg1-x532.google.com with SMTP id g28so14600534pgg.3
        for <linux-man@vger.kernel.org>; Sun, 21 Nov 2021 23:37:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=2QyX6rHs7TMC/XWfe3f8Iu5OHn7aLTZpq8JNOXs0mEs=;
        b=U1avmLcyUu15G70srho5AAtriwKXMR9YFjk2H8YXzYQg34EP9VV/q3hqf8+6eMHGEB
         5GSgnhAA9p70Hw8oNk1PpsAtIIefSghLk3IUPzBmhzqj1ut7VN0F55q2N/P+PS+Slufg
         3AhWg3Av0bcCr6Aj49N0iQdkgi9qaYDZr7SuEgLwWxMK62DA0lnRViKipuRg9BHZJ0/h
         e2sfHYyo8zRLhVXELmaXibSCgb3thlSF7ysM8hLa8o2xBGi6ty6x4kDyz7Ma22MqFH8u
         7oLr13KcTfu23dRndqyLrc8C/6dndYA6dTtiRVBs84ePkrq7c8jiWB3BlzwGGWGRocg2
         j9lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=2QyX6rHs7TMC/XWfe3f8Iu5OHn7aLTZpq8JNOXs0mEs=;
        b=zo2vOOSs4clC3GJybhUmVGziTV9fTxcB77OrcLpIY1QfSRoW5lbtrZoctOewV5YbWX
         gNj5bVLS2UEPd70TIugkBXjJJKnEDUf6lQtFjfDRpYTADpm4avSkz+BgPJSM7aYNi7z/
         iVchlHn+fsx2kTXcTcoLGkN/NHHPdd+46kRZjvksdwSx5/oS285+yGeEycyBpuVAS/Pf
         3FYF7gdRuUhrDe1jfWTHQFZE2EqcsSiuNrxqSu7v/1Rg5MewUxPMvPNE1UftGvzT5fz2
         5vzq6Of9jf8H6/PW+xaN+eFVriBYTKMWLISkJ8dfNxWsA/noA/Qh+r7ZCg9dVNZFyJZs
         awUw==
X-Gm-Message-State: AOAM533Oy+xPAUM/RszlVFG76VSt1tfW8NjQx9mGFlLJFxsivvnS4rCz
        BF3+ycA028QgIDYtE6mWXHb8uPAnLCw=
X-Google-Smtp-Source: ABdhPJzQLNJJM1J5PN5VO5279R4hIfJSbjafGFFLEePZaHnZ1SkAafjjidHphS5JH1T08PaWoRkuSQ==
X-Received: by 2002:aa7:9a4e:0:b0:4a2:71f9:21e0 with SMTP id x14-20020aa79a4e000000b004a271f921e0mr43003488pfj.77.1637566624280;
        Sun, 21 Nov 2021 23:37:04 -0800 (PST)
Received: from localhost.localdomain ([1.145.87.11])
        by smtp.gmail.com with ESMTPSA id t31sm5564206pgl.47.2021.11.21.23.37.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Nov 2021 23:37:03 -0800 (PST)
Date:   Mon, 22 Nov 2021 18:37:00 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [RFCv2] man-pages.7: Add phrasal semantic newlines advise
Message-ID: <20211122073658.a5ofemyz5sdaa6da@localhost.localdomain>
References: <20211112225423.8361-1-alx.manpages@gmail.com>
 <20211113000614.9514-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="p6l4b2jgf67c7oo2"
Content-Disposition: inline
In-Reply-To: <20211113000614.9514-1-alx.manpages@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--p6l4b2jgf67c7oo2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi, Alex!

At 2021-11-13T01:06:15+0100, Alejandro Colomar wrote:
> Brian W. Kernighan, 1974 [UNIX For Beginners]:
>=20
> [
> Hints for Preparing Documents
>=20
> Most documents go through several versions
> (always more than you expected)
> before they are finally finished.
> Accordingly,
> you should do whatever possible
> to make the job of changing them easy.
>=20
> First,
> when you do the purely mechanical operations of typing,
> type so subsequent editing will be easy.
> Start each sentence on a new line.
> Make lines short,
> and break lines at natural places,
> such as after commas and semicolons,
> rather than randomly.
> Since most people change documents
> by rewriting phrases and adding,
> deleting and rearranging sentences,
> these precautions simplify any editing you have to do later.
> ]

Sound advice worth quoting if space permits, and linking to if it does
not.

> He mentioned phrases,
> and they are indeed commonly the operands of patches
> (see this patch's changes (the second part) as an example),
> so they make for a much better breaking point than random
> within a clause that is too long to fit a line.
>=20
> The downside is that they are more difficult to automatically spot
> than clause breaks (which tend to have associated punctuation).
> But we are humans writing patches,
> not machines,
> and therefore we should be able to decide and detect them better.

I, do, however, find the free verse style more difficult to read in
email, as a rule.  A brain is a modal thing, and when I'm reading emails
I'm generally prepared for prose.  When I'm editing a man page, my mind
is in a different mode, and better prepared for the foregoing textual
style.

> -and long sentences should be split into lines at clause breaks
> -(commas, semicolons, colons, and so on).
> +long sentences should be split into lines at clause breaks
> +(commas, semicolons, colons, and so on),
> +and long clauses should be split at phrase boundaries.
>  This convention, sometimes known as "semantic newlines",
>  makes it easier to see the effect of patches,
> -which often operate at the level of individual sentences or sentence cla=
uses.
> +which often operate at the level of
> +individual sentences, sentence clauses, or phrases.

I would drop the qualifier "sentence" from "sentence clause(s)" here.
One wonders, "what's a NON-sentence clause"?  Just "clauses" is fine.

This noun is not otherwise used in the man-pages project except very
rarely to refer to items in legal notices, another standard usage with a
clearly distinct context.  In the context of the patch, the discussion
is obviously grammatical and sentential.

Apart from that, LGTM!

Regards,
Branden

--p6l4b2jgf67c7oo2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmGbSJEACgkQ0Z6cfXEm
bc7ZXQ/+Jsaq6nwyWzbDBXBeyR2jl/2OzUMNd7AlZpWyGoWv7nbrCahdT6zBASqH
6ZeZbLGVwqr3mbOdwmSvt8FAFPKkAwX4pnzOUdoHE5A9bK03E1DIXsRsd0U7NMrY
V8PmwqC3HygKuCgu9Xrd1I4pZHK6nWR+r1Ev4Njknmi1oKWrdUIpporpdcc+1rOd
N7itHLB3E7ZzYWjYAmK2+qa+8wiTvip7GnToNvRbr8IOe6xu4m7ae25nGWK/q7yq
WwI+qXsZcJxg9ibnBdBkBF/8XZcbCr3h/IUnKi7f9YjmzTXmOP+ZRFt7EkYPJBT5
0DlbhNfWQ5b6Ch3Aq8XxDRVD+RfWUNlfEDEP2ZcrzXTWUYp7VO6tE438P4bNIeIY
ci0zY8lCHZUjApnQJOITqRrcRQR01NgouiaYlVu7dKC4SsRmzevIml4+26mYVfnT
313YcM6jIfA4Teplgq1UJPzOOwyjFhQpAfXUFRk09NiizCwyZYq8ZkvzXT/44+v+
PnGEAHWjoWvgliC3B/wE7PnVVNxKH6MciWustASyWA/HdmlvDTffJoDKDMEJylpA
r2EEaxLWAMS5LiQOl8rOAgRyxpJNJUlTldu7L9SV0nOIMW2LG4XDov7oKPAXiJEX
6K9/uSaVv3uWaoZVL7UESkw6kphZCv4iverPJPCYJTwOplwp0xw=
=ikph
-----END PGP SIGNATURE-----

--p6l4b2jgf67c7oo2--
