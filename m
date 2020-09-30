Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EF8A027F614
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 01:40:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731819AbgI3Xj6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Sep 2020 19:39:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730424AbgI3Xj6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Sep 2020 19:39:58 -0400
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com [IPv6:2607:f8b0:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 370C8C061755
        for <linux-man@vger.kernel.org>; Wed, 30 Sep 2020 16:39:58 -0700 (PDT)
Received: by mail-pg1-x533.google.com with SMTP id m34so2315467pgl.9
        for <linux-man@vger.kernel.org>; Wed, 30 Sep 2020 16:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=2SYnU6v3oYukgTaFaNXeSl70n5vT6dh4JdPhOcC+8tg=;
        b=VcrLyK8wd1YNEoEWQO1ETxp/ZpFdndf0Wn9IS/g8DF0Ee8PrUlTweuExL+J+4UveTt
         w/fw16Rtl+RQJ2aZZix8mnKbuiNc2DhbHWyKMUF6TR7KSyq1pOWNX40rF0hOESH412SO
         3stnOYszARI3yHzCOhIuv8Z4vSibAzlmf2acY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=2SYnU6v3oYukgTaFaNXeSl70n5vT6dh4JdPhOcC+8tg=;
        b=HZ5uT09PyFr+I2h0fXfVOdqNcxHOE15cUiuw001gZXyyncWTp/fGK2Jk4jhCQ74vBY
         TdsxoEgXU2cdOLvnVEDM9re/QvMRvdjsOoMNolQ1PmzS/kWmXn5q9TPW0Ief7Sfi/dgA
         cEXffbHBaVI3EDa93lkjGHPsNc6RfQHONJwZyaYx76BT1b3/qMm2Mw/xjsg7zgcoaAvQ
         sWwZcfwXXjHbTFwT1Pr3bmzWGwX2E86UheJ2z2shHaqNaWxyknugGDRFO06Ipaprgl9o
         JqY7KtdmvQSg6sZozDHtRyNU5H7Kz4tHZdhAiUHhIbaNwrDEBxLjYLVlLKsYqPI+OoCk
         59gA==
X-Gm-Message-State: AOAM533j/2t3erZ+PsnaFih7iNGm3GXrwCmuqwi2yB/HqrNusIYCMQiW
        085iUl0gc3BuB+XoG1DSu9lpQA==
X-Google-Smtp-Source: ABdhPJyFwc3ugp2XFqXW0tVKhPDF858qVZdH+Z14wkvfqCD1QYK4zPVuxZsn9UlnreLBhlFB11X6kg==
X-Received: by 2002:a17:902:8c8b:b029:d2:6356:8b43 with SMTP id t11-20020a1709028c8bb02900d263568b43mr4617767plo.34.1601509197774;
        Wed, 30 Sep 2020 16:39:57 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id j9sm3322670pfc.175.2020.09.30.16.39.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 16:39:56 -0700 (PDT)
Date:   Wed, 30 Sep 2020 16:39:55 -0700
From:   Kees Cook <keescook@chromium.org>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Tycho Andersen <tycho@tycho.pizza>,
        Sargun Dhillon <sargun@sargun.me>,
        Christian Brauner <christian@brauner.io>,
        linux-man <linux-man@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Aleksa Sarai <cyphar@cyphar.com>, Jann Horn <jannh@google.com>,
        Alexei Starovoitov <ast@kernel.org>, wad@chromium.org,
        bpf@vger.kernel.org, Song Liu <songliubraving@fb.com>,
        Daniel Borkmann <daniel@iogearbox.net>,
        Andy Lutomirski <luto@amacapital.net>,
        Linux Containers <containers@lists.linux-foundation.org>,
        Giuseppe Scrivano <gscrivan@redhat.com>,
        Robert Sesek <rsesek@google.com>
Subject: Re: For review: seccomp_user_notif(2) manual page
Message-ID: <202009301632.9C6A850272@keescook>
References: <45f07f17-18b6-d187-0914-6f341fe90857@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <45f07f17-18b6-d187-0914-6f341fe90857@gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Sep 30, 2020 at 01:07:38PM +0200, Michael Kerrisk (man-pages) wrote:
> [...] I did :-)

Yay! Thank you!

> [...]
>    Overview
>        In conventional usage of a seccomp filter, the decision about how
>        to  treat  a particular system call is made by the filter itself.
>        The user-space notification mechanism allows the handling of  the
>        system  call  to  instead  be handed off to a user-space process.
>        The advantages of doing this are that, by contrast with the  sec‐
>        comp  filter,  which  is  running on a virtual machine inside the
>        kernel, the user-space process has access to information that  is
>        unavailable to the seccomp filter and it can perform actions that
>        can't be performed from the seccomp filter.

I might clarify a bit with something like (though maybe the
target/supervisor paragraph needs to be moved to the start):

	This is used for performing syscalls on behalf of the target,
	rather than having the supervisor make security policy decisions
	about the syscall, which would be inherently race-prone. The
	target's syscall should either be handled by the supervisor or
	allowed to continue normally in the kernel (where standard security
	policies will be applied).

I'll comment more later, but I've run out of time today and I didn't see
anyone mention this detail yet in the existing threads... :)

-- 
Kees Cook
