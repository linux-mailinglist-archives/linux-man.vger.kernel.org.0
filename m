Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 72C762813EA
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 15:19:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387845AbgJBNTt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 09:19:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726176AbgJBNTt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 09:19:49 -0400
Received: from mail-il1-x142.google.com (mail-il1-x142.google.com [IPv6:2607:f8b0:4864:20::142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9727C0613D0
        for <linux-man@vger.kernel.org>; Fri,  2 Oct 2020 06:19:48 -0700 (PDT)
Received: by mail-il1-x142.google.com with SMTP id e5so1186363ils.10
        for <linux-man@vger.kernel.org>; Fri, 02 Oct 2020 06:19:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=c4EMSgKsEa1VfOLgdiXAIx0EYhfFfhqdmTR1iKp1ODA=;
        b=PAHjbIiuWYv/eU/GrWzW3ASamIHL12dbBdlmcoJZ6iIH7bp/s5bF+9mwB71Sq++9q1
         jE2MqmrlXMtMGmpfrIWtYI+jI3MZBmK4YIdzkLjkGrrVUaNO/V1NGkVs1l25Oo1mtw7X
         Z7WYK+5seEYM+l0lQh9OmUQfHUFd5AeehUY+p9pnljZTtD9KUYwaZezyDDKL5nLxRa/D
         QswONnAqNyYHzY+NJBbcATKQ805j6NglxSY8J+e6G7CkJ/WI5VduzDW5FoRbEcTgB+AG
         ZPIXEyZQGZ/js7yaGkBNNqCvO8xU0oUpWpbb9ayL2VERRdzoSE9RDmeOd8olEDB9vWZF
         rZqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=c4EMSgKsEa1VfOLgdiXAIx0EYhfFfhqdmTR1iKp1ODA=;
        b=sj/jqdASuz4u3aYa5LpRqJJIupcEHKuKPhNBiFCg5wMfPPK8cU28dw2vT314nAvTuG
         6THfxByA0Apouw6SInr1c7L9G9wLfOvhupqs3+meXszrqQWNUCf0A3XN05s3bm/HkmTL
         UWn3r2qXybLNwW1tGOzlit4l00LuSwkZfA2ccTjJWE3/r/o995E5oepBy6Fub8+9RaSU
         J8coCLVK0MG575rhza9s5uKQ6H5N1fzpds6fepWlqINM3zwvXMqgHQ2bbx9aUJ+iCW21
         E5Dkat6PYzYV6bvKeDDAnufixCZbPcrXgi6M0Yqplsi2PQSa7I/chZGslpa2ILnRsy8E
         G+Pg==
X-Gm-Message-State: AOAM533DyCi++uhl9onm19F1cZinTxJhWfQvp3BSPyVNnNIX2JeWLxH/
        0UNeAmFydq2uOviwy9G+8iVkAQAX9zAvpKyuI8AH6dagV9Y=
X-Google-Smtp-Source: ABdhPJwN8vJHXJ26HVLzeGLOIAGOFVTgCb+D8goY8qma9ZOqtznswLaJzjoM5xHeAOfw/XjDTnCPuelYckkrgeMotwc=
X-Received: by 2002:a05:6e02:e87:: with SMTP id t7mr1781692ilj.261.1601644788202;
 Fri, 02 Oct 2020 06:19:48 -0700 (PDT)
MIME-Version: 1.0
References: <20201001150638.102544-1-colomar.6.4.3@gmail.com>
 <71c5f264-38f4-18ee-fe96-39aad08c3369@gmail.com> <41affebd-3354-9420-0048-bffd14535e95@gmail.com>
In-Reply-To: <41affebd-3354-9420-0048-bffd14535e95@gmail.com>
From:   Jonathan Wakely <jwakely.gcc@gmail.com>
Date:   Fri, 2 Oct 2020 14:19:37 +0100
Message-ID: <CAH6eHdQhh46TjVc72meWFTWCi7iouAod0iC1zLRga+c-36G+ig@mail.gmail.com>
Subject: Re: [PATCH 0/2] Document void *
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>,
        "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, 1 Oct 2020 at 16:51, Alejandro Colomar via Gcc <gcc@gcc.gnu.org> wrote:
>
> Hi Michael,
>
> On 2020-10-01 17:34, Michael Kerrisk (man-pages) wrote:
> > Hello Alex,
> >
> > On 10/1/20 5:06 PM, Alejandro Colomar wrote:
> >> Hello Michael,
> >>
> >> This type is very special,
> >> so I will probably have missed some details about it.
> >
> > I do wonder if we actually need this in page at all, and given:
>
>
> I think it should be.
> I would also document 'void', even if it's a bit weird...
> They are very useful, so why not document them?

Because the man-pages are not a tutorial for the C language.

"The Linux man-pages project documents the Linux kernel and C library
interfaces that are employed by user-space programs."

void and void* are not APIs.
