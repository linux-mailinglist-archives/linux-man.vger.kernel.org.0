Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 43B313DAFAF
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 01:04:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229913AbhG2XEc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Jul 2021 19:04:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229510AbhG2XEc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Jul 2021 19:04:32 -0400
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6BD5C061765
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 16:04:27 -0700 (PDT)
Received: by mail-pj1-x1032.google.com with SMTP id b6so12404052pji.4
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 16:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=fWSYo8OiAZsNPLgi4vWo+Ytbx454meC/vqaj2u1xiPs=;
        b=sTGdXCmyjM1GT//rAwh9HK87UHy+WWtuOIeYL4n57i3aZQGX/M+8T3hVPWtKcacNhS
         K5+uiafgCK20vzJR4HZ53/LzvMOabz9N6BqCF8Xf8D/YzDPp5ITK/mefEe0gAPMkgzNQ
         RjSMgKj/32XPzb2Y3LuvtBy8MYVbJBrCfeQ9QsabLvF1SKv6EF4ILsxGa3+XXVTbFEyf
         3TPEUKq9NOuKESd32SY/cFAyhtGH+FWkQqY786gU4/llCZ4nPEZniZ82gJxKoqT0alyx
         fiPM8d0iXIuWjuAiSdNNjSjmrmGuCGGyUJ7GUtp5nUOIvCJvpfMZfQuBs8Dt45Ot/ZrQ
         uuXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=fWSYo8OiAZsNPLgi4vWo+Ytbx454meC/vqaj2u1xiPs=;
        b=qKXQrTVQs9blcZpWcXnrT4foPzQHJI4k+/b1H6QYniEaWT3ETguqfQjEA/R/NdG9+7
         xXcli58zKsBLqqsFKesP1+0fgs8Zef2uNnOQliCwkvxIQ03g/3KNCHeNb3IgeLQRQ1fa
         AUKg8gz94/qgrYN61HhMfRHLa+xeejmfeQ4hH+9UvTbP6Y6MO/D1gI18+G7+AzqlkBKZ
         NB+MoHPFSsps9ECjT/gL4LdinVpgXHLp5Ajh1HVV4RO/tjzEnHNTMSvAVWGJ0j+SgXHm
         kLgtu2QMShKX5JIXZhty56Cx908ZQ5ClS7UmZBJHdQs2CWVAivWZk1Ht3FqEdyTkxaaP
         nebw==
X-Gm-Message-State: AOAM5337Axiiqnd7wa87Lc5Yudu3/yosM/F3JhFo9EDRWKn7JBFatvYd
        RNLVn/f7qSpEK8TAxW7pfyY=
X-Google-Smtp-Source: ABdhPJxESp7BFA7BR0qXX22INdXE0lix+KTTMuN9FjtQBdTaWJBpXhYxr5PsrbSAEjuK9sakL/55/A==
X-Received: by 2002:a65:5b47:: with SMTP id y7mr5772278pgr.22.1627599867391;
        Thu, 29 Jul 2021 16:04:27 -0700 (PDT)
Received: from localhost.localdomain ([1.145.37.91])
        by smtp.gmail.com with ESMTPSA id 37sm5153518pgt.28.2021.07.29.16.04.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jul 2021 16:04:26 -0700 (PDT)
Date:   Fri, 30 Jul 2021 09:04:22 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] termios.3: Use bold style for Bnn and EXTn macro
 constants
Message-ID: <20210729230421.lm65cjomqx6rezzl@localhost.localdomain>
References: <20210725225453.7341-1-pali@kernel.org>
 <430eaca8-3ea9-5df9-8db5-5d94bcb06815@gmail.com>
 <20210729172320.xhrbonoxisqioe3e@pali>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="utuozf3lvkrldjiz"
Content-Disposition: inline
In-Reply-To: <20210729172320.xhrbonoxisqioe3e@pali>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--utuozf3lvkrldjiz
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2021-07-29T19:23:20+0200, Pali Roh=E1r wrote:
> How do you prefer to format this part? \fBB0\fP, ..., \fBB9600\fP

I'd use the B or BR macro to set the literals, depending on whether they
are directly followed by something that should be in the roman style,
and I would definitely set the ellipsis in roman; when used as such,
it should never be set in bold or italics.  Use of the ellipsis in *roff
input requires some care, which is unfortunately often neglected.

=2EBR B0 ,
\&.\|.\|.\|,
=2EB 9600

(I dithered over inclusion of the thin space escape sequence \| between
the ellipsis and the comma.  I can see arguments either way, and a quick
Internet search does not suggest to me a strong wind in either
direction.  Since its presence or absence makes no difference for
terminal output, I expect most writers of man pages won't care.)

Regards,
Branden

--utuozf3lvkrldjiz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmEDM+0ACgkQ0Z6cfXEm
bc71MQ//UL9DtkcNNfT0aoqxExxreOJwD7F/giNAi/nAFOWnLYufsYVnARFhV/uy
1W1H1cNbMlZ7zYomRe4ZKsLe/GCn009MaqBZb3zniYPPPxDfZRkCsmmRCN8XuC4w
1/tIvupDAbk48Y0sZCx6aI3gvq5PF6N4AVgerXkHKfDnB5Xzd7cJtnLNihEDmZoG
PWqa4Gg7iYwHlt3ltoGyGI7FR7F3vzxPufS94SK35PddzSjFxSL+D6tBT95Lu7SL
qBRB83aW6PNpyWTQLZRF3zXilLBwOPqh0AhABezMf4Ib6ECaC4UwHSAqAwpLKLbE
dR/speSjcBG7xcUqXuFHi5yzpUL3Ea5LdMsMPzVn/EBbpdH5NzMhM40ipeBkwScY
ShMy4UK6R5oCNqIh9K2ga1eXuXkC102ohn6mFGrg21eZPhke8s6VSRzd4MjEQJEs
+b6APpqvEIB9e1IMPHEx2t8x1N0s9Txen4GpgA6mIN4zVfeYxgXQ667eLy6IXM3V
4U5y7lCwUaghsBpV5rT7VsGaGJPvs4VqufFGbwz1NC9LX4KlHXhfe8L6fp1T6okd
/ulA6JOX/AMFpDsIEH8gHc9J8IsAFgWprvM77qj6tFntxLk/oa1fDFAD80MtI4Iw
GLwPOJfWAXjyEu1q0AynwGuzic0t9YEZsFBlxttohvBwg6Zs+co=
=L32t
-----END PGP SIGNATURE-----

--utuozf3lvkrldjiz--
