Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 542096031D3
	for <lists+linux-man@lfdr.de>; Tue, 18 Oct 2022 19:54:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229453AbiJRRyn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Oct 2022 13:54:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229770AbiJRRym (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Oct 2022 13:54:42 -0400
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com [IPv6:2001:4860:4864:20::33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6920DF15
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 10:54:36 -0700 (PDT)
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-134072c15c1so17755243fac.2
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 10:54:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eRfBB3PczH4udDVWnE5Hhe8NTWNmueP8X5B4lU+gCoE=;
        b=Uz1S07sAl4wiM9zfzAcrxaFE6EgLeaScq9V46U5QiG3QDb8fampgAAZScx7qnpUtlp
         s0Uzv8Snz1jIxxoCX9bXNwghIrm8Nx5WNc3c+4XJkL4Rl/mKNjd1YzR+gxYDFH3TF+Iq
         vG2IV02VVzuek/Pc+k0dFPCKNCCeHa1fSLjS5unx53fW7CKr/i8zId9qSkg4ye7QfdcR
         mgUyUPl8e5AuXSnJ6apJUoAeFcQNMZg6Of7j+4ctSrItoSf4xYAmHUOW0pz8Ijuz3zaY
         MCk/WFjC7hsdg8h7wLPlhq4IqPCxM1hBrqux7dFz1iskoelgd6eMHxcnoRnGT6+YrSkA
         RUUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eRfBB3PczH4udDVWnE5Hhe8NTWNmueP8X5B4lU+gCoE=;
        b=Tm76wQ/SyP9PyoQd73kuPqcWKACsYsbMDud2A4nydMOkwLAezqUHOAbOcowDkp1hkx
         jkOFCJBjLTu6KukdmLXlieB+ChXkxqmEPnf5SHeD3smO+wsdCm2REUrB8bq9Y2fE0jNC
         nOaWZZQ/0vKRyDNAVR6nP0Z3K3zNpVBu0cEUUa3yt9/MU3YTM4jzWPaME3vpETFFdMPj
         +wKDI79ADtopx/IhEVZcZkQm2Ek85hwHX1J6eMIB9+kwnTa+VVS82RGpYmW6j2UIxVOW
         OstAkpOk6baVT46D2B1XEWddT67zPDMDScqjNXnWo20DblT6QB+Nlw5ID89U+mq2Ke5y
         cOog==
X-Gm-Message-State: ACrzQf0nEtJ3J/v2aD8CTL5bktbmCyArZ7nsOR0XB2CPLGg5As0NIBgo
        T9FcG9IEobmnWDs/3z6Wkqzw6YflDC/g2STBQ86tAw==
X-Google-Smtp-Source: AMsMyM4s7LiehMAmQwAlsglqv7I9hjEir5JxyPvKq/LWVIGO61ukt9N0xDHm3Hkjhil8AJK63zEo4I2oWd9VoQFnPIU=
X-Received: by 2002:a05:6870:7023:b0:132:538:43e7 with SMTP id
 u35-20020a056870702300b00132053843e7mr2293163oae.123.1666115674347; Tue, 18
 Oct 2022 10:54:34 -0700 (PDT)
MIME-Version: 1.0
References: <20221017175523.2048887-1-zokeefe@google.com> <20221017175523.2048887-3-zokeefe@google.com>
 <2de9de5f-c82d-f2ce-26e3-b9fabd88a08c@gmail.com>
In-Reply-To: <2de9de5f-c82d-f2ce-26e3-b9fabd88a08c@gmail.com>
From:   "Zach O'Keefe" <zokeefe@google.com>
Date:   Tue, 18 Oct 2022 10:53:58 -0700
Message-ID: <CAAa6QmQn-8sY2N7r4-rAHJbgdMdAkJUKQyGWfbief0bhdY4Csw@mail.gmail.com>
Subject: Re: [PATCH man-pages 2/4] madvise.2: document reliable probe for
 advice support
To:     Alex Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hey Alex,

> > diff --git a/man2/madvise.2 b/man2/madvise.2
> > index e14e0f7fb..adfe24c24 100644
> > --- a/man2/madvise.2
> > +++ b/man2/madvise.2
> > @@ -789,6 +789,13 @@ that are not mapped, the Linux version of
> >   ignores them and applies the call to the rest (but returns
> >   .B ENOMEM
> >   from the system call, as it should).
> > +.PP
> > +.BR madvise (0,
> > +0,
> > +.IR advice )
>
> For expressions, we don't follow the same highlighting rules as in
> identifiers and man-page references.  Instead we use all italics.  See
> man-pages(7):
>
>         Expressions, if not written on a separate indented  line,
>         should  be  specified in italics.  Again, the use of non=E2=80=90
>         breaking spaces may be appropriate if the  expression  is
>         inlined with normal text.

Just to confirm, by "expression", you mean "madvise(0, 0, advice)"? If
so, to be consistent with the other note, perhaps best to break this
into a phrase such as:

--8<---
.BR madvise ()
called with zero for both
.IR addr
and
.IR length
will return zero iff
.I advice
is supported by the kernel and can be relied on to probe for support.
--8<---

Thanks,
Zach
