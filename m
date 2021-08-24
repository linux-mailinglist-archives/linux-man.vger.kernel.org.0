Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DE8C53F5BA0
	for <lists+linux-man@lfdr.de>; Tue, 24 Aug 2021 12:05:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235367AbhHXKGJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Aug 2021 06:06:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236023AbhHXKFg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Aug 2021 06:05:36 -0400
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95575C061757
        for <linux-man@vger.kernel.org>; Tue, 24 Aug 2021 03:04:52 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id q3so95214plx.4
        for <linux-man@vger.kernel.org>; Tue, 24 Aug 2021 03:04:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=X5lzV8liDm93P2pnyDsuG2n0IMbHZEbdEfKMEFPA1Ds=;
        b=W+n9s2Q+tJ1I1A3ju8qWNw//x4H15pj7K5CoLgwbetTeZsbloU+TUCIr+I19Y9pM+p
         JL8mYKzg9Jl6GG4CDhqCwaDc2oiXBxvPJdR7V0Yny3+DPbtprizXFzXo//6geiBhjNjc
         H+piz9rWjQMAnsMXHWRPmhJ5oL7BO4HN7osGi8tgeG9SZTTDTx9XgeVTak484h8LX1vB
         7mda8tJWky3mcNQaJympgDdsiMBuqqZa5Hy5I/Ysz31t2NBxAOPCri8jvmSJxFp5WUdL
         j/Gh9TZNCatXkAVBfMmF6bEK3VaGve68UiZESYIfEbEdap2yXnqqQ3rAN8u8uBAz31DX
         7rYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=X5lzV8liDm93P2pnyDsuG2n0IMbHZEbdEfKMEFPA1Ds=;
        b=TmgcgzKw2fhpwwYYvkKsODC5xVqO2/eUlBDjqelUP28mHddJfYFGWUnaZUF8kgfyZI
         WZuoSzKd6N+UWbbPnAXqx5TKU8z0aEOtjvuVJ1wORd1fXUbxrPDp5X2doYMR7V6JuJ+b
         ytOzYRqvzlH0PrjPyQaiB6fqc18gh/pWfYDSZ/u7lLVuZvVzeHpyZHssa/nE2OIDwtCY
         BLygQGGDPPpSPV3YBdYzyofQI+YJFJLoeyAGkolkzCOvnm3NWPxCs4qsaebdNpJhm6ZA
         PlUQwpPKJ33Tfdjs/RUoAMjI1ZD8a+SrkuSToqhSnLXu7l4HVlwGWQDKlFeOVNH9F4fr
         Bb+w==
X-Gm-Message-State: AOAM530m+xp7PPhxu+WxOHwH695w9d1e+e3BBNnn+JnzS/0y97/pNmko
        2kqmXCyyz1dfcNuor+xHMjEwXQfU5vg=
X-Google-Smtp-Source: ABdhPJw9H5TzKpPVBG5xQJZ0WlJgpb7RHdepBKC8AIM91TeZOaqLygZAI0qY45ctELvzvTldhAD/Rg==
X-Received: by 2002:a17:902:c402:b0:12d:b2ff:25d1 with SMTP id k2-20020a170902c40200b0012db2ff25d1mr32459853plk.29.1629799491979;
        Tue, 24 Aug 2021 03:04:51 -0700 (PDT)
Received: from localhost.localdomain ([1.145.71.6])
        by smtp.gmail.com with ESMTPSA id f137sm19056116pfa.160.2021.08.24.03.04.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Aug 2021 03:04:51 -0700 (PDT)
Date:   Tue, 24 Aug 2021 20:04:46 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Re: [PATCH 2/2] alloca.3: rewrite NOTES
Message-ID: <20210824100444.kwl6jowo66zgqjps@localhost.localdomain>
References: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <c08c2bb9ccbbc097166f4815f8dea420e5fe1044.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <d2c606ce-468d-8545-30cc-d8dabeb48296@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="dvwyt2c73ki64gs5"
Content-Disposition: inline
In-Reply-To: <d2c606ce-468d-8545-30cc-d8dabeb48296@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--dvwyt2c73ki64gs5
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2021-08-24T11:50:57+0200, Michael Kerrisk (man-pages) wrote:
> On 8/23/21 11:01 PM, =D0=BD=D0=B0=D0=B1 wrote:
> > -option is given
> > -.BR and
> > -the header
> > -.I <alloca.h>
> > -is not included.
> > -Otherwise, (without an \-ansi or \-std=3Dc* option) the glibc version =
of
> > -.I <stdlib.h>
> > -includes
> > +are specified, in which case
> >  .I <alloca.h>
> > -and that contains the lines:
> > +is required, lest an actual symbol dependency is emitted.
>=20
> (That last line seems like a useful addition!)

I agree, but I note that the verb should be in the subjunctive mood.
Also, is the word "actual" doing any work here?  If <alloca.h> is
omitted, does some kind of virtual dependency or weak reference end up
in the object file (I'm not an ELF wizard).  If so, perhaps the nature
of that symbol should be explicitly identified.

Thus:

[[
	is required, lest a symbol dependency be emitted.
]]


Regards,
Branden

--dvwyt2c73ki64gs5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmEkxDQACgkQ0Z6cfXEm
bc5Rlg/+P9BW1LAfqoQf0IaKesZcfap3F7qeU8lBCFrrNT14GcZ6KoCQNqqHCCI6
b6QxEUioXEx7uRqC6TG991g6XX1g4zwEIXcknUUJbjO70nlKjBVK24/WpZ48PBPA
Ef1TIIknt6xrbTJur4R42/iK3n7c3Cl91747w9sWH0rErNcnIp/dAwNtUjtMRQm1
R8JEmYvkHDd3BBcYkLPIcaKJ2uyF7EMgDidcLa3caKHesjgQ+di6T8VA4rSHNVrI
E+ZHdv3WYgbuNcKTXfLUUvr/zKXZVR0+4exrQtvnZLwil0EtZo4MeexHy4oWwI37
ilqpidHWVYL8ycRlh+Qx+hKraV/0EOJkWV+nAILhXXSKTBiyn/gRWYjVoCTL71c8
zFUg/l2XFYI2tQiO5Y9DDZJEsgpW/bMQMxz2hWDlznG8MRZgVHPZQD7FUjA+2NgN
L+ZPd88vvJCEYWVEGt1eL0Z+EvrxJiL8RubQ9jNxPmYEDinu06v7Epx0rxnZAQsB
ycLtY3rJ6Rf2jrWEWWe5YBx/DK8N4MR/4ranza+Vmb5G+SrXNr0duyHiAMh4nG2v
zStaf5HabMp93vuR3eE15ZEOYxvUjGtyXh8sw+syFEPIs0YVUsvuK+4/9mNgpGuL
7HGuhSwXTI5Tdfio4BI/cWXQCD10sOaOzDN5vfITAEaEvPPNwdw=
=DxqZ
-----END PGP SIGNATURE-----

--dvwyt2c73ki64gs5--
