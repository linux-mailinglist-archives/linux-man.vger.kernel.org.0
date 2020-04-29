Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2E1811BD46D
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2020 08:09:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726426AbgD2GJf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 29 Apr 2020 02:09:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726274AbgD2GJf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 29 Apr 2020 02:09:35 -0400
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com [IPv6:2a00:1450:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE154C03C1AD
        for <linux-man@vger.kernel.org>; Tue, 28 Apr 2020 23:09:33 -0700 (PDT)
Received: by mail-ej1-x644.google.com with SMTP id s9so629720eju.1
        for <linux-man@vger.kernel.org>; Tue, 28 Apr 2020 23:09:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=Vy51lUnsVSpxvbogKyt0zpsymXvtUSrGNeRWXO94E/I=;
        b=ja0vrK8dxJdyw8E8g4DmriqMKLCK9d+wuug0DLg4bPjTdXBA+gXT0XTU4M5ZbzvyZ7
         AY6FklMPIXlxUoPL3SEXBLkqh8Xj1vevA+6W8iSmf5zYQd/G9pDz94kCrZCccCOiU5hg
         rROz1OSP0xd0lDxocgI/8EeF4qJdIln/yMgk3vBHzYYR4A0GSfou0jDcWL2QJicBr83m
         llolTqWBFi9KcuZnfpaFgETLy2Foqt28jXjbYV8l4SiqoGdndaIcyZf/kMSvl6oxms1l
         3gKUnXzMeJHQfKa47lKSctQxmN61R9s4RwELsi9JyrBk0YJVvVFg8EMagjfjYhigRbPN
         XGNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=Vy51lUnsVSpxvbogKyt0zpsymXvtUSrGNeRWXO94E/I=;
        b=cZ/jySlKGnwUmqlzywvxWNlChW8l8vM6E6YthCFoapIxtOzQnWhdyP8JYWE0Ziva+S
         AF1aHojZ6IaO5btQmAY5SE0IvKRQMBb/XFEF7pBEJ1itJ6pljrAXSgiBWmoOESjZMCX4
         CK2n3nmnCBL0GEMVXh9+qkU/BJZwiO03q3wrRPYhvLDt2fgJNVDQXZMenwUkMBO6mGz9
         jzpdHW1tTHSMgzfKFzQU/2lUiQtSDxUvLMW3qGfkwuj49/Eg6ormxD9XRs2tkaOzy0RN
         0eNa8MQR6/GndHKSW+c2qC8hDjCTs9Ws/g2BeGVdzUVlwy+aA//QWFkC5vCi9YUNTiZp
         BBrQ==
X-Gm-Message-State: AGi0PuaEPsejwZ4yxgPvCp0A2qOXKcf6ECVdMuQ9gwKoV+EH04VJ9Cu1
        2ptb/JcvBgbm8YMPKsM/HBrde+HLEn3Er/jwwtl/lQeJ
X-Google-Smtp-Source: APiQypIkDNBeUQnDQyXb/dq1B+5Q3W0kI7YwZMPzfhmGhlhYCOZHD1n1jGs3w+mXh5OwS6Zm0vzfVGaga4XoDTJjgyQ=
X-Received: by 2002:a17:906:48ce:: with SMTP id d14mr1059563ejt.113.1588140572557;
 Tue, 28 Apr 2020 23:09:32 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000b27fc105a45d533e@google.com> <20200428180942.qwjjmp2e5sbx3opn@jwilk.net>
In-Reply-To: <20200428180942.qwjjmp2e5sbx3opn@jwilk.net>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 29 Apr 2020 08:09:21 +0200
Message-ID: <CAKgNAkgF2T7WFUD8say6n=t5HHJfyOgPCaTYtkhcJu0F+XYawA@mail.gmail.com>
Subject: Re: [PATCH] madvise.2: MADV_WIPEONFORK affects semantics
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Adam Langley <agl@google.com>,
        linux-man <linux-man@vger.kernel.org>, alangley@gmail.com
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jakub (and Adam),

On Tue, 28 Apr 2020 at 20:09, Jakub Wilk <jwilk@jwilk.net> wrote:
>
> Hi Adam!
>
> * Adam Langley <agl@google.com>, 2020-04-28, 17:40:
> > These
> > .I advice
> > values do not influence the semantics of the application
> > (except in the case of
> >-.BR MADV_DONTNEED ),
> >+.BR MADV_DONTNEED
> >+and
> >+.BR MADV_WIPEONFORK ),
> > but may influence its performance.
>
> This sentence is in the "Conventional advice value" subsection, which
> defines only MADV_NORMAL, MADV_RANDOM, MADV_SEQUENTIAL, MADV_WILLNEED,
> and MADV_DONTNEED.

(Good catch.)

> MADV_WIPEONFORK is defined in the "Linux-specific advice values"
> subsection, which already notes that "some of these operations change
> the semantics of memory accesses".

<nod>

> (Perhaps s/some/most/ would be better
> wording.)

Perhaps you are right. Here's my take:

Do change memory semantics:
MADV_REMOVE
MADV_DONTFORK / MADV_DOFORK
MADV_HWPOISON
MADV_FREE
MADV_WIPEONFORK

Don't change memory semantics:
MADV_MERGEABLE / MADV_UNMERGEABLE
MADV_SOFT_OFFLINE
MADV_HUGEPAGE / MADV_NOHUGEPAGE
MADV_DONTDUMP / MADV_DODUMP

Do you agree?

"Some" is perhaps a little loose, but perhaps "most" is overstating
it, so I'm not quite sure what to do here. Perhaps ad a line to each
of the operations in the first category noting that the operations
change memory semantics. THoughts?

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
