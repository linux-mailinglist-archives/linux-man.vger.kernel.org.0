Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C2ED530462
	for <lists+linux-man@lfdr.de>; Sun, 22 May 2022 18:12:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233267AbiEVQM1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 May 2022 12:12:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230260AbiEVQM0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 May 2022 12:12:26 -0400
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com [IPv6:2607:f8b0:4864:20::729])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49F633335C
        for <linux-man@vger.kernel.org>; Sun, 22 May 2022 09:12:25 -0700 (PDT)
Received: by mail-qk1-x729.google.com with SMTP id j6so11339402qkp.9
        for <linux-man@vger.kernel.org>; Sun, 22 May 2022 09:12:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qWQ0+HDPcXt5whV/KjCPAkj4xA8vfzmLpK4kBE+HZe0=;
        b=Yt+zHmncKvHAnhGyKitXBchuj9MEsg1QicR7MTjIKFBee8w+mlc0sZqNAYT4m1izJb
         k4LR1obN1nZJm5Xk1J2ofDbSwwnodOh5oxecZjYATXtepJT9VRTI5vK5ZRJ/MFR6DrLI
         9RME43lMD1vzLiedY7uOmO23zVghXmb4yfYuzB/C2BI4dJbDCwONi5lf2tGQmndt9Wzp
         mQjT1jhiXLcN0Sdg2mSanFo8zGlOc/Uck/zEYVr6Q6E/bxVEFiBrwkDYCb6hKpQQT6Pl
         tq3QVc69Degr5C3Z+akNCyE9g7wOpWIBG9luE8zTAVhorZ6gRcLQ4QvDhHiAEQ8SaFtM
         irDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qWQ0+HDPcXt5whV/KjCPAkj4xA8vfzmLpK4kBE+HZe0=;
        b=SHnWtWgjkp6Kzde1U+LxFEQYqbiSr0Z3tcjgZ38hpHZmcE8rJdAh7mxx7scni4bP8l
         MTXS9LS7GjH9tWVnkqVe8q0nfkzJEgQbn17x5qYrDoxXTEnMWkEZuNRTszR/nz33WFIm
         S1uqvIixTyZQXukx0Draq1Zo5KK9CT5uT3w71mVfcdnG2X9DB0LQTY7gGCV6JFO30oBw
         Qwui4Of+TkexKYIIdIBIkU/rZ4b+sVe7tLRZzkAK5aahseMyewc2t5SBnuu5LfcGyDCR
         TKy0kAzqNnEEfJkeW9q9URnqcl2gvt1YxHCdrK3qd3TuAt1DvXCD0ZIhfUI2RMQax0MR
         3OZg==
X-Gm-Message-State: AOAM530M4v3kC1EILc0CXh9cLcR+oZnMOhXX7b0NKlyg3XQ2PdZdwTjj
        mD9MSxjKVnC2GwNHI7b5uuw90ksMUFrnvTDRZQ4=
X-Google-Smtp-Source: ABdhPJwY2u+lZRPvZvTtClACuw3ZsFq5kV4MeRVz8WdoIEG7VxcpeQEDmk9QAudjyvCZcqVOthcArdIsT7Va8bgoryM=
X-Received: by 2002:a37:6cc2:0:b0:6a3:769c:e5ba with SMTP id
 h185-20020a376cc2000000b006a3769ce5bamr2297983qkc.19.1653235944376; Sun, 22
 May 2022 09:12:24 -0700 (PDT)
MIME-Version: 1.0
References: <20220520180935.37796-1-krisman@collabora.com> <CAOQ4uxjd-xKz1=Z+165s4hX0aiBsbui2_+JAqaGr0AT0z5+scg@mail.gmail.com>
 <77ebe2f4-461a-4c3c-d53e-7a4c1f94e506@gmail.com>
In-Reply-To: <77ebe2f4-461a-4c3c-d53e-7a4c1f94e506@gmail.com>
From:   Amir Goldstein <amir73il@gmail.com>
Date:   Sun, 22 May 2022 19:12:12 +0300
Message-ID: <CAOQ4uxjuVjDZN6+mvCV6Yk1=bn_oYVVxpS=Q6bn5=uQOSDv9wg@mail.gmail.com>
Subject: Re: [PATCH RESEND v5] fanotify.7, fanotify_mark.2: Document FAN_FS_ERROR
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Gabriel Krisman Bertazi <krisman@collabora.com>,
        linux-man <linux-man@vger.kernel.org>, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <repnop@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, May 22, 2022 at 6:44 PM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> Hi,
>
> On 5/21/22 08:40, Amir Goldstein wrote:
> > [adding correct address of Alejandro]
>
> Thanks!
>
> >
> > On Fri, May 20, 2022 at 9:09 PM Gabriel Krisman Bertazi
> > <krisman@collabora.com> wrote:
> >>
> >> FAN_FS_ERROR is a new event for fanotify to report filesystem errors
> >> that might lead to some corruption.
> >> This documents how to use the feature and specific caveats.
> >>
> >> Reviewed-by: Jan Kara <jack@suse.cz>
> >> Reviewed-by: Amir Goldstein <amir73il@gmail.com>
> >> Reviewed-by: Matthew Bobrowski <repnop@google.com>
> >> Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
>
> Please check a few minor formatting issues below.
> Other than that, looks good to me.
>
> However, it seems that I'm missing some patch, as I can't apply it to my
> tree.  Should I apply any other patch before this?
> It doesn't apply on top of the kernel.org master branch either (but
> don't use that one as reference, since it's quite old).

It is applied on top of:

https://lore.kernel.org/linux-man/20220514131346.10171-1-alx.manpages@gmail.com/T/#u

We have a rather long backlog of man page updates pending merge
from Matthew, Gabriel and myself.
We need to merge them by order.
The entire stack is available in [BRANCHES] on my github tree [1].

Let me summarize it for you again:

FAN_REPORT_PIDFD v5.15 [fanotify_pidfd]
FAN_FS_ERROR v5.16 [fan-fs-error]
FAN_REPORT_TARGET_FID v5.17 [fanotify_target_fid]
FAN_RENAME v5.17 [fan_rename]

And I have more changes for upcoming v5.19...

Let me know if anything is not clear.

BTW, is there any prospect of updating kernel.org man pages
anytime soon?

Thanks,
Amir.

[1] https://github.com/amir73il/man-pages
