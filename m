Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 096191B3273
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2020 00:04:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725987AbgDUWEm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Apr 2020 18:04:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725850AbgDUWEl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Apr 2020 18:04:41 -0400
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com [IPv6:2607:f8b0:4864:20::730])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADF36C0610D5
        for <linux-man@vger.kernel.org>; Tue, 21 Apr 2020 15:04:41 -0700 (PDT)
Received: by mail-qk1-x730.google.com with SMTP id l78so391181qke.7
        for <linux-man@vger.kernel.org>; Tue, 21 Apr 2020 15:04:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2XR1vtlBYqVd4mHcfbS2j519Gfl6UyxCHzqrYHs+5Ig=;
        b=EWENE0sv7h7nXwY7NgT/rhpQaSxHT7ELAxoQKNpmAL/RoiET+seuIMSJTuflIpRLiS
         byaCgm3GnZ2c8/yOEljLgWYKm9OW6HFOsvBZ3FvVgjvAtFUbgvZyQPslnTiWZQ67TDb2
         n6c9OxbKolTDX1PL32UQb1PIpVwiYaIhHMrN+Pb0sc8zKeb84o+VNTjm16Wc2/5X8ODe
         /quEouTYDQ/MvTwFigyeQpJWdnjJ9rb1EzZud1dNc3v1TAQ79LgKMCU0qQvkLhhvp8G1
         vhOlunsssyupFdaT4b0/DAlmpZ1VpikkcDgiZ4tyAZxAYNjFxOfixq7LumxjujOEM4yu
         UTCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2XR1vtlBYqVd4mHcfbS2j519Gfl6UyxCHzqrYHs+5Ig=;
        b=hT5JEfaBe2JG4zIhZs2xxjnZsFochou17sSypxv/tHarTfGEDo7Fk0h523RfogEoPM
         D14dERcckIsFfssHmoedcXNcKOyrOMX0WbY30tuiDYedsM458WDYkYqT9pnErs4jI/UI
         I/fEuXndD78AwXRls9sqFJKN9n3kDNjC3Z5te8DtXSzLjoVXaPWzAzZgmyfi4Yil7z3S
         tGBGhXGv1njLXwL0Ahm6NvD0hrsoT/9EaUPev9ZSFntBKzU/MfUWzFJWWk3NmxiHNkJ+
         kqGUoYQlSUY0CY1bgUnN2L/+nBfwu5pMhJn1IY5jBzcSGQj/1SWZgAHdQOhfXjyQvmlN
         7X7g==
X-Gm-Message-State: AGi0PubphFEF3/roUqVELNSnffnH4zBpyBYv+wPVno1aT3nDb3agCCo2
        rUnpmxyeNLG9HiAYaYskYUkXBYbJQm4ACtvkvNo=
X-Google-Smtp-Source: APiQypIEKCZnRLFUWNRZKDM0VUCihU7VFTzgrLiHTujXZp3WO97cs8dNzMPUNfJRHpwM16Spea4thLVBVk7VJoSWGNw=
X-Received: by 2002:a37:a955:: with SMTP id s82mr24240310qke.45.1587506680938;
 Tue, 21 Apr 2020 15:04:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAFLxGvxhdUtYudCzxJrVs7np5Aby1o9cXEDp5C9rw2kS74pDkQ@mail.gmail.com>
 <871rogpld6.fsf@mid.deneb.enyo.de>
In-Reply-To: <871rogpld6.fsf@mid.deneb.enyo.de>
From:   Richard Weinberger <richard.weinberger@gmail.com>
Date:   Wed, 22 Apr 2020 00:04:29 +0200
Message-ID: <CAFLxGvxDd8LBW1RLc4hu-sty1_9q0fB0Uo_QMbQ6j+dKT2QmaQ@mail.gmail.com>
Subject: Re: Clarification of pthread_cleanup_push() needed
To:     Florian Weimer <fw@deneb.enyo.de>
Cc:     Richard Weinberger via Libc-help <libc-help@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Apr 21, 2020 at 11:41 PM Florian Weimer <fw@deneb.enyo.de> wrote:
>
> * Richard Weinberger via Libc-help:
>
> > But NPTL implements thread cancellation with signals, if I'm not
> > completely mistaken the cleanup routine will run in signal context
> > then.
>
> Deferred cancellation only occurs in signal context if the
> cancellation is acted upon from within a signal handler.  For the
> signal handler case, whether cancellation handlers are restricted to
> async-signal-safe function calls depends on the type of signal (some
> are synchronous, not asynchronous) and what is interrupted by the
> signal (for asynchronous signals).
>
> Asynchronous cancellation has even more constraints than asynchronous
> signal safety, but it is rarely used.

I should have noted that I'm using asynchronous cancellation.
Which constraints are these?

-- 
Thanks,
//richard
