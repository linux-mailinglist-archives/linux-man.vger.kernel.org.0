Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AB81F39C0D2
	for <lists+linux-man@lfdr.de>; Fri,  4 Jun 2021 21:51:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229880AbhFDTwz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Jun 2021 15:52:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229913AbhFDTwz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Jun 2021 15:52:55 -0400
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com [IPv6:2607:f8b0:4864:20::d2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3330C061766
        for <linux-man@vger.kernel.org>; Fri,  4 Jun 2021 12:50:59 -0700 (PDT)
Received: by mail-io1-xd2c.google.com with SMTP id r4so11313391iol.6
        for <linux-man@vger.kernel.org>; Fri, 04 Jun 2021 12:50:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Yx5ApbvAd7I5vFlQya+NsIeBKCKhNuXynKSzCVZw0Ng=;
        b=Ow6ak2yGHQosnoooJza5wlgegECt4Cytj+J3vUYKsPH7UyRFrhBB5UiGpepGpWKuN2
         ckYOGfEuhw3ldWTjeEf++N6fkGSnMavpFPYoD6tsRfVZMdhDVwcMD9W+IYSHsFXlvNBj
         ww0QZ67eCJcXAhYwOcq+Lhup+BvRo2XvBF8FFHihg+r5/cTwsy6lPpXMBGnypw3szHhB
         IsGWJgN7kLfKzRRxTTqHUWhzPRGMYLIK4DYfXzr5HfF1jNCN+9DH0kpPYEQ+hsgkaEP0
         HTyiv8WSILkiLc8Z34LC0euHg17qNvK+xUVZROLbx51NrGO3wVNMP/hoYirT4fbks+hm
         uKrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Yx5ApbvAd7I5vFlQya+NsIeBKCKhNuXynKSzCVZw0Ng=;
        b=SaNzH+HmDpD56uDE1vHnDCVXLGEZd93ze/phKDhJoYNvUFZ3ITBDRRm5UsC8aqp0s1
         UZFa1KTHHJo5TOuUanhVEu2oEf6Zs0GlE94pDWgN7BF1Spob1QJfER8gpw82vzOe8QwP
         IZPWKVdv3bqYrYXohx5DFjuUoM5wgNRvB/g+fpKDoNY/L+FktUCoIbqpNKFmO9OtdxX4
         Gfu1/Z015IM9baOzKVt5WyhOvRu+kXWbh61cVIldMECumRN13SnK/sEplvr1sbQUfQ+g
         e4kV9MDJMIBlKgmJkM7Xhxed3n8vPXKjdVYGpgVKqnlIi2HKom0NbdXZJI5hb8riD/DQ
         3HMA==
X-Gm-Message-State: AOAM533DCZq8E3jFvHksHnG5yypA3YvV1H0IelcVbuVR3kkY8JGFKr0D
        e5msTu5zmxrkD+orZCevF/Z5wn/O7Br/8I0oMGhJOw==
X-Google-Smtp-Source: ABdhPJylUKcnXTj3lAkAqJE0MKqikSfgEtIjp3eKSUiZCzkEurekTijCEnNgLvvJPnirXevjkw8VDURtcyeiAKqwdBI=
X-Received: by 2002:a5e:a806:: with SMTP id c6mr4901693ioa.180.1622836254901;
 Fri, 04 Jun 2021 12:50:54 -0700 (PDT)
MIME-Version: 1.0
References: <20210603183216.939169-1-axelrasmussen@google.com> <YLkteUqSmXFxSJNt@t490s>
In-Reply-To: <YLkteUqSmXFxSJNt@t490s>
From:   Axel Rasmussen <axelrasmussen@google.com>
Date:   Fri, 4 Jun 2021 12:50:17 -0700
Message-ID: <CAJHvVciZnw5rBApeoAyqW+mLVumUWme+V40eZe7ZNacwuPAZJA@mail.gmail.com>
Subject: Re: [PATCH] ioctl_userfaultfd.2, userfaultfd.2: add minor fault mode
To:     Peter Xu <peterx@redhat.com>
Cc:     Andrea Arcangeli <aarcange@redhat.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Hugh Dickins <hughd@google.com>,
        Mike Kravetz <mike.kravetz@oracle.com>,
        LKML <linux-kernel@vger.kernel.org>, linux-man@vger.kernel.org,
        Linux MM <linux-mm@kvack.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Thanks for the review, Peter! I'll send a v2 shortly to address the suggestions.

On Thu, Jun 3, 2021 at 12:29 PM Peter Xu <peterx@redhat.com> wrote:
>
> On Thu, Jun 03, 2021 at 11:32:16AM -0700, Axel Rasmussen wrote:
>
> [...]
>
> Not a native speaker, feel free to take anything I said with a grain of salt..
>
> > @@ -278,14 +287,8 @@ by the current kernel version.
> >  (Since Linux 4.3.)
> >  Register a memory address range with the userfaultfd object.
> >  The pages in the range must be "compatible".
> > -.PP
> > -Up to Linux kernel 4.11,
> > -only private anonymous ranges are compatible for registering with
> > -.BR UFFDIO_REGISTER .
> > -.PP
> > -Since Linux 4.11,
> > -hugetlbfs and shared memory ranges are also compatible with
> > -.BR UFFDIO_REGISTER .
> > +What constitutes "compatible" depends on the mode(s) being used, as described
> > +below.
>
> Would below be slightly better?
>
>   Please refer to the list of register modes below for the compatible memory
>   backends for each mode.

I have no significant preference between the two, so happy to reword this one.

>
> [...]
>
> > @@ -735,6 +745,109 @@ or not registered with userfaultfd write-protect mode.
> >  .TP
> >  .B EFAULT
> >  Encountered a generic fault during processing.
> > +.\"
> > +.SS UFFDIO_CONTINUE
> > +(Since Linux 5.13.)
> > +Used for resolving minor faults specifically.
> > +Take the existing page(s) in the range registered with
> > +.B UFFDIO_REGISTER_MODE_MINOR
> > +and install page table entries for them.
>
> "Take the existing page" reads a bit weird to me.  How about something like:
> "Resolving minor-mode trapped page faults by installing page table entries with
> pages in the page cache"?

Agreed, "take" is a bit awkward. I'll reword to something close to
your suggestion.

>
> [...]
>
> > +.TP
> > +.B EINVAL
> > +An invalid bit was specified in the
> > +.IR mode
> > +field.
> > +.TP
> > +.B EEXIST
> > +One or more pages were already mapped in the given range.
>
> I'd think this sentence is good enough; slightly prefer dropping the latter one
> "In other words..." below, as "mapped" should mean the same to me (and the
> wording "fully mapped" is a bit confusing too..).

Fair enough, I had it that way at first but was worried the first
sentence alone was too vague. I'm probably overthinking it. ;) I'll
just drop the second sentence.

>
> > +In other words, not only did pages exist in the page cache, but page table
> > +entries already existed for those pages and they were fully mapped.
>
> [...]
>
> Thanks,
>
> --
> Peter Xu
>
