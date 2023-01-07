Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0544D661035
	for <lists+linux-man@lfdr.de>; Sat,  7 Jan 2023 17:21:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230350AbjAGQVD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Jan 2023 11:21:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229695AbjAGQVB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Jan 2023 11:21:01 -0500
Received: from mail-oa1-x31.google.com (mail-oa1-x31.google.com [IPv6:2001:4860:4864:20::31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5420E5F918
        for <linux-man@vger.kernel.org>; Sat,  7 Jan 2023 08:21:00 -0800 (PST)
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-14fb7fdb977so4540989fac.12
        for <linux-man@vger.kernel.org>; Sat, 07 Jan 2023 08:21:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hYyJhFLHIUKndkaP9mtPmr144oXr2oM9ZY67uoEolug=;
        b=MBcCCgSNs+rZbnGSCalYEaC5a8zCNdt2GbaSQhvIj7QpdLKUnXaqBKE+U3L3wgPRha
         emXEEvlG8eodsgQzv12qRCO3ctrs/U+TC/yV5ezEQMIxhzpI7Qo5TKEUxaiGfAfQkpnf
         qTmTK7v0SHNYuhIUoipj4RxKDGo4glNoFnNqqo/cEczZcN6FKJCFCpkwTe5Oa5rca6hW
         wrfXQG/nF0vFQbeD+j2TIhM8V93Wj3U/CkqM2qFvdy5Wksz7c0QI2Duv3I1hL/mIOrJl
         xIuWAz5yRItE+wH/z4VhjgKFQJ3BH7kNDjYUIurZMb0LuHWs1o3EIV6QU2kKaYwDItdz
         cY+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hYyJhFLHIUKndkaP9mtPmr144oXr2oM9ZY67uoEolug=;
        b=jV1YQcCUKShiDECDRWMvvGRRKZmAf09rXs+i6B2trevsBeRUItW0JxKS5NnQahEFIH
         O6JDIOxZk5Z+Ca45jhH3Dtgjq8c5eWUWN6LQfVVUCUIs87oh3JQ4iER6QeNjU0DpYPOy
         ZIF0BfpNeh52RnW3J5rwo0/tmAiuMX++zQf7XhzYG37uZjpsKpUPn7Fv471S52ubmvGO
         vcv6nfRneOn7LULY2Il8uepNplGaJCeaV7jyqQSHmmYGsCrWpqXVqS6l2c17sJuwicWD
         WnyJCEQv2IVJAd46cZrNbCh9xovzWTFYZtYJzzG+ZJtfxAH+7CmdonG+Wq8P/iP9pW7L
         ItMQ==
X-Gm-Message-State: AFqh2koGSP0mgPI50ZLmKDQELBwnf3bRRBIBc3YyxZmLjjiqMoYV3dgs
        Oq02jobjMRm9aOJ1/wtGP6IL1CkNc6c=
X-Google-Smtp-Source: AMrXdXvTWqILdppfH66DdjOcjMS3J3g3h6to087CBNBMIehvf/dJDux+X1+oF+b6AD0ZmvZqE1FZYg==
X-Received: by 2002:a05:6870:ab85:b0:144:ceef:e5f2 with SMTP id gs5-20020a056870ab8500b00144ceefe5f2mr35940915oab.41.1673108459538;
        Sat, 07 Jan 2023 08:20:59 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id b6-20020a056870470600b00142fa439ee5sm1858784oaq.39.2023.01.07.08.20.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Jan 2023 08:20:59 -0800 (PST)
Date:   Sat, 7 Jan 2023 10:20:57 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v4 08/10] intro.3: wfix
Message-ID: <20230107162057.7kncktu32awfmuk7@illithid>
References: <20230107095518.3ix6hfbgig43tmkw@illithid>
 <814d00de-7ed7-0a7f-3b96-714c35591019@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="a5hxag6ual7rvn5t"
Content-Disposition: inline
In-Reply-To: <814d00de-7ed7-0a7f-3b96-714c35591019@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--a5hxag6ual7rvn5t
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2023-01-07T13:45:30+0100, Alejandro Colomar wrote:
> On 1/7/23 10:55, G. Branden Robinson wrote:
> > * Say "application _programming_ interface".
>=20
> I noticed that when you sent it, but thought that maybe it was just
> another way of saying it.  Duckduckgo seemed to have several instances
> of that alternative expansion of API, so I accepted it.  I'm curious
> about "application program interace", since I hadn't heard about it
> before your patch; is it a normal expansion of API?

It's simply a lazy abbreviation as far as I know.  The reason I believe
"application programming interface" to be more correct is that an API is
an interface for the _activity_ of _programming_ for the purpose of
applying it (the interface).  It is not merely an interface for the
development of "application programs".

The novice programmer will not perceive much of a distinction here.

The obvious counterexample is the writing of one library that uses
another's API.

Beyond that, there exist many library-using programs that are not
properly considered "applications" in the classical sense, which is a
program usable by relatively untrained users for the purpose of
achieving some goal outside the purpose of maintaining the system (or
developing software).  In this sense, ed(1) and roff(1) were the
original Unix applications. :)

     The prime reason for Unix was the desire of Ken [Thompson], Dennis
     [Ritchie], and Joe Ossanna to have a pleasant environment for
     software development.  The fig leaf that got the nod from ...
     management was that an early use would be to develop a
     "stand-alone" word-processing system for use in typing pools and
     secretarial offices.  Perhaps they had in mind "dedicated", as
     distinct from "stand-alone"; that's what eventuated in various
     cases, most notably in the legal/patent department and in the AT&T
     CEO's office.

     Both those systems were targets of opportunity, not foreseen from
     the start.  When Unix was up and running on the PDP-11, Joe got
     wind of the legal department having installed a commercial word
     processor.  He went to pitch Unix as an alternative and clinched a
     trial by promising to make 'roff' able to number lines by tomorrow
     in order to fulfill a patent-office requirement that the commercial
     system did not support.

     Modems were installed so legal-department secretaries could try the
     Research machine.  They liked it and Joe's superb customer service.
     Soon the legal department got a system of their own.  Joe went on
     to create 'nroff' and 'troff'.  Document preparation became a
     widespread use of Unix, but no stand-alone word-processing system
     was ever undertaken.

     -- Doug McIlroy

