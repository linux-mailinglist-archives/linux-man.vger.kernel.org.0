Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A491C54F7B3
	for <lists+linux-man@lfdr.de>; Fri, 17 Jun 2022 14:38:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1382118AbiFQMiA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Jun 2022 08:38:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1381579AbiFQMh7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Jun 2022 08:37:59 -0400
Received: from mail-vs1-xe34.google.com (mail-vs1-xe34.google.com [IPv6:2607:f8b0:4864:20::e34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1609BE16
        for <linux-man@vger.kernel.org>; Fri, 17 Jun 2022 05:37:57 -0700 (PDT)
Received: by mail-vs1-xe34.google.com with SMTP id q14so3931695vsr.12
        for <linux-man@vger.kernel.org>; Fri, 17 Jun 2022 05:37:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oErcA1nIF2LOMyz1T3TfKFnsVbE8SfZ84NWuztWAuBs=;
        b=QjndiuxVOrEgmi2N1dOd2Ev4hPFry6/UAm+DiwHp5HSJbEHk0deC5ISSP7ArB+xcSz
         LBFNC9jpJm+EyM3PUUOl1bjXMl/TxbR5zUDMqJz7qeApKnFnynSmGbKqBdrdNIQ1doan
         xhsw0atroeJPKYitJ9tuYjyAWSR7PjU1lBYHxrdCQ+Kk+dvenKZiQKpvZnv0gbws7wCU
         rnhAES0v1r8PjFOjDdWkmHijVXFzw4nT1T5UMKnYKNGXIPrDildISdYODW93Dc+8vFnD
         DL5Vl0eOeM1QCf4k45yOsqktBc0gPFAmBAokYa0r2sKqOQi9TeB6IJNccqAd8UUEk2de
         Wy9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oErcA1nIF2LOMyz1T3TfKFnsVbE8SfZ84NWuztWAuBs=;
        b=QeyRj5pRIVR8gdxwaDFYL193F7xLB4y3W57P49j/jowGlPDcp0FUxbmsaSYqeibQb7
         03JM5QBRHBJ/kc72tjDlVt5WRrB5MonptH3U65WWk5Q5NztxzMGhfvPnBRUP1uz1LDA1
         cEIaudXg5HAcJfSK9X4fseO1mFPy6msQQdFkC09kctDVunHn32TBkrUTSSFU170yRcvD
         GyDEHKWNhp+Vq0NMdEtSpytHWsKPc33S1XHEo96UikO0cotWqGp+Ueh/pW4A5POsTaBB
         uzylI/TlJa7YRk0+Cr/FwanuO8UDbSMHKdzJtWTxoWO8tEb7cHkYxJznsZsQT9QwxFQi
         XOiQ==
X-Gm-Message-State: AJIora/2K4mIfawGwwQ2egl96M2kaiyq7Q+z3Ns8o6fgx0Q18ciGYNNo
        Y/zgGDxNFiFHLNQAhfUvZ6qg+b39XFcEp1AujeI=
X-Google-Smtp-Source: AGRyM1sUuXA9RAFKQYSXSwLowLe/i+m7WJLYweCXoaeV2krH56uDTdpH81VI10ng2gQNmz1KLpC/O4evLGSb4RZnFvk=
X-Received: by 2002:a67:d28f:0:b0:34b:9225:6fda with SMTP id
 z15-20020a67d28f000000b0034b92256fdamr4576803vsi.72.1655469476769; Fri, 17
 Jun 2022 05:37:56 -0700 (PDT)
MIME-Version: 1.0
References: <20220520180935.37796-1-krisman@collabora.com> <CAOQ4uxjd-xKz1=Z+165s4hX0aiBsbui2_+JAqaGr0AT0z5+scg@mail.gmail.com>
 <77ebe2f4-461a-4c3c-d53e-7a4c1f94e506@gmail.com> <CAOQ4uxjuVjDZN6+mvCV6Yk1=bn_oYVVxpS=Q6bn5=uQOSDv9wg@mail.gmail.com>
 <e8daa69c-8f07-6fe7-8e63-96e23f8deec6@gmail.com>
In-Reply-To: <e8daa69c-8f07-6fe7-8e63-96e23f8deec6@gmail.com>
From:   Amir Goldstein <amir73il@gmail.com>
Date:   Fri, 17 Jun 2022 15:37:45 +0300
Message-ID: <CAOQ4uxi7VrG8Pow=jqokXC3s5Y3bR7vqUnDwpwRNpiJfZmq8yw@mail.gmail.com>
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

Hi Alex,

Getting back to the fanotify man page backlog...

>
> >
> > We have a rather long backlog of man page updates pending merge
> > from Matthew, Gabriel and myself.
> > We need to merge them by order.
> > The entire stack is available in [BRANCHES] on my github tree [1].
> >
> > Let me summarize it for you again:
>
> Thanks.  I'll write here what I know about the, just to be sure I didn't
> miss anything.  If you need anything from me, please tell me.
>
> >
> > FAN_REPORT_PIDFD v5.15 [fanotify_pidfd]

I see you finally managed to flow this into kernel.org repo. Yay! :)

>
> Pending a rewording of a paragraph.
>
> > FAN_FS_ERROR v5.16 [fan-fs-error]
>
> This one.  Looks good to me.
>

Rebased on top of upstream, fixed the few minor nits
you pointed out and push to:

https://github.com/amir73il/man-pages/commits/fan-fs-error

Can you please apply?

> > FAN_REPORT_TARGET_FID v5.17 [fanotify_target_fid]
>
> I don't see this one in my mbox or linux-man@.
> I assume it's not yet ready?
>
> > FAN_RENAME v5.17 [fan_rename]
>
> I don't see this either.  I assume it's not ready either.
>

And now I can finally proceed to post these :)

> >
> > And I have more changes for upcoming v5.19... >

I have a question for you regarding new UAPI, such as
FAN_MARK_EVICTABLE that got merged to v5.19-rc1.

Often, Michael would not want to merge UAPI changes to
man pages before .0 release, because UAPI changes could
be reverted before final release (which happened for fanotify).
I still want to post those man page patches for review early,
but don't want to mess up your patch review process.

I guess if I post them as [RFC] it will be a good sign for you not
to merge them until the .0 release?
Should I simply use the subject "Fanotify updated for v5.19"?

Do you have a different view on the matter?
Don't care at all? ;-)

Thanks,
Amir.
