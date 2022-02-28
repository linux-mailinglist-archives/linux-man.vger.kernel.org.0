Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D6744C6DBE
	for <lists+linux-man@lfdr.de>; Mon, 28 Feb 2022 14:18:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234340AbiB1NTC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Feb 2022 08:19:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232573AbiB1NTC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Feb 2022 08:19:02 -0500
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com [IPv6:2607:f8b0:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F31F41D328
        for <linux-man@vger.kernel.org>; Mon, 28 Feb 2022 05:18:19 -0800 (PST)
Received: by mail-pg1-x52f.google.com with SMTP id o8so11320431pgf.9
        for <linux-man@vger.kernel.org>; Mon, 28 Feb 2022 05:18:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=uxfBrc+AkEYDOAV1GG/aVDmGVSalO7VHG+1O2nuINs8=;
        b=Ujq9rJYrOm17hkK3TQVEvjTYxPUqEnOrm/u+xKJ3Tr32DdsEWByKNVYv853bdtHhdU
         Dk0H2MRZWiuZR6zIfq/GJSyLkdWd72+lmKdFiMnbheg4NwPr9JOdz28xPnadanmmZFnj
         YIjpAUmkYLJiu+kfXlFcny4RU0ryuQuUn2QfmZ5Ydxyau1tCugfqkI1vdHyEH34O8gWo
         n5VSAbqPJ5pzLopuxvzqdvvHqaczBSdOj0Vd3Y1yjtk28llKajDsb2Ls3DtSKKoMehtQ
         +yrS6M/pXnRXWn/Pi9o1cwdZ7ArYbSuHJn8TQc0vctBa+zUcknJixAculpt9vSqU7Cpe
         t4EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=uxfBrc+AkEYDOAV1GG/aVDmGVSalO7VHG+1O2nuINs8=;
        b=qlc8GPwpxvK0CPINpN23jk68Z8WRYHQndB4PnGsl0H/nDqFFLYOXNdwdkd6itipeGL
         w7AEByBZpKJl8CqDEVWalPp+PpFlxsvzFfFc1X5rTk5ChpC554UcEecPMLn9NhuT6QPq
         iJpOtIwziYMVjJqh6LdhaByUSll1t/xR/FO0YpBxZ/dbQR+Z/6mt6HmIrrC9LTiv9PrL
         iXoFcQGpEK6iVvNdboz0ThgOTqc49Cav4LcegYZTOelLE9L7TYqcbCi5tJlW93nCad2P
         TIAVDTopJmR1CchS5aIPCQpWPEx/kK5S8mHk8qn6CVIOLK36iYs9ahNbR115b82kQV1D
         789g==
X-Gm-Message-State: AOAM5327uViNS3Xs9IUZk+kWAqpmHTYIPwm+MM+rf/UPZu9F5lhYhO3o
        IFPbQv2VJrcjWQ8JzKg/OjlCFzPJV6Q=
X-Google-Smtp-Source: ABdhPJzC557rRxyhwtXtYsrkT5XShRJQ6vapid4xGX5kFunpaiOzUdtDfYyc9l3c6tI4DC80i9kKWQ==
X-Received: by 2002:a63:9843:0:b0:374:d6b4:9916 with SMTP id l3-20020a639843000000b00374d6b49916mr16843148pgo.51.1646054299335;
        Mon, 28 Feb 2022 05:18:19 -0800 (PST)
Received: from localhost.localdomain ([1.145.49.195])
        by smtp.gmail.com with ESMTPSA id m6-20020a056a00080600b004e1bb196743sm14654263pfk.5.2022.02.28.05.18.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Feb 2022 05:18:18 -0800 (PST)
Date:   Tue, 1 Mar 2022 00:18:14 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH] mmap.2: ffix
Message-ID: <20220228131812.3mslwzg45gzyixb4@localhost.localdomain>
References: <20211112103938.3888-1-jwilk@jwilk.net>
 <75bc59ef-6a3e-1539-dcc3-6c6a2a411e85@gmail.com>
 <20220227185719.hszwudrkwrpzhgqe@localhost.localdomain>
 <f53acc04-ccd2-e63f-f2b2-8d51628bf2c8@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="vhebiumo77vrfkh5"
Content-Disposition: inline
In-Reply-To: <f53acc04-ccd2-e63f-f2b2-8d51628bf2c8@gmail.com>
User-Agent: NeoMutt/20180716
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--vhebiumo77vrfkh5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi, Alex!

> Then, should I report a bug in groff?
>=20
> I could reproduce the incorrect formatted output with
> GNU groff version 1.23.0.rc1.1931-35c9b

I didn't even see the run-on bold at first; I was looking for
breaking/spacing problems.

No, groff is behaving correctly as I understand it (and consistently
with Heirloom Doctools troff--I didn't fire up the PDP-11 simulator for
this).

> Okay, I'll fix that.

I'm looking forward to seeing a PDF-hyperlinked rendition of the next
Linux man-pages release, as I've done with the 384-page
"groff-man-pages.pdf".  :)

Regards,
Branden

--vhebiumo77vrfkh5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmIcy40ACgkQ0Z6cfXEm
bc6sPxAAhFG95E/jTtOuq/WWOMJ1aVs/ZqFvGTuD7qQaUI/U9Mu4/6l8pxp7ikPA
Xue5+vJzC08Yo26KVWFwXqCnC1uN9qly6NC1rf6I88kH2kMkQmSWJZKteDcJoAVt
RJIcvxB1Pwjhz8vp9rxd3HNcDEpSm078iAp1x35jWUs/cm/4TdiEjkISXeCaaNb4
3Zsm9lSJ1UKb8k8yfo7RpbISzCqKH58dF1D+UDs8d26pBFQFnJAtEs7Vv0iuTGb8
JqTSY7l3YkU8zWgPluwIjrn3ntzw8O6jcy0/FZ0+uvI1tD66J7ceo7hLK/WSeWb/
TlxZueb/jlzIxTxNoGxLtAqkyqU/iW5YwNPHzyOurbdq6BceLwgFrUPWNSi4pyA8
vaHsGj6LVFjLIhvLrm9HSsWipkIj6l0lAfK48UmS04G6YEXALe2rfUibpms20jqk
B9s/PFWkFLPR9WPSMAl+hxhM4W7FEwOiDRMb5NXqnIL2MHvhTjPSjyveORGliHNn
phQqbkf/6ugJjqxzlP4xYa932PPfWDbQx/uj9gsTIa4j3NJS1G7HV6TH4Eft59Z0
/7yX4Tsxl7NWo0ePU3T4GF+mFN9HdRzomN5x4WmokLyO76hplTC0nPj6WPvZtNhl
uJYgCCZr5ETccJtM7WeHc49BpthfeHT88nSKlQTPauLc7DikmkY=
=GGUC
-----END PGP SIGNATURE-----

--vhebiumo77vrfkh5--
