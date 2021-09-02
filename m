Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 719093FE89D
	for <lists+linux-man@lfdr.de>; Thu,  2 Sep 2021 06:53:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229469AbhIBEyR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 2 Sep 2021 00:54:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229459AbhIBEyQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 2 Sep 2021 00:54:16 -0400
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com [IPv6:2607:f8b0:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEBF9C061575
        for <linux-man@vger.kernel.org>; Wed,  1 Sep 2021 21:53:18 -0700 (PDT)
Received: by mail-il1-x12a.google.com with SMTP id h29so536169ila.2
        for <linux-man@vger.kernel.org>; Wed, 01 Sep 2021 21:53:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/BoT9B39iwTX7XFPoB6+ABsnZ9DPt9druBjrzwwFnAM=;
        b=O2NqzlnN+SbP7TbewBHU3JMg8soa3b5EMVD1Aljk3tskHngVKZyDr4tBg1+zMyQ0lK
         hK40xF//MtzCuA4BE/5huzF63lNhSvtdWg0qzasIW8p6TwGLpppkXwf5DiFNN0/RL8d7
         GFAR34R8cEJ0aMKJwH8X+URPGDs0sGkMkiTD7lvdH3G9o59PL9N4UnO95XHlOu+YUgou
         hxLCdNmbk9vhw7y+ENl+GiIWzw7pLlwK5fHc9if/yeNs4t3UG8KlHDXJafpP67iStMoL
         nlT0Zd6D0B0NupjkRndsLKQ3BFhC6Zk8Ko18YPX7pHJZ9jy3hTAM3YD+QogJNZpmj/2u
         1IHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/BoT9B39iwTX7XFPoB6+ABsnZ9DPt9druBjrzwwFnAM=;
        b=mHsmNNmncbBEDk4okc7nHaMNMHsWEaT2K6kjzAQlrXo3ElhY7R4fcXdkODiXOArc+g
         /OK26t0XgRDnWzv9eruBszP33bwfp7Ns+IsejZfSRiOhXyz+6DAieUWshLPN4UG2hu/n
         VdjSSw1RTvCwtlZTlByD9XxXq9c2UdR4lWwXY7IkmiY6PeeNVARtQn7z6m7PbGJLPghe
         ceLWA+UWhqJ358rZIZlewfKcNBZK35ClkXBBGFpNMsX3zAw9oMtqHkpLb6CxZMbdeyk/
         elEB2WFauVCVeL7ZlFk5Qko71bkz1XJKNT9tUQfcyPBK44Jv2BXabv/ochNvEYg0WelV
         wZkg==
X-Gm-Message-State: AOAM531mXvCu1vtsIq0xklMo7rAsOUaVRhv/zcQwON3fGtr7jMuvjsLM
        ZyFF0Lafo3ir6ca+a/ItYeFdkUCzkoABxn9xk85S0Ym9t9M=
X-Google-Smtp-Source: ABdhPJxKXiNnC6lmZC8rze1MuCMHj0KkMucN9HEfj6rkyZCjGXGwVwRdxcA2b7k2CsFUcH4/pFT52tRCEPQ4rbhcwzE=
X-Received: by 2002:a05:6e02:10d0:: with SMTP id s16mr960306ilj.275.1630558398268;
 Wed, 01 Sep 2021 21:53:18 -0700 (PDT)
MIME-Version: 1.0
References: <20210318160817.3586288-1-amir73il@gmail.com> <CAOQ4uxjxqavy=E7NAO-E3kCe_q4E087iXtTZgtvj4YLjLdzbmw@mail.gmail.com>
In-Reply-To: <CAOQ4uxjxqavy=E7NAO-E3kCe_q4E087iXtTZgtvj4YLjLdzbmw@mail.gmail.com>
From:   Amir Goldstein <amir73il@gmail.com>
Date:   Thu, 2 Sep 2021 07:53:07 +0300
Message-ID: <CAOQ4uxizCqTz5fy+7tSkO0-FeHW4ZzCagODcbQVX+6BPn+9gRQ@mail.gmail.com>
Subject: Re: [PATCH 0/2] fanotify man page updates for v5.13
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Jul 13, 2021 at 7:34 PM Amir Goldstein <amir73il@gmail.com> wrote:
>
> On Thu, Mar 18, 2021 at 6:08 PM Amir Goldstein <amir73il@gmail.com> wrote:
> >
> > Hi Michael,
> >
> > Following are updated for changes queued for v5.13 [1]:
> > - Unprivileged fanotify listener
> > - Configurable limits
> >
> > It is still pretty early in the development cycle, but I am posting
> > them early for review.
> >
>
> I Michael,
>
> This post was a long time ago so following up on it now.
> FYI, the 2 patches are also available on
> https://github.com/amir73il/man-pages/commits/fanotify_unpriv
> along with another minor man page update.
> I will post it separately soon.
>

Hi Michael,

Did you miss these updates for 5.13?

Thanks,
Amir.

>
> >
> > [1] https://lore.kernel.org/linux-fsdevel/20210304112921.3996419-1-amir73il@gmail.com/
> >
> > Amir Goldstein (1):
> >   fanotify_init.2, fanotify_mark.2, fanotify.7: Configurable limits
> >
> > Matthew Bobrowski (1):
> >   fanotify_init.2, fanotify_mark.2: Document unprivileged listener
> >
> >  man2/fanotify_init.2 | 99 ++++++++++++++++++++++++++++++++++++--------
> >  man2/fanotify_mark.2 | 14 ++++++-
> >  man7/fanotify.7      | 35 +++++++++++++++-
> >  3 files changed, 127 insertions(+), 21 deletions(-)
> >
> > --
> > 2.25.1
> >
