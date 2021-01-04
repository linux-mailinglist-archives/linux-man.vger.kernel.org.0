Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 65A432E95ED
	for <lists+linux-man@lfdr.de>; Mon,  4 Jan 2021 14:28:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726253AbhADN1t (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 4 Jan 2021 08:27:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726246AbhADN1s (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 4 Jan 2021 08:27:48 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 717EBC061798
        for <linux-man@vger.kernel.org>; Mon,  4 Jan 2021 05:27:07 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id c5so32151825wrp.6
        for <linux-man@vger.kernel.org>; Mon, 04 Jan 2021 05:27:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=n02/mIcPpC0U6QHdQoUb5SBTdZltEH0dzQFoR/OAsv4=;
        b=tzDWqhfau69KWjaK7GYTFfNlfpXTEXi4dtvg5gKa6GwRPXHT8AKGN5sE0LAVEgwH1t
         DizHt+TAUQ5aB0jPjTPUGkTzXl+VDuLOyyf3/fU85VtKID1if110nTNTxvNO146NPq7l
         DJ7oULrlMJq5tynpxPPm/PtYBXKxuhj6Ckxzk8LFHGNA6Y9h2mnkROJ7g2uJ2DL3ybFh
         G9fQiNbQvz8ZsUnWUer4IngaYbyVn5RPLTI0o++V2DITpbiLKnM9Jf4dbyoWXgfx9PHk
         wGhytZwlumAsYou5W4rP9ikjTLclYAmPMOeVj1Po6iQ9ic2bbqu3pQ5hEu3VIOHc+nxy
         qa9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=n02/mIcPpC0U6QHdQoUb5SBTdZltEH0dzQFoR/OAsv4=;
        b=QhFQfzZv4UepJgrbrEQGv1VJXz3mR0yRyyBYbHYrkc+wZ/NuYI29Clo6R36HlEEZR6
         bgYR0qieERQCZGBRw84mtWnGkBPvrZutdpY/lWWL8wLYtLDR0veI3L7zRJ66XcdoABvp
         VRU6tahfw7RVYtY5eXgR2RNhfpG21zdnd8nTbUngS0FdhfO2IrWXtRtSgh4prYFvKvwz
         /Gs5YF90JX9+25omd/l3IhBuz26tCbPyL2PfiZIJ9X3f1f1kgaB+KF9wGYPSRqSkH5ia
         5kMUNeKTAe5ChYUAx0SanF0HXLS4h1tmEhVwhzPGVJjWSSEAlcPNC7/WxRbEGqz2sSyq
         5mHw==
X-Gm-Message-State: AOAM532B8iZ6ELsPWWjvuMTWxY9Zx5/GPtDRLgylpoqyzmsgSEQ8xu5F
        JBuRE9hkhDPMlzhEMofNS2zZAwRiNHs=
X-Google-Smtp-Source: ABdhPJyPmh/snSI+w+HbnZmi9lH26hiPkmeR2lzFXgeubZTo5ptN1r9XpusDqzVw6+6Vss7vvLv4Uw==
X-Received: by 2002:adf:ba0c:: with SMTP id o12mr77749109wrg.322.1609766825933;
        Mon, 04 Jan 2021 05:27:05 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id y6sm33450774wmg.39.2021.01.04.05.27.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jan 2021 05:27:05 -0800 (PST)
Cc:     mtk.manpages@gmail.com, Amir Goldstein <amir73il@gmail.com>,
        Steve Grubb <sgrubb@redhat.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] fanotify: Document FAN_AUDIT flag
To:     Jan Kara <jack@suse.cz>
References: <20201202154354.30778-1-jack@suse.cz>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e93b458c-fa59-4cd7-34af-e0fbed161c6f@gmail.com>
Date:   Mon, 4 Jan 2021 14:27:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201202154354.30778-1-jack@suse.cz>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/2/20 4:43 PM, Jan Kara wrote:
> Document FAN_AUDIT and related FAN_ENABLE_AUDIT flags.
> 
> Signed-off-by: Jan Kara <jack@suse.cz>

Thanks, Jan. Applied with Steve's Acked-by

Cheers,

Michael

> ---
>  man2/fanotify_init.2 | 7 +++++++
>  man7/fanotify.7      | 9 ++++++++-
>  2 files changed, 15 insertions(+), 1 deletion(-)
> 
> OK, here's my attempt to document the FAN_AUDIT flag. It would be nice if
> Steve glanced over it from the audit side to check things are sane.
> 
> diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
> index ca03b11dc98a..6becc7a680db 100644
> --- a/man2/fanotify_init.2
> +++ b/man2/fanotify_init.2
> @@ -155,6 +155,13 @@ supplied to
>  (see
>  .BR fanotify (7)).
>  .TP
> +.BR FAN_ENABLE_AUDIT " (since Linux 4.15)"
> +.\" commit de8cd83e91bc3ee212b3e6ec6e4283af9e4ab269
> +Enable generation of audit log records about access mediation performed by
> +permission events. The permission event response has to be marked with
> +.B FAN_AUDIT
> +flag for audit log record to be generated.
> +.TP
>  .BR FAN_REPORT_FID " (since Linux 5.1)"
>  .\" commit a8b13aa20afb69161b5123b4f1acc7ea0a03d360
>  This value allows the receipt of events which contain additional information
> diff --git a/man7/fanotify.7 b/man7/fanotify.7
> index 5804a1f30d6c..b5f096304cf4 100644
> --- a/man7/fanotify.7
> +++ b/man7/fanotify.7
> @@ -588,7 +588,14 @@ to deny the file operation.
>  .PP
>  If access is denied, the requesting application call will receive an
>  .BR EPERM
> -error.
> +error. Additionally, if the notification group has been created with
> +.B FAN_ENABLE_AUDIT
> +flag,
> +.B FAN_AUDIT
> +flag can be set in the
> +.I response
> +field. In that case audit subsystem will log information about the access
> +decision to the audit logs.
>  .\"
>  .SS Closing the fanotify file descriptor
>  When all file descriptors referring to the fanotify notification group are
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
