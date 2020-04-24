Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 229191B781F
	for <lists+linux-man@lfdr.de>; Fri, 24 Apr 2020 16:15:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727074AbgDXOPS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Apr 2020 10:15:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40194 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1727021AbgDXOPS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Apr 2020 10:15:18 -0400
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com [IPv6:2a00:1450:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAF97C09B045
        for <linux-man@vger.kernel.org>; Fri, 24 Apr 2020 07:15:17 -0700 (PDT)
Received: by mail-ed1-x543.google.com with SMTP id r16so7346212edw.5
        for <linux-man@vger.kernel.org>; Fri, 24 Apr 2020 07:15:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=4RmnM4P//kxBBTCbDL1/FyhPWM2V6HjfuRFknCwIhzQ=;
        b=KeGFgAyuNKdQv44jIyfsYNQOg5KW4ma5NaoqAttlDkAKDui8iKJO4AWjTqxgYP6Uh1
         3GMnZBtYTCJBj8yTfEIobXRqbKrOYBZX/nHcLFqybhfCzvDGRzdUjqkO+79GK1CbKJ5C
         ok1wGusUZJDssLOaR1yb6CkCXwYoOZK7Mg/WkwQpMtUFQJ1+claFGp6ZAAf2HnHadfWi
         gVQZkFu6o0RS4W8GkPhmo7lRSlpSmvud18KXsGJpDOJXJuv+qTMH71BkAHQuY5WllZg8
         ShbNbj5APcSxhBm34aRrqcI0YIKGNo3OA1QElG/DYGJ8LSozpLxFAZoIj9wkxK236Hqq
         p87g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=4RmnM4P//kxBBTCbDL1/FyhPWM2V6HjfuRFknCwIhzQ=;
        b=l6Bv9tgu9SQQJLOCcZ3oa1fFROgj1MC0G8RBZEoBMNAFvPPbNFa6IR5Xq8yZ8xcZIe
         7KINB7ajVE69VEVAz8pvkHUpzl/ZLDVoisy/xrD+GQHh8uhmsqponj/uXKbxj664M6g/
         hYibPUEnmIIZyQNqzHyAcsqGPPk9/CbMTZVWLklJMC4wWtH0W64Wo6tl8vEV/8PS7cl4
         Wz+v3pNqnY1m9IV/LWCS+JshxP0zJ9QtsW4YKeWX9J+KkY38wo5izIpvwBqZaLEkyEqL
         KXqLAF3169mD4XwEdf6fl/ujXMQfD9c+bhc4EYLtw6sSB6Y3bXHMRHkn/K7KbwNmu4wV
         OQZA==
X-Gm-Message-State: AGi0PuZcU5LRDDVJ4V9qb+n6enz8NXF+xu7R2OG8E3gaqn891HEK9rCS
        IjQ0dWa6z3Pv7LydMdg8+JTrTit7kE4ajjS75wQ=
X-Google-Smtp-Source: APiQypJfObxY+Rhj7TtoVTT8+ETRL+LZLO1faoV6Sa8ks61mQSWtbb5U+6LIdUMbgOHgwOBX9FqSOiR7yQarYDjBChU=
X-Received: by 2002:aa7:d513:: with SMTP id y19mr7672021edq.367.1587737716351;
 Fri, 24 Apr 2020 07:15:16 -0700 (PDT)
MIME-Version: 1.0
References: <bug-207345-197507@https.bugzilla.kernel.org/> <bug-207345-197507-BrfGWbbBGi@https.bugzilla.kernel.org/>
 <504c7bb3-8b44-2a6e-ff02-02266f5f45fa@cs.ucla.edu>
In-Reply-To: <504c7bb3-8b44-2a6e-ff02-02266f5f45fa@cs.ucla.edu>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Fri, 24 Apr 2020 16:15:05 +0200
Message-ID: <CAKgNAkjcHj-MBe8x1atOw-VEy=VYMHEC+jj07fQja1vdnPsH6A@mail.gmail.com>
Subject: Re: [Bug 207345] zdump(8): zdump -c has an opposite behavior, in my
 xterm: lower bound is inclusive ...
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     bugzilla-daemon@bugzilla.kernel.org,
        Marco Curreli <marcocurreli@tiscali.it>,
        linux-man <linux-man@vger.kernel.org>,
        Time zone mailing list <tz@iana.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, 24 Apr 2020 at 00:57, Paul Eggert <eggert@cs.ucla.edu> wrote:
>
> I installed the attached doc patch to tzdb try to clarify things. The documented
> zdump behavior is kind of weird, but now's not the time to change it as we're
> about to do a new tzdb release.

Thanks, Paul. If you wold be so nice as to drop me a note when the
release is done, I will resync that pages in man-pages.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
