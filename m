Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 80B2E46FDEF
	for <lists+linux-man@lfdr.de>; Fri, 10 Dec 2021 10:37:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229984AbhLJJlF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Dec 2021 04:41:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229502AbhLJJlE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Dec 2021 04:41:04 -0500
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com [IPv6:2607:f8b0:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23703C061746
        for <linux-man@vger.kernel.org>; Fri, 10 Dec 2021 01:37:30 -0800 (PST)
Received: by mail-il1-x129.google.com with SMTP id s11so7884285ilv.3
        for <linux-man@vger.kernel.org>; Fri, 10 Dec 2021 01:37:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nqoE12EGXEcTDJmoBVyxrfYc2jeJ37Ii9aHKuJOa8hA=;
        b=YkhxGFubT+9unh/VOteAlxptATPAyjdZbfKGtVHSOjH6CDxeM1mpAdPjIxlzjFzrP/
         L8QqnWhpf52mceRasNhH1myvABMsW6eEOkr+KuqKcKnluFV5xwh+FPXEFhBYVya+a07W
         fOSzh/5Y6M3V0YFfWuK5fPovxme0p1T9BMH/1dQqAtpMMP1W/fciDaLwJFyhzQycyy7V
         66pskSRbxuP95zpzDfepzHcjk+aZGmMgL7CK+Yu49k4UTopliJaEB9RkGEOAuYvThotR
         0RRldg8aTs2uRR6UMDKEzp+UsRXTsF3cqCnlYaghAEGEw+hf9wdT3SLmd1zlQr05/TAD
         cYOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nqoE12EGXEcTDJmoBVyxrfYc2jeJ37Ii9aHKuJOa8hA=;
        b=4Xvg+Wy3W6pjBXl/d4cwYt09aIoU7v3tbiadIymv4DDLbke7xDgPwKgSCEBAeKXXKi
         0bbpagbp7sodYbmkN6glWJ8SCRRYRaz64iU3nEYcqYNgTokU6Y3xnSmCEe62kaeFDbLS
         j8dX50faCLzlYPCc3Y/lzAHD9a0QCx/ytk5DSCU4urQbMiNGsavmQsPZpL/iaOuA1ILr
         ghwGDt+krwJjsUe2sC6Scee/rmRNt+SZop1pkSMSUhn8TpksyoOUjFRMiFUtM/BSXDl3
         J7E2IdRqiRUFUqnwmyZIyCf12KY/MPAf0r8WB+QmZHsYrS2X2yznY3Idg/7q+BIx+HiN
         VDTQ==
X-Gm-Message-State: AOAM533f+yG/GZuPYcE9S71xbjRX2saTelew9iAsgiEfnkds5Wowx06g
        HP7TCVQUtg+/IzLSgzlAlJNtrnP5UN2G5sdTlx8=
X-Google-Smtp-Source: ABdhPJxtvRikAqDrWtdLTS37P41v3kgheg9000PkimTAbSnhX5iPKxBFJZPM52GXBZExrbE0SVlyDL6QJdulYGTFn6M=
X-Received: by 2002:a92:c892:: with SMTP id w18mr17990763ilo.24.1639129049534;
 Fri, 10 Dec 2021 01:37:29 -0800 (PST)
MIME-Version: 1.0
References: <20211120171253.1385863-1-amir73il@gmail.com> <4c1659ad-dbaf-dccd-95bb-fe224c4c0912@gmail.com>
In-Reply-To: <4c1659ad-dbaf-dccd-95bb-fe224c4c0912@gmail.com>
From:   Amir Goldstein <amir73il@gmail.com>
Date:   Fri, 10 Dec 2021 11:37:18 +0200
Message-ID: <CAOQ4uxhuBm6oMGNVmtsrgErbbrTcd72Xuib5Fv=yfySbpqFoKg@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] fanotify man page updates for v5.13
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Jan Kara <jack@suse.cz>, linux-man <linux-man@vger.kernel.org>,
        Gabriel Krisman Bertazi <krisman@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Nov 22, 2021 at 6:57 PM Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
>
> Hi Amir,
>
> On 11/20/21 18:12, Amir Goldstein wrote:
> > Hi Alejandro,
> >
> > This is a re-post of updates for v5.13 that I posted last March [1].
> >
> > Thanks,
> > Amir.
> >
> > Changes since v1:
> > - Update comment regarding tmpfs
> > - Document kernel commits
> >
> > [1] https://lore.kernel.org/linux-man/20210318160817.3586288-1-amir73il@gmail.com/
> >
> > Amir Goldstein (3):
> >    fanotify_init.2, fanotify_mark.2, fanotify.7: Configurable limits
> >    fanotify_mark.2: Update w.r.t tmpfs support
> >    fanotify_init.2: Document kernel commits
> >
> > Matthew Bobrowski (1):
> >    fanotify_init.2, fanotify_mark.2: Document unprivileged listener
>
> Patch set applied.
> See some tweaks below.
>

I understand that the patches were applied to your github tree main branch [1]

Should we regard that branch as the "next" branch and base our next
fanotify man page updates (i.e. FAN_REPORT_PIDFD) on top of it?

Thanks,
Amir.

[1] https://github.com/alejandro-colomar/man-pages.git
