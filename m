Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BBA8657159
	for <lists+linux-man@lfdr.de>; Wed, 28 Dec 2022 01:00:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229608AbiL1AAR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Dec 2022 19:00:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229502AbiL1AAQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Dec 2022 19:00:16 -0500
Received: from mail-oo1-xc2a.google.com (mail-oo1-xc2a.google.com [IPv6:2607:f8b0:4864:20::c2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96512DDF
        for <linux-man@vger.kernel.org>; Tue, 27 Dec 2022 16:00:13 -0800 (PST)
Received: by mail-oo1-xc2a.google.com with SMTP id c190-20020a4a4fc7000000b004a3addd10b5so2466427oob.1
        for <linux-man@vger.kernel.org>; Tue, 27 Dec 2022 16:00:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=k8bILQS8CaKyPioeVkj0OtAX0X+ho64SKyNWD9u0hso=;
        b=Mj0QofwATiAl7Wd/VonGOSpTsdlNrk9/sd3sdb+YbHGjk2yvDQcxJ+UurbDz5+S8Cj
         cXstne6wtGBDacZnIVvlrlYyMzpfuofvEVtX6u9lfL9cY9aJhe7zXsrM1H4cUvuoa3te
         M7gh0a1oE10ivS+mwokYAwaCcAgOmsCCEISi/ak0JHm2LBClg8H27sTGC+WKejooAI1q
         hn5WzB9LAm2T9qdRWkgSishTKurf3HePH2t9drzqXXX76UhFWERDwH0TUjrNlaUKytwc
         PRhrE2kFhLhBVX+x2dWNb5aXIiUFWS9iFtjKM57Oxz+0UGXXwnbrQDTVJr/Vb7BxE9yk
         EboA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k8bILQS8CaKyPioeVkj0OtAX0X+ho64SKyNWD9u0hso=;
        b=5shm6vZsOiy/uP/TneH5ZSs5ooAqxG4eC6gbJ19F+38cCFQJuRAENIIlcS+xccXHJL
         yJ11ZXcM4lnEU8UPR1Ka7wPsE8emoGKO6wrsoS3qQ94M7Z3Lm7ZeWVjbmqqLDTpdH21H
         UXti0UeamQ7XMVcKPWjMkjx3GIidrxFbSJU+Y+kadXwHg398gVe5EC37tcLkiYx1nhMR
         B4hkrrWKOuIDgeYJfT+gzdt4iJINLf4Q3kvbQa4dJNDu4Sx7pm8P7ePezMx22WMaEhFl
         QdLhNHYgN88dAwy8naHspKBLSaEdXyoP6TEhxKyyCv1rnvXdeN4MjgUE5X/rzF2DT9S1
         r/Qg==
X-Gm-Message-State: AFqh2kqy8kJA5lIYNLepsPzw2wUtofudn4IYIOkezjHfo9q4v80dXMti
        pk2MwCkhxXeRbGrjmET1BUodwDHzknwECw==
X-Google-Smtp-Source: AMrXdXu+rl9j9Cf5P4O+NAv1O7Ue1/FRD8CR01vL/i7STDWi2Q88V6IZA+BpZdHSfmyn2QAh2dgrPA==
X-Received: by 2002:a4a:3794:0:b0:4a5:d0bf:41c3 with SMTP id r142-20020a4a3794000000b004a5d0bf41c3mr12720041oor.6.1672185612902;
        Tue, 27 Dec 2022 16:00:12 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id r19-20020a4ad4d3000000b0049f3f5afcbasm5914250oos.13.2022.12.27.16.00.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Dec 2022 16:00:12 -0800 (PST)
Date:   Tue, 27 Dec 2022 18:00:10 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Cristian =?utf-8?Q?Rodr=C3=ADguez?= <crrodriguez@opensuse.org>,
        Jonny Grant <jg@jguk.org>, Florian Weimer <fweimer@redhat.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>
Subject: Re: [PATCH] Add example to rand.3
Message-ID: <20221228000010.iyrekqdj6fi5sf7d@illithid>
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org>
 <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com>
 <CAPBLoAeLFYtzVP7ZqkThdT4Pan9aoW=YPqHDM9Wbh6Fn+tki7w@mail.gmail.com>
 <8bd20ea2-2031-173a-5b09-f6a74473ef8f@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="trpuub2uftyafly4"
Content-Disposition: inline
In-Reply-To: <8bd20ea2-2031-173a-5b09-f6a74473ef8f@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--trpuub2uftyafly4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

At 2022-12-28T00:33:13+0100, Alejandro Colomar wrote:
> The only problem with arc4random() is the lack of repeatability.  When
> testing a program with random data, you'll need repeatable results.
> For that, rand(3) Just Works.  When you want unpredictable results,
> you just seed it with some really random value, and you're fine.  You
> need to be careful to not introduce bias, but there's nothing better
> in libc.  It would be nice if libc provided a rand_uniform(3) variant
> of rand(3), BTW.

Permit me to counsel against that last proposed name.  In probability
theory "uniform" is already widely and well understood to indicate the
nature of the distribution.  A "uniform" distribution is one in which
each outcome is precisely equally likely.

rand_deterministic() would get the right idea across but is lengthy.

Regards,
Branden

P.S. I asked Bertrand to tag groff 1.23.0.rc2 earlier today.  Happy
     belated Boxing Day.  ;-)

--trpuub2uftyafly4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmOrhwMACgkQ0Z6cfXEm
bc4C+Q/9EsQp1hFGbpDeMXjEo0V1s4Z/xchw5qKvABSzF853Kw6EzichEq0yY5u3
HLrOWmr9L2/g+9fMaJ1cf4OtsWNrkrXZGkZH1va6ryWRN5yxBjxkKoe+GPct3cba
sDHPoUTGJoPQIvfFsCBKbQEPDyvSYVViyuLH5s3ROvkPb/9/1jL4BowNbxxUV7MV
H4i+Sd64Wb8jtvq2PiHHJQxdG8zZwiy+TXhy2vVpUh9RgposuEOT3j0r6tlIIalA
u3dC50iYBtO8zlw+onAXuP8Vlq+u5QY8DDes23U3joVA8QdHRjq3qf1uZQ668Bt0
eray/+XhF3xsg6OO7uNqrQ//WRTA5IeQ3g6JnYWtUDXqSerMwTejleHAVc4HX9vm
HzIeIY0zVYNlISQT5vx3bOngVBnJVYmXAi5OCoL/SW7GPDzBidTo8nShjZOfp9FR
LoN10bTdy0Qckv4M+ht2PJ/5fyMFj5l0+CSUKZ3aW+2TlgrzLemBCvlPBEdyA5ID
PGyvcspZkG5Ap073ltVm0fNLdXROjYROT3mEwq8z1LzGmYSLlmfyijFcssP9eNvu
gL5+XnT0yec1TFhniIb4CFh6MApOBALeqDtk2VAmMek4K7FBvh1Rx76yz/HlAADw
gaIurDzp7KTZLSyJ5AntrfTe1wAG06q7A8bmPMxY/2PvbTT7ogQ=
=GCcU
-----END PGP SIGNATURE-----

--trpuub2uftyafly4--
