Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 55F693753DB
	for <lists+linux-man@lfdr.de>; Thu,  6 May 2021 14:29:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229854AbhEFMai (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 6 May 2021 08:30:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229777AbhEFMai (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 6 May 2021 08:30:38 -0400
Received: from mail-ua1-x92e.google.com (mail-ua1-x92e.google.com [IPv6:2607:f8b0:4864:20::92e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04786C061574
        for <linux-man@vger.kernel.org>; Thu,  6 May 2021 05:29:40 -0700 (PDT)
Received: by mail-ua1-x92e.google.com with SMTP id a12so1643917uak.6
        for <linux-man@vger.kernel.org>; Thu, 06 May 2021 05:29:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GvDuiiwEiNbXZT6QIoFJ5Ha5KpSTKjThRqoVDFCYd1s=;
        b=byxKRUkh30sH92J4ku6OcS5uQPXfOLCmQNbyIyvbC15XkSjiq53fPbNTLy3KADUBxa
         Ln12T5iydPq0vqk6XDWcCy5AHd6bLR7nxbmEGg3lOzDPPgtPeiwE8O4HFMe/WkQLV9mr
         0CVlww4h4X/7NdsINNO15P7goARsIQFgV3AqWgbAZGSQkogEsjpO9VvZ3E3wNFZve/Wk
         LlZQ+be0T0WuS7KDV0K6D4cNBUFjzBWYvI2iRxl6fWukfvRFE3tekz4e168jGoWUNZZq
         xF0sUnYY4vyb7T/t4UDAtTVrvIdNp9OocQssMDu99cJ6gABgvbkW7hYfMtkQRnOsZO/a
         U/5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GvDuiiwEiNbXZT6QIoFJ5Ha5KpSTKjThRqoVDFCYd1s=;
        b=QazzYG0fC65EjIu9OIttUAsAPsqtvXkEwxr6W8FHwCIpdn1DyPeallXhAxoRjfrX5g
         4HYguYT99G40c1HeUthl37u0QSZMG1Tj2ed4EmG5dWSyFcKvGMfbU1NcEIxkIRYXF5oP
         P0MHHfllsjbLKGGfEY6bhExi4qhgJC1oHDJMiBRplyzp/iNxg6BPLQR6SqUZJu8UMCvC
         aAHxVgu2r2w0F6ZYwoHqs6sjZlwJBWDepG8CYmj5eNz6Xr5YjFHGzWkLWmvxhZGnf4fs
         d5RHGjmozP7X2XLsdYZdrZb+Pq0SWDBdaF/FmMsSLM+6q+5glowhBMOGvRwLr9KdAiCe
         jYMw==
X-Gm-Message-State: AOAM530mj/ikHb/DD3ojMkUswi9R/WwN2jSY/vGr6VuZb2N8uilAlbwW
        nMalZUahzUR7L0pREPX6KUVxTznDTYiGhbtOQvI=
X-Google-Smtp-Source: ABdhPJx5c3zb1Mr80eRoFCeCd84n+DWRqeoEulhU5Y7KywWMddP/ZM0U+sDjxTcHdyqJJHjh9MhNpTK4sVgtYF7j36Y=
X-Received: by 2002:a9f:2334:: with SMTP id 49mr3149928uae.69.1620304178456;
 Thu, 06 May 2021 05:29:38 -0700 (PDT)
MIME-Version: 1.0
References: <CALhU9tkuovaHEhB6u6iL=V7+B51FYWEuBgRuekSojiibXnUzOw@mail.gmail.com>
 <cf2e3ee0-1ecc-8eb2-cd1e-df2568aefe8e@gmail.com> <CALhU9tmOLL=JuYLpDD7OCEK9+mSfq5DvWLaMVSQKZA3x9j18FA@mail.gmail.com>
 <b7e3e750-70fe-ef9b-9d87-23f3a4257045@gmail.com>
In-Reply-To: <b7e3e750-70fe-ef9b-9d87-23f3a4257045@gmail.com>
From:   Akihiro Motoki <amotoki@gmail.com>
Date:   Thu, 6 May 2021 21:30:56 +0900
Message-ID: <CALhU9tkJwz5a5gXP5tKdQHXFzzRvh743cpNnE92H75gn9GG84Q@mail.gmail.com>
Subject: Re: [patch] fanotify.7: ffix
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Sorry for the inconvenience.
In this case, my mailer automatically wrapped long lines.
Thanks for pointing this out.
I will check my mailer configuration and also try the direct usage of
"git" command.

Thanks,
Akihiro

On Thu, May 6, 2021 at 9:16 PM Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
>
> Hi Akihiro,
>
> On 5/6/21 2:04 PM, Akihiro Motoki wrote:
> > I just posted an output of "git diff". Is the output of git am preferred?
>
> The preferred way is using `git send-mail` (after `git format-patch`).
> Nevertheless, could you please tell me how to apply those patches?  I
> tried `git am` and `git apply`, and both failed.  I don't know if
> they're malformed due to the mailer, or if I just don't know how to
> apply them.
>
> Thanks,
>
> Alex
>
> --
> Alejandro Colomar
> Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
> http://www.alejandro-colomar.es/
