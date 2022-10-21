Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 622AD607BEF
	for <lists+linux-man@lfdr.de>; Fri, 21 Oct 2022 18:17:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230175AbiJUQRM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Oct 2022 12:17:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230196AbiJUQRJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Oct 2022 12:17:09 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2346421345F
        for <linux-man@vger.kernel.org>; Fri, 21 Oct 2022 09:17:08 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id a25so4469256ljk.0
        for <linux-man@vger.kernel.org>; Fri, 21 Oct 2022 09:17:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9BhlseJunuaOmArCKyKq3dQuPh8gFQ+o2A9akwjB3AI=;
        b=BUPK9ZUfwReOcby/Gds2wXxyDFdZn/URLMBUknN2fpwmvsslo/cZLKOqBgzU1Ay0Em
         vXpCOXkf2BYt38YpjK1TWAx4ZN8QES/63162BUi09mVcLDkyzFqv7j6JVQ4zLTqUoVhk
         ve8ra80u2qCQH397+n4jUSmhdvFmWOI32NMe2Z55MYmamQmo1PtkSrZjTrbNNxR1xiBv
         TQvSjEqgR/StDPNz1vuoksRfGQwWJvlDRWJyGVd4Op0Tx1GVYu3n1dFSubw6P1lF0CL3
         zLWSxqdVz3+sOdke8uyOyehrii3IPiQLbJ8NGLTiesyPUO+UW5i9QkNKdt0bnd/0y14J
         g3Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9BhlseJunuaOmArCKyKq3dQuPh8gFQ+o2A9akwjB3AI=;
        b=ZhaD5lusMlXlfgydHq5HuGfABd+ujUKVUUqj6BXAWAiYeZewwKx/BUanvy8uvddWT6
         T/aqc7vgDVvxv8RJRbUqicif/+snTh7mU7fzd4LPcl5niwzjcu87FdtKRT52XTHiXRUQ
         UgRc4Iztk31c7ebrW2TBvihF04JMmfkqW+JCxSeIyWdU8L0FWqBRhNKaHoKEVv2ZA6Nj
         yGi5R7mpfrv11dWy3pdQDqLS2tkyYVcIkbEx8iFuiJwUQ/sAtnfEobIF2sxfEvfT/cJe
         6R0T2SpjG6uUL/nl2zZsebFFwAtw8nrsM7DyQSIDWXVjgjZT1LG7ON3odFwkPgtL3u/E
         qOVA==
X-Gm-Message-State: ACrzQf3hd9go9TpTH+Tlgey7vSMVLSQvK/Vrl+QBBxkX93FmO0xLIlh9
        njdxTJN8a95VSUyr0qYfsH9cezWEW46kWwoCNcOW6g==
X-Google-Smtp-Source: AMsMyM5cr1rkQnIy7ZZdYV76WByW8AWIWarXv+LgIth8dhI7XGXUwi0D3qEkyYiDRBZwobcsLl+nYMVn/Ku24gt5B+Y=
X-Received: by 2002:a2e:8810:0:b0:276:be89:55a7 with SMTP id
 x16-20020a2e8810000000b00276be8955a7mr711119ljh.394.1666369026001; Fri, 21
 Oct 2022 09:17:06 -0700 (PDT)
MIME-Version: 1.0
References: <20221018235051.152548-1-zokeefe@google.com> <20221018235051.152548-4-zokeefe@google.com>
 <d9f8599f-fb81-6915-85d9-fbbc74226608@gmail.com> <ca631c4f-0e7c-6dc4-0375-97c25088d252@gmail.com>
In-Reply-To: <ca631c4f-0e7c-6dc4-0375-97c25088d252@gmail.com>
From:   "Zach O'Keefe" <zokeefe@google.com>
Date:   Fri, 21 Oct 2022 09:16:29 -0700
Message-ID: <CAAa6QmT-4+Tx_VOVxGw+jO=Zh7+0NPLx8K+p0DsUd9WVoEvZNA@mail.gmail.com>
Subject: Re: [PATCH man-pages v2 3/4] process_madvise.2: CAP_SYS_ADMIN cleanup
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
        Minchan Kim <minchan@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED,USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hey Alex!

Thanks for taking the time to review!

On Fri, Oct 21, 2022 at 5:41 AM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> On 10/21/22 14:37, Alejandro Colomar wrote:
> > On 10/19/22 01:50, Zach OKeefe wrote:
> >> From: Zach O'Keefe <zokeefe@google.com>
> >>
> >> The initial commit of process_madvise(2) to man-pages project included
> >> an error, indicating that CAP_SYS_ADMIN capability was required when, in
> >> fact, CAP_SYS_NICE was the required capability.
> >>
> >> The initial commit of process_madvise(2) to Linux, commit ecb8ac8b1f14
> >> ("mm/madvise: introduce process_madvise() syscall: an external memory
> >> hinting API"), relied on PTRACE_MODE_ATTACH_FSCREDS (see ptrace(2)),
> >> but was amended by commit 96cfe2c0fd23 ("mm/madvise: replace ptrace
> >> attach requirement for process_madvise") which replaced this with a
> >> combination of PTRACE_MODE_READ and CAP_SYS_NICE (PTRACE_MODE_READ to
> >> prevent leaking ASLR metadata and CAP_SYS_NICE for influencing process
> >> performance).
>
> [...]
>
> > If I understand the paragraph above, from 5.10 to 5.12 the capability required
> > was CAP_SYS_ADMIN?
>
> Or was it CAP_SYS_PTRACE?

Starting in 5.10, there was no CAP_* capability requirement - only
PTRACE_MODE_ATTACH_FSCREDS (aka PTRACE_MODE_ATTACH |
PTRACE_MODE_REALCREDS). Now, my understanding of the algorithm
employed for ptrace access mode checking isn't to be trusted, but
AFAIK, a caller having CAP_SYS_PTRACE in the target's user namespace
(directly or transitively) isn't required to pass this (though it
makes it easier). ptrace(2) has an overview of the algorithm.

Starting in 5.12, CAP_SYS_NICE was added as a requirement, and the
ptrace algorithm used changed to PTRACE_MODE_READ.

If you think recording the differences in kernel versions in the
man-page is important, let me know and I can amend this patch.

Thanks,
Zcah

> --
> <http://www.alejandro-colomar.es/>
