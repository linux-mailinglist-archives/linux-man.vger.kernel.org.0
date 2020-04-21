Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 553391B2341
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2020 11:51:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728308AbgDUJvs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Apr 2020 05:51:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725920AbgDUJvq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Apr 2020 05:51:46 -0400
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com [IPv6:2a00:1450:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69A98C061A0F
        for <linux-man@vger.kernel.org>; Tue, 21 Apr 2020 02:51:46 -0700 (PDT)
Received: by mail-ed1-x541.google.com with SMTP id f12so9737624edn.12
        for <linux-man@vger.kernel.org>; Tue, 21 Apr 2020 02:51:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=5qetrwXYqrEVqR7i49aWmafuqwnr/KxHUSkYLJ2PKCg=;
        b=YgXPh/Ye4M/p2vRtlz2NSy6TsEcn2lwGwDNNZ3ztscWW3bUjx8EevucbZZtra7nrAd
         NFn+06MwecrCnOU8smt7XcIyJbJB4czVur93zox/+cHve7oaOtq9mYOVwyAfEhrd4Z72
         oGczBaQ5Uj7N1NHUsod5/CnXhT8iNJIxfrVHCWA13H0aG0e5VImYeut99Jbf9GjLfVUv
         LLG8qfTKmLCXTz6zUOp9dcGeztFDbFzP8yrIkCnjTMfrBHncMnn8H5Sk7MUP2Yg0YUCf
         ASCcJY5KR7cTaqIY0cPDfeIkFNwrg9evv9Kiw0vo1ZV6i7PvvK5ODS5Qoa2auAfxSwFb
         8AOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=5qetrwXYqrEVqR7i49aWmafuqwnr/KxHUSkYLJ2PKCg=;
        b=Po59hzxpfSl//RuBQ0IvM0Z1igJtzLvQEJeDphrOjEHS9IrK4p05U7xbBBgD79ItH6
         1vbHWhx81KCZ88eUTENbu1gvVY2uBPCKbvJGzAONiDckCUyD5971+w118UYFd7Q4O0CL
         C7d/SoJZvvyD/u7ebcF0G1XkYa33GqUTwwGzhEVraNGpOhlZ3KUjYodcBu+Zv3HfdYP/
         WlywEw3pXjkTeGkpk8SPrX+mRu9go8XH4Hp2tlzhJZ8bJSjFvEkZPf5juU4U4qDfdVPm
         j6ffEvJlTuQ9x6PKZ5JwWfg6+6hArFJQ1gN6LWyUPuvSFowHVfVjtc6uUEiyb3GRm2Ww
         04Ig==
X-Gm-Message-State: AGi0PuZdLclNb185v+pVTUBD7656h2lFOk+DY85uCb0jf9RpdxUZmh2A
        akbU+/Z/qCNTRFZGqstddfxJyIv/Fc93jURn8Vc=
X-Google-Smtp-Source: APiQypKu588aoKjS7tT1yvhmpzI2idlmnxcm++K0xYT3RgULVRZzcdp+KqOxhwL6Lj3SXfd6vQUBdIaHCyDv/kLh4Ks=
X-Received: by 2002:aa7:cd6a:: with SMTP id ca10mr17782350edb.332.1587462705090;
 Tue, 21 Apr 2020 02:51:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200419064823.GA31864@Debian-50-lenny-64-minimal>
 <29000770-9fe0-c412-6721-c50d575c38d1@gmail.com> <20200421083410.pmnkvk5fetjqfywd@jwilk.net>
In-Reply-To: <20200421083410.pmnkvk5fetjqfywd@jwilk.net>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 21 Apr 2020 11:51:33 +0200
Message-ID: <CAKgNAkjnSnd3LYEua_29CQN8vgk2Eo3OwgnqH3BwcsJZiiaY7A@mail.gmail.com>
Subject: Re: Errors in man pages, here: setpgid.2.po: Inconsistent formatting
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Helge Kreutzmann <debian@helgefjell.de>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jakub,

On Tue, 21 Apr 2020 at 10:34, Jakub Wilk <jwilk@jwilk.net> wrote:
>
> * Michael Kerrisk (man-pages) <mtk.manpages@gmail.com>, 2020-04-20, 08:12:
> >># FIXME: inconsistant formatting/markup (compared to previous entries)
> >>
> >>"B<pid_t getpgrp(pid_t >I<pid>B<);\\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ > /* BSD "
> >>"version */"
> >
> >I need more context here. I can't see the problem.
>
> I think it's about comment indentation:
> for the BSD functions, it's done with escaped spaces:
>
>    .BI "pid_t getpgrp(pid_t " pid ");\ \ \ \ \ \ \ \ \ \ \ "
>    /* BSD version */
>
> whereas for the other functions, plain spaces are used:
>
>    .BR "pid_t getpgrp(void);" "                 /* POSIX.1 version */"

D'oh! What idiot formatted things like tha... ohhhh....

> While we can't just remove backslashes, we could do something like this:
>
>    .BI "pid_t getpgrp(pid_t " pid ");\fR            /* BSD version */"
>
> This is more readable IMO, and should make translators happy. :)

Agreed. Changed as you suggest.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
