Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5E5653DFB62
	for <lists+linux-man@lfdr.de>; Wed,  4 Aug 2021 08:20:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235197AbhHDGUu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Aug 2021 02:20:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234982AbhHDGUt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Aug 2021 02:20:49 -0400
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBB40C0613D5
        for <linux-man@vger.kernel.org>; Tue,  3 Aug 2021 23:20:36 -0700 (PDT)
Received: by mail-pl1-x632.google.com with SMTP id e21so1901890pla.5
        for <linux-man@vger.kernel.org>; Tue, 03 Aug 2021 23:20:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=dneARIv+smsnSboT2zsqE0VdkHbBbcGjey5kTGDnA90=;
        b=D5B9bATYdCFVrr6XtSYtTjZwZAmbmFqGjy7e6yPktaCCzpl/0kFOEDFarfm4UyaufJ
         ypwL8ebmFUHArfv1L7YAHXJzqUTQwPm9Kf4E7x3zSRPTlqAGZ1tebmWOQejPMyE8/7LL
         ib7FWE4gOmoGSBKEarS//raHBbiYbRB74Q/oQLMbNqGvbAdbbrgJcYOYPCiKRvg9uNx4
         pZ8ufSs3k8LcyzEy97mIFMYTN/6pfVF3OFSQVQtshgjkoAWIoHYPPP21LYdOgRnYFWBO
         T19jbdKK1K9Jq08E2F7VZKdo1c9pja8IfS1w6y0/IBn0+7IIvAN0iixbDnMeMmDARr58
         oxCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=dneARIv+smsnSboT2zsqE0VdkHbBbcGjey5kTGDnA90=;
        b=FRP4Sw8jzwrlr24lG1Y/bB/7BKnoDgTUy4lOxS8HLVAEH6QHIpGn5/MLeI2dJZEEd+
         xsuY0rEeCS/jDi1i1PZPIlhtBA4KGTROrnGVpNmYfaAsvJO7f8Vop1D6mx8aP81yzRjn
         j/i3poXTsRL6tTtPiGRB/TNv51LE5CqnADn2DLObpTi+tbr8/fsL/6Kwlx+cT2gjvh9t
         NtSWn4BP4e6RLXTrW/+Rw6nvK7PtqF4yItpuF8HZUklXhrmyJK2meDtEo4w8EiQlOLVg
         UWwJ/sf4lZ89qkQm47caFYAOIFWBU8i6MmwIpXy8s5AyA7HUN5xn01c05jKEBS+W3veS
         aQgg==
X-Gm-Message-State: AOAM533WfvB66E0si/k2zcb335AQzi+XaRjEzU9Uo9zKMk+g4I6+8PwW
        60sqvlkKXPRxkqVhsWGchBk=
X-Google-Smtp-Source: ABdhPJwpH8iveeKLXc2haXtlZiBSY0NHQl6t5E377K5iVaUEXzhbVEYWXVPW7myuCz8oTUsnCTF87w==
X-Received: by 2002:a17:902:8606:b029:12c:2625:76cf with SMTP id f6-20020a1709028606b029012c262576cfmr21543763plo.17.1628058036321;
        Tue, 03 Aug 2021 23:20:36 -0700 (PDT)
Received: from localhost.localdomain ([1.145.37.91])
        by smtp.gmail.com with ESMTPSA id f6sm1241200pfe.10.2021.08.03.23.20.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Aug 2021 23:20:35 -0700 (PDT)
Date:   Wed, 4 Aug 2021 16:20:32 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] man-pages.7: Update non-breaking space advice.
Message-ID: <20210804062030.x5lqsl54edbx3ld6@localhost.localdomain>
References: <20210731034458.6s76okhgjxw42mpx@localhost.localdomain>
 <e097bf4a-7188-e810-7d3b-e4d1469397d3@gmail.com>
 <20210801101221.poigrttumltcdenl@localhost.localdomain>
 <233dc372-453f-713e-13ef-cb59721e806a@gmail.com>
 <20210801114156.w3hmedegg5574zho@localhost.localdomain>
 <3ace504d-338f-039f-462d-3faffc9af4d1@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="qw2ztbvijuxgnmkj"
Content-Disposition: inline
In-Reply-To: <3ace504d-338f-039f-462d-3faffc9af4d1@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--qw2ztbvijuxgnmkj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2021-08-01T14:30:00+0200, Alejandro Colomar (man-pages) wrote:
> The same happened to me the first time.
>=20
> I guess it's the way Debian folks do their packaging, breaking
> semantically :) every package into smaller packages.  As send-email
> isn't needed at all for (basic) git usage, it can go into a separate
> package.
>=20
> I like it.  It reduces the size of every package, and you have more
> control over what you have installed on your system.
>=20
> Comparing that to the short time that I used Manjaro (Arch-based),
> where I had to install full-blown GUI programs just to get a C
> library...

It's ironic that I overlooked this possibility.  I used to maintain
XFree86, a monolithic X Window System distribution, for Debian (XFree86
is a project now best known as a spectacular case of Open Source
Seppuku).  When I took over maintenance, it was already dozens of
packages, and I sliced it even finer.

But at the time it was Debian's policy to configure and provide
X11-enabled versions of software everywhere possible except under
special circumstaces involving package priority.  You could make a "no
X" alternative build and binary package if you wanted to go to the
trouble.

> > Thanks!  Without some NeoMutt help, it looks like this is my route
> > forward.
>=20
> If you get it to work while still signing your emails, I'd be
> interested in knowing how you have set it up.

If I manage it, I certainly will.  Thanks!

Regards,
Branden

--qw2ztbvijuxgnmkj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmEKMa4ACgkQ0Z6cfXEm
bc5dqg//Yy2F4yqiZAAFa4Wbn5TSA55aySiBXW26X5xQ8ADSJujYDFiXBcrJ+VHk
Ssf7zaOzc/mW4j6e1Uwyts7vOrLEnQaGdS0DBBIOtIlv9Z2XXzp32phNTBcI1zPW
Ajb8vMuGZb/6cbuuuy8Nl/sjtNnxZYPwP8LfNJsGViOPKhY2fnr21MUm2dr3qYaW
rhTrtMKpUES05LyucEMuDk0Ta+ZXEPTStNZajJL7Q2Vjva3RWyo5lrU1yH8c9lZG
+zIvq5aKU0+XBmWduMNdNA5iDCDy1CyrQ6pcwuEeXMXJ85363WrMeIlvjGp8rQtD
g94an+RUmXnerxW4ZoFZI1eYTyJKcvzM3rk1SN5GRIUZBdqfyb0YR+yeAra1Ajsa
T9XfAhgw522SzFoiFpqSYB2h9TWTfA6X3X6k7KRC0NVDAJf54rm5MazIGRNeE1VP
QfFpOQOR17jP4ekQmYmQM8jLY667yn/IzLl8t0KWSZRPlI797s38KLX+/HiA8pmv
LvqBEgSir0W6XAcKJV1yG3cpxI6tqrGhztDr52CRPYJCiULHxyMKLuYWbGO8n0P8
CfNqP8ZBOINmtLZzge0EJbaqfDeigcwm1nc+xn8jmjeRbir1SO3q9dZyznukzlEc
4sLBSta5eHx4LyZ/3iO3m/Dxd25sH9fl+7kqbrAmPYQurIxV7zM=
=j32q
-----END PGP SIGNATURE-----

--qw2ztbvijuxgnmkj--
