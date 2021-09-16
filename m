Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0500740ECE3
	for <lists+linux-man@lfdr.de>; Thu, 16 Sep 2021 23:48:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240404AbhIPVtX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 16 Sep 2021 17:49:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240063AbhIPVtT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 16 Sep 2021 17:49:19 -0400
Received: from mail-vs1-xe29.google.com (mail-vs1-xe29.google.com [IPv6:2607:f8b0:4864:20::e29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76796C061574
        for <linux-man@vger.kernel.org>; Thu, 16 Sep 2021 14:47:58 -0700 (PDT)
Received: by mail-vs1-xe29.google.com with SMTP id az15so6324335vsb.8
        for <linux-man@vger.kernel.org>; Thu, 16 Sep 2021 14:47:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oA9LctENkBJ5sJNMua/y+6EbzvM+JMZ89gyKxI3VTHU=;
        b=WoHuXDGahRZtYWBxAbVUP7TGVjMj/Wp+LQXq2bh7gzPK1lWLgWv9vqB5fyDHIPaARJ
         Gh8tznd9tebH6LQi0S+VDgN2zXeaGY6Pei5p5wc3PelpRcrS1V7xNSFhLdvuLVoBu27R
         Unx+ZLu8oC8FrN0FbWdUfeBY4gqlvN+OrvuOWAnMUophLVgOsTH6AoB51TcDrOabMeXR
         zNQhYW+0nozKjh8PaR+6pYoqsIaCY+R7cS9cQtSmygHPkfD6Riq2O9yP8A6EElv26NJN
         Adt/PAnJ2nkya337SbYULrhLaqjI9QN9GhWBOp43Sb4k7QkiQdRk/AYkHN8RnrP+r9KB
         97Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oA9LctENkBJ5sJNMua/y+6EbzvM+JMZ89gyKxI3VTHU=;
        b=ZXmN36Au3j3s5Vb4pWmqyVGMSzmbx+7/PqKi7K1/OUKABB7Vs/3bDcnGgZSq/ONqZG
         yLhn6VsuRWLmxxqpvmprwhj71FIxx/+DQj8IXEhxn2Q+Jhd/4IVga48fsAQJ4X9wLsXG
         7q94EBrp9gaLTr11U2n8GZvx9Ms1t9LJ6TKSTNQi3TwFAcnHcH6cP5lG7o33wVjT5Yv/
         Ae8k4gjEgNqnMC5a7f6bv+ITVVaMA747oQf34FiZPp2dTvgOeI05+DZ0oZa5Wg3eeXai
         OFIlJGtYbIEt0OQWkUI4C9y3IV+BeLR1ZhbA3lHYo1O8U0FjsVLNm4LwrLXTxvLzw5dL
         ilFQ==
X-Gm-Message-State: AOAM532+5qb3MTyrL7KQqE4z5MwD3BIhuTLzwWTjBPd/JCbVtEbMVYR3
        4f0cuxRQhpvV8D3V0BUa3tWuN+LFXzVD5adv27w7aw==
X-Google-Smtp-Source: ABdhPJy210uAg/0ElKSM5o2KzK/AB+uWjGR8obPN/GF0YlN0llznZJQ/7QI6Segiv7lHOhoykDaF0GGDsZL67zk48NU=
X-Received: by 2002:a67:f98d:: with SMTP id b13mr6552807vsq.58.1631828877519;
 Thu, 16 Sep 2021 14:47:57 -0700 (PDT)
MIME-Version: 1.0
References: <20210915173758.2608988-1-weiwan@google.com> <4d9952e8-040b-1bde-51a4-9687d6adb320@gmail.com>
In-Reply-To: <4d9952e8-040b-1bde-51a4-9687d6adb320@gmail.com>
From:   Wei Wang <weiwan@google.com>
Date:   Thu, 16 Sep 2021 14:47:46 -0700
Message-ID: <CAEA6p_CE_hnEm3VcrLkd87K_dUifJ68aDjS-FTG4aeZY3rsGOA@mail.gmail.com>
Subject: Re: [patch] send.2: Add MSG_FASTOPEN flag
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, netdev@vger.kernel.org,
        Yuchung Cheng <ycheng@google.com>,
        Eric Dumazet <edumazet@google.com>, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Sep 15, 2021 at 1:14 PM Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
>
> Hello, Wei!
>
> On 9/15/21 7:37 PM, Wei Wang wrote:
> > MSG_FASTOPEN flag is available since Linux 3.7. Add detailed description
> > in the manpage according to RFC7413.
> >
> > Signed-off-by: Wei Wang <weiwan@google.com>
> > Reviewed-by: Yuchung Cheng <ycheng@google.com>
> > Reviewed-by: Eric Dumazet <edumazet@google.com>
> > ---
> >   man2/send.2 | 27 +++++++++++++++++++++++++++
> >   1 file changed, 27 insertions(+)
> >
> > diff --git a/man2/send.2 b/man2/send.2
> > index fd28fed90..a40ae6214 100644
> > --- a/man2/send.2
> > +++ b/man2/send.2
> > @@ -252,6 +252,33 @@ data on sockets that support this notion (e.g., of type
> >   the underlying protocol must also support
> >   .I out-of-band
> >   data.
> > +.TP
> > +.BR MSG_FASTOPEN " (since Linux 3.7)"
> > +Attempts TCP Fast Open (RFC7413) and sends data in the SYN like a
> > +combination of
> > +.BR connect (2)
> > +and
> > +.BR write (2)
>
> You should merge the comma with the above, to avoid an unwanted space:
>
> .BR write (2),
>
> > +, by performing an implicit
> > +.BR connect (2)
> > +operation. It blocks until the data is buffered and the handshake
>
> Please use semantic newlines.  See man-pages(7):
>
>     Use semantic newlines
>         In the source of a manual page,  new  sentences  should  be
>         started  on  new  lines, and long sentences should be split
>         into lines at clause breaks  (commas,  semicolons,  colons,
>         and  so on).  This convention, sometimes known as "semantic
>         newlines", makes it easier to see the  effect  of  patches,
>         which often operate at the level of individual sentences or
>         sentence clauses.
>
>
> This is especially important after a period, since groff(1) will usually
> put 2 spaces after it, but if you hardcode it like above, it will only
> print 1 space.
>
>
> > +has completed.
> > +For a non-blocking socket, it returns the number of bytes buffered
> > +and sent in the SYN packet. If the cookie is not available locally,
> > +it returns
> > +.B EINPROGRESS
>
> .BR EINPROGRESS ,
>
> > +, and sends a SYN with a Fast Open cookie request automatically.
> > +The caller needs to write the data again when the socket is connected.
> > +On errors, it returns the same errno as
>
> errno should be highlighted:
>
> .I errno
>
> Also, errno is set, not returned (as far as user space is concerned); so
> something along the lines of "errno is set by connect(2)" or "it can
> fail for the same reasons that connect(2) can".  Michael probably knows
> if there's a typical wording for this in the current manual pages, to
> add some consistency.
>
> BTW, should anything be added to the ERRORS section?
>
> > +.BR connect (2) > +if the handshake fails. This flag requires enabling TCP Fast Open
> > +client support on sysctl net.ipv4.tcp_fastopen.
>
> net.ipv4.tcp_fastopen should be highlighted:
>
> .IR net.ipv4.tcp_fastopen .
>
> > +
>
> Also from man-pages(7):
>
>     Formatting conventions (general)
>         Paragraphs should be separated by suitable markers (usually
>         either .PP or .IP).  Do not separate paragraphs using blank
>         lines, as this results in poor  rendering  in  some  output
>         formats (such as PostScript and PDF).
>
>
> Thanks!
>
> Alex

Thanks Alex! Will address those and send out v2.

>
>
>
> --
> Alejandro Colomar
> Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
> http://www.alejandro-colomar.es/
