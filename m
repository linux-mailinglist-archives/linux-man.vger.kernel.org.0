Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 902813B7CFC
	for <lists+linux-man@lfdr.de>; Wed, 30 Jun 2021 07:23:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229572AbhF3FZh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Jun 2021 01:25:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229510AbhF3FZg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Jun 2021 01:25:36 -0400
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com [IPv6:2607:f8b0:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83B32C061766
        for <linux-man@vger.kernel.org>; Tue, 29 Jun 2021 22:23:08 -0700 (PDT)
Received: by mail-pg1-x529.google.com with SMTP id d12so1076450pgd.9
        for <linux-man@vger.kernel.org>; Tue, 29 Jun 2021 22:23:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=OkgX/l6nyVHOkHtVICWEWlZsAs77Eh7E8vZnP+04cZU=;
        b=Ozuu7aPncD/CMLJza+F4JwA5PsKvNqi55YrM7STSKGqVfTpUR6pNiqkih8C4Yej/UI
         pX+laWJdYLjpLb9flbG3+U2C2Ptmg+Az4aAgDQyct0uzw/FYqXma79YGfBZ+XB5d0fJG
         dq5rXy7x0hVB2s2mU6bck5fQekMMTukz/ufvc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=OkgX/l6nyVHOkHtVICWEWlZsAs77Eh7E8vZnP+04cZU=;
        b=MhJDH2XQ3ThJXG+0XOmApnRa+PUk/pXQfOu3VCoBkVBxE4lX2htCdKzvBFtTX7ym8A
         JQFMUFUjj6hu5i3mwVJvF3v9ygPkHRI2uVlsVp/SHrtnF8bz09oSAfiq9l4npS6ExQ4f
         gxzv85DzGM6MCbnLvSzboDcOjWAfM4sbNTClwFbf9N7f9N4KFv9Ek3+/vaQif6vLc6AI
         +SOOTfqfr9ZY6a0fUVlJXJo1T1WA6uM1awA3JbWu+1UoVdi2KLdti6Xh2sZXdKGOz3ju
         tCGb+F3raihODEioG2NepCgVVMfRHugIv+mXbPcmAci99rnB3IPQpZfW+8Su4Af0MOh2
         YjvA==
X-Gm-Message-State: AOAM533Lkjb/zAnC3L6qd0Y58cojn1TG8zGO8R7pzJqYvqbGLN440qCK
        QP2bu1F6zMzBxGT2Q5UPsEHgZA==
X-Google-Smtp-Source: ABdhPJwDqkm3t0Zwuy34uTWGsjAywlzfUwSe78RbVnfvHZrGSmFPSQRG5iMuesZvQ5sZ2hfjRRaV2Q==
X-Received: by 2002:a62:380c:0:b029:2f7:4057:c3ed with SMTP id f12-20020a62380c0000b02902f74057c3edmr34233852pfa.21.1625030588089;
        Tue, 29 Jun 2021 22:23:08 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q18sm20087789pfj.178.2021.06.29.22.23.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Jun 2021 22:23:07 -0700 (PDT)
Date:   Tue, 29 Jun 2021 22:23:06 -0700
From:   Kees Cook <keescook@chromium.org>
To:     "Eric W. Biederman" <ebiederm@xmission.com>
Cc:     linux-api@vger.kernel.org, Andy Lutomirski <luto@amacapital.net>,
        Will Drewry <wad@chromium.org>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Al Viro <viro@zeniv.linux.org.uk>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: Semantics of SECCOMP_MODE_STRICT?
Message-ID: <202106292156.9458CF22@keescook>
References: <87r1gkp9i7.fsf@disp2133>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87r1gkp9i7.fsf@disp2133>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Jun 29, 2021 at 05:54:24PM -0500, Eric W. Biederman wrote:
> 
> I am the process of cleaning up the process exit path in the kernel, and
> as part of that I am looking at the callers of do_exit.  A very
> interesting one is __seccure_computing_strict.
> 
> Looking at the code is very clear that if a system call is attempted
> that is not in the table the thread attempting to execute that system
> call is terminated.
> 
> Reading the man page for seccomp it says that the process is delivered
> SIGKILL.
> 
> The practical difference is what happens for multi-threaded
> applications.
> 
> What are the desired semantics for a multi-threaded application if one
> thread attempts to use a unsupported system call?  Should the thread be
> terminated or the entire application?
> 
> Do we need to fix the kernel, or do we need to fix the manpages?

I don't know of anyone actually using SECCOMP_MODE_STRICT, but the
original implementation was (perhaps accidentally) thread-killing. It
turns out this is not a particularly desirable situation, and when
SECCOMP_MODE_FILTER was created, it continued with that semantic,
but later grew a process-killing flags, as that's what most programs
actually wanted.

It's likely the manpage needs fixing (we had to make similar updates
for SECCOMP_MODE_FILTER), since some of the early examples of using
SECCOMP_MODE_STRICT were basically "fork, calculate, write result to
fd, exit".

FWIW the seccomp selftests don't even check for the thread-vs-process
SIGKILL of SECCOMP_MODE_STRICT. :)

-- 
Kees Cook