> Patch applied.

Thanks!

Regards,
Branden

--a5hxag6ual7rvn5t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO5m+EACgkQ0Z6cfXEm
bc6FHQ/+KCpYJJyMwQFF5KNUKRVxhOKMEn2S7tQNBe130YmFshy4BPYUJhv1miZS
15Nm/HGvo63BAR5oCp920QrzuJslNjalkzZPULgleQDDdxSb2W3/2Rx7iwVUMkI4
lR3D5WiCvotCQQZSQY/yf4pwFg4JAfpA9gjirKgZrTfmk6xtUCy2T6Q5szcFsdR/
zJy0V6JBRD0xwnX2ylF3Y/iJKFoK6wCCz4Cm3tem3AxiBol7OESCY4f8SzdURsFh
7eDkgp+RljhS1LY4YUwON77GWRbKHSotMlmUdogxSM1BHShKrQCZLTGQhdBTAVUk
Nb+v7Gx3Qi4f3eeegxaRS/JksW0U9opQFC1zB/XCA9k3KtjCHiSa/oJ5O/ctIIsa
3uZFDI99K4nslLX+9rBZ67Y4VdgPIPRW+nycsKuusDZ9Ol7l9qy3FDpXRJLaZlrA
PJ35zX+KhK0bzfw5OYDyIDpffnDkMj9MYuoN2uIrXsWTK7FiQkn81uIP8OLY4ZVz
WdkVS1eW926Ix05XsgoZYmXk08gOkOWU83kUNL8N4vh+0YQC3CRvTV/o/sbK3spV
uaLgUzq7z3jkagL2RFjVtwZlYwE+chVQ0Nj2j/yqJaOtWANfD2hm6C3zdzFQQpDA
rd21aq1lSRNY48upN+ON/YqzwO/fVfQvxGp1pagzXIoWhqBIyh8=
=tihv
-----END PGP SIGNATURE-----

--a5hxag6ual7rvn5t--
