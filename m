Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 28CF72B6F9B
	for <lists+linux-man@lfdr.de>; Tue, 17 Nov 2020 21:07:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731506AbgKQUHN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 17 Nov 2020 15:07:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726851AbgKQUHN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 17 Nov 2020 15:07:13 -0500
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com [IPv6:2a00:1450:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B628DC0613CF
        for <linux-man@vger.kernel.org>; Tue, 17 Nov 2020 12:07:11 -0800 (PST)
Received: by mail-lj1-x243.google.com with SMTP id r17so25741368ljg.5
        for <linux-man@vger.kernel.org>; Tue, 17 Nov 2020 12:07:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rJlb0i1VGgaZ+hMXCpkpJ5hlER3U8nvvYW3fvVDgI/k=;
        b=J/YZ6h/OCZ5I/Llg6f76T474+2t8DYXpf9TaLe/UQTe9U546QNvmBmNEuXh8xRHatn
         x5dZoH3xvuvcTuHNbgryL58m+LGRM86j8ia2e8WeoVF1kEPl+sOvzsdfSdx3tahqHiRJ
         vkyAJSPq0gqZEyRGVyCbFka6jZ7H+yF7b4APw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rJlb0i1VGgaZ+hMXCpkpJ5hlER3U8nvvYW3fvVDgI/k=;
        b=T4mM3HBfhau27PBwUBAPzfG6SschbIowoQ3FOozEAWGECANaB6FVdHy5g8UyXDXkUr
         wvkMwWaD2uzM6NppoBrqt5BbYFlxTujhkuXQ4DiPao9a+tZUGN95QtQcvoOi1awL9xOc
         jDyGgAx8GmBfXjFrVIIWDikkfpItBEguUivZRU7uLqPvyYE4/76SKGRs8uogCs2vV6nJ
         HLUOJuIAov6k1dXGmGXGSVBLCxiH5J9+/TuoOO2sduBRbbpiRPrLs8g7PxQmkdahgS0q
         +fWIKL8xqX3tEOoiBEbmSi74LzaUeENr+RYBxNR7YYmCsQTmxcT6rDqrMxMur4NmZAd/
         0bHQ==
X-Gm-Message-State: AOAM533S5DGyFY70PP0P0sMigseW+l2ExNLeb7wxJFuROgGh0wCHH/it
        nZ6VMxYmQsnnQwAg8Ix+DLdRAF03HoAN1Q==
X-Google-Smtp-Source: ABdhPJxhBia6quR1Zw9DyOdRj//WGiySqoGyj51wj1Mh+6Pg6ZwHi1j4O82zeSgB4FMAh3IQp7W7jw==
X-Received: by 2002:a2e:9988:: with SMTP id w8mr2644524lji.107.1605643629643;
        Tue, 17 Nov 2020 12:07:09 -0800 (PST)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com. [209.85.167.48])
        by smtp.gmail.com with ESMTPSA id l6sm3351620lfh.270.2020.11.17.12.07.05
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Nov 2020 12:07:08 -0800 (PST)
Received: by mail-lf1-f48.google.com with SMTP id j205so31899831lfj.6
        for <linux-man@vger.kernel.org>; Tue, 17 Nov 2020 12:07:05 -0800 (PST)
X-Received: by 2002:ac2:598f:: with SMTP id w15mr2196881lfn.148.1605643624696;
 Tue, 17 Nov 2020 12:07:04 -0800 (PST)
MIME-Version: 1.0
References: <20200901000633.1920247-1-minchan@kernel.org> <20200901000633.1920247-4-minchan@kernel.org>
 <20200921065633.GA8070@infradead.org> <20200921175539.GB387368@google.com>
 <a376191d-908d-7d3c-a810-8ef51cc45f49@gmail.com> <20201116155132.GA3805951@google.com>
In-Reply-To: <20201116155132.GA3805951@google.com>
From:   Linus Torvalds <torvalds@linux-foundation.org>
Date:   Tue, 17 Nov 2020 12:06:48 -0800
X-Gmail-Original-Message-ID: <CAHk-=whTctybeY7GSc+f--FVLKKUQicTq-jfEmdku+cO_VdiVg@mail.gmail.com>
Message-ID: <CAHk-=whTctybeY7GSc+f--FVLKKUQicTq-jfEmdku+cO_VdiVg@mail.gmail.com>
Subject: Re: [PATCH v9 3/3] mm/madvise: introduce process_madvise() syscall:
 an external memory hinting API
To:     Minchan Kim <minchan@kernel.org>
Cc:     Eric Dumazet <eric.dumazet@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Christoph Hellwig <hch@infradead.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Christian Brauner <christian.brauner@ubuntu.com>,
        linux-mm <linux-mm@kvack.org>,
        Linux API <linux-api@vger.kernel.org>,
        Oleksandr Natalenko <oleksandr@redhat.com>,
        Suren Baghdasaryan <surenb@google.com>,
        Tim Murray <timmurray@google.com>,
        Sandeep Patil <sspatil@google.com>,
        Sonny Rao <sonnyrao@google.com>,
        Brian Geffon <bgeffon@google.com>,
        Michal Hocko <mhocko@suse.com>,
        Johannes Weiner <hannes@cmpxchg.org>,
        Shakeel Butt <shakeelb@google.com>,
        John Dias <joaodias@google.com>,
        Joel Fernandes <joel@joelfernandes.org>,
        Jann Horn <jannh@google.com>,
        Alexander Duyck <alexander.h.duyck@linux.intel.com>,
        sj38.park@gmail.com, David Rientjes <rientjes@google.com>,
        Arjun Roy <arjunroy@google.com>,
        Vlastimil Babka <vbabka@suse.cz>,
        Christian Brauner <christian@brauner.io>,
        Daniel Colascione <dancol@google.com>,
        Jens Axboe <axboe@kernel.dk>,
        Kirill Tkhai <ktkhai@virtuozzo.com>,
        SeongJae Park <sjpark@amazon.de>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Nov 16, 2020 at 7:51 AM Minchan Kim <minchan@kernel.org> wrote:
>
> Let me send a patch with your SoB if you don't mind.

Eric, can you ack this SoB and I'll apply it to me tree?

Or is it already queued up somewhere else?

             Linus
