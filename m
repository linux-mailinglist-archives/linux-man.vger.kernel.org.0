Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4C9583DC05C
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 23:41:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230310AbhG3VlS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Jul 2021 17:41:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229840AbhG3VlS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Jul 2021 17:41:18 -0400
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 782DDC06175F;
        Fri, 30 Jul 2021 14:41:13 -0700 (PDT)
Received: by mail-ot1-x32b.google.com with SMTP id 19-20020a9d08930000b02904b98d90c82cso11032997otf.5;
        Fri, 30 Jul 2021 14:41:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=AKKfZKLdRcRLxfNFf+EiCg6yC+z/o1cqpRK7Y8kSj+Q=;
        b=cUv/i2auUvj1HgNq+O6SEp/ndegm1ITy1BQLpWtWVvKQz651yzeUZZujU6DBee5bmO
         YBIeFF5DxcltwVkUCJq0u0nD6bK1tt4x6aZfgpK0/tfQX4q3FoZeW1fzLH/HxM323e+U
         kyGb5wN2Osf1Ro3OtFGZHVJTsA6N0Slk+pZ+H7/qIOZHI96TxESD9lvH3Q9G9omUUJAi
         3EVeDCJ8oZI3Lsa9cE4fFuEHdz1HUUv7yQTU79FWAAJ4rpIgH2qtWM/ZgtTA25y4hAa2
         GJ5JMRg6dZlZIMZr/RjRdz9r+6ZDXXTHXh9HZy1dMG7nFftbGgL8WCOaceEXITL3Ah20
         PBRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=AKKfZKLdRcRLxfNFf+EiCg6yC+z/o1cqpRK7Y8kSj+Q=;
        b=TzpXvBG9Ewh8U1cAzJt0WV2c/avdcIIp9659JZtYfXGbBUUxVyrYJpbwA04tPKwnjE
         dGzrRRI8GqmqpoxV2CgAaidgVKA0Hxhzm14lF2ua2gXNpdGXl4DFSMXCUe3SjQ9NQf0S
         3N1SqLY7zd5XYW74kkQ+qkoDoGI/fIUJhM4f1AAWDPryK+gLBXszK+oC4hHw9yQnUSxz
         nimt67WEjlfHQD0GAoma1xXV8OaMRCkINfoyKC4k/lKYDzraQbcd9fKZfLSL4bJ0wZ0f
         398EO7q05NfyakyHO2hUHhDND87AdqsTC/A5M8URxfS7IuVV1X6rsmhuduN8qH5NEeor
         TBZg==
X-Gm-Message-State: AOAM531By56MsFEUmq9a3iiCkFqd0Z6H4VvvAri1OQPcax0w5t3KC8/O
        Z/O9H40xESiA4iXe8Eor3S1CTNIbnVoKGFkhWt4=
X-Google-Smtp-Source: ABdhPJzVsSFlC5znMhwCmkqgNX7DVNILsMugblg7PlKjxjC0eQosMkSRmAlWb1tSn7NxPGvVwFdTflybw5uiT55mMuY=
X-Received: by 2002:a9d:3a49:: with SMTP id j67mr3949669otc.114.1627681272884;
 Fri, 30 Jul 2021 14:41:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAOVCmzEJqg6=FW3Vu1MScyj8GS-KXb2s_ztxBxwDmcbN5sbQuA@mail.gmail.com>
 <CAOVCmzEzwFkiDz_Tf0LFQQZYKYdbACjyjdLOpawh0BB9JpDg1Q@mail.gmail.com>
In-Reply-To: <CAOVCmzEzwFkiDz_Tf0LFQQZYKYdbACjyjdLOpawh0BB9JpDg1Q@mail.gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Fri, 30 Jul 2021 23:41:01 +0200
Message-ID: <CAKgNAkioMyEYk2AfjC-bHtD4ZxM=brm9CMWF-WXNfqYNvyyQKQ@mail.gmail.com>
Subject: Re: /proc/pid/sched units
To:     Shivank Garg <shivankgarg98@gmail.com>
Cc:     linux-doc@vger.kernel.org, linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Shivank,

On Wed, 28 Jul 2021 at 14:59, Shivank Garg <shivankgarg98@gmail.com> wrote:
>
> ---------- Forwarded message ---------
> From: Shivank Garg <shivankgarg98@gmail.com>
> Date: Wed, Jul 28, 2021 at 6:26 PM
> Subject: /proc/pid/sched units
> To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Linux MM
> <linux-mm@kvack.org>, <util-linux@vger.kernel.org>
>
>
> Hi Everyone,
>
> I'm analyzing the cpu time taken ("se.sum_exec_runtime" in
> /proc/$pid/sched) by process in different configurations for my
> project work. But I was not able to get the time units for the values
> displayed in the file. I tried searching it in source code -
> kernel/sched/cputime.c,include/linux/sched.h etc. but it left me more
> confused.
>
> Can you please answer me about the measurement units (is it
> microseconds, nanoseconds, jiffles ...) ?
>
> Also, I was not able to find proper documentation for /proc/pid/sched.
> Please point to me if it's already there. If not, I would love to
> contribute toward documenting these variables. It would be very
> helpful for newbies (like me) in future.

It looks like se.sum_exec_runtime is milliseconds. In
kernel/sched/debug.c, see proc_sched_show_task(), the definition of
the PN() PNS(), and SPLIT_NS() macros, and the nsec_high(x) and
nsec_low(x) functions.

Thanks,

Michael


--
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
