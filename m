Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3A3FE407E11
	for <lists+linux-man@lfdr.de>; Sun, 12 Sep 2021 17:41:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235435AbhILPmx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Sep 2021 11:42:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229653AbhILPmw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Sep 2021 11:42:52 -0400
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com [IPv6:2607:f8b0:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3386C061574
        for <linux-man@vger.kernel.org>; Sun, 12 Sep 2021 08:41:38 -0700 (PDT)
Received: by mail-pg1-x533.google.com with SMTP id w7so6975726pgk.13
        for <linux-man@vger.kernel.org>; Sun, 12 Sep 2021 08:41:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=xhbabrxU1ymp0a3KYkhh2TkkGN+HeL2MncRvGfqzQwA=;
        b=dbYd6UiaRd59YXTS0ELws4Opwl75aZS9XjIOvzAZ6qpTiCGJKxHPqLSzmvFZNQ9HZ4
         Fjx/WIjPnw9nv/tvLBL7xsD6eeuTAsaWySgzA7+gzJQ2MGAmLhAKL/FDOJFlHNZvvZKm
         /lQY8zySSz/qDeqV/OZTi8utWW+aytzy9g2AmlJ55TbNv0A1YwEN3IWQVxsJftvxWZ8G
         EbxvidX2khVPjJzQQWWcQJTorajLA/CDnHomzZ+2AvdfXIK17fmPdx5cu5E3EJ3ImRIo
         m2m2v0KGpXy7fnngcTCry/nk+VNuErNbCaEDx2W9I8QlDouwnSeqSAVN+dLNpPmScJPD
         iAJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=xhbabrxU1ymp0a3KYkhh2TkkGN+HeL2MncRvGfqzQwA=;
        b=U4eR5PGvTJIlx1FGzpq3F5ycyPeiYIqT5yfblTGpQElPo7Guw1w5iw7BMxsu5Aqy5x
         z+SThxz2U+sTCI3aojs0wXr4Ab2Bz408keXb3DZAH9TgZ0AOqdnggbDTFuAOXaZQqe91
         JMXDl3zHWxC5gnoxZPKXcOrA8Ge9hgNIHJwWcjc8usLpyx3blqwDGEvUP07FhhvI94PL
         QMW4goMHWH5Z8vwghAjFyDsKwQXj3WcbbHz8GIUHK61D92gFOdodEuXZppXz6g3a4RVM
         UuPZiyIu9Y7mnhgnU2cDjXPurMxAxXQM2tWnY7KLm3tLwSg5mEetbMHVIvo3gexAe6jj
         tNyQ==
X-Gm-Message-State: AOAM5311nwQNDjBnvDQqpfVNLNLL5bF0tvrKAhecp7Xrvx2tgwXoOuBI
        xXgbLe/j4gefmiRHsHBTuMs=
X-Google-Smtp-Source: ABdhPJzj+WBGIx+hNeOdDadP7Uqadwep8g9xTIfX6C2OrjLOEHYCLwOOoj/F4l0oXaeD9s1uGvBu4A==
X-Received: by 2002:a05:6a00:8c2:b0:438:7f68:2438 with SMTP id s2-20020a056a0008c200b004387f682438mr7063600pfu.33.1631461298009;
        Sun, 12 Sep 2021 08:41:38 -0700 (PDT)
Received: from localhost.localdomain ([1.145.22.133])
        by smtp.gmail.com with ESMTPSA id d5sm4367764pfo.186.2021.09.12.08.41.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Sep 2021 08:41:37 -0700 (PDT)
Date:   Mon, 13 Sep 2021 01:41:33 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Oliver Corff <oliver.corff@email.de>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, groff@gnu.org
Subject: Re: .ad l/.ad b
Message-ID: <20210912154132.34crwitr2ch66nm7@localhost.localdomain>
References: <d95326e0-7b0c-b057-3412-f60264fe1ad9@gmail.com>
 <20210912113338.5181521.88860.87504@email.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="y6p64rxuo4ll6jio"
Content-Disposition: inline
In-Reply-To: <20210912113338.5181521.88860.87504@email.de>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--y6p64rxuo4ll6jio
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Oliver,

At 2021-09-12T13:33:38+0200, Oliver Corff wrote:
> .ad Begin line adjustment for output lines in current
> adjust mode.
> .ad c Start line adjustment in mode c (c=3Dl,r,c,b,n).
>=20
> That looks like left, right, centered, block and neutral?

Yes, pretty much.

> Just my uninformed guess, and I am not at all sure about my impromptu
> Interpretation of 'n'.

Adjustment modes 'b' and 'n' are strictly synonymous and are in every
implementation I'm aware of going back to AT&T troff in Unix Version
7 (1979)[1].  I suppose that the mnemonics for them are "both" (or
"block") and "normal".

In my opinion, the .ad request entangles the concepts of alignment and
adjustment, something that would be more clear in a *roff that supported
right-to-left and/or boustrophedonic languages[2].  Really, the term
"adjustment" should apply _only_ to the distribution of extra space on
an output line for the purpose of producing straight vertical margins on
both sides of the text.

If we ever contemplate a groff 2.x that grants itself permission to
merrily break with tradition, such a conceptual separation is one of the
items on my wish list.

Regards,
Branden

[1] See
<https://minnie.tuhs.org/cgi-bin/utree.pl?file=3DV7/usr/src/cmd/troff/n5.c>,
lines 104-128.

casead(){
        register i;

        ad =3D 1;
        /*leave admod alone*/
        if(skip())return;
        switch(i =3D getch() & CMASK){
                case 'r':       /*right adj, left ragged*/
                        admod =3D 2;
                        break;
                case 'l':       /*left adj, right ragged*/
                        admod =3D ad =3D 0; /*same as casena*/
                        break;
                case 'c':       /*centered adj*/
                        admod =3D 1;
                        break;
                case 'b': case 'n':
                        admod =3D 0;
                        break;
                case '0': case '2': case '4':
                        ad =3D 0;
                case '1': case '3': case '5':
                        admod =3D (i - '0')/2;
        }
}

[2] I think neatroff is capable of handling RTL scripts.

--y6p64rxuo4ll6jio
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmE+H6MACgkQ0Z6cfXEm
bc6Ksg/9FtavLPP40rhs9Hc3/q0Ah7nwD5vyYCVg7y1I/9/f8gHXdPvuBjelAI3g
FC9SBPiEbHSAt0CaAYAgVeJfeDZrKwIP4QZ1ZbE6PhCelgF21D7y+EIka+de8cxi
F9j0xy/SDV78UxN17jesCQuLmNNWCq+ToY/BNT64ZVFPm1pXTrqz+t4CbVcc0xeS
BCzbw0Bbyw6MAL78Ur3vnVAjVM7CxKhd0wvwmHX1e+ph89zALe5SR2Ot4D3tktaO
IhEYyNRWjoRISzLj8fPkV4Yy4qzdCu9pneCFXQ6LWzyOWa8SfStZlNxuSRu/WUbt
gQKkLHGSbBppfKmeriOC/3sBbrHQ9edm7c3CYumiEKOoGWIynwYqVUNF+tojIfUi
i2U/ariAbbkj9llr2BjzsWJqbmN3e7O6FyXpl/CBISLHVIfZ5oKYCXGlTgskYcrE
vcJHbrynFhV3DMl6zgq6GZwe5dL2bZm0ffrtFQhVQHEWoWzlTumb5VC3/2epjOsP
0vcpyRyF3HCasVNQVy/qFjnUqFRPZQSObH0CxL6GZ40L2uMJInMuDUgy3bVDAO0L
i0ha3f8dzrYQ4w0ZtRPjpG+9NzBBuUtJgs/udOEsgf1d4eqjUE/jIMcNlfTHsEeo
YsYrPeb9tj08wmnrHrrypy6xSF3IANz7fo5exgQrTNYUmmQFgWc=
=819O
-----END PGP SIGNATURE-----

--y6p64rxuo4ll6jio--
