Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 121FF6E2F6C
	for <lists+linux-man@lfdr.de>; Sat, 15 Apr 2023 09:16:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229773AbjDOHQ5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Apr 2023 03:16:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229522AbjDOHQz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Apr 2023 03:16:55 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0659E5243
        for <linux-man@vger.kernel.org>; Sat, 15 Apr 2023 00:16:54 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id xd13so17239797ejb.4
        for <linux-man@vger.kernel.org>; Sat, 15 Apr 2023 00:16:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681543012; x=1684135012;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=a6uT2DYcDW5fvy+CFtMsMktgQhwIlwziwV5D2RHrqek=;
        b=Ah+vRf034CHvPMnjdFxoJOfDZEOE/u3xd9/m1ijP6wE1QhMkyb4QDiFCUY+SqSv7nH
         6D7G9pnwljh2g3bFRBN7hHWz3b9vuicmJ6kG4BuycUJB3fyO7g98vGVHCG0Q4zO1YxT4
         Qy/1pNo4OV7mSwgRe4ou2um5rBfpMpNOOAtKP7ohNOmEdqQPxIJ/rz0vVMqus4nhlCYt
         Xmm3SR8JJFkVKKXJYPEKZDq2o/W4arDeSWKt2w2rY9z8PuCngm7rMKDXWkrJCEH+OIVj
         F/m/Sgcw2byuDlGdkUxhH0DoOiHwa4AP4C/CnL1wpfjkfVFXeujQDET4qX0GlpSnB2Bk
         c2zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681543012; x=1684135012;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a6uT2DYcDW5fvy+CFtMsMktgQhwIlwziwV5D2RHrqek=;
        b=XToFzMcmHIfBkjeQITMY75cSpkfCTO/lcjC5xI0KQ5T0lJiZmTrrhL2eEheBhB3Mlf
         sNZIt/4dsI2Yh3hjyuYTDS8YwdeEHp7S4mq9OkKoikZYdZkO3PpUG3r6NejjqzdjOgIY
         UHiufj1OAWZNtvgu5FDjDkXmN37z7dT2VRJGP1YV9qvTRz7WyujB+DUinw1zlKti6Bx0
         PjhmWcP8Fxw8Y+xuMmccgm0TJt52rg2ndjwufRY5COwgGqqmBp6WG8WJyyM4VPzvnZqx
         2Rv32gFWuU+2Gc7DIF5/KqDgo6zr0lLQ4jEXnSHzFwAlmkvdT6/Zw6B57PWlaXHG9XEj
         bGfA==
X-Gm-Message-State: AAQBX9ekw30vyMdxemo8HLzK1uNm3jeE8WE2qkLqIKxTIiSpPNE4Pobt
        TKpo81PctMwbaELby6y10IE=
X-Google-Smtp-Source: AKy350abPm+6CIJbGJj0D5yzsa4hs8lJXSfFRx42nTMt1/dZw/ij6rEuZKMKhvbxLqUlDFuK4zz+Fg==
X-Received: by 2002:a17:906:d18c:b0:925:1d1d:6825 with SMTP id c12-20020a170906d18c00b009251d1d6825mr1377725ejz.42.1681543012400;
        Sat, 15 Apr 2023 00:16:52 -0700 (PDT)
Received: from localhost ([2a02:168:633b:1:9d6a:15a4:c7d1:a0f0])
        by smtp.gmail.com with ESMTPSA id f20-20020a170906739400b0094ecbf906ecsm2449833ejl.41.2023.04.15.00.16.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Apr 2023 00:16:52 -0700 (PDT)
Date:   Sat, 15 Apr 2023 09:16:50 +0200
From:   =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v6 1/1] landlock.7: Explain the best-effort fallback
 mechanism in the example
Message-ID: <20230415.de079bcd1e29@gnoack.org>
References: <20230414155926.6937-1-gnoack3000@gmail.com>
 <20230414155926.6937-2-gnoack3000@gmail.com>
 <ba15e85d-db90-88cf-ca60-1d4a11a40c31@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ba15e85d-db90-88cf-ca60-1d4a11a40c31@gmail.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alejandro!

On Fri, Apr 14, 2023 at 06:35:22PM +0200, Alejandro Colomar wrote:
> On 4/14/23 17:59, Günther Noack wrote:
> > Signed-off-by: Günther Noack <gnoack3000@gmail.com>
> > ---
> >  man7/landlock.7 | 70 ++++++++++++++++++++++++++++++++++++++++++++++---
> >  1 file changed, 66 insertions(+), 4 deletions(-)
> > 
> > diff --git a/man7/landlock.7 b/man7/landlock.7
> > index 24488465e..64bfa0752 100644
> > --- a/man7/landlock.7
> > +++ b/man7/landlock.7
> > [...]
> > +/*
> > + * Table of available file system access rights by ABI version,
> > + * numbers hardcoded to keep the example short.
> > + */
> > +__u64 landlock_fs_access_rights[] = {
> > +    (1ULL << 13) \- 1,  /* ABI v1                 */
> > +    (1ULL << 14) \- 1,  /* ABI v2: add "refer"    */
> > +    (1ULL << 15) \- 1,  /* ABI v3: add "truncate" */
> > +};
> > +
> > +int abi = landlock_create_ruleset(NULL, 0,
> > +                                  LANDLOCK_CREATE_RULESET_VERSION);
> > +if (abi <= 0) {
> > +    perror("Giving up \- No Landlock support");
> 
> Using perror(3) will already print "Operation not supported", since
> errno is ENOTSUP.  Maybe this string is redundant?  How about the
> following?
> 
> 	perror("landlock_create_ruleset");  // EOPNOTSUPP

The fallback code assumes that we don't know the kernel that we run on,
so in practice we also have to handle ENOSYS.

See https://docs.kernel.org/userspace-api/landlock.html#landlock-abi-versions

I'd suggest to just make it more explicit here that it can be two
different error codes:

if (abi <= 0) {
    /* ENOTSUP or ENOSYS */
    perror("Giving up \- No Landlock support");
}

Does that sound reasonable?


> BTW, now I checked that while in Linux ENOTSUP and EOPNOTSUPP are
> equivalent, in POSIX the latter has a connotation that it's about
> sockets.  Should we document ENOTSUP in landlock_create_ruleset(2)
> instead of EOPNOTSUPP?

EOPNOTSUP is also used in Landlock's kernel documentation,
we'd maybe have to update it there as well.
I'll have a look at what is more common.


> > +    exit(EXIT_FAILURE);
> > +}
> > +if (abi > 3)
> > +    abi = 3;
> 
> This makes the example a line shorter (see MIN(3)):
> 
> abi = MIN(abi, 3);

Thanks, good point! I'll add that.

–Günther
