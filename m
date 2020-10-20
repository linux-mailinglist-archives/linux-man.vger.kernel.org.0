Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8BDC72933C8
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 06:08:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387701AbgJTEIx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 00:08:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387700AbgJTEIx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Oct 2020 00:08:53 -0400
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com [IPv6:2607:f8b0:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5ED30C0613CE
        for <linux-man@vger.kernel.org>; Mon, 19 Oct 2020 21:08:53 -0700 (PDT)
Received: by mail-ot1-x342.google.com with SMTP id m22so552840ots.4
        for <linux-man@vger.kernel.org>; Mon, 19 Oct 2020 21:08:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=tW+rcnLwORqWyKln0EyPJPLDzRItorQ/LcHBmhcWu+E=;
        b=HO4Kqd8J5gE3LTUvrDbv2hFCR1c0e2FH3W3Iv9jR+wBuXbQjImLBVMq6pNoYQ61NjY
         YxHgYkiHkzJ6I3FMnDgFb2oqtPNGc0udauNBjfR6X0vS0px/63U+gkjcamX3I4sTMGNU
         bakXl3LGPbkvKxeoaXOYDdam+bK52BhvAYGobGDyFFTSR3FQrcqtDtEyqP+xl8li3lpy
         X9v/NHNDT0rttusUKLePWX8+VJg4XetrWZ1YKgJ5JAMI5Dr4+67jtuHT0KK/hb8t08vM
         zXHL3Ms8FqkNObUNO+ZgzIcZgbCzU2406Shp66dQbEMRCxy3i3L4e1Pqwhc5/4Y9mTOY
         f9Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=tW+rcnLwORqWyKln0EyPJPLDzRItorQ/LcHBmhcWu+E=;
        b=hZ4ujWx2T0ODfnByo94O7NlUjBB7G1SyRIT4t2Tqa4IgesF9/vpeWVGnljadLxxX6o
         FxXT7C5E1m0FUjH2cbdUF95zbcB3Yp94q2tjr1Vkq4bGRGoa8+l6I/pH8sDfruRqswkr
         +g3/VrEhOpU+U54oMYgY2z2kqvPUjfliZNL78gWY5VtJcDzxL/wbnrykduTKUFDTqEhS
         Qx4rFAoJMqxXWc2tNXL/FIJ9J5RSiF/qN3JSgZ2KIgrFufu48D3BvHcox7KuPg1I+E7Q
         D+E2tb9Zv3XEiQWU7U2TKHq5KGmNiKIC37B9hCmAZI0u+kxQ6KhYPlrILra37q2ynO0a
         qQsg==
X-Gm-Message-State: AOAM533Hd89is9y099e7flF+HpaZYJn17AWEQHT8j+vzSjxluQXBcosK
        s56YjTe7gUeyOcC0oSy4sugac752pChZVH1ZPlY=
X-Google-Smtp-Source: ABdhPJwd3ALU0b8c0qTkLhlARZXhJdDZXwfMausbOeE7jtdm3XcirZKhNIFhHgW1DrNUviBQheera6iGbIKcQ4XCo40=
X-Received: by 2002:a9d:5183:: with SMTP id y3mr545981otg.308.1603166932699;
 Mon, 19 Oct 2020 21:08:52 -0700 (PDT)
MIME-Version: 1.0
References: <33af3ca2-d6ea-5f75-6ad2-e2f43eefe4fa@gmail.com>
In-Reply-To: <33af3ca2-d6ea-5f75-6ad2-e2f43eefe4fa@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 20 Oct 2020 06:08:41 +0200
Message-ID: <CAKgNAkhDZK9YyvDNr+s=bT9Y6BGCtC7mrGuYa+bdrzQnhGSjhw@mail.gmail.com>
Subject: Re: queue.3 overhaul
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Mon, 19 Oct 2020 at 17:29, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>
> Hi Michael,
>
>
> I'm working on moving and fixing code from queue.3 to different pages.
>
> I'd like to send you patches against a separate branch,
> if you would create one, to ask you some questions from time to time,
> and maybe get suggestions.
>
> Or maybe you could look at my branch on github
> (https://github.com/alejandro-colomar/man-pages/commits/queue
> (I may force push changes there sometimes))

I created a remote to remote to track your work. But you'll need to
ping me from time to tell me to take a look. Also, I think mail to
this list to discuss directions (as you are now doing) is great.

> (BTW, if you have a look there,
> you can see how I'm moving&fixing the code from queue.3
> to the other pages and maybe suggest a different way).

This looks okay in principle.

> Or maybe I can just show you small pieces of code (no patches),
> like in this email.
>
> Whatever works best for you.

Both ;-)

