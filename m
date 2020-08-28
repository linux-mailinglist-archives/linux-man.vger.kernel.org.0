Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E57162556D4
	for <lists+linux-man@lfdr.de>; Fri, 28 Aug 2020 10:47:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728016AbgH1Irb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Aug 2020 04:47:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726834AbgH1Ir0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Aug 2020 04:47:26 -0400
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com [IPv6:2607:f8b0:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 867ECC061264
        for <linux-man@vger.kernel.org>; Fri, 28 Aug 2020 01:47:26 -0700 (PDT)
Received: by mail-ot1-x335.google.com with SMTP id j3so165687otk.13
        for <linux-man@vger.kernel.org>; Fri, 28 Aug 2020 01:47:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=HNLoE1LZovH0L20J/Vkc79jf3CmTCuxquBxbYq0vEb8=;
        b=mdo2EB8Dl9elzkcVJmmiDgpn8KpWj8tmW3mRVitPuIGbhTD/WYFNoDTN1O6TDkygRN
         pGWkaaqZJNEUP9VkJoAGdkwEaqbEf4ikJeeAlJNs25ht03zhwYS22ce9mYtI8W5WCTtQ
         MSvwjOWm6AHV0eCAq8vNuctaAFhEl9VMrjUfDWCTqfI3wLecgyzgX5ftb6xZ4o8dtkbO
         QjYelkgfkLTiPMK9vqf6l+f2+Cm3UzNxHny85UZZ+Yo0V+NwzeEZPaXjck66lVfxE6E9
         KY5vmQ7Sg/6V7FAeYczsS48KMcHhVLDUKY9Tk5XuVqFCtNsFZxib5eyyERM8mBukCkSC
         9JFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=HNLoE1LZovH0L20J/Vkc79jf3CmTCuxquBxbYq0vEb8=;
        b=TjmjRYjvbGszBT7n1E+y3ODwLYHQ9f0mfu1hGq5LRXs9no2VBpZBluDecgywx0T640
         qGr9O1IybSysxrttrntgPP3qApUg5S7Y3jv7+eOVpcaP3WFv0Bz1bkkMTXjoa0ARqXWc
         mMGzQ905Vyx3nm+rVGeXRD5jf+r82N/C2QJwj8dckUoeu5PtVmYdlkVjl6hvsPy/4NuD
         IVjwRjCD+KdJ0tMOo7wCrwpixYRkHojQBvelwkYQc96paUaH9rZAT4xWCwrWkPpmZkgt
         HC3k6XsgbnwwXcX7AlNp75Jzu/coClwJAnTHqlSWC8kXP/2H34QYpaIfvoqWI0aRNlnP
         2UmQ==
X-Gm-Message-State: AOAM533e1HSiKbFoj2bBXPnLNghYwqnF+PoEw+6MJZ14qwowonLRFu5C
        /v0UQywJzSWKTG9hlod8g3xYXHkvsCyvAR1AQcQ=
X-Google-Smtp-Source: ABdhPJyWIujRwRS/Nuog7xFVpou91xFck2dOODDKd3sXwyCFaFyrjLIiFd9yC/oU1LSQgoKt7NL/McJ3q0FuCmV7iuM=
X-Received: by 2002:a05:6830:1648:: with SMTP id h8mr357961otr.323.1598604444291;
 Fri, 28 Aug 2020 01:47:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAEGFa3zWvHb4NCvVkvsRm7N1-EnE1qqvFDfDQT9mjiHi0imPQg@mail.gmail.com>
In-Reply-To: <CAEGFa3zWvHb4NCvVkvsRm7N1-EnE1qqvFDfDQT9mjiHi0imPQg@mail.gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Fri, 28 Aug 2020 10:47:12 +0200
Message-ID: <CAKgNAkgMDBvHH7BWa=k5y=L4QBjTbZH24fFrm8KHgqFQfAOpAw@mail.gmail.com>
Subject: Re: Omitted convention in man-pages - conventions for writing Linux
 man pages
To:     Mike P <4mikepalmer@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Mike,

On Sat, 22 Aug 2020 at 15:40, Mike P <4mikepalmer@gmail.com> wrote:
>
> Reported by Mike Palmer, Waterville, Co. Kerry, Ireland   Sat Aug 22 14:32:29 IST 2020
>
> The file
> man7.org/linux/man-pages/man7/man-pages.7.html
> does not contain a reference to the correct usage of the asterisk.
> Many man pages do contain asterisks as well as strings such as [-].
> Though the asterisk is used in CLI commands often as a wildcard,
> it is not clear how any such use may be legitimate in commands
> defined by a given man page.
> Does the asterisk in a specific man page serve as a universal
> wildcard, or does it have a scope specific to the man page?

I'm not sure whether it's possible to write a general guideline. I
guess I'd be interested to see a few more concrete examples of
variations in usage before trying to.

> An example of where the asterisk is used without explanation
> is in STTY(1).

At the top of that page it says: "An * marks non-POSIX settings." Does
that not cover it? Or have a I missed something?

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
