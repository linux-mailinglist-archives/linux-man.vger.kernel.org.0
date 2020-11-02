Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5D3F92A34DA
	for <lists+linux-man@lfdr.de>; Mon,  2 Nov 2020 21:06:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725941AbgKBUEv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Nov 2020 15:04:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725809AbgKBUEv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Nov 2020 15:04:51 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2688C061A47
        for <linux-man@vger.kernel.org>; Mon,  2 Nov 2020 12:04:50 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id f9so19068363lfq.2
        for <linux-man@vger.kernel.org>; Mon, 02 Nov 2020 12:04:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SygJ0YMRNg3kRA+P+/o9DS9VAcEeWET+xfXo18MSK8w=;
        b=IenDEOwcE7acdWlt3upinLTTJLqi4UdRIK+PzIcZHwuf5PctnsoAcu0L8yOZf6HI57
         vlaLdkuBhc5qdDVb0YDoMMcI+rHBUzP1McRaXIovcqGA3X5wyw0sq1O9rJjQTyvAFkj4
         861P7yLhcvBsg8AEdFaV57Edi1EdHZvsLJOIhT0vSnbaUEmhGJo+AL4jNz0rqo8af+d7
         cYAj0ZM/aUC4Y3Lce948K0l4awqBXzXiDZrI1AgyGl4zivZne7XLXGpiLRjzEdn9aDzo
         98Kq0yEKIoz8niqnACP7ZZTeuT7fEmNkLrHA5ATKyJZvfX9PycBSL5wJNWljhEo8JtAX
         fcFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SygJ0YMRNg3kRA+P+/o9DS9VAcEeWET+xfXo18MSK8w=;
        b=PhtxjRm6tw8r/1QkS1DZPoqtwFlBCllAeIE5DOzSMYI9uAHu7G3K4IYlKaYLm1LbxS
         4SzvZbBUwt1rh9QP6AC9zoNqIYznQ4+6GcCH+kzLP2hmwofur7mmzxCPkbrju9+UN4xo
         BPx4bDbIVbMLC/5cby7S8PrNnj+J4CfM82idGu6bNEIdY9wM7Zvz2fY8n7ayb//p2KKA
         rTlhc58vt05zEAsp7VYevEvPE40IecTC9j2un9LfexkxW+EUWdbjPWtiHaVuQg14aZ9u
         dyW4yITUevxNlsvFRBlUfsZLWR1n0k62TlOilwRdgXA5bYiupBJ765HLxLYJui13FdGJ
         9JGA==
X-Gm-Message-State: AOAM530swZtybD9LL7OtjSBTtwCe4UW58w6aTPZ4x1uZ8kNyL93A5YVs
        r9s2bE6yeCk/XY2Z9YJS0VWmq+9xQKdkAhDF0F/OHA==
X-Google-Smtp-Source: ABdhPJxFX44DEsMSrcm7kaqxDUVJ2f5DqziIyHEn1UgPjdye5o9apeArOqF6mOkc2usLmVXmtr2vu76cCQnMUTiCBGM=
X-Received: by 2002:a19:c357:: with SMTP id t84mr5844550lff.34.1604347488712;
 Mon, 02 Nov 2020 12:04:48 -0800 (PST)
MIME-Version: 1.0
References: <63598b4f-6ce3-5a11-4552-cdfe308f68e4@gmail.com>
 <20201029085312.GC29881@ircssh-2.c.rugged-nimbus-611.internal>
 <48e5937b-80f5-c48b-1c67-e8c9db263ca5@gmail.com> <20201030202720.GA4088@ircssh-2.c.rugged-nimbus-611.internal>
 <606199d6-b48c-fee2-6e79-1e52bd7f429f@gmail.com> <CAMp4zn9AaQ46EyG6QFrF33efpUHnK_TyMYkTicr=iwY5hcKrBg@mail.gmail.com>
 <964c2191-db78-ff4d-5664-1d80dc382df4@gmail.com> <CAMp4zn9Eaq7UQqL4Gk7Cs2O3dj1Gfp8L_YDpWxhvru_kVEBVfw@mail.gmail.com>
