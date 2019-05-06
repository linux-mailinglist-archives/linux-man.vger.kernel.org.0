Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CB9FB148B6
	for <lists+linux-man@lfdr.de>; Mon,  6 May 2019 13:14:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725852AbfEFLOC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 May 2019 07:14:02 -0400
Received: from mail-ed1-f67.google.com ([209.85.208.67]:45485 "EHLO
        mail-ed1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726149AbfEFLOC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 May 2019 07:14:02 -0400
Received: by mail-ed1-f67.google.com with SMTP id g57so14886976edc.12
        for <linux-man@vger.kernel.org>; Mon, 06 May 2019 04:14:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=xhqVrc4FD7pY7K2GyECLOp0i2mDlWGijyTiflwLUJjs=;
        b=fJWUwamFcl8rrQkVM1U+vWTuUkeYiL3o1GUVNGbPgBuNWxFlZRkr9goTA8J3SRu6VF
         WcIfj9IiPVjqLm8QxvoxpUBvbnDwz2th/gezkYqxJ+w9lKcAuRkhfz1loPAT8NW+jEB4
         BaMQeRZcSfS+/4PAOpAXz2VuUs2BBcHTfbbmPCmvs2lcOED74vWt6AHShQKwIf40Prmk
         BXH09czVWbpPtxPxpl32PlAEQLkqWR7Wvm4YooFK3kqHVvF34vJ6SThFeuw4cVfI/eeZ
         OSPwsdZWmPe64nVKLAa/ECxZccoq8/eUg+1lFXwk0PgJPC4u/pOLRSkeizpjL8TQ7Zma
         jXgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=xhqVrc4FD7pY7K2GyECLOp0i2mDlWGijyTiflwLUJjs=;
        b=KVn09SDD9dkNb9wTqM3LcoykSuupyUX0h752eMmT0EQT8q9GcIRJzFN0EpsHB4SvRX
         rC04q06nsAUGKzj7LuX8soej9uHXOdR/Wbvt4gXzGmmsO59hKWRr49Br9M1uAx50JqSb
         0ElIOTSu72U1y2RviJlU8lN7SXzo/nzeHFdCkVZ1AY75tqT0+SplMAE0jO40sAwjp787
         Sw9tGKAKPvibRUZAeEJSBC3TSsotv7DZB9T61OCFhAEJllcZxeyHHM8+VGcD6XcltRkq
         B+1V+RiWa8dP3WEHys+lkvW1r3ql5jvrD65Q7DwEqzZjwjzrxXZuJtqi0EMsO6ttj+Ux
         q/UQ==
X-Gm-Message-State: APjAAAWsVlZnW96sYy0jCelm+hMmrzGCxA7xqerN/lAxtDiSkQ3DCr63
        fnyCevz2BdJgJ79eaO7URJXjqz4cva+uvSRR8l590w==
X-Google-Smtp-Source: APXvYqzttCixQMr1X/b3PQxQEl7YQBobNerHBfsZLsLAoCQ2X3mxzl3TmslLG7AOfZleEMnFvghvrPI/JW+NLY8ji9k=
X-Received: by 2002:a17:906:2606:: with SMTP id h6mr18844168ejc.211.1557141240312;
 Mon, 06 May 2019 04:14:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190506054107.25321-1-shawn@git.icu>
In-Reply-To: <20190506054107.25321-1-shawn@git.icu>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 6 May 2019 06:13:48 -0500
Message-ID: <CAKgNAki_xjY_mcu4NGtwCKF=uj=if2CpO+HzVH9POS5GSTfHEQ@mail.gmail.com>
Subject: Re: [PATCH] read/write: documentation of limits
To:     Shawn Landden <shawn@git.icu>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Shawn,

This doesn't look right to me. In particular, "% PAGE_SIZE" is certainly wrong.

Can you point me in at your reasoning (references in the kernel code)
that lead you to this conclusion?

Thanks,

Michael

On Mon, 6 May 2019 at 00:41, Shawn Landden <shawn@git.icu> wrote:
>
> ---
>  man2/read.2  | 4 ++++
>  man2/write.2 | 4 ++++
>  2 files changed, 8 insertions(+)
>
> diff --git a/man2/read.2 b/man2/read.2
> index 6e5123fa4..850dead86 100644
> --- a/man2/read.2
> +++ b/man2/read.2
> @@ -151,10 +151,14 @@ and the wrong size buffer was given to
>  .BR read ();
>  see
>  .BR timerfd_create (2)
>  for further information.
>  .TP
> +.B EINVAL
> +.\" MAX_RW_COUNT in include/linux/fs.h
> +The read amount is greater than INT_MAX % PAGE_SIZE.
> +.TP
>  .B EIO
>  I/O error.
>  This will happen for example when the process is in a
>  background process group, tries to read from its controlling terminal,
>  and either it is ignoring or blocking
> diff --git a/man2/write.2 b/man2/write.2
> index 4df56cd48..32b17cdc0 100644
> --- a/man2/write.2
> +++ b/man2/write.2
> @@ -190,10 +190,14 @@ flag, and either the address specified in
>  .IR buf ,
>  the value specified in
>  .IR count ,
>  or the file offset is not suitably aligned.
>  .TP
> +.B EINVAL
> +.\" MAX_RW_COUNT in include/linux/fs.h
> +The read amount is greater than INT_MAX % PAGE_SIZE.
> +.TP
>  .B EIO
>  A low-level I/O error occurred while modifying the inode.
>  This error may relate to the write-back of data written by an earlier
>  .BR write (2),
>  which may have been issued to a different file descriptor on
> --
> 2.20.1
>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
