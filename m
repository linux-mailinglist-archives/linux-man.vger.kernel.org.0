Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD83A3DCAE7
	for <lists+linux-man@lfdr.de>; Sun,  1 Aug 2021 11:28:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231464AbhHAJ2i (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Aug 2021 05:28:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231446AbhHAJ2h (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Aug 2021 05:28:37 -0400
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87E33C06175F
        for <linux-man@vger.kernel.org>; Sun,  1 Aug 2021 02:28:29 -0700 (PDT)
Received: by mail-pj1-x1030.google.com with SMTP id mz5-20020a17090b3785b0290176ecf64922so27259738pjb.3
        for <linux-man@vger.kernel.org>; Sun, 01 Aug 2021 02:28:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=kzE20eyrbWtrZ80qtAEcrrrZw5S7hQMB+tQkBI5o2WQ=;
        b=tRM1imKmrhCdL65W51gVxkF36Jn+/xJpQMyx3rd9zLVdp32n5hIFLsxRouZqPMQnjY
         BlW5jPVlnHBKOPeCm0p1t4Ynr9iTVdpQEEyFG5fh/B4I/UIz0Cz3QMycBDHgj9xH/KB7
         PDB2vi9z901oRJdc9AEz213XXW3AOZGPduzak+z/GAC3ya1g6pKqhRtSUAfU3AOxrEMT
         SIrxHC7C4gfTfG36E8sYfErC3pR3tmiTPcnihT8PhGa5dMdJ7d8mwJ2V1D3vIk4pFRN+
         Y1aV+VXTG1DSvjz5WebM88H6DnYD2+nQce+LxbYEgiHOhpd/VS5cDZITK1Avz83lDQf6
         Pm9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=kzE20eyrbWtrZ80qtAEcrrrZw5S7hQMB+tQkBI5o2WQ=;
        b=XGIOJt5fqnoN/gzQ+s8NeBA+nHtAPtYs/pppjfNozuuR0wpje0AnFu6THKmLHYyPLF
         cXZuiQRRB1cbe9ZPO63UKAJCvxKMW1b6iCIExJgTYF5WZTYf906Gm3/4ivTAnGkl8xLF
         PoAOOuWOOZVhX106D4smDSXkRal7iCXXy7BsMzSeAz5QkS+VLC4Jbw3s7TO1/uARuDnQ
         lZUayMyLmpUqnNZgreDm+wrEb0aX/dQnsK01U7EjsFaOxzVZ4d30IX7PeFDR8h9it4n+
         LAYO82VvRXEMXcyOMM5SuH3JbxEOhZ8V+YMxsyEbq2+EDCxgwUXcg1wY6XBFUmrRt7i7
         lx6w==
X-Gm-Message-State: AOAM5326ZFnVJQXQ0Oldj3UOnxrPc9VQ4+kBQ9Gs0YR6UadLkqQQO09t
        G8JYf3HpmkkjHDdfAKV9IJ0=
X-Google-Smtp-Source: ABdhPJxJF5x11d787Ykeseg8JoYK72H65hvJWtRP1kB5iGnlROZhi+4IyBLXJ6PnfB+Wj1GTZBQVbw==
X-Received: by 2002:a63:1359:: with SMTP id 25mr4535330pgt.79.1627810109065;
        Sun, 01 Aug 2021 02:28:29 -0700 (PDT)
Received: from localhost.localdomain ([1.145.37.91])
        by smtp.gmail.com with ESMTPSA id j22sm8428235pgb.62.2021.08.01.02.28.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Aug 2021 02:28:28 -0700 (PDT)
Date:   Sun, 1 Aug 2021 19:28:24 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/4] landlock.7: Add a new page to introduce Landlock
Message-ID: <20210801092822.cpbqa3hdmkd23es2@localhost.localdomain>
References: <20210712155745.831580-1-mic@digikod.net>
 <20210712155745.831580-2-mic@digikod.net>
 <3f1b943b-2477-2c4e-c835-d6616888176c@gmail.com>
 <c5036c5c-37a1-57d2-e5dc-1f41a5ed0d31@digikod.net>
 <a3b271e6-e03f-dab8-b04c-c76315cdd98e@gmail.com>
 <1a698059-d9dd-5aa0-2765-42e704c3a697@gmail.com>
 <20210731001529.ggiknccl74akaahk@localhost.localdomain>
 <6c73ce9c-c8b3-426a-5c0a-f66b634210fb@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="vvx6lmm3lnmuuaki"
Content-Disposition: inline
In-Reply-To: <6c73ce9c-c8b3-426a-5c0a-f66b634210fb@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--vvx6lmm3lnmuuaki
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[CC list brutally trimmed]

At 2021-07-31T13:02:27+0200, Alejandro Colomar (man-pages) wrote:
> I think you misunderstood the context here.
>=20
> I meant all of that about input, i.e., the text of the patch itself,
> text to be added to a man page source text.
>=20
> What I meant is that when you break lines semantically (when writing a
> patch), and initially forget about the 80 (or 75) column right margin,
> most of the lines you write will already (as a side effect of breaking
> lines semantically) be within the 80 (or 75) right margin.
>=20
> For those that still don't fit into 80 characters after doing that,
> break further (or at some other point that may also break nicely
> semantically); otherwise, I won't see the text when editing the man
> page on my 80-col terminal.
>=20
> For those that still don't fit into 75 characters after doing that,
> consider breaking further, but only if doing so seems easy and lines
> break nicely.  I can still see after line 75, and I can do some effort
> to scroll an email a few columns if needed (when many quotes move the
> text further to the right).  So if the source code would break in a
> weird way because of forcing a 75 col right margin, please ignore that
> margin.
>=20
> I hope I was clear this time.

Quite so.  In my experience with the groff man pages (~60 of them), when
you apply the semantic newline rule to commas, colons, and semicolons as
well as sentence-ending punctuation, text lines that exceed 72 columns
are fairly rare.  (I also set multi-word parentheticals on their own
input lines.)

As I've noted elsewhere (in the "intro" PDF I shared the other day,
though I don't think the document made it to the linux-man@
list--filtered, I suspect), if you find yourself crashing past 72
columns when using semantic newlines with ordinary prose, there's a good
chance you need to recast for readability.

