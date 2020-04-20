Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B6B8F1B1543
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 21:00:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726039AbgDTTAG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 15:00:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726013AbgDTTAF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 15:00:05 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D234C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 12:00:05 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id u16so759809wmc.5
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 12:00:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=WAN9J5XKcjpTC4AbzhjX9ockyd8FB1KqEkkmamXe4pg=;
        b=RnZxJUPZ1/5cci64ssZwJJ+E87ELjln6TqJF1D0ZcECQDw9J/M9AW6njRyth+ULFuy
         2sNmXdjLCbQtN2KdoEnDW1T1XXG1R9fj1Nw+A5jgWBqb8jeEWrQMgp/5FawFTXvmdC1Q
         qc/aJfxrumrgB71QTgXq3CmwMvvAYskx2zdY+ARUQ/AgMaf/kXNRviY3wU5Tc4GwTcpG
         H1i4ALoYM8hlYn8kXAlcrC04AXUY2mzwVAC6ylYaHQWKnsjae+SblshWQr254BzhBtC4
         P+IUxqZ8T/+Fy0vPL6louI8mHsu/Me0o9CK2gYu2yXezLWALViBqpqerPh2D/JaMPqNd
         lLVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=WAN9J5XKcjpTC4AbzhjX9ockyd8FB1KqEkkmamXe4pg=;
        b=qTpaOePdgVppeZd7EaZYdhNMDUoi7U6uPK964ymfuAKPyqFgHadUEDBw+SekH+4FVr
         E3wPYgczuVOY8KrO9E/h6sBr242kIcDmNeZ9sc++f7qmIgvdBOt0PM2ePSaIzQG6cNOL
         MuoOJnNDwCPQxoCXcBIoZpNetAHkokEYRCLvWbG6zjRl/9KsHdmTfo0vYEdVuKotHYRN
         po7wQ4gA3pOW0wjV8J0yv+9OQudc7py5/YM2OpQULZex+h2LjiXhjQO17HhX1AtkhadM
         EFbm6zUAyl9+ycGsCO6DwLKMC1cdGj76NBV/2FGHz80pQKlgc908saOlaFKi7Ga7z5i7
         bEQg==
X-Gm-Message-State: AGi0PuYqs8qY8J1aytV/eHNcPYsM7yfm0x+QA1A1HzaetbUjkpnLlHBc
        MT+0f+EQEh7nby0kAbdehBfA6il1
X-Google-Smtp-Source: APiQypJSYYO4BsdrOLKqbGGgXgSoAFEgFzUSSPzERbfEUDvFUd+VV58NkvC5558WmWX/wIfrHV2yGA==
X-Received: by 2002:a05:600c:214b:: with SMTP id v11mr824092wml.151.1587409203722;
        Mon, 20 Apr 2020 12:00:03 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id 1sm413833wmz.13.2020.04.20.12.00.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 12:00:02 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 1/4] fanotify_mark.2: Clarification about FAN_MARK_MOUNT
 and FAN_REPORT_FID
To:     Amir Goldstein <amir73il@gmail.com>
References: <20200420184259.29406-1-amir73il@gmail.com>
 <20200420184259.29406-2-amir73il@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <58ff6125-b7cc-db8d-b8c0-e83075479182@gmail.com>
Date:   Mon, 20 Apr 2020 21:00:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200420184259.29406-2-amir73il@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Amir,

On 4/20/20 8:42 PM, Amir Goldstein wrote:
> It is not true that FAN_MARK_MOUNT cannot be used with a group that
> was initialized with flag FAN_REPORT_FID.
> 
> The correct assertion is that events that require a group with flag
> FAN_REPORT_FID cannot be requested on a mark mount.
> 
> For exaple, a FAN_OPEN event can be requested on a mark mount and
> will generate an event with file handle information if the group was
> initialized with flag FAN_REPORT_FID.
> 
> Signed-off-by: Amir Goldstein <amir73il@gmail.com>
> Reviewed-by: Jan Kara <jack@suse.cz>
> Reviewed-by: Matthew Bobrowski <mbobrowski@mbobrowski.org>

Thanks. Patch applied.

@Jan, @Matthew: thanks for the reviews!

Cheers,

Michael

> ---
>  man2/fanotify_mark.2 | 41 ++++++++++++++++++++++++++++++++++++-----
>  1 file changed, 36 insertions(+), 5 deletions(-)
> 
> diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
> index 30290d519..687e20f4a 100644
> --- a/man2/fanotify_mark.2
> +++ b/man2/fanotify_mark.2
> @@ -126,12 +126,22 @@ is not itself a mount point, the mount point containing
>  will be marked.
>  All directories, subdirectories, and the contained files of the mount point
>  will be monitored.
> -This value cannot be used if the
> +The events which require the
>  .I fanotify_fd
> -file descriptor has been initialized with the flag
> -.BR FAN_REPORT_FID
> -or if any of the new directory modification events are provided as a
> -.IR mask .
> +file descriptor to have been intialized with the flag
> +.BR FAN_REPORT_FID ,
> +such as
> +.BR FAN_CREATE ,
> +.BR FAN_ATTRIB ,
> +.BR FAN_MOVE ,
> +and
> +.BR FAN_DELETE_SELF ,
> +cannot be provided as a
> +.IR mask
> +when
> +.I flags
> +contains
> +.BR FAN_MARK_MOUNT .
>  Attempting to do so will result in the error
>  .B EINVAL
>  being returned.
> @@ -184,34 +194,55 @@ See NOTES for additional details.
>  .BR FAN_ATTRIB " (since Linux 5.1)"
>  .\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
>  Create an event when the metadata for a file or directory has changed.
> +An fanotify file descriptor created with
> +.B FAN_REPORT_FID
> +is required.
>  .TP
>  .BR FAN_CREATE " (since Linux 5.1)"
>  .\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
>  Create an event when a file or directory has been created in a marked
>  parent directory.
> +An fanotify file descriptor created with
> +.B FAN_REPORT_FID
> +is required.
>  .TP
>  .BR FAN_DELETE " (since Linux 5.1)"
>  .\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
>  Create an event when a file or directory has been deleted in a marked
>  parent directory.
> +An fanotify file descriptor created with
> +.B FAN_REPORT_FID
> +is required.
>  .TP
>  .BR FAN_DELETE_SELF " (since Linux 5.1)"
>  .\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
>  Create an event when a marked file or directory itself is deleted.
> +An fanotify file descriptor created with
> +.B FAN_REPORT_FID
> +is required.
>  .TP
>  .BR FAN_MOVED_FROM " (since Linux 5.1)"
>  .\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
>  Create an event when a file or directory has been moved from a marked
>  parent directory.
> +An fanotify file descriptor created with
> +.B FAN_REPORT_FID
> +is required.
>  .TP
>  .BR FAN_MOVED_TO " (since Linux 5.1)"
>  .\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
>  Create an event when a file or directory has been moved to a marked parent
>  directory.
> +An fanotify file descriptor created with
> +.B FAN_REPORT_FID
> +is required.
>  .TP
>  .BR FAN_MOVE_SELF " (since Linux 5.1)"
>  .\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
>  Create an event when a marked file or directory itself has been moved.
> +An fanotify file descriptor created with
> +.B FAN_REPORT_FID
> +is required.
>  .TP
>  .B FAN_Q_OVERFLOW
>  Create an event when an overflow of the event queue occurs.
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
