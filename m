Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4F42E3DCB00
	for <lists+linux-man@lfdr.de>; Sun,  1 Aug 2021 12:04:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231684AbhHAKE0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Aug 2021 06:04:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231752AbhHAKEU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Aug 2021 06:04:20 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43070C0613D3
        for <linux-man@vger.kernel.org>; Sun,  1 Aug 2021 03:04:10 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id mz5-20020a17090b3785b0290176ecf64922so27322938pjb.3
        for <linux-man@vger.kernel.org>; Sun, 01 Aug 2021 03:04:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=i64Brf9ZV5ZwImlowZ7ZVBPtNJ0MeWqrFwCKfEU1ABc=;
        b=AHB2aBORlMaRV653XegikwWiin0b3XIldJk443Loi+RDE1aY8WX38SR9E/eXXMu8YX
         5XSEa7rv6h1pzoYAxJttM8H/4q3/oGoM7ocKaFqaBNwhC8qh/Eh+yxvG4MAlXZxnaVXn
         GSrAQY9InrOSuvhPnlqhMi7oqGiEzxUmy/uASa/oLNoyZzxbQ1TakMhnTR8gfRus/li2
         6bUbGemjBqh7cPHUwmeanoNWCzHk8YbwmeMuiBreFLpfHlq8RpxDcLnU3g5OkZXBt3lH
         fXkQbt5rvB6CHptgIfYGhhZ1Yu3Svst74UlZj+B4FDya8FpbmRDbcRcIYZurMIMXFk/m
         OKVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=i64Brf9ZV5ZwImlowZ7ZVBPtNJ0MeWqrFwCKfEU1ABc=;
        b=FczYday2WfDqeNTr4x6n7dlMdlaUztJCnUY9ShUB+KPyj2kRZd40Vd+PUZaBowgVr7
         iHwyV882PzJMeuwC8cb/0YRqvjegFBlT1T5APZaSwYakYdwoky0c1lnBh3Goa9n8B5CA
         hcMzPaOAp42u9mQLb0yLdT4W5bo/WDtwy9Ay0wQinxYj+SS9TUkIh5UzVHSWhzrDI9YR
         mBUTYgz8J4II6td97l0dlKrh7Y+hebpOsySXi8N/3XCgtnaOYd4NW7ILKLt+mM1G27Zu
         NugI249vftaYq9DBU+Fc1zCTzn5twoScVoYgIrFEChY/0VVGnBNrYmdQS6PYUMlSQgG5
         n1eQ==
X-Gm-Message-State: AOAM5331EohELGPJ8BAB9pLv/G3+Hn1kI2atpZxnE5mDaubOK8oUK513
        DErxQrjYqqoEiCqd7+CeEmY=
X-Google-Smtp-Source: ABdhPJyX2Oj0Cj/9BvTkCHlCQ+txkd5TZX84j4NW8Pyl3mFvsXEOD7CdSTTxeL334m+D9w8Mn8DSpg==
X-Received: by 2002:a17:90b:3b47:: with SMTP id ot7mr11736524pjb.149.1627812249876;
        Sun, 01 Aug 2021 03:04:09 -0700 (PDT)
Received: from localhost.localdomain ([1.145.37.91])
        by smtp.gmail.com with ESMTPSA id d2sm7333706pjd.24.2021.08.01.03.04.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Aug 2021 03:04:09 -0700 (PDT)
Date:   Sun, 1 Aug 2021 20:04:05 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] man-pages.7: wfix
Message-ID: <20210801100404.zvzttwl4olrrgbll@localhost.localdomain>
References: <20210731033948.z33f5rllnqjk57lx@localhost.localdomain>
 <2b436e93-ce9f-48bb-29ed-1277aacb0ad2@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="cyhqaz6hstubebyc"
Content-Disposition: inline
In-Reply-To: <2b436e93-ce9f-48bb-29ed-1277aacb0ad2@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--cyhqaz6hstubebyc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi, Alex,

At 2021-07-31T13:36:36+0200, Alejandro Colomar (man-pages) wrote:
> Hi Branden,
>=20
> On 7/31/21 5:39 AM, G. Branden Robinson wrote:
> > Saw this while preparing the "switch to \~" change Alex invited.
>=20
> Patch applied (manually).
>=20
> [
> $ git am -s patches/recv/\[PATCH\ 1_2\]\ man-pages.7\:\ wfix.eml
> Applying: man-pages.7: wfix
> error: patch failed: man7/man-pages.7:638
> error: man7/man-pages.7: patch does not apply
> Patch failed at 0001 man-pages.7: wfix
> hint: Use 'git am --show-current-patch=3Ddiff' to see the failed patch
> When you have resolved this problem, run "git am --continue".
> If you prefer to skip this patch, run "git am --skip" instead.
> To restore the original branch and stop patching, run "git am --abort".
> ]
>=20
> I don't yet understand how to fix these problems, so I wrote it myself
> and changed the author.

Thanks for taking care of it, but I'm baffled how such a simple patch
could be screwed up.  :(

Regards,
Branden


--cyhqaz6hstubebyc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmEGcZQACgkQ0Z6cfXEm
bc6KHw/+PhuJXWcBaDqXJTA80RM701Ze1QN6s40WXmORhKGH2HkP7reryQ1ryhXw
qdd2W6dijMF/hmoN732L/NybPcf/7PjvRv9dGoiLnR/ySBb/bVIBTEcpctWRS7x6
i1ML5F+BG2JJmdxlgpFO+bjCxLMw4SiwPr/TYlQpZyTVtU04n9OkIyhkIb2KM/JC
icgmYUJdmYF7mEAIZtQSt9g5pdiKhAZW/3BOO+sF7Md3FAbj2m3NF5ySAX7+zRkD
ytpGI3Xr/bsTSz7OBuB8oOvZCCLNQCc6ZgoBqAGov6/OiEwRtHE+X/Hgyvk2HWx5
6PQoN+q9srSiHLt9x/bds6tP4TAG/K6P+gtHsb3EkyXnkyxnBsYyoxEhvCN1vVUv
ctzmeAbbRW8GbqWrk/wHGHBwNjZMyLVem+6t+MhN9nBh8u9cM0xLl3fYUcMW9God
32tASe5CDySK/yjdz0lHSfr7Q1iCpd/sQ8ry+r/ozvCZAYHNFXk5tr794EYuhXSF
o0oxgp/wGPIZH7VnFbr5eKfxPW7dntU04fB1jHxU99DjiQ4Q9CcfnFGDF+Y/B3lD
OkuU+E4RZROdrdz4kmeWjWYIoIvO/IhhQ5r2jeKtmSJoGgqZ9Z/1BPKQ4HHfJcWU
TiyuWGAbl+UI51qkshHvmf65TpqIocR/vzUKhfWVSl6cPBvhgaE=
=fcIu
-----END PGP SIGNATURE-----

--cyhqaz6hstubebyc--
