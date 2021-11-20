Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 64A52457FBF
	for <lists+linux-man@lfdr.de>; Sat, 20 Nov 2021 18:04:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237828AbhKTRH5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Nov 2021 12:07:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237819AbhKTRH5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Nov 2021 12:07:57 -0500
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com [IPv6:2607:f8b0:4864:20::d33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1ADCC061574
        for <linux-man@vger.kernel.org>; Sat, 20 Nov 2021 09:04:53 -0800 (PST)
Received: by mail-io1-xd33.google.com with SMTP id p23so17258155iod.7
        for <linux-man@vger.kernel.org>; Sat, 20 Nov 2021 09:04:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HnK3H+uvONKwT9fLsjd2Rpp+RuNwggh67MrcGdUvYUg=;
        b=lbxf2yaPA76Zpnw5nuDK/u8mZK8f6InMKvkWdQImQHxi6co57zjrM+ayVxO2ZkEQcc
         B81So1meGYwTC6/+DbT6q6LCCdO8fSI8HuKoMBHqrec/lXT3deiJHlICr9T6aMMg4foX
         SCcvMdqjAsMl6qUVXehjgAOp4VFGs3jV3SNiCoHDwCuTklQHq1s5cfsa0+1VWIFFWZ92
         s7DbRxZZ7Dso5PMN/fS5ilIQlVgK3QT4l2Me/f0AP68/7JX81tHXVqGPHtfmWDr3NOWQ
         20hlbfQ9yHsODNk/y/OF06VzPSw/ZJvdgYFU6GjaG4xuyX9Ph03omYbdqnRLLSjEq/qd
         WR9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HnK3H+uvONKwT9fLsjd2Rpp+RuNwggh67MrcGdUvYUg=;
        b=SX6X3zfozm/dZtYxlvg3W9pB8UnzKQAsiLyx30Zj2yIJIMIlSJ269E0k+Om32VJIr4
         sbnK08eGwkItvXiYyzMF0hgNvj8T+hsvszWq/8ARXrdH6iIQIyrkZXyV4yj8RlpMvPhx
         9yQQ+kgTaqHANZs9OCvDF/ODkx3mT0c+avZuvx2RXCaB6YP1E6d0PXEPXN9mGqO5v4l2
         SVbNYrIZNW+5paa41cnAHSDHv4/n7u8TPw6kws64Kma8Ad7vlM4qwV+idXoXoUd7Xiil
         yJdtIZ8qUbCb7FJ9AFKR2yAT3Libesf1ZPKWTSGOIC2OJtx6GtdoB+FdO5KRPvcXTucV
         9nQA==
X-Gm-Message-State: AOAM530mP3bEYcPvHm7l9cOe3vGNAFV74fW/5RXhAlauL7u+98F/cSvk
        ceZPYujuGsdu5Pi6wg6jYcbHMA+gXrBndqm4230=
X-Google-Smtp-Source: ABdhPJxYPjqFTSLuOcduQFnjNymngiIiaprdtF/l5/lUFLbsrf/cMCARqEdc8Lk0Jfc0sT4ngbTndx8bUOo/em95KAc=
X-Received: by 2002:a6b:d904:: with SMTP id r4mr11956162ioc.52.1637427893162;
 Sat, 20 Nov 2021 09:04:53 -0800 (PST)
MIME-Version: 1.0
References: <cover.1635135968.git.repnop@google.com> <CAOQ4uxhUpnDVT6T-aGz2B_XUpRojJhVZG8Fw6XNegsWzXt+pDw@mail.gmail.com>
 <3be6b8e7-cb69-a99b-6383-4fabdbdd46f9@gmail.com> <CAOQ4uxifHByyOqLJvR2kA0Qm5uNkNkNx0oo98Oyam+6+AEVngw@mail.gmail.com>
 <7faec66c-d1ac-d85c-2626-bac230a8cb83@gmail.com>
In-Reply-To: <7faec66c-d1ac-d85c-2626-bac230a8cb83@gmail.com>
From:   Amir Goldstein <amir73il@gmail.com>
Date:   Sat, 20 Nov 2021 19:04:41 +0200
Message-ID: <CAOQ4uxgjwP3+ipMS5s4Ei-ZXkfCf1Nxj8qAd_kpASZ_2ZqSvSQ@mail.gmail.com>
Subject: Re: [PATCH 0/1] fanotify: Document FAN_REPORT_PIDFD Feature
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Matthew Bobrowski <repnop@google.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, Jan Kara <jack@suse.cz>,
        Gabriel Krisman Bertazi <krisman@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, Nov 20, 2021 at 6:51 PM Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
>
> Hi Amir,
>
> On 11/20/21 15:45, Amir Goldstein wrote:
> > On Sat, Nov 20, 2021 at 3:32 PM Alejandro Colomar (man-pages)
> > <alx.manpages@gmail.com> wrote:
> >>
> >> Hi Amir,
> >>
> >> On 11/20/21 11:36, Amir Goldstein wrote:
> >>> Alejandro,
> >>>
> >>> Is there any changes of getting those long due 5.13 fanotify update
> >>> patches merged?
> >>
> >> I thought I was waiting for an v2,
> >> since there was a bit of discussion in the patch thread,
> >> and some comments hinted that there would be a v2.
> >>
> >> See
> >> <https://lore.kernel.org/linux-man/12909faf-1d45-1eee-aa6c-c7704518dc59@gmail.com/>
> >>
> >> Am I correct?
> >>
> >>
> >
> > v2 would be for the v5.15 update that Matthew posted (FAN_REPORT_PIDFD).
> >
> > I was asking if you could merge to the v5.13 updates that I posted 9 months ago:
> > https://lore.kernel.org/linux-man/20210318160817.3586288-1-amir73il@gmail.com/
>
> Ahh, I didn't know that one.
>
> >
> > You can find them rebased on master in branch:
> > https://github.com/amir73il/man-pages/commits/fanotify_unpriv
> >
> > Along with two other minor updates that I posted since.
>
>
> Would you mind sending a v2 with what you think I should merge?
>

Will do.

Thanks,
Amir.
