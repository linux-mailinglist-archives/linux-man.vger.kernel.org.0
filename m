Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2DBD3311C6D
	for <lists+linux-man@lfdr.de>; Sat,  6 Feb 2021 10:50:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229586AbhBFJui (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 6 Feb 2021 04:50:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229507AbhBFJuf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 6 Feb 2021 04:50:35 -0500
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59900C06174A
        for <linux-man@vger.kernel.org>; Sat,  6 Feb 2021 01:49:55 -0800 (PST)
Received: by mail-ot1-x32e.google.com with SMTP id k25so7325314otb.4
        for <linux-man@vger.kernel.org>; Sat, 06 Feb 2021 01:49:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=TKY4Jkme+o5OjY7yrzdpWPaGUBhXdIE8w7YMLhzs+e8=;
        b=cIsBdWLlj4sJWZR5Y03a3CODb7cvofuOd8KU0TBqB/kKoHx23sCjm0bmGsigBdhhQj
         UJgOvhQxIXXIwjNG4G6rxRry0GXCx01Ki6zKAKxGASB5SxBkj8oK/MGHIhHmcVtegTcC
         USuAYlpz7nJZOyf9JtH/BQNnE2F4oRLUdVKeRpth2RtKS8QLAFWGTjUvWi3mq5OhKUTw
         SLVuSBl/fl0TGkB4lBf4SXcsszTmvMRysYULnVmfMvkcjSraaYsxERn5ze+LKYefDqge
         OCIcCQOoLNqi87TC4g4EbYNy4Wj/aff3k/eBsj0z2acTuG+L7zrVuaGZQsz4ZXB5XyIV
         x81g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=TKY4Jkme+o5OjY7yrzdpWPaGUBhXdIE8w7YMLhzs+e8=;
        b=Dy3hlndVlE6sDNpA6inxn3UXEZP6HeTX0KwYCUILqWM50QiHa4hqRRCeA/1ZuA0CGi
         d0q8oBIZJn4pj0jGHDxRTUTillZea9bICc1yeyEPKxgqaSR2z8fDHKXzfP4uP0BOQvjI
         jh7PxydjE1gbnzBfcGR/oKQLzJarF783GdD9GYIT+I8yFWxy6pvfYwd83rBqQ+ywlwpt
         yOgqA1m8esQaPmT9HLwjhCbVDElm9iELCHMqMqeXPhXdJiScqTf5KRC5weqAslY03/W3
         IF8bsAuBiOgNIOx0SFCPZ/CaPRv7SrbclSGmPtVpfNZuPnzyRYHQFKEUgKAX7UKuFkH7
         v1vQ==
X-Gm-Message-State: AOAM531lCv2iHdolv1CN44i9Omjt0IJAayOpjpp24WRcZOPjHt5gSR+K
        TmRDWJbfe6nEADvPCFCOwgPQ6exXJLRkKRQ7Ncg=
X-Google-Smtp-Source: ABdhPJwBYinfWjn5xVHoMAl4RBo2v2OsM/OjFEN1PCY9xd8sDqw0qJJTYEqLMhQUykcyyBqUPj+2k+tWtyGviOTEG00=
X-Received: by 2002:a05:6830:148a:: with SMTP id s10mr6335294otq.323.1612604994613;
 Sat, 06 Feb 2021 01:49:54 -0800 (PST)
MIME-Version: 1.0
References: <2ea085f2674543b1a1fb41702bc959c7@bfs.de>
In-Reply-To: <2ea085f2674543b1a1fb41702bc959c7@bfs.de>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sat, 6 Feb 2021 10:49:43 +0100
Message-ID: <CAKgNAkh-y9TOWVy9ot25ig_XR4u4VSRz3=qEUezYKc0u0PVyug@mail.gmail.com>
Subject: Re: rfc: free and errno
To:     Walter Harms <wharms@bfs.de>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Walter,

Thanks for raising this.

On Mon, 1 Feb 2021 at 12:19, Walter Harms <wharms@bfs.de> wrote:
>
> Hi List
>
> free() is generaly assumed not to modify errno.
>
> Lately there was a bugfix posting on the busybox mailing list, because:
>
> "musl libc's mallocing free() may modify errno if kernel does not support
> MADV_FREE which causes echo to echo with error when it shouldn't."

URL please.

> In future  it seems that POSIX with require free() not to change errno.

The statement you make in the preceding sentence is useful
information, but you could save other people a lot of time searching
if you provided a reference:

https://www.austingroupbugs.net/view.php?id=385#c713

> after much soul searching i have still no idea if that should be documented in
> the free(3) man page. Any comments ?

Probably it should be documented. Did you have a suggestion for the text?

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
