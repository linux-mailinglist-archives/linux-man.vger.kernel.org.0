Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C7FCE3DA175
	for <lists+linux-man@lfdr.de>; Thu, 29 Jul 2021 12:45:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235722AbhG2Kp2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Jul 2021 06:45:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35024 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235679AbhG2Kp2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Jul 2021 06:45:28 -0400
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A00DC0613C1
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 03:45:24 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id t21so6435965plr.13
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 03:45:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=crkNm62YP52WDQ9z8mrAZ1Fx8kMbxbVrmPDeYRfuEKI=;
        b=vLAV4XMPKlARxU1wNLYSMDDbPQf/OTRJmTRgtEEYv5817m+Y+ma0RuTIMYaz4fiBXh
         rLarkV3bKSlIPJN2FV3k9NGwRLuat+KTFNq+MxfA6gI+myUzqBgUbrPC8WAq2woPHBCH
         EYoT3sMxP4SleOI1OoI9KGkXFUjOhJb75vQcPP+jngjEOLUGqQni5RtepLvjcLp6RQKW
         xab4id5Y5QS+zj7x75JQFbzIzP3ijBxhyyyYQ9QmXbaKx5zRQNpUQ5iDzaVKz4nxrMpf
         C8VXhRsrmo8K/XT5Spky3rFYCsgVATW0By4zOM1iqYfpKUHZVKO6KrqBoGAun+cVNbKf
         Ub1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=crkNm62YP52WDQ9z8mrAZ1Fx8kMbxbVrmPDeYRfuEKI=;
        b=i61VjAEA/97nGF7dHh9Yf0OrWEOxljL2HKYH07Fj6F+fFSd/Pq2R78YO2oEU8wiNhx
         gy4XKl5r+8IWLafuxOlEo8MEjGmIIYT/94GO7V96SqmhMxVoD6h83m/kyWV3/w/iH62H
         QSyPgA6BpM3eBcpeNXhuY8F/Iug37wrsXodud54kGGto8lXx7dD1hFepsHoSC1EybLbM
         OstWImZeh6kxUKmlKyWenv/wH6dt9gi0P0zoMqSuRCFtvlgtp4wkZcckqnyL0JsCuWcu
         CjA1RT9WpJZN0FWfeJDYJByrx5kqjq6tvawakJMvywTAOkUI7g4EvCtYaLPWclfY+0vP
         2wQA==
X-Gm-Message-State: AOAM530Wl+/7pVyeEMxOPLfpWe88L3B6GJUpJw9pip3dIuPY87UQXfir
        H7vN6UAem48IFk0xDNTEDuI=
X-Google-Smtp-Source: ABdhPJzcmsa3/6KvTxxeTIkDrObMWWOPuTuIchp4MlRaS+GVWSVIWCS2XghZTy+f+M95uWp6y/69TQ==
X-Received: by 2002:a17:90a:6e07:: with SMTP id b7mr2021858pjk.1.1627555523852;
        Thu, 29 Jul 2021 03:45:23 -0700 (PDT)
Received: from localhost.localdomain ([1.145.2.147])
        by smtp.gmail.com with ESMTPSA id u33sm3222517pfg.3.2021.07.29.03.45.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jul 2021 03:45:23 -0700 (PDT)
Date:   Thu, 29 Jul 2021 20:45:19 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     mtk.manpages@gmail.com, Viet Than <thanhoangviet@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 31/32] time.2: wfix regarding year-2038
Message-ID: <20210729104517.a4kktqk54ef72m22@localhost.localdomain>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-32-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="6s7h64dg3eoeoyij"
Content-Disposition: inline
In-Reply-To: <20210728202008.3158-32-alx.manpages@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--6s7h64dg3eoeoyij
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Than,

At 2021-07-28T22:20:07+0200, Alejandro Colomar wrote:
> From: Viet Than <thanhoangviet@gmail.com>
>=20
> Cc: Jakub Wilk <jwilk@jwilk.net>
> Signed-off-by: Viet Than <thanhoangviet@gmail.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/time.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man2/time.2 b/man2/time.2
> index 059222dcd..a7410bfc8 100644
> --- a/man2/time.2
> +++ b/man2/time.2
> @@ -93,7 +93,7 @@ specified as NULL cannot fail with the error
>  .BR EOVERFLOW ,
>  even on ABIs where
>  .I time_t
> -is a signed 32-bit integer and the clock ticks past the time 2**31
> +is a signed 32-bit integer and the clock reaches at or beyond the time 2=
**31

"[R]eaches at" is not standard English.  More idiomatic would be
"reaches or exceeds".

Regards,
Branden

--6s7h64dg3eoeoyij
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmEChrUACgkQ0Z6cfXEm
bc5XLhAAl1tCPxEKvza/ziVqtbt97CUXD8Q3JtVEF0BlpIItZX0Q95M5KRFuNlkv
MJb5MbINkwZ87+hRRbBt3Jcoz10E1/Sw5ynVQJSj3Y1KsQ6jiR5dLhhigAWA0NLf
j42jFXD96hYJPZUtrWmEbdOHSsibl8JPjPCJZUbTVo/fe91Qn/mlK5+TSYzm91Kv
eE7uixOzwi1bP8pP7NUMV7Q5Ylsm/NA73b5yCsyn/ilu51ny8ESt76qzukIMaRNm
8rz8Jpj3/dDZ1OSqBOoP5SE4JNvPEVRKLAG9mnF4FAJ1u15M/QjSPfyOkYXS011v
MfIk59lWrfS5UEY0u41oySN8mOJB6kEdehIYJtWBp/nUt3e8N2OKG9QSu40Ce7yX
ezwgRRWRMR+BDrolz6JM1zzasp4J6aUHJ6ARMX4uWAPIrWDvpGzDRUyqMUzCfUVP
Ua18IeuKO2Uo2YHnsSD+Ob3sZ8gRCT3VrBT4fPi76MC7Cq7S9Ds14xVbEKaTEu74
v/1aIKlwghlHJIBbET2/2GKUlpzOehdZtjFStnbcWX3C5OqGOlr8VNhyfhcn6qyY
bZrG25acxAG8lklIuHmW1GqJIV3MZgq9Cecl5xY82vx8KeXAg5mSIamPXx/PyTpr
trXc/XRXxbgmZzvroYhENh1AJGAS+80FN9W667Mcjcpshr3uP8s=
=m6Cy
-----END PGP SIGNATURE-----

--6s7h64dg3eoeoyij--