> What do you think about this SYNOPSIS for list.3?:
>
> [[
> .SH SYNOPSIS
> .nf
> .B #include <sys/queue.h>
> .PP
> .BI "int        LIST_EMPTY(LIST_HEAD *" head ");"
> .B  "           LIST_ENTRY(TYPE);"
> .BI "LIST_ENTRY LIST_FIRST(LIST_HEAD *" head ");"
> .BI "           LIST_FOREACH(TYPE *" var ", LIST_HEAD *" head ",
> LIST_ENTRY " NAME ");"
> .\".BI "           LIST_FOREACH_FROM(TYPE *" var ", LIST_HEAD *" head ",
> LIST_ENTRY " NAME ");"
> .\".BI "           LIST_FOREACH_SAFE(TYPE *" var ", LIST_HEAD *" head ",
> LIST_ENTRY " NAME ", TYPE *" temp_var ");"
> .\".BI "           LIST_FOREACH_FROM_SAFE(TYPE *" var ", LIST_HEAD *"
> head ", LIST_ENTRY " NAME ", TYPE *" temp_var ");"
> .B  "           LIST_HEAD(HEADNAME, TYPE);"
> .BI "LIST_HEAD  LIST_HEAD_INITIALIZER(LIST_HEAD " head ");"
> .BI "void       LIST_INIT(LIST_HEAD *" head ");"
> .BI "void       LIST_INSERT_AFTER(TYPE *" listelm ", TYPE *" elm ",
> LIST_ENTRY " NAME ");"
> .BI "void       LIST_INSERT_BEFORE(TYPE *" listelm ", TYPE *" elm ",
> LIST_ENTRY " NAME ");"
> .BI "void       LIST_INSERT_HEAD(LIST_HEAD *" head ", TYPE *" elm ",
> LIST_ENTRY " NAME ");"
> .BI "LIST_ENTRY LIST_NEXT(TYPE *" elm ", LIST_ENTRY " NAME ");"
> .\".BI "LIST_ENTRY LIST_PREV(TYPE *" elm ", LIST_HEAD *" head ", TYPE,
> LIST_ENTRY " NAME ");"
> .BI "void       LIST_REMOVE(TYPE *" elm ", LIST_ENTRY " NAME ");"
> .\".BI "void       IST_SWAP(LIST_HEAD *" head1 ", LIST_HEAD *" head2 ",
> TYPE, LIST_ENTRY " NAME ");"
> .fi
> ]]
>
> Things to note:
> - The (many) spaces are there because otherwise it's unreadable (at
> least for me).

But, I find the indentation confusing actually. When I see pieces such as

       int        LIST_EMPTY(LIST_HEAD *head);
                  LIST_ENTRY(TYPE);

It visually looks to me as though the LIST_ENTRY piece is some
extension of the LIST_EMPTY pest.

I think it's best not to do horizontal indentation, but instead just
use of vertical separation (.PP). We can perhaps revisit this later,
to see if we can come up with something better.

> Also, I kept the copyright from the University of California and added
> myself:  I consider this to be a modified redistribution but not a
> derived product; maybe I'm wrong in that (I'm not a lawyer :)).

This seems okay to me.

Thanks.

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
