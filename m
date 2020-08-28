Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3EAEA25569D
	for <lists+linux-man@lfdr.de>; Fri, 28 Aug 2020 10:42:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728016AbgH1Img (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Aug 2020 04:42:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726643AbgH1Imb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Aug 2020 04:42:31 -0400
Received: from mail-oo1-xc43.google.com (mail-oo1-xc43.google.com [IPv6:2607:f8b0:4864:20::c43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 929DEC061264
        for <linux-man@vger.kernel.org>; Fri, 28 Aug 2020 01:42:30 -0700 (PDT)
Received: by mail-oo1-xc43.google.com with SMTP id u28so87090ooe.12
        for <linux-man@vger.kernel.org>; Fri, 28 Aug 2020 01:42:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=iZa6LVxj1Z4mfscI5sQ8fLu/mwS140PHqxfRtT5KNb8=;
        b=qQ5ZNo9QzkLsS6gQOtwQ1aXqss6Hz1Kbd5rI+/EZRobilBczZ1K+W3aojloKUtVBUO
         ekYylUQ3YNlABQDsZkkzawYV4QTM/+KpsMvu6e3LwuDZj/ViNtBtSkgyTE8HOZuZEaiF
         AI282t7rn1hstUgNQPOvxMIxgGupnSIX7g75SxPQ/JA7jTpPRh2yg2fGh94oYOkrdiJw
         j1Js/sb/A6vvsvida8J/im190ra4FmMpXC26SPOl6VF7Zu8g8y2unNz7NwtpxlveO6NZ
         AeqUBWiMWlFzzgSVbuUazybRVXy3lck0d9jeJL4R+N7KpScd0u8VQObxBY0Js2cqmd5s
         pd1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=iZa6LVxj1Z4mfscI5sQ8fLu/mwS140PHqxfRtT5KNb8=;
        b=gEtAujolKh6LCVhDn6XpPIQFmN0TnsVxjx1QfFdo2VX12MfJ7yhClBYnli2GJPy9e6
         wVWMHb6RgJTS2kZtRgU5BoYHEuUDzZPeHRIoKdRbcgIMEuTW0DFdV3kokVuBXqydeQw3
         rSoTCJKTAzsji63CHw8GfYBNFQRMvToEFH1KoO/2ck1FjnLsUZABJcSLkYtJrPqte4Sc
         CGanxB+PmnMT5bMPoRmuxz2s7J37FYME2D+8TQiH+LOeuLeYOY31g5R5l1KRoz/GHh+9
         wg+pKVLU+6fzwtRnOcOYCa+gN4i33z7saVqH2WGZWX4k+H1eqyU/z21lXPjudyz7kCHu
         +eog==
X-Gm-Message-State: AOAM533hnXUmFtmL2OLtQBjcR5YToQllDqJ9PJ9CBhvIFL2Wq4X/3JS4
        +qfNKbEBdgFKxl+QG/hjuwmDM5cIFtCww5D4hyFKPA78xGQ=
X-Google-Smtp-Source: ABdhPJyUZfhRQ3UZb8k/zYeCp0SMThBkSXl+dWwsUYlHMdB710D2Zmx2ha8CGFMeNfeKlNn3GTtmiilblL2nFCP2ho0=
X-Received: by 2002:a4a:ea06:: with SMTP id x6mr405980ood.14.1598604149951;
 Fri, 28 Aug 2020 01:42:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200825114056.5179-1-amir73il@gmail.com>
In-Reply-To: <20200825114056.5179-1-amir73il@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Fri, 28 Aug 2020 10:42:18 +0200
Message-ID: <CAKgNAkj2m0pwvBYED=AbdHoo5JXtqsTij6qCkQYUfBO5=fzCbw@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] Fanotify man page updates for v5.9
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Amir,

On Tue, 25 Aug 2020 at 13:41, Amir Goldstein <amir73il@gmail.com> wrote:
>
> Hi Michael,
>
> Posting v2 with Reviewed-by from Jan Kara and Matthew Bobrowski
> and fixes for a few minor issues they pointed out.

Should I be merging these already, or waiting on the revised version
of your "fanotify.7, fanotify_mark.2: Generalize documentation of
FAN_REPORT_FID" patch?

Thanks,

Michael



> Amir Goldstein (3):
>   fanotify.7, fanotify_mark.2: Generalize documentation of
>     FAN_REPORT_FID
>   fanotify.7, fanotify_init.2: Document FAN_REPORT_DIR_FID
>   fanotify.7, fanotify_init.2: Document FAN_REPORT_NAME
>
>  man2/fanotify_init.2 | 115 ++++++++++++++++++++++---
>  man2/fanotify_mark.2 |  50 ++++-------
>  man7/fanotify.7      | 200 +++++++++++++++++++++++++++++--------------
>  3 files changed, 256 insertions(+), 109 deletions(-)
>
> --
> 2.17.1
>


--
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
