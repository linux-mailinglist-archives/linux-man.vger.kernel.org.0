Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C726E1AD4AF
	for <lists+linux-man@lfdr.de>; Fri, 17 Apr 2020 05:02:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729391AbgDQDC3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 16 Apr 2020 23:02:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726261AbgDQDC2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 16 Apr 2020 23:02:28 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45F5EC061A0C
        for <linux-man@vger.kernel.org>; Thu, 16 Apr 2020 20:02:28 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id rh22so438492ejb.12
        for <linux-man@vger.kernel.org>; Thu, 16 Apr 2020 20:02:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+oKL49VawfiOdKVM61180Ozlf7LJLsn7NM6JZWRF60k=;
        b=v26tPs0WdJunZl3s2x0ZLElskErIGOJtkcnOZ5qIV7zQML0x/9zlzwOigVruVsLLNs
         krVo2W0CpwMkVsCuM44n3vNtkDYH9W2ndIKZxRWzNlv+EOLP4cJCeGDfd4TYV8wGglbn
         9sa1lFWVq6RkwbxqEkMpaVTC/MAxb8uk6IH3xaAKEBEL0C8ZwihqIO8LE+q++bosKIYY
         w2E5RTsHDQVG73rb79aEIkG0AjxJi2yxbrRLc1uIofM7SeiLhmxDe6Myn2iDNhBklLNE
         y47hedZyoLwse9PhMQHyeTMNLvgSRUgQhQnUsWeGCy8S6MgBh9WzfcUGEFClWDxU8Pl3
         gtcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+oKL49VawfiOdKVM61180Ozlf7LJLsn7NM6JZWRF60k=;
        b=AMK4y3iPzCuvTGKsaehjXN60V2T4Au+GXX+rTYJMyFfc33KBCIOzhBLeLnDbySCB64
         ERZvq3xNWT/0SAuELHzD6EOELUNMQZzBC1w7kBUEiAIpX3+2ULeJ4TmbS5MNkcGglvTs
         oSSjpaxUuYUpBQXNHnkiZi/FdpIC+B74SOLqbYekrZP6h9cPwPiBxeyZ0GAqHLnrD8cC
         0MfKc/r6n7ZGoruEZ+km219+5/tXXZXmAy2lEZHD9fja9VEa7uUkZHMQ5xOW8gFDvLox
         otDGn36SlRV+GHiHR3huP9NUm4Yk9TX2EonBahFEQbA9I7UgpNUsgxqC35LOToyrA25q
         x3lw==
X-Gm-Message-State: AGi0PuaVjXteJbzdf/MLacd4kDc/bLN/Rj8s4Fov8kas8HQ2Gm/xaocb
        kavpctmeYBio1b8oq8m3xqtbt0F70zLbfn5fP5Z8Vdl3
X-Google-Smtp-Source: APiQypL3LR/Pg8mZPru/DC+TgF89rDmlqxB4CMe5xZNMshGJA2wiiBBDmaFUErmJPjChU59b3UmCtDobvV5UeYQBe9A=
X-Received: by 2002:a17:906:f1c4:: with SMTP id gx4mr978463ejb.171.1587092546633;
 Thu, 16 Apr 2020 20:02:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200415164949.44562-1-bgeffon@google.com> <092fc948-4adb-cda8-f525-7d16a85674e7@gmail.com>
In-Reply-To: <092fc948-4adb-cda8-f525-7d16a85674e7@gmail.com>
From:   Brian Geffon <bgeffon@google.com>
Date:   Thu, 16 Apr 2020 20:01:49 -0700
Message-ID: <CADyq12xA69pSZ=JfMuG_c8T1UHepmdSqBwLLPgFrOyXeveVk4w@mail.gmail.com>
Subject: Re: [PATCH v2] mremap.2: Add information for MREMAP_DONTUNMAP.
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Sonny Rao <sonnyrao@google.com>,
        Jesse Barnes <jsbarnes@google.com>,
        Vlastimil Babka <vbabka@suse.cz>,
        Minchan Kim <minchan@kernel.org>,
        "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
        Lokesh Gidra <lokeshgidra@google.com>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

> Thanks for this patch. I've applied it, and done quite a
> bit of editing. Could you please take a look at the
> version in Git, and let me know if I made any bad changes
> to your text.

Your changes look good.

> You write "move", but would it not be more correcrt to say something
> like "duplicate"?

It's a little of both, it duplicates the VMA but moves the page table
entries. So the behavior feels more like a move followed by a new
mapping created that had the same properties as the previous. Does
that make sense?

> > +Possible applications for this behavior might be garbage collection or
>
> Can you elaborate the garbage collection use case a little, please?

Lokesh, who is CCed, can probably expand better than I can, Lokesh
would you mind elaborating on how the JVM plans to use this.

> > +non-cooperative
> > +.BR userfaultfd (2) .
>
> What is noncooperative userfaultfd(2)?

No cooperative userfaultfd is the term that people tend to use when
the threads accessing the memory are not cooperating with the fault
handling, MREMAP_DONTUNMAP is interesting for this as you can yank out
the page tables from a running process and immediately start handling
faults for the registered range without having to stop the process.

I hope that answers your questions, feel free to ask if you need more
clarification.

Brian
