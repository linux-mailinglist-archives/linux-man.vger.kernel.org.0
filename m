Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 87025327BE8
	for <lists+linux-man@lfdr.de>; Mon,  1 Mar 2021 11:24:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234182AbhCAKW7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 1 Mar 2021 05:22:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232038AbhCAKVo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 1 Mar 2021 05:21:44 -0500
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76CE6C0617AA
        for <linux-man@vger.kernel.org>; Mon,  1 Mar 2021 02:19:53 -0800 (PST)
Received: by mail-pj1-x1034.google.com with SMTP id d2so11450699pjs.4
        for <linux-man@vger.kernel.org>; Mon, 01 Mar 2021 02:19:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=32HzRjJiuJbAGmMrV4tAv/2/bwY8hR96oK3tXKEXK2A=;
        b=A4gUZjVT8iB3ykFFG3CICa94ZH/9f5pz9iwmTPPHm/aj98ua9r14FLIeB54j/FmtOn
         wuMJ8NSkeuKdOpmIi8i2wN0d8u2lw6g2ArjpHdVN/J8wlDLSkG0rtvzhDglq2Gdk1uW6
         26xqUgTEp6+DdJZPZz9twiD3NN+ZEohYhMwBiV/26tbO17RJHgTId6IvvJeamEuMiDos
         vhp0z9/6uyI7Zq9tqNzmrHTkYpI5FgiUbTw90Iq/y9HzFT9nx4XKOF7YQdoQZeM4mRsQ
         vfmGQl09qsK9xMJPy306iB6cdr8LZxHCuOUS2+T9xYcfVkK6rRMJKK45Cw1aI+z16XYb
         eHbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=32HzRjJiuJbAGmMrV4tAv/2/bwY8hR96oK3tXKEXK2A=;
        b=LQQ4/JeNYLItmrv9LuaUV0zmbySgrmqsQXXbRYSAte//cq9rk0YXSO7oLw/VxUcCHc
         z2en0keQfvT5BED99jxRS8IxlJNzTfnGZnZFFdZw9govV0IGs4eh74aNNRPjs2TK6r9n
         p3ogPbADzQdNOvzI1icO7YI8IcgqRzz6x1WkUYgjOGgeHVld/pDbkS6NSSqqE6fIQKnc
         ZFjSuakZzJFJJyt6B7SJr/qUuBttskoUmPVfGXd9730PopaY7rN6QKWi8NMfxTBC32hF
         aq4/J0whFOriX5NGAPcUiQAk7a+gP7wSDGCL0jwIA3MpCJG3ji0JeWTFyOpc7tS3mA+w
         c3TQ==
X-Gm-Message-State: AOAM532XkqPOrD3hG68V74IE4CVo6LcFoFQ2P3hLCUm/tC4C+V9r6Gxm
        pBEhFfxQtaDoWKYJ7GgyCmh7GV9auTnAixPJyBwasyoAykk=
X-Google-Smtp-Source: ABdhPJzp8ACO0QLAx+WNun82ZbI9CyJVV1O1Mo1l6PJtJIIm+chT342+xTIz25iyMYpX/ohMBVPDyMBQDv3I6av5xCQ=
X-Received: by 2002:a17:90a:1485:: with SMTP id k5mr16804785pja.103.1614593992896;
 Mon, 01 Mar 2021 02:19:52 -0800 (PST)
MIME-Version: 1.0
References: <20210215131522.450666-11-alx.manpages@gmail.com>
 <20210219143221.108935-1-alx.manpages@gmail.com> <CACKs7VAD69B2+rRPkXLwy0YtVOswvbqJjvvMNQ_rdQoBjF-sow@mail.gmail.com>
 <072ee0c3-f30f-9da3-1b3f-37b5bc095806@gmail.com>
In-Reply-To: <072ee0c3-f30f-9da3-1b3f-37b5bc095806@gmail.com>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Mon, 1 Mar 2021 12:19:41 +0200
Message-ID: <CACKs7VAwN6_ibvEhNsnsNsS6PnncCmjGEuKuBs-P5qMXNw2Vww@mail.gmail.com>
Subject: Re: [PATCH v9] scripts/bash_aliases: Add useful functions
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        lnx-man <linux-man@vger.kernel.org>, Walter Harms <wharms@bfs.de>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

On Sat, Feb 27, 2021 at 7:16 PM Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
[...snip]
> >> +       find * -type f \
> >> +       |grep '\.c$' \
> >> +       |sort -V \
> >> +       |xargs pcregrep -Mn "(?s)^\w*SYSCALL_DEFINE.\(${1},.*?\)" \
> >> +       |sed -E 's/^[^:]+:[0-9]+:/&\n/';
> >> +
> >> +       find * -type f \
> >> +       |grep '\.[ch]$' \
> >
> > Any reason not to use "find . -type f -name '*.[ch]'" when you need to
> > restrict the files you're looking at? I would expect that to be
> > faster.
>
> I don't like find syntax.  I never remember how all of its options work.
> grep is much simpler, and everyone knows how it works.
>
> find has: -[i]lname, -[i]name, -[i]path, -[i]regex, -[i]wholename
> I don't want to be reading the manual for all of them each time I use
> find.  grep does the same with optional -i and some simple regex which
> anyone could understand with some basic regex knowledge.

I've always used find -name, I think most of the time it's enough. But
I can understand that people might prefer writing certain snippets in
a certain way, and you need to be comfortable with scripts you are
maintaining.

>
> For the performance part, I don't know; but we might be surprised.  At
> most it might be a bit faster (nothing like 200%), but I care more about
> readability.

Actually, as far as I can tell there's not much difference
performance-wise between the two, as far as I can tell. At least when
searching the kernel source on my Linux VM. So it seems I'm wrong on
that point:

stefan@spuiu-vm:~/rpmbuild/BUILD/kernel-3.10.0-1160.2.2.el7/linux-3.10.0-1160.2.2.el7.x86_64$
time ( find . | grep '\.c' &>/dev/null )

real    0m0.076s
user    0m0.031s
sys     0m0.046s
stefan@spuiu-vm:~/rpmbuild/BUILD/kernel-3.10.0-1160.2.2.el7/linux-3.10.0-1160.2.2.el7.x86_64$
time ( find . -name  '*.c' &>/dev/null )

real    0m0.088s
user    0m0.016s
sys     0m0.066s

>
> I also avoid using find -exec option, and instead use xargs.  It's way
> simpler to understand, at least for me.
>
> See also:
> <http://doc.cat-v.org/unix/find-history>
> <http://harmful.cat-v.org/cat-v/>

Well, I understand the sentiment in those texts, but I would argue
that finding files by name is a core functionality of find :). It's
true that other extra functionality might not be exactly warranted,
and yes, '-print' feels kind of weird.

Thanks for bearing with me,
Stefan.
