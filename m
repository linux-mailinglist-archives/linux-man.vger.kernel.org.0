Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 79A741B314A
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2020 22:35:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726079AbgDUUfY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Apr 2020 16:35:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725850AbgDUUfY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Apr 2020 16:35:24 -0400
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com [IPv6:2607:f8b0:4864:20::733])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CC46C0610D5
        for <linux-man@vger.kernel.org>; Tue, 21 Apr 2020 13:35:24 -0700 (PDT)
Received: by mail-qk1-x733.google.com with SMTP id s63so149457qke.4
        for <linux-man@vger.kernel.org>; Tue, 21 Apr 2020 13:35:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=hsWsGXJBx/FpJBOtBUq79odSVGzQ4/xgLO2IMzXkqp8=;
        b=kZcHbp2zm6GxWEWPso85TyUgX5AZ+vxKNxouV7AFuvV8bjV6OhwRhXztOD2EUZUDn9
         A2mPNcr/IO0aiL/uDdhqHCHVAX73TtStLJUCzR8K5BTw3XLrPue/RM2vnqKtLnGdfBnU
         FgEF5Oe/kHWzy+eaxnMaA++jTIJiAQw9ZsT2WtDV6is1uWLgMoy2ZtoPHTeqYXfVfzqH
         XGaYk/gM/xs/mEGb2oeqUMPPz6dK1r0C1bKstrqFNbIkKkmYJR1PVpsW0zbHB4AlqVyR
         /VRB5ZaRcJ2qi1nr6Pq4EYlnZ5yI9+jo+O+9v4PTdUEYZctrTfGDjaXP4ZJHSvgS9gsI
         Me7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=hsWsGXJBx/FpJBOtBUq79odSVGzQ4/xgLO2IMzXkqp8=;
        b=R25WbMLUGIjcU8zgWxnypesXtCqZDxqfv55ORrrp7AIVYSNJzpcUrUiyACHwK6UEDT
         L3F+Uk5alk75zDCCvm4NyyPhUcfeiICvrEhj/QzYEEQ959I5YSEM2N8ZIVbQIeybbgIa
         YnzI0LNcY9O8/cuOxiGZxFzV+5jW/Bof6Y+e9VgxBeOdOYm4FqeqakEWgu2z4BqJPMVt
         bjzsZXPFgSxEPR0glOlVQLxpYk0wjCn/RedhAX2AJ3QoraBg9gqQ4SPVDEGwiy6/uWnM
         ME1pnFsqLDxlMDbcmfq+xYJYXBh8Z3mCsddtUzThUryFlPcYfbzMg+aK/KDCKdRfFCUI
         R4oA==
X-Gm-Message-State: AGi0PuZiT0T+X7CemR2JXPtGnZD3Lfo1Ptjc75bwU5zOhKKPhUpeTawj
        DWqCqUyQ3e+yTBzjLKtVhcRsI40Tcw4528cN8+pa6Ml8
X-Google-Smtp-Source: APiQypI80qkrXhFgUY38faEJPUy/W8dnaRIlicLmPbti8pFkgTAh3oi8srB1l4HPTyvf/M9EulY5/n2sBxbetSc1EvM=
X-Received: by 2002:a37:a955:: with SMTP id s82mr23918068qke.45.1587501323297;
 Tue, 21 Apr 2020 13:35:23 -0700 (PDT)
MIME-Version: 1.0
From:   Richard Weinberger <richard.weinberger@gmail.com>
Date:   Tue, 21 Apr 2020 22:35:12 +0200
Message-ID: <CAFLxGvxhdUtYudCzxJrVs7np5Aby1o9cXEDp5C9rw2kS74pDkQ@mail.gmail.com>
Subject: Clarification of pthread_cleanup_push() needed
To:     linux-man <linux-man@vger.kernel.org>
Cc:     libc-help@sourceware.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi!

Using pthread_cleanup_push() it is possible to register a cleanup
routine which will get
called upon thread cancellation.
I have a hard time to understand what exactly this routine allowed to
do and what not.

The manpage states:
"A clean-up handler is a function that is automatically executed when
a thread is
canceled (or in various other circumstances described below); it
might, for example,
unlock a mutex so that it becomes available to other threads in the process."

https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_cleanup_push.html
even has an example with pthread_mutex_unlock() in the cleanup
function.

But NPTL implements thread cancellation with signals, if I'm not
completely mistaken
the cleanup routine will run in signal context then.
So only async-signal-safe functions are good to use.
pthread_mutex_unlock() is not.

With my (limited) understanding of the current NPTL implementation I'd
say a cleanup routine
might only use async-signal-safe functions, except long jumps.

Can you please clarify?
And can we please state this more precisely in the manpage?

-- 
Thanks,
//richard
