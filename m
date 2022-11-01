Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 67510614DF4
	for <lists+linux-man@lfdr.de>; Tue,  1 Nov 2022 16:11:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230244AbiKAPLn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 1 Nov 2022 11:11:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230290AbiKAPLS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 1 Nov 2022 11:11:18 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 892F71C42A
        for <linux-man@vger.kernel.org>; Tue,  1 Nov 2022 08:04:54 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id u2so21336728ljl.3
        for <linux-man@vger.kernel.org>; Tue, 01 Nov 2022 08:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=57MFR50EAZAkGqWq9GcwxYtqkFmZdIuzNs9CdVFzmMY=;
        b=hzhyIEgI+HyUqCzTN/j/4NS1gus7+wOq3eDdfpJgtCbD7uTYYuqxPCbNjt+TqVfm1T
         qN+FZrVyl0BKIVwrTRNaxoHG8GIdoIzk+nc4e8IEBBPsMN1YZwyIzaxbAa25FWtgixvs
         VaaBPFdy2YWCgf58yV6HjbhofoZm+lfgcsOEgtx5TvyTsUxsIC0DyPy+rq3CvgH9Xoc9
         AIHNyUFUyNv2t3CG7K4Uoo2rh6k11tmjDh0iK8za9cHDf+T68prjSP3SF8gg1WQN7Zaf
         QtPuXukJPLJR2srE7BuSa2LsykLht9dkACaoSpENrkskn7aVes7KOyqndWktbSMO1lwj
         /PNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=57MFR50EAZAkGqWq9GcwxYtqkFmZdIuzNs9CdVFzmMY=;
        b=ttGCHOtlaFYZI1pk9W9Qz8W9U1/l7t0KVKhPSdkUA6hGy1WzOJdSkrH80rLTBLoJRT
         On89Q2uN3JQ/r976PkYv+c5w5DTzEkM6wYKazYnBYT6ENNDr7rrA7k2HIq/RI4AFNB8u
         UUji7CnwpbwIvynBmG9M1CMzDEwszg/LARkBJ9QY9fZXufAW2+jYaI3F39LjA9/Z9Nbp
         KpOV7ldi1EVCFkypFpCvC0oXCWwCIMj6ifRchNkDi7NSZmRNglKbGR46m+HjOnLbGCQB
         wwMZu9e2URaJhAlmlYg5f5kLNNgCJCYac5tZT146AP4R92a/Zb3hNrwDOoWZnTAgikYL
         9/Tw==
X-Gm-Message-State: ACrzQf2/GZ7OjHriHaM8TARPc1truGI347xNv31zqr6k3gtTx8RHPTsG
        8mPwMLKMp7VP5we/FhXZi9PwESTAxd/iw/h+xqE1RyQtw0Q=
X-Google-Smtp-Source: AMsMyM525yEatGK7hudXU69ZCfB2vezhYUbCQsh4gtwoRG//x9u/roSWkdigy71DwHI5XacAOSjISxupdsxqElDwq7k=
X-Received: by 2002:a05:651c:1070:b0:26d:e6c4:1df7 with SMTP id
 y16-20020a05651c107000b0026de6c41df7mr1005745ljm.89.1667315092580; Tue, 01
 Nov 2022 08:04:52 -0700 (PDT)
MIME-Version: 1.0
References: <20221031225500.3994542-1-zokeefe@google.com> <4b4a42ee-9243-96aa-b581-d56ae420f84a@gmail.com>
 <CAAa6QmQN1u5ynyE7Lce9xEKwRQpG6OU8ZOcgFk5nc1h-AN4YgQ@mail.gmail.com> <78113c25-a635-8d35-a5db-9657f8adf4a6@gmail.com>
In-Reply-To: <78113c25-a635-8d35-a5db-9657f8adf4a6@gmail.com>
From:   "Zach O'Keefe" <zokeefe@google.com>
Date:   Tue, 1 Nov 2022 08:04:16 -0700
Message-ID: <CAAa6QmT2PJrVg1nuizdijNQFnNQT+b9Dk16CzBPg=7UdWKU2dg@mail.gmail.com>
Subject: Re: [PATCH man-pages v4] madvise.2: add documentation for MADV_COLLAPSE
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
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

On Tue, Nov 1, 2022 at 4:38 AM Alejandro Colomar <alx.manpages@gmail.com> wrote:
>
> Hey Zach,
>
> On 11/1/22 01:38, Zach O'Keefe wrote:
>
> >>
> >> I don't understand this last paragraph (since "Also note ...").  Could you
> >> please reword it a little bit?
> >>
> >
> > Sure - I can see that it's hard to parse.
> >
> > Further up I note that, "If collapse of a given huge
> > page-aligned/sized region fails, the operation may continue to attempt
> > collapsing the remainder of the specified memory."
> >
> > Then perhaps it's enough to just state, "In the event multiple
> > hugepage-aligned/sized areas fail to collapse, only the most
> > recently-failed code will be set in errno"
>
> I like this.
>
> >
> > The idea here being: errno only communicates the reason for 1/N
> > failures that might have occured.
> >
> > However -- on second thought -- perhaps this isn't particularly
> > useful, as it's already implied. So, my new suggestion would be that
> > we should drop it. What do you think?
>
> errno usually behaves like that if you call consecutive calls, but it's not so
> obvious how a single call will behave: it could report the last one as in this
> case, or the first one since it's the one that made it break.  I'd keep it.
>

Roger that - done && have sent out v5.

Thank you so much again!

Best,
Zach

> [...]
>
> >> Diff for changing a few line breaks (and removing the spurious file):
> >>
> >
> > Thank you so much for this! :)
>
> :)
>
> Cheers,
> Alex
>
> --
> <http://www.alejandro-colomar.es/>
