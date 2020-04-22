Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2005C1B33D9
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2020 02:16:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726499AbgDVAP4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Apr 2020 20:15:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726453AbgDVAPz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Apr 2020 20:15:55 -0400
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com [IPv6:2607:f8b0:4864:20::d44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85821C0610D5
        for <linux-man@vger.kernel.org>; Tue, 21 Apr 2020 17:15:55 -0700 (PDT)
Received: by mail-io1-xd44.google.com with SMTP id o127so561159iof.0
        for <linux-man@vger.kernel.org>; Tue, 21 Apr 2020 17:15:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=s8WBEn0Ew0FfjlItXSZx2dD04UlyfVO9Vtrakg95fG8=;
        b=vEZtnqTTqXQHyZaDJ0KLwcGWgS1fInKJOZwaE3UxwPX1bLK0VS9xgdKiuDRLXQ+05C
         C5FcSVPpAIqv3O5PeTzolTJlCOJuVt9S4kHZ/cbwZqMijbyljdck2Rt4VuXBEuvb+z0o
         W7/i3oPpbZ795FErMQsIZZgthA8cwYutn2Q4uO1EOigi92o0V0UjqTnV8g62dGhcVfTg
         vu7OFmZQm8RYAODnxkQu+Ly2f146IjLWiAd7/LoSaORAXs6Op4xN1DuaR0jmXnNjLces
         G/wsYqCO0apXlGfL4uUfTZ6rSMA4qf/QrmvIPpqD2x2DZhUurdZrsMvHtyUsJk8Wt88g
         wVrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=s8WBEn0Ew0FfjlItXSZx2dD04UlyfVO9Vtrakg95fG8=;
        b=klmQpAwVze+i0yb6MPCjwDOJU/5DwALxsjCsbOHsWlh5fl7O8kGNrzOe5bTUdI0Ttp
         PqWFRnZLemlqnc9iXacI7sSsRKP1N1BdqIDOQJfSe7CkEuZaO7sjQggeqNGFLIpjaTZ0
         4+DLLwySlpi7VnhiO/3psj+ulgwWgpKx1QzVKw7RP7015kPlRu+4GmVVZyBmn0gDcWMD
         3sQ7OtRjpI4T61I20JN1tp4QANdNyVuQGAtfu0uiBeogSE8KMcrphB8zEzleBl9rUWIi
         N3v4Ik7eP/u43/78wcddt12RqHepZIxsmFJ8LyRjZkLGb9j6e5vKczJILVPxBjaLywSu
         qf4A==
X-Gm-Message-State: AGi0PuaUvQAgyjePL0nxwl2XDYfyha+gXgCg7GX8QbksPyZ7oQlDLn/K
        Va1y9SvWY1xKPE+x37CwYnKiKNqIUjt1M5ITIkyoqA==
X-Google-Smtp-Source: APiQypKT0r5I2CFEJHvLQn++wrvvDM8ozXTovtjXBvT6C7cYoTm5rKWYXZoR5YsAEoqmohpTkT3+kTVIvChn+qvjQBo=
X-Received: by 2002:a5e:c008:: with SMTP id u8mr23288456iol.4.1587514554441;
 Tue, 21 Apr 2020 17:15:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200415164949.44562-1-bgeffon@google.com> <092fc948-4adb-cda8-f525-7d16a85674e7@gmail.com>
 <CADyq12xA69pSZ=JfMuG_c8T1UHepmdSqBwLLPgFrOyXeveVk4w@mail.gmail.com>
In-Reply-To: <CADyq12xA69pSZ=JfMuG_c8T1UHepmdSqBwLLPgFrOyXeveVk4w@mail.gmail.com>
From:   Lokesh Gidra <lokeshgidra@google.com>
Date:   Tue, 21 Apr 2020 17:15:43 -0700
Message-ID: <CA+EESO6ODSQV4QA0-ZpyvmHb2395Gutt0ac5uBYNyTdWKdSY1Q@mail.gmail.com>
Subject: Re: [PATCH v2] mremap.2: Add information for MREMAP_DONTUNMAP.
To:     Brian Geffon <bgeffon@google.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, Sonny Rao <sonnyrao@google.com>,
        Jesse Barnes <jsbarnes@google.com>,
        Vlastimil Babka <vbabka@suse.cz>,
        Minchan Kim <minchan@kernel.org>,
        "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Apr 16, 2020 at 8:02 PM Brian Geffon <bgeffon@google.com> wrote:
>
> Hi Michael,
>
> > Thanks for this patch. I've applied it, and done quite a
> > bit of editing. Could you please take a look at the
> > version in Git, and let me know if I made any bad changes
> > to your text.
>
> Your changes look good.
>
> > You write "move", but would it not be more correcrt to say something
> > like "duplicate"?
>
> It's a little of both, it duplicates the VMA but moves the page table
> entries. So the behavior feels more like a move followed by a new
> mapping created that had the same properties as the previous. Does
> that make sense?
>
> > > +Possible applications for this behavior might be garbage collection or
> >
> > Can you elaborate the garbage collection use case a little, please?
>
> Lokesh, who is CCed, can probably expand better than I can, Lokesh
> would you mind elaborating on how the JVM plans to use this.
>
There are many GC algorithms in literature which use PROT_NONE+SIGSEGV
trick to implement concurrent compaction of java heap. In Android
Runtime we plan to use userfaultfd instead. But this requires a
stop-the-world, wherein Java threads are paused, right before starting
the compaction phase. Within this pause, the physical pages in the
Java heap will be moved to another area, so that the Java heap, which
is already registered with userfaultfd, can start 'userfaulting' (as
Java heap pages are missing) once application threads are resumed.

In the absence of MREMAP_DONTUNMAP, I'd have to do it by first doing
mremap, and then mmaping Java heap, as its virtual mapping would be
removed by the preceding mremap. This not only causes performance
issues as two system calls need to be made instead of one, but it also
leaves a window open for a native thread, which is not paused, to
create a virtual mapping for its own usage right where Java heap is
supposed to be.

> > > +non-cooperative
> > > +.BR userfaultfd (2) .
> >
> > What is noncooperative userfaultfd(2)?
>
> No cooperative userfaultfd is the term that people tend to use when
> the threads accessing the memory are not cooperating with the fault
> handling, MREMAP_DONTUNMAP is interesting for this as you can yank out
> the page tables from a running process and immediately start handling
> faults for the registered range without having to stop the process.
>
> I hope that answers your questions, feel free to ask if you need more
> clarification.
>
> Brian