=46rom what I've seen, the hardest line length problems the Linux
man-pages project deals with are in non-prose contexts; function
synopses and similar.

> BTW, thanks for your mail.  It wasn't related to what I meant, but was
> interesting :=3D)

Thank you.  That mitigates my chagrin at talking past the point.  :)

Regards,
Branden

--vvx6lmm3lnmuuaki
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmEGaS4ACgkQ0Z6cfXEm
bc57yRAAiyqtGPX1Gf3wQpF9s1OrKqyktNJRhzO25HnJoLDCcfu+gWVDjRrIJrXO
EQglrMdfPgV4fxeyI4KxxSgdGfjvzPRnBLIjiMrLWZQP4gjseG2uu7bQxMiTe3Lk
JNf8Id0ByX5206PqkBOoL/HTZPLWyVqx5h1ubJvR9TT3NyhvI6a8MHvUFrxyi4X2
IerbHo1t10yiGGpYHFgxNsvtRir6YOZfaw5P0q1SlEeVUuNrNLxGu4hKvnnVF8Bp
zNNDRBpzCBDbjIwX9P9G1VKmVN5He7CRpTEnoXR7fVvbVf1kMNBUf+9YLVmOJYG6
csF0H6OSewfTPRwrQ5Fy9r8i+V9/AZ1VTC9lR3MbDMQTY4Sic5sVSfL2SQRRTpPO
Ptm7LWtuPldxXZ4KhhRlP1whKolnyqgiYOgpQ5ZB2LfMP1cT/Me99c1s5hAfHqeo
/Q55NU1ZqqEEHxtj1fnT5U15gKYBKU8fY3X3PgP7jGhuPJLVQCzj3gjkvfSIUIVT
O2Yp4lfwsyaOAfPdVwtNCt9t+3qxpbxrh3lT9kzjwOFJafz9k3kBoZV/q7XdzMa3
AAq+VuPoV3RB/jq3SEKYmCvY2xauCodjrOh8fl0hYOmUJVUJAXk2f4t8f7BxlsJJ
KNrdb5Hh/5C+QwrHCOabBYUkTY1F1HoKsEsDdi8wDSNVkZq9Zog=
=1bBR
-----END PGP SIGNATURE-----

--vvx6lmm3lnmuuaki--
