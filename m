Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 70AC63D8E69
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 14:59:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234256AbhG1M7r (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 08:59:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233315AbhG1M7r (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 08:59:47 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B962DC061757;
        Wed, 28 Jul 2021 05:59:44 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id j2so3031784edp.11;
        Wed, 28 Jul 2021 05:59:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=K6cjzR42EklyjKqvSNPb70Hz5hfQ/Z6w+MNfhc7EMP4=;
        b=ulgixdj8GlcUTL8H1JRD8zj+H0Hh0tmTh2YBKaEeZoKLOGCudEurhjvIS+SKaW/h+M
         LjxE3AKeUaHGUW4Q713Cz95rjkqAU8uZejW0CEooSXpF9m0sL0fSuvqXOdTyHW3SiGVB
         zjUl/lIfrXnl9vbR065R9n51e6i0a/eOXxa6TkvmZM3sqRZ51pCzcyyAKFJI0PwFuBx3
         4BN9zHPmmGkXuT8EaUa/ptS7dK3K14YmvL1xdg/vBmHKLXf2wVWJEKBMuc9o0akbb+Ev
         OQc8bi9HdZMKaLGsvBm0VR+LXl8hc5jBgN6IEuI+oKydCk0NxeBhjRJzt8Vg/CJIVjab
         20PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=K6cjzR42EklyjKqvSNPb70Hz5hfQ/Z6w+MNfhc7EMP4=;
        b=JmI9D252l/5ugzHwUDFBpPjdbzxNsR7/KfX5vo+V2wNvJcyCKG8c5sb9pcKcGT36nj
         V46v3JmG/gCTYM5u9xEFn4KJ7vMZgDiVkzgMrefJxexrpkycmroXC2Zg00t+yBGhKQ/v
         CdZ2hip8DFouM1t5L7iHHgjUPL0bbWx4gEoVK2Ayr8nHhq+rZJbqwWNBQg2GdCHripL6
         SE/TtKqukNp3fmzvJ0ZjxAUNtdkIdHGFIH6+Nq8t+QM9Vq6r6pMhz3WrLyNAnpvggr11
         5iyd4WOxYjvgvGp1TLAnYddiU6CNi/0p6isz4kpj5hV2cYP4+bZ6rpJ9NQkzchRiNQYE
         U4pg==
X-Gm-Message-State: AOAM530LSNEOlkjzVKAhse/JDlepcqcYFZ/PobbSVbsR0UW1nBRdNkXl
        4yYmTC5WrIrx+Hx/voYXlcZYaZ34dIbfvrK1nTek1NDRwW4H4g==
X-Google-Smtp-Source: ABdhPJxGJjfZXiOhXdSsFC+vjplEzv25XW8meo0c7FxobyNFOfAFFs3lPVC1CXnfTPe5qFl0Awhq9dTkvWGQlQpGMiQ=
X-Received: by 2002:a05:6402:221c:: with SMTP id cq28mr34078272edb.115.1627477183148;
 Wed, 28 Jul 2021 05:59:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAOVCmzEJqg6=FW3Vu1MScyj8GS-KXb2s_ztxBxwDmcbN5sbQuA@mail.gmail.com>
In-Reply-To: <CAOVCmzEJqg6=FW3Vu1MScyj8GS-KXb2s_ztxBxwDmcbN5sbQuA@mail.gmail.com>
From:   Shivank Garg <shivankgarg98@gmail.com>
Date:   Wed, 28 Jul 2021 18:29:27 +0530
Message-ID: <CAOVCmzEzwFkiDz_Tf0LFQQZYKYdbACjyjdLOpawh0BB9JpDg1Q@mail.gmail.com>
Subject: Fwd: /proc/pid/sched units
To:     linux-doc@vger.kernel.org, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

---------- Forwarded message ---------
From: Shivank Garg <shivankgarg98@gmail.com>
Date: Wed, Jul 28, 2021 at 6:26 PM
Subject: /proc/pid/sched units
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Linux MM
<linux-mm@kvack.org>, <util-linux@vger.kernel.org>


Hi Everyone,

I'm analyzing the cpu time taken ("se.sum_exec_runtime" in
/proc/$pid/sched) by process in different configurations for my
project work. But I was not able to get the time units for the values
displayed in the file. I tried searching it in source code -
kernel/sched/cputime.c,include/linux/sched.h etc. but it left me more
confused.

Can you please answer me about the measurement units (is it
microseconds, nanoseconds, jiffles ...) ?

Also, I was not able to find proper documentation for /proc/pid/sched.
Please point to me if it's already there. If not, I would love to
contribute toward documenting these variables. It would be very
helpful for newbies (like me) in future.

Thanks,
Best Regards,
Shivank Garg
