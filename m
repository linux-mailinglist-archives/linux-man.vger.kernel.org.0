Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E121E44EED0
	for <lists+linux-man@lfdr.de>; Fri, 12 Nov 2021 22:46:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235759AbhKLVsv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 12 Nov 2021 16:48:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235698AbhKLVsv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 12 Nov 2021 16:48:51 -0500
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61B53C061766
        for <linux-man@vger.kernel.org>; Fri, 12 Nov 2021 13:46:00 -0800 (PST)
Received: by mail-pl1-x631.google.com with SMTP id u11so9506636plf.3
        for <linux-man@vger.kernel.org>; Fri, 12 Nov 2021 13:46:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=oDSJk5UqEA2SGwJ3pDfrlAaBTDV+XHESHJPjbrLTmqE=;
        b=gRXnDl/DxYHxD0VIfLpZLiBpRffGAbwKJ/Y0upx5AHSA7KMKPltVLA8pBi/yPcCc/j
         8ubC8jMTltD2Hw1ks4Sx78GvV9e8e6+SlxXxaZv8V3eX8XokMJdEzSMLhfXSaxcZHa6T
         jgE7+yrMFxDBUKMQbApc0hw1G3TlQw3PBnvhFfDb3QQzhoCP7DTZvjmYrHfUyUyuKGep
         CkbRW44vQAJb9jRep1vuCmm3Uausv7uP6AgpZVQsrDZI5wZ/8pFgSvMfAjvHW4nj0fCQ
         1qNHBdnnBUHAJ+TMs9xtjtC8KguRHazrs8k1MWCB2UQTtDtGaEZPH3NqPrqCU/5dtq1B
         6kAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=oDSJk5UqEA2SGwJ3pDfrlAaBTDV+XHESHJPjbrLTmqE=;
        b=MKMOhWz7yjdIu97OklIXQx4tF8lGVEBYv2pjkkN3e4ySne+Q1zc3rGPcLnx5pl7Q+P
         GN50R1xWWhULLFTgrQvroign0k7rAuL5k5WKo5CFgD9OTnIKsfSbbuN4NiuhFVt5xoHn
         ItfXTGxsXGDd1/F+viskCv7xdH4OagRjKaj6q6hJpG8gkjc6c5ZAtFVoaeek1EMwWOIi
         stt+vI6HDAe8awZd0XlWv0cmQ9Zkx7w2RZ3bPNRj0TK2Yij1cfxj6FZoAnD+7axWxKzB
         GyKBcaFI9SXPeNaBhus8u/iw+bCKFrBrER4DiWUzEh2D1wlbcveAjce5NP745VSy4WVZ
         dZgw==
X-Gm-Message-State: AOAM531t+FEv3had+AvNb05JtYQhRmN3ZawVYqqUlLHwXrtMnnbu+5sm
        8CAn2w6MT3VwWBCoPMkKQVEToiUMwMg=
X-Google-Smtp-Source: ABdhPJy3U2mM58GSRjZcFIebtpnKpzo6Rl7oTSOmnMZ3+ptpa1F7lzE77JLZRcbXBsh1xLQzvDZk9g==
X-Received: by 2002:a17:902:d114:b0:142:3934:be82 with SMTP id w20-20020a170902d11400b001423934be82mr11368928plw.40.1636753559872;
        Fri, 12 Nov 2021 13:45:59 -0800 (PST)
Received: from localhost.localdomain ([1.145.57.118])
        by smtp.gmail.com with ESMTPSA id j17sm7909959pfj.55.2021.11.12.13.45.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Nov 2021 13:45:59 -0800 (PST)
Date:   Sat, 13 Nov 2021 08:45:55 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man-pages.7: Update nonbreaking space advice.
Message-ID: <20211112214554.6tq7beftj7scmbu4@localhost.localdomain>
References: <20211112205918.ymmypbzajpyo6avf@localhost.localdomain>
 <8c844e3e-0283-0194-9c58-847f760f302a@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="hswvchor6hdsn3nu"
Content-Disposition: inline
In-Reply-To: <8c844e3e-0283-0194-9c58-847f760f302a@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--hswvchor6hdsn3nu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi, Alex!

At 2021-11-12T22:17:45+0100, Alejandro Colomar (man-pages) wrote:
> Hi, Branden!
>=20
> `git am` applied it cleanly this time :)

Progress!

> However, the commit message was:
>=20
>     man-pages.7: Update nonbreaking space advice.
>=20
>     Taking another crack at this...
>=20
> The commit message is everything up to the first ---, so if you want
> to embed a non-commit message, it should go after that, not before.
> Or you should make use of scissors (see git-am(1)).
>=20
> I can fix it manually, but if you would like to try it yourself,
> please sign the patch too :)

I'll retry v2 with better inline formatting.  I'm sure I can learn this
contribution workflow sooner or later.  :|

Regards,
Branden

--hswvchor6hdsn3nu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmGO4IoACgkQ0Z6cfXEm
bc6QtxAAqwv7hq7pYNcwAGagvUzYWLbpbWCuP/zyvJYanVgyQ3sjx4UqdR0Kurkn
x6U8k9Slpa8irhDzbP5m4Bw3iQwyH9j/uy9wUo0uUmwrgOcBS1RCFYSMygyRTO2S
KLWd9bFeJyczmanchngCnjdTGyJ6pTswjWw0NysG9jzx0gKy1GEFYXiUUT7O+G60
uY/dRw8FtKVQtO7XHBQrdExE7oaGIcvCwYaazJ6R+ibinxYQVte1J8noIcCWhZQY
+5iolIWtriXL6Q9DQBAFLYmab0JHD0eVh0XwpxY7z+nwmYIb5cMTjAMBHzICp78e
Ta7i+GmJwDRv2d4UC/3dVGL+4FjY6oqVLU+3FCC3d/xRC4LtZX0qHuD8RG+sZSx7
mH8gpo81hvzWklqDHcNaOc+tKrfEK+Km4ehtRzTS8LnkryZb50Ppaz6fM4b2O6qz
8RnVM71ax/HgvhxfSy41m9yDpb0TDN7Mbwfsdum00WChIsf1ntSszcCc7U8c9nDS
10jLf2mbCJrA0hFRjS4S3BQ4KFihRe8F4rOQFCrTQRHd5+9Yf31pYqmP85aExypD
5/XDsEqWebtFblKvyxmto3gxvtGDdQpAxuLI7eeVa4dupo6ucitYGrudp2N03FGQ
8l+2qxKWiHjZZ2nj+EOYR80DvMR52F6qk9RQmw14bzW7NU8lIPw=
=e97j
-----END PGP SIGNATURE-----

--hswvchor6hdsn3nu--
