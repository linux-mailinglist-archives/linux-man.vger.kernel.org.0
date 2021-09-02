Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 15ECB3FE8AF
	for <lists+linux-man@lfdr.de>; Thu,  2 Sep 2021 07:22:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229601AbhIBFXo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 2 Sep 2021 01:23:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36200 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229459AbhIBFXn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 2 Sep 2021 01:23:43 -0400
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A3CDC061575
        for <linux-man@vger.kernel.org>; Wed,  1 Sep 2021 22:22:46 -0700 (PDT)
Received: by mail-ot1-x332.google.com with SMTP id v33-20020a0568300921b0290517cd06302dso1060705ott.13
        for <linux-man@vger.kernel.org>; Wed, 01 Sep 2021 22:22:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=ichoIRfnWJY5MQ7kG0ioHvUBAa41/njtctNZgiGMHXI=;
        b=hHdEiqMZIwXXivtiaTXMYnzpV+HxzjZX/3F9nvnw+B3XpDRdFtnnWVg5uSfFc37p5O
         6QQvyGYvSyg/v6qDYD5227b5h4zZL0wu1OO+SDBMs+dnJsJriNl9YjZfDknTMuYPuqGo
         5jPlDcYU+QRBKpVIMjoYiHyv15laVAtmTZmLaURN+QCXFasY34BAQiC5mmXhEndJ8yNS
         bNz3455tXyrut26WuS2hSRG77JK2oW744zRryNTWml193aHJBZiX1K76D1Ma2ot386Iy
         eEnTqEUrI2brIyN+yrB1dKl+FfOiPjoPhvMPfk72rJVEqHtjKI+AHOxB34Z6ZONCzsgV
         F1pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=ichoIRfnWJY5MQ7kG0ioHvUBAa41/njtctNZgiGMHXI=;
        b=RBY1YytV3PA9AeHceA2zWiJnjNwcXGnuiSu8kl1CR6LMb6mci9h4MCkcAiPsCRe2ff
         AQUA/Trahh6W2ckecLVr/3eeqiQsyFLnMD1aX3p4GEsWce2D+TxXdN3in3JkNYkk1uuz
         5iQskf1t4elOxpEanrTBzFPLWQPGXHdYEzUKecOa6BcLMmeP+Oq7Cn9P/JXlnn8xcCu+
         kcKfkCx7R126QsyGFufKP2/H5iasqYgeUCUvWgTQLvuRDh+4AZxALEWHGGhktCrhMWo/
         0RXnMZ8FsdoX1VnDgZ10S51txfXE5VJysG1vU3o44xAlftZimd/cLoLtCtxVdtM5QDDk
         Zttw==
X-Gm-Message-State: AOAM5310f04EEEAmUXVR70wp8MyySQJjdywiJRrCSf26HNxks799wmS4
        TQy8R8aSyHC1U0+k8lhI2p5bBMNnlt6yW7MYPxY=
X-Google-Smtp-Source: ABdhPJwaqG+hV0be5R3CKES69fSKuIksihfW34llfu78nweUpLKa9HQZtLqRQkkIVIobWlBKxDYy4dLk+zyis0Z7EI4=
X-Received: by 2002:a05:6830:438d:: with SMTP id s13mr1087038otv.308.1630560165421;
 Wed, 01 Sep 2021 22:22:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAKgNAkjv2vVDU+z4ActGqo8gcZekCnZFRVESz_hhNjdPvbV96w@mail.gmail.com>
 <87lf4im6sf.fsf@oldenburg.str.redhat.com> <03f3b96f-1dd4-e9cb-2f24-7fc8ae7252bc@cs.ucla.edu>
 <CAKgNAki2zUjpw8BJDvmAN_8ZAMsBZx_dYn8RM4+KDefFbQq7UQ@mail.gmail.com> <f89632f5-432f-9f7e-97e4-7de3595be0e8@cs.ucla.edu>
In-Reply-To: <f89632f5-432f-9f7e-97e4-7de3595be0e8@cs.ucla.edu>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Thu, 2 Sep 2021 07:22:00 +0200
Message-ID: <CAKgNAkiQ7TUkmwyPGh5eotAZsgawy1d5NdDf17U=5Z5TgWWccA@mail.gmail.com>
Subject: Re: Adding a realloc() usage note to the malloc(3) manual page
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     Florian Weimer <fweimer@redhat.com>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Paul,

On Thu, 2 Sept 2021 at 03:23, Paul Eggert <eggert@cs.ucla.edu> wrote:
>
> On 9/1/21 5:21 PM, Michael Kerrisk (man-pages) wrote:
> > Obviously, '*ptr' is invalid after a
> > successful realloc(). But why is 'ptr' invalid?
>
> The C standard says that once a program has freed a non-null pointer,
> the program cannot look at the pointer's value any more. It can't copy
> the value to another pointer, and it can't even test whether the value
> is null. A debugging implementation can trap any use of the pointer's value.

Thanks. I wondered if it was something like that, but there was
nothing obvious in the specification for free().

But, just to confirm, I suppose that you are talking about this
sentence (which I did finally discover) from Section 6.2.4 ("Storage
durations of objects") in the C11 standard:

[[
The value of a pointer becomes indeterminate when the object it points
to (or just past) reaches the end of its lifetime.
]]

?

> This rule is not an issue for production uses of glibc realloc. However,
> it could at least in theory affect debugging implementations like gcc
> -fsanitize=address, because the rule can help catch bugs in programs.
> And I vaguely recall talk that a few non-glibc platforms (IBM i,
> perhaps?) enforce the rule.

Thanks for the background.

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