In-Reply-To: <CAMp4zn9Eaq7UQqL4Gk7Cs2O3dj1Gfp8L_YDpWxhvru_kVEBVfw@mail.gmail.com>
From:   Jann Horn <jannh@google.com>
Date:   Mon, 2 Nov 2020 21:04:22 +0100
Message-ID: <CAG48ez2vPUCiZX-swrE2oWx8j-6QCzCRiFGnCPFoGMN+oBFGQw@mail.gmail.com>
Subject: Re: For review: seccomp_user_notif(2) manual page [v2]
To:     Sargun Dhillon <sargun@sargun.me>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Tycho Andersen <tycho@tycho.pizza>,
        Christian Brauner <christian@brauner.io>,
        Kees Cook <keescook@chromium.org>,
        Daniel Borkmann <daniel@iogearbox.net>,
        Giuseppe Scrivano <gscrivan@redhat.com>,
        Song Liu <songliubraving@fb.com>,
        Robert Sesek <rsesek@google.com>,
        Containers <containers@lists.linux-foundation.org>,
        linux-man <linux-man@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Aleksa Sarai <cyphar@cyphar.com>,
        Alexei Starovoitov <ast@kernel.org>,
        Will Drewry <wad@chromium.org>, bpf <bpf@vger.kernel.org>,
        Andy Lutomirski <luto@amacapital.net>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Nov 2, 2020 at 8:50 PM Sargun Dhillon <sargun@sargun.me> wrote:
> On Mon, Nov 2, 2020 at 11:45 AM Michael Kerrisk (man-pages)
> <mtk.manpages@gmail.com> wrote:
> >    Caveats regarding blocking system calls
> >        Suppose that the target performs a blocking system call (e.g.,
> >        accept(2)) that the supervisor should handle.  The supervisor
> >        might then in turn execute the same blocking system call.
> >
> >        In this scenario, it is important to note that if the target's
> >        system call is now interrupted by a signal, the supervisor is not
> >        informed of this.  If the supervisor does not take suitable steps
> >        to actively discover that the target's system call has been
> >        canceled, various difficulties can occur.  Taking the example of
> >        accept(2), the supervisor might remain blocked in its accept(2)
> >        holding a port number that the target (which, after the
> >        interruption by the signal handler, perhaps closed  its listening
> >        socket) might expect to be able to reuse in a bind(2) call.
> >
> >        Therefore, when the supervisor wishes to emulate a blocking system
> >        call, it must do so in such a way that it gets informed if the
> >        target's system call is interrupted by a signal handler.  For
> >        example, if the supervisor itself executes the same blocking
> >        system call, then it could employ a separate thread that uses the
> >        SECCOMP_IOCTL_NOTIF_ID_VALID operation to check if the target is
> >        still blocked in its system call.  Alternatively, in the accept(2)
> >        example, the supervisor might use poll(2) to monitor both the
> >        notification file descriptor (so as as to discover when the
> >        target's accept(2) call has been interrupted) and the listening
> >        file descriptor (so as to know when a connection is available).
> >
> >        If the target's system call is interrupted, the supervisor must
> >        take care to release resources (e.g., file descriptors) that it
> >        acquired on behalf of the target.
> >
> > Does that seem okay?
> >
> This is far clearer than my explanation. The one thing is that *just*
> poll is not good enough, you would poll, with some timeout, and when
> that timeout is hit, check if all the current notifications are valid,
> as poll isn't woken up when an in progress notification goes off
> AFAIK.

Arguably that's so terrible that it qualifies for being in the BUGS
section of the manpage.

If you want this to be fixed properly, I recommend that someone
implements my proposal from
<https://lore.kernel.org/lkml/CAG48ez1O2H5HDikPO-_o-toXTheU8GnZot9woGDsNRNJqSWesA@mail.gmail.com/>,
unless you can come up with something better.
