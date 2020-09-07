Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 34A7F25F65D
	for <lists+linux-man@lfdr.de>; Mon,  7 Sep 2020 11:21:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728300AbgIGJVn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Sep 2020 05:21:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728034AbgIGJVl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Sep 2020 05:21:41 -0400
Received: from mail-oo1-xc43.google.com (mail-oo1-xc43.google.com [IPv6:2607:f8b0:4864:20::c43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5593AC061573
        for <linux-man@vger.kernel.org>; Mon,  7 Sep 2020 02:21:41 -0700 (PDT)
Received: by mail-oo1-xc43.google.com with SMTP id q34so766614ooi.13
        for <linux-man@vger.kernel.org>; Mon, 07 Sep 2020 02:21:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=Ee52l0X5xJOWNBQGfug6kQPaIyim7BHiMq1ljVZLtwo=;
        b=tbvLrBzBiL6QV0PHbW7G+rYYNpG4KVPpdyW1ZuLKYjTacIHtdCYH0EHWhXwBNZJ2yr
         AN4D7OrWLwlNtbZbMUG515+3BCw0S14W6KbipTTeLYdLhfOMjSTtm7apUhvQgVHLzDm7
         UOXVyFoFdyeXaTas1+r4qd9P1Mp4n9AXkUd5DXYUivkiLnNZ99A3RBFi9ev1j6y5pmIk
         aHnE3uGhk+hY+kXxA9hFFQObNFb4zQ1+U3Wd2jsSiKAOEX5EHkMz/Do3+TB9pTuFFgh2
         LdmUGp3wSnoGHwkKnR+/BcBb7CuVMtZe7Syx3b3MZL8weNtfBPFLKmZv2g0DthInGEzk
         VJ/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=Ee52l0X5xJOWNBQGfug6kQPaIyim7BHiMq1ljVZLtwo=;
        b=oSYO3w2MyInqVCBd8TdBUnlhf61xSq7cP+8VuHJkDwXx5Pwh1kihJiyx3H4Vk510Nu
         owZvGmovxePu6cWcZYEu+KKdDG8SpZkJw0HebHtggeJma0uVbm8UJMU7iGdZ+vxgKknp
         wGP9LEKPEBeLcfOUIrkeRu4/s+ianoCtfuzp3lY1l1QBs/OZqSEbtGEfZ33VR2/KJt9M
         O5xQxBPLWZgsXT6h8XxjvPg9RaRrBtHPK++AnL/PlldDo7RbZYGsAKpzh7waLezY5IKf
         vwYaBDRAG8wx9zDAkniSpIyTVTwIYD/2/P/g6LQvwmG/QU4WZQom+BXs6GokCM9UUHsd
         Odtg==
X-Gm-Message-State: AOAM532caaPHcQWT+7w3dN65aXAiTSPLrEsY7ATgEVJj8zSM5/Qu9rEh
        +xaVbujEG2s9VHBqPohLUt98GsxPXq0857/zy5w=
X-Google-Smtp-Source: ABdhPJw29ePp5cb1+6lxc7ZtRm4N7dSFOasYEx4C+OlBBnkDWZGFiB+UuqGsV0A/2JfRMa7dNkYafUC+PbjkIcESXW4=
X-Received: by 2002:a4a:8dd5:: with SMTP id a21mr14238442ool.17.1599470500683;
 Mon, 07 Sep 2020 02:21:40 -0700 (PDT)
MIME-Version: 1.0
References: <486f9d85-2828-2b60-990c-3499b2a89559@gmail.com>
In-Reply-To: <486f9d85-2828-2b60-990c-3499b2a89559@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 7 Sep 2020 11:21:29 +0200
Message-ID: <CAKgNAkjr1jasB7Hfjd7eeyGCGCeXmD19=nTOruGUL48Ke-Xkcg@mail.gmail.com>
Subject: Re: Bug or misdocumented feature in pthread_setaffinity_np.3
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Mon, 7 Sep 2020 at 11:00, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>
> Hello Michael,
>
> pthread_setaffinity_np() and pthread_getaffinity_np(), "on error, return
> a non-zero error number".  Usually that kind of library functions return
> -1, and I don't know if this case is different.  The RETURN VALUE
> section doesn't specify. Actually the words "error number" hint that it
> is an `errno` value, because it's the same words in errno.3, but it
> could be clearer, and maybe also point to errno(3) in that page.

All of the pthreads APIs do this: return 0 on success, or an
errno-style error number on failure.
>
> In the EXAMPLES section, however, the return value is used as if it were
> an `errno` value, printing the corresponding string with perror().
>
> Is that example printing random strings (a bug)?

No, it's correct :-).

> Or is it that those functions return an error code that corresponds to a
> valid `errno` error number?  In that case it could be documented better
> IMHO.

Yes, probably you are right. The thing is, when you use pthreads you
have to know they are different from the conventional APIs. The
pthreads(7) page hints at this:

       Most  pthreads  functions return 0 on success, and an error number
       on failure.  Note that the pthreads functions do  not  set  errno.

> If that is the case, do those functions set `errno` and also return that
> same `errno` value redundantly?

No, they don't use errno at all.

So, I exp[anded the text in pthreads(7), to make the point more explicit:

       Most  pthreads  functions return 0 on success, and an error number
       on failure.  The error numbers that can be returned have the  same
       meaning  as  the  error  numbers returned in errno by conventional
       system calls and C library  functions.   Note  that  the  pthreads
       functions  do  not  set errno.

Note that the various pthreads manual pages (should) all refer to
pthreads(7) in SEE ALSO. I'm reluctant to add a note like this to
every pthreads page, since it seems verbose, but I have also added
this note to errno(3):

       Note  that  the  POSIX  threads  APIs  do  not set errno on error.
       Instead, on failure they return an error number  as  the  function
       result.   These  error numbers have the same meanings as the error
       numbers returned in errno by other APIs.

Perhaps that suffices for you?

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
