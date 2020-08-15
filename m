Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 140D92452C6
	for <lists+linux-man@lfdr.de>; Sat, 15 Aug 2020 23:55:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728413AbgHOVzF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Aug 2020 17:55:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729083AbgHOVw0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Aug 2020 17:52:26 -0400
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com [IPv6:2a00:1450:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D8F6C061366
        for <linux-man@vger.kernel.org>; Fri, 14 Aug 2020 19:53:29 -0700 (PDT)
Received: by mail-lj1-x243.google.com with SMTP id g6so11849858ljn.11
        for <linux-man@vger.kernel.org>; Fri, 14 Aug 2020 19:53:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Sx+s5TgPBhAC17+Um+mU5R2EXL5eDMwOMqanLnBdz2Y=;
        b=Bl4GZHv5asknFsbNW29RzFsagBbKlsnuqR6i/rfTX0oEs249lVtvS6L/EePn0pxSei
         3UJYZbv30ITzXK8T8HGHGmdZ5AK1TOdV19vEc5LsACvxszVZWIUH4yUZqHJPSSen5NyS
         iIGbjiHf0hWZImak0nld06ODJyIz4oK5b0ExQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Sx+s5TgPBhAC17+Um+mU5R2EXL5eDMwOMqanLnBdz2Y=;
        b=jry/3+BojOEdTkHqYQd7ms3MiU7tA3lpFFsDmcro9itFYa5cfZ0ERDJwVHnwaLXudP
         AgNX7lToubr0iKszaYJjOZuhUNFen1TSeWWV7buo+Dr18RB4m/81u6LRdWd4GPbfVqeh
         wgZ2lgLKB+99x/eHxantWy2AqSKdyR1/Y5UTIBLdnt44sUZuXYTIM9WW5O7/7HBwCDKY
         WDBNwEwOkcRzFevX5lAFw05282e1LRgeG9Dxo2j0aOvYjsr+4QBVPIHD156gPHQy3Lcx
         Jt00jUYtsPoSXuKEkW4Q4mJf8yeqdqvqfxlXPLHfNKR3j4Ki1RiskwFzNYpf76Zi2JFa
         APcA==
X-Gm-Message-State: AOAM531NbsNCHGynuT3frbt2i/FjX5d06Eep5c/Mi4qZ0wn8HHHUqHaK
        aSSozGKKB48KhH5WfF0Lln3UAyqL6WVi0Q==
X-Google-Smtp-Source: ABdhPJzE8kJxT6pDFVRT4IpQ3C/xZ/FBR52B/c0mcY267LLLRViihLDKarmNVDj5SFbrvaYdC+DaGw==
X-Received: by 2002:a2e:85a:: with SMTP id g26mr2487648ljd.60.1597460007320;
        Fri, 14 Aug 2020 19:53:27 -0700 (PDT)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com. [209.85.167.48])
        by smtp.gmail.com with ESMTPSA id c21sm2243219lfh.38.2020.08.14.19.53.25
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Aug 2020 19:53:26 -0700 (PDT)
Received: by mail-lf1-f48.google.com with SMTP id c15so5781905lfi.3
        for <linux-man@vger.kernel.org>; Fri, 14 Aug 2020 19:53:25 -0700 (PDT)
X-Received: by 2002:a05:6512:3b7:: with SMTP id v23mr2531085lfp.10.1597460005575;
 Fri, 14 Aug 2020 19:53:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200814172939.55d6d80b6e21e4241f1ee1f3@linux-foundation.org> <20200815003102.dzZiwVm-K%akpm@linux-foundation.org>
In-Reply-To: <20200815003102.dzZiwVm-K%akpm@linux-foundation.org>
From:   Linus Torvalds <torvalds@linux-foundation.org>
Date:   Fri, 14 Aug 2020 19:53:09 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgZ6ZgRWRm0rGgLkYR-_XwKeuWxwbkBWxmCOzt7dGxWpg@mail.gmail.com>
Message-ID: <CAHk-=wgZ6ZgRWRm0rGgLkYR-_XwKeuWxwbkBWxmCOzt7dGxWpg@mail.gmail.com>
Subject: Re: [patch 18/39] mm/madvise: check fatal signal pending of target process
To:     Andrew Morton <akpm@linux-foundation.org>
Cc:     Alexander Duyck <alexander.h.duyck@linux.intel.com>,
        Jens Axboe <axboe@kernel.dk>,
        Brian Geffon <bgeffon@google.com>,
        Christian Brauner <christian.brauner@ubuntu.com>,
        Christian Brauner <christian@brauner.io>,
        Daniel Colascione <dancol@google.com>,
        Johannes Weiner <hannes@cmpxchg.org>,
        Jann Horn <jannh@google.com>, John Dias <joaodias@google.com>,
        Joel Fernandes <joel@joelfernandes.org>,
        Kirill Tkhai <ktkhai@virtuozzo.com>,
        linux-man <linux-man@vger.kernel.org>,
        Linux-MM <linux-mm@kvack.org>, Michal Hocko <mhocko@suse.com>,
        Minchan Kim <minchan@kernel.org>, mm-commits@vger.kernel.org,
        Oleksandr Natalenko <oleksandr@redhat.com>,
        David Rientjes <rientjes@google.com>,
        Shakeel Butt <shakeelb@google.com>, sj38.park@gmail.com,
        sjpark@amazon.de, Sonny Rao <sonnyrao@google.com>,
        Sandeep Patil <sspatil@google.com>,
        Suren Baghdasaryan <surenb@google.com>,
        Tim Murray <timmurray@google.com>,
        Vlastimil Babka <vbabka@suse.cz>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Aug 14, 2020 at 5:31 PM Andrew Morton <akpm@linux-foundation.org> wrote:
>
> From: Minchan Kim <minchan@kernel.org>
> Subject: mm/madvise: check fatal signal pending of target process
>
> Bail out to prevent unnecessary CPU overhead if target process has pending
> fatal signal during (MADV_COLD|MADV_PAGEOUT) operation.

This seems bogus.

Returning -EINTR when *SOMEBODY ELSE* has a signal is crazy talk.

It also seems to be the reason for the previous patches inexplicably
passing in the task pointer.

Finally, it has absolutely no explanations for why this would matter,
and why it's magically and suddenly an issue for process_madvise(),
when in the history of the *real* madvise() this hasn't been an issue
for "current".

I'm dropping the madvise() series.

If the issue is that you can generate a long series or areas with that
iovec, maybe the code should re-consider. Or maybe the signal pending
case should be done there, not passing down an odd task pointer to the
low-level madvise code.

              Linus
