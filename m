Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 83D976034D9
	for <lists+linux-man@lfdr.de>; Tue, 18 Oct 2022 23:23:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229535AbiJRVX0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Oct 2022 17:23:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229470AbiJRVXZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Oct 2022 17:23:25 -0400
Received: from mail-oa1-x31.google.com (mail-oa1-x31.google.com [IPv6:2001:4860:4864:20::31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1C53B5162
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 14:23:24 -0700 (PDT)
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-1364357a691so18383070fac.7
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 14:23:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=HKNro2Dl2lLl1vH96Fa6tylrRWVVjIEfAK2Tj8kMrac=;
        b=mQZqbeuZgFxPySK+/ATK+Ynm8gV5RriBOamrhsmxgpg+1qx2/sq2k6HkhFAQAhpLkA
         jZYNPN2SB4+/ERAHiNlofKC5YvbVH1vUspptyioL5QHumpha/s+GiNg1mpAPQOKGWiSw
         kCBKZsUYts6F5XFTlRZtO+QZw+x4cPFG6JSsCyVfakMK9jgMhzO+cTbjAUhTFmiDxHOj
         ITnRol1I8MzlUVBb9y7gaJj6ldCzYf8UJmJXiN8XDx5UnJ12yOA9PDbt0rrWePSV7Bh9
         McgEPagKwYlbt77JIYXbD4xUOP6CpCiIn/EbIHIsukyNbpc6d51vS03JQ8svzAY36jlj
         0mcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HKNro2Dl2lLl1vH96Fa6tylrRWVVjIEfAK2Tj8kMrac=;
        b=oP7DlwTbQJKF5g+ddGYxnrin7fUYZk+BdTx7vrNihYVnnmFzje9KhQ4d5N2GHDB2DS
         LWSdCFoTn21/cNvXd+V31GP4CpKGKcLwrr8Dw/5rC4AEiuKpMg6M/GSp8H0oP4pSIih1
         nsSXR9mYt6bmQibaP+6TXDdFWzGxZ3uMa/aqVU2RwNpxMdUGLukec7V/U4oHWGW22i7S
         +RpCiemHEd9I0TjUAHRWw7gEsX3Dibdq6aWHP0V+YRaJR/LyV2dNNoiKPjW+UQxR2R0D
         IUFbrABFnkgXvLkta9/Qwx/NR5HiAlOv9r3PJRUq2b1KXEuWmvVwzsE8doQBu7Br7Egy
         M6ow==
X-Gm-Message-State: ACrzQf3n/v26+UAabp9eS6NKmJzQWsR1lWW18WhdUery+WOBFJ9aDO7A
        TR5YeJO5GEvea37poeb5BpTC5m5knvjF5fNPBFZE/g==
X-Google-Smtp-Source: AMsMyM7JsKutNnrrYEHZPS1NHrhsFk9OhYRU++CvDtuKH2c/lSnYp62n6rXadzxeR4sfoZAHXx4Z6+dRuEC3Gwb9LxA=
X-Received: by 2002:a05:6870:7023:b0:132:538:43e7 with SMTP id
 u35-20020a056870702300b00132053843e7mr2792828oae.123.1666128204029; Tue, 18
 Oct 2022 14:23:24 -0700 (PDT)
MIME-Version: 1.0
References: <20221017175523.2048887-1-zokeefe@google.com> <20221017175523.2048887-4-zokeefe@google.com>
 <95dd505c-40cd-b4f3-c510-1f21dcb77f1d@gmail.com>
In-Reply-To: <95dd505c-40cd-b4f3-c510-1f21dcb77f1d@gmail.com>
From:   "Zach O'Keefe" <zokeefe@google.com>
Date:   Tue, 18 Oct 2022 14:22:48 -0700
Message-ID: <CAAa6QmRuqAX6qpwE3Pm=068AR1ikByxF1BkrSUaqsBRqPJt9Lw@mail.gmail.com>
Subject: Re: [PATCH man-pages 3/4] process_madvise.2: CAP_SYS_ADMIN cleanup
To:     Alex Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>
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

On Tue, Oct 18, 2022 at 3:38 AM Alex Colomar <alx.manpages@gmail.com> wrote:
>
> Hi Zach,
>
> On 10/17/22 19:55, Zach OKeefe wrote:
> > From: Zach O'Keefe <zokeefe@google.com>
> >
> > Since commit 96cfe2c0fd23 ("mm/madvise: replace ptrace attach
> > requirement for process_madvise"), process_madvise(2) has only
> > required CAP_SYS_NICE capability.  Update the man page to reflect this.
> >
> > Signed-off-by: Zach O'Keefe <zokeefe@google.com>
> > ---
> >   man2/process_madvise.2 | 3 ++-
> >   1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/man2/process_madvise.2 b/man2/process_madvise.2
> > index 6208206e4..7bee1a098 100644
> > --- a/man2/process_madvise.2
> > +++ b/man2/process_madvise.2
> > @@ -113,7 +113,8 @@ check (see
> >   in addition,
> >   because of the performance implications of applying the advice,
> >   the caller must have the
> > -.B CAP_SYS_ADMIN
> > +.\" commit 96cfe2c0fd23ea7c2368d14f769d287e7ae1082e
> > +.B CAP_SYS_NICE
>
> Would it make sense to keep some parentheses specifying that in old
> kernels CAP_SYS_ADMIN was requiring instead?

Thanks for the suggestion. I've chatted with Suren on this
(process_madvise(2) author and contributor of initial
process_madvise(2) man-page) and the initial CAP_SYS_ADMIN appears to
have been a mistake; it was CAP_SYS_NICE from the beginning. I'll
reword the commit description and resend it as part of v2.

Thanks,
Zach

> Cheers,
> Alex
>
> >   capability.
> >   .SH RETURN VALUE
> >   On success,
>
> --
> <http://www.alejandro-colomar.es/>
>
