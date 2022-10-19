Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E66666036DC
	for <lists+linux-man@lfdr.de>; Wed, 19 Oct 2022 02:12:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229543AbiJSAMJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Oct 2022 20:12:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229498AbiJSAMJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Oct 2022 20:12:09 -0400
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com [IPv6:2607:f8b0:4864:20::b2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38051BCBA3
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 17:12:08 -0700 (PDT)
Received: by mail-yb1-xb2f.google.com with SMTP id 207so18951482ybn.1
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 17:12:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Jna0LWDs2gplNvdaC5RjeZ7sSKNcNgKBH+clH9nfsnQ=;
        b=Y7NRHCCholGYVX0rlQiB4fXLGvUqYExV9+g0EoWPq48f0K2NaAjTSDoWAZviH2lt95
         5TPNHRnBeh+WfktGG7pPRElFCbtGZaic5XatkjzfzY5sv/LpX+0LXDpFYg/EzjNYZem3
         UMMM56vxMa/jqA7geuiA2IgQCLZp45s4Id7UBwTfBxfooWZrnj+NhhNMnAiFU24Fs3Hr
         8pmQEyVpmZQZLuYLImsCMoZdrUbBVywQu0z+UeJgdSEjHZD9BIc7mEgzykzZWpPTvB7v
         lNW6xZvW22Hc1AL264pUcFl/x8p43cdorsd6lOP5Q5LRjzm4mxyWGTiX6BQxODf5ZIH/
         AYbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jna0LWDs2gplNvdaC5RjeZ7sSKNcNgKBH+clH9nfsnQ=;
        b=g/uQGZNlLXV/nLWlftEf/uzkUBxy0ZjrrlgJ7ivdYGZG+etvAjgPcTOEhcm01JvAGE
         R9zENejaNmL/uNbpnXxxe3VBlRLWqGU59xZOO5lQpmNY+fZVox1k352na7txPM/MCu1J
         LMJ6RVsNq6ziRQi6igXNGQSWNEibXUHtM3RWViuCHO4lVZNMEY4fgNryinnVZcQfotEO
         Gc7YlNCXZz4sm2CeSiMS9Z7/5Sfqyk4t8LfHjA3mZKj7YZc9Y/fDojNmUBG2EbCOqlw8
         /dlHnjK5vhQx70iM+8ECVb92576ZU+GBDKBJnFMiUfVAmNby2on9ukvwAj4xVC7tYi1L
         Ql+w==
X-Gm-Message-State: ACrzQf0vXcdxG0+eqVSTocDsq++qpxe6sOVGOFkd/C52CH74kpVb3HKE
        pA0ENmPUW1GHpzD/lDWe6ZFMW5iTJXRO/gY0XXJrqA==
X-Google-Smtp-Source: AMsMyM5jqVrs2PiY7C2AHyT4DfbYmcm2nTPaadmm4elFiM8lFx5z74eiHGIIuOYJiWsztYPrH+8UEcYtsEu91knUS2M=
X-Received: by 2002:a25:2:0:b0:6c4:dc1:d37c with SMTP id 2-20020a250002000000b006c40dc1d37cmr4430021yba.380.1666138327301;
 Tue, 18 Oct 2022 17:12:07 -0700 (PDT)
MIME-Version: 1.0
References: <20221018235051.152548-1-zokeefe@google.com> <20221018235051.152548-4-zokeefe@google.com>
In-Reply-To: <20221018235051.152548-4-zokeefe@google.com>
From:   Suren Baghdasaryan <surenb@google.com>
Date:   Tue, 18 Oct 2022 17:11:55 -0700
Message-ID: <CAJuCfpE+nWiRAfDY+W5n4u1_vU82APF_4k0sgsFbh3GR3SOcwA@mail.gmail.com>
Subject: Re: [PATCH man-pages v2 3/4] process_madvise.2: CAP_SYS_ADMIN cleanup
To:     Zach OKeefe <zokeefe@google.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org, Minchan Kim <minchan@kernel.org>
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

On Tue, Oct 18, 2022 at 4:51 PM Zach OKeefe <zokeefe@google.com> wrote:
>
> From: Zach O'Keefe <zokeefe@google.com>
>
> The initial commit of process_madvise(2) to man-pages project included
> an error, indicating that CAP_SYS_ADMIN capability was required when, in
> fact, CAP_SYS_NICE was the required capability.
>
> The initial commit of process_madvise(2) to Linux, commit ecb8ac8b1f14
> ("mm/madvise: introduce process_madvise() syscall: an external memory
> hinting API"), relied on PTRACE_MODE_ATTACH_FSCREDS (see ptrace(2)),
> but was amended by commit 96cfe2c0fd23 ("mm/madvise: replace ptrace
> attach requirement for process_madvise") which replaced this with a
> combination of PTRACE_MODE_READ and CAP_SYS_NICE (PTRACE_MODE_READ to
> prevent leaking ASLR metadata and CAP_SYS_NICE for influencing process
> performance).
>
> Correct this in the man-page for process_madvise(2).

Thanks for fixing my mistake!

>
> Fixes: a144f458b ("process_madvise.2: Document process_madvise(2)")
> Cc: Suren Baghdasaryan <surenb@google.com>
> Cc: Minchan Kim <minchan@kernel.org>
> Signed-off-by: Zach O'Keefe <zokeefe@google.com>

Reviewed-by: Suren Baghdasaryan <surenb@google.com>

> ---
>  man2/process_madvise.2 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/man2/process_madvise.2 b/man2/process_madvise.2
> index 6208206e4..7bee1a098 100644
> --- a/man2/process_madvise.2
> +++ b/man2/process_madvise.2
> @@ -113,7 +113,8 @@ check (see
>  in addition,
>  because of the performance implications of applying the advice,
>  the caller must have the
> -.B CAP_SYS_ADMIN
> +.\" commit 96cfe2c0fd23ea7c2368d14f769d287e7ae1082e
> +.B CAP_SYS_NICE
>  capability.
>  .SH RETURN VALUE
>  On success,
> --
> 2.38.0.413.g74048e4d9e-goog
>
