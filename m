Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 40429354E53
	for <lists+linux-man@lfdr.de>; Tue,  6 Apr 2021 10:10:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232398AbhDFIK5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Apr 2021 04:10:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232131AbhDFIK5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Apr 2021 04:10:57 -0400
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD59BC06174A
        for <linux-man@vger.kernel.org>; Tue,  6 Apr 2021 01:10:49 -0700 (PDT)
Received: by mail-oi1-x236.google.com with SMTP id x207so14261941oif.1
        for <linux-man@vger.kernel.org>; Tue, 06 Apr 2021 01:10:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=tZuLs+YxxRB+uAvmlR/bp//31Hg7J005HZNBPnbdNws=;
        b=Hdzly1Fe51EtcYVWpjNI3ZHY9CLXedfb3JY1v0395Nl/P+FLEeA2oBjxownRQb+/RR
         Yb7PlzMNkQNi7ceteXw0nOVehVcwVTrFg21W7AVeqxfyqYSnZfuEEfdk1vhQ6hIxbj5l
         3t0ijVYJkztTCwxdPnWxnuaIZW+nHr9guVztddcAVWqTfZbG6a9tnhJvtr+pN7rP1nOK
         w4BQQu3lfK7UPDV+s/aTVQhmq1mjclYBWRStJsl8jYc5CsM6MfRq73FK/HPMjZYo+wF6
         u6KzSJ4ZEteFqKFLzRHJGEoXEGcJ8ierRZYo2ovuk45Paq+UMFRQj4SItWeofdpI8M4s
         qdcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=tZuLs+YxxRB+uAvmlR/bp//31Hg7J005HZNBPnbdNws=;
        b=Wh5RokXAMn5p96VkQ99urvFCU3GQbJAXhSykBcK5Dg8rTMEiUaBEheU5dvqf8lq9mY
         vvWzzznHoRXFbNTCVBRtrGCXqN3jP16YEQGvPjsd/kketRnBFdovwxC/BSeJSGdiUvr3
         q1zRYQ07y98oiZOc1fZiA8xGFdj2gT0iSd8b7J3KpHHHWGDhaqcK4UM4zwMI/OEkAyu8
         aUwc02eujI5Z6E6j079+RCk6A0V/CevmOqMFTDHQFy+2XcFGKUSsEAi1UZAVKFJRHrJG
         UgH3n+qRPd6s2k3uxR4HnC6XxX9btyWdFiopQPGH+iSnlNM2kV0q7mfL3yzBJRkFCs0p
         FOYw==
X-Gm-Message-State: AOAM5301eMSmdVk7CgsV2/iqqHKfY/zgtgPGykjaF9NggW2ipzRAIGMT
        bI0vwKSWcOAYJV43T0shVRBcL1jrwgFs/fKrQJkQ3BKOTa8=
X-Google-Smtp-Source: ABdhPJyGuoZucq3LFMmItAn4UZ4/3YJtGv9h2yHwUooSR/Tlz2Cm15uf+QQBwC4509AUtQTJUvOwxMX8JtAeWlCUqPU=
X-Received: by 2002:aca:b48a:: with SMTP id d132mr2392254oif.159.1617696649340;
 Tue, 06 Apr 2021 01:10:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210405131307.2892-1-alx.manpages@gmail.com>
In-Reply-To: <20210405131307.2892-1-alx.manpages@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 6 Apr 2021 10:10:38 +0200
Message-ID: <CAKgNAkh4b6RpAy9QcLWyKPnLOAaKbJ_Gixto9dQSQAkWbN2VGw@mail.gmail.com>
Subject: Re: [PATCH 0/5] Merged patches from others
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, 5 Apr 2021 at 15:13, Alejandro Colomar <alx.manpages@gmail.com> wrote:
>
> Hi Michael,
>
> These are the patches I have merged from others.

Thanks, Alex! All merged and pushed now.

Cheers,

Michael

> Alyssa Ross (1):
>   scanf.3: clarify that %n supports type modifiers
>
> Peter Xu (4):
>   userfaultfd.2: Add UFFD_FEATURE_THREAD_ID docs
>   userfaultfd.2: Add write-protect mode
>   ioctl_userfaultfd.2: Add UFFD_FEATURE_THREAD_ID docs
>   ioctl_userfaultfd.2: Add write-protect mode docs
>
>  man2/ioctl_userfaultfd.2 |  91 ++++++++++++++++++++++++++++-
>  man2/userfaultfd.2       | 121 +++++++++++++++++++++++++++++++++++++--
>  man3/scanf.3             |   4 +-
>  3 files changed, 208 insertions(+), 8 deletions(-)
>
> --
> 2.31.0
>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
