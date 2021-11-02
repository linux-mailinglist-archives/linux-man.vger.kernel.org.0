Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E62F2442719
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 07:29:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229505AbhKBGbn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 02:31:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229497AbhKBGbm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 02:31:42 -0400
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com [IPv6:2607:f8b0:4864:20::d2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EB49C061714
        for <linux-man@vger.kernel.org>; Mon,  1 Nov 2021 23:29:08 -0700 (PDT)
Received: by mail-io1-xd2f.google.com with SMTP id g8so22988842iob.10
        for <linux-man@vger.kernel.org>; Mon, 01 Nov 2021 23:29:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Rrc03+ztBHkIngFzj98wsp6+PDduherEGHIvhZ3LEDw=;
        b=TST+3cJh9V6vCTicVqBXYxabtFGzA1Jf98SX+dRzjpRWUoXD+kN6h5h32fJ57gL5Rv
         NdFzGiWIJVI0KDUhqH6aWyYIPZR4f5y8zaNDjR6GPmP7xe7biLzj3Vhub67bnFbo1EGz
         sz8lHG3sSubxrAQmHBilNpVoRvbhTCqN8mKRZT7P2FWedMdh144a+9XZP5ob5sj9Wmw2
         66N1CULoi/hazcMT5Dixum2iuDDOc72HjoP8dRIR3J9kA9F1SqWqeNSx+l3mgt7JiO4h
         zu8mCOboSEpwLQdkaJAhyddTkhh9KjQEZUi5i8bTMHkpZJ1nMGcT95zlUV19qyzIcHca
         +tSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Rrc03+ztBHkIngFzj98wsp6+PDduherEGHIvhZ3LEDw=;
        b=jUO76EofESWtYXrkQPBFo7I1mMGBaaj6Ws/MrMdwYzHRXceRAeXswn1R9QLUBFgCpv
         Co6QoUczrL2xP9W9P7gX3srBtrRS/JGjpxqpWHFjoTYpYR4MqrO6LRkw+C7K2PJGeyXX
         q4cFRQDHSwQW3iqU3xqKL6CG6fI5c2GYkjI+zvA2rJEji7KIvPCHSzlq3qbNbqvj8KeL
         ZI+8jtogENYNvvTEjTodYqKjmQRxB3xbiPAe4fuGBfU1K5xbvgq8bjJu6xf/MHeXp3x9
         8oxR/m7jDm9hAR2N0MzFFZKjaMpoNxmkBWaR83bZ923e61NykF9dVlYqF3N58YdyD53v
         LeRQ==
X-Gm-Message-State: AOAM531KRYj1LxsXOrkJ2ICIegnpCX9hlhPHrj4EYjKWNahtS9RAEPPo
        QkwpR6egU6pAuT/ivkUT4wSB56OWzsgzSYGO3pw=
X-Google-Smtp-Source: ABdhPJxnbgVBComgnAV7J0eMbB7lup1i/HrMBu0fqlMuowhl/zkutmWowEokR18sSmwwPieMisSZjB5mbe3gJxiwaNQ=
X-Received: by 2002:a02:270c:: with SMTP id g12mr25334984jaa.75.1635834547744;
 Mon, 01 Nov 2021 23:29:07 -0700 (PDT)
MIME-Version: 1.0
References: <20211101200445.399801-1-krisman@collabora.com>
In-Reply-To: <20211101200445.399801-1-krisman@collabora.com>
From:   Amir Goldstein <amir73il@gmail.com>
Date:   Tue, 2 Nov 2021 08:28:57 +0200
Message-ID: <CAOQ4uxiR6xVOMtOn9zH-ZfDhTWrHX9jbqES3U7=8OMGca2W+Lw@mail.gmail.com>
Subject: Re: [PATCH v3] fanotify.7, fanotify_mark.2: Document FAN_FS_ERROR
To:     Gabriel Krisman Bertazi <krisman@collabora.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <repnop@google.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Nov 1, 2021 at 10:04 PM Gabriel Krisman Bertazi
<krisman@collabora.com> wrote:
>
> FAN_FS_ERROR is a new event for fanotify to report filesystem errors.
>

You need to be very explicit when posting to man pages that this is NOT
upstream code yet.

UAPIs can practically be changed until the .0 release, but it's fine to post
man pages update for wider review before that as long as the review is properly
labeled as such.

> Cc: Amir Goldstein <amir73il@gmail.com>
> Cc: Jan Kara <jack@suse.cz>
> Cc: Matthew Bobrowski <repnop@google.com>
> Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
>
> ---
> Changes since v2:
>   (matthew)
>     - Grammar
>     - List filesystems that support the feature
>     - file system -> filesystem
> Changes since v1:
> (Matthew)
>   - Grammar fixes
>   - Don't use the term "submitted" for events sent to the listener
>   - Clarify the kind of information that is file system specific
>
> To: Michael Kerrisk <mtk.manpages@gmail.com>
> Cc: linux-man@vger.kernel.org
> ---
>  man2/fanotify_mark.2 | 36 ++++++++++++++++++++++
>  man7/fanotify.7      | 71 ++++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 107 insertions(+)
>
> diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
> index be3f72e040c0..d8560f788db8 100644
> --- a/man2/fanotify_mark.2
> +++ b/man2/fanotify_mark.2
> @@ -214,6 +214,35 @@ Create an event when a marked file or directory itself is deleted.
>  An fanotify group that identifies filesystem objects by file handles
>  is required.
>  .TP
> +.BR FAN_FS_ERROR " (since Linux 5.15)"

That is a mistake.
This code is aiming for 5.16.
5.15 is already out the door.

Thanks,
Amir.
