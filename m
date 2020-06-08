Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9F4181F208E
	for <lists+linux-man@lfdr.de>; Mon,  8 Jun 2020 22:15:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726725AbgFHUPO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Jun 2020 16:15:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726723AbgFHUPO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Jun 2020 16:15:14 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49286C08C5C2
        for <linux-man@vger.kernel.org>; Mon,  8 Jun 2020 13:15:14 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id d128so889221wmc.1
        for <linux-man@vger.kernel.org>; Mon, 08 Jun 2020 13:15:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=YXpiyWhcEBoBqQEVUO7oVnO22qIwaOo2C1uGM8k5zpo=;
        b=aGC7aNoBvX6RavIR2Uv1H0TkEoQjKc0uwSsa5uRH/Dpe1kK3Hs8ZliAJbgy0IQWC9C
         kETrsKw6cD3PsajGQum2sg4MmRpBzEQWTqABDumGxyeH+GnDCu0bN/qJHl+FIFpgX+BT
         1m38TxiWnf4XAv3i58vRJoGNNW5xvx3y3w70LIABE8Xo8ISupWcL25/EbSvrSzrJMQng
         n/UgiKvn4fNv26fhEm7hfrz8OqaKp3CJp6UIxHtKDIF21GwJi+QvlZRJ8R0jYmw/bRM2
         l5xj+zHk6PUskAkkoXDsaXW6u5S8ZGH8+ezWHyYmRFbfqTv+B+B/qZxmxQYOXpaJJdCv
         Y8mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=YXpiyWhcEBoBqQEVUO7oVnO22qIwaOo2C1uGM8k5zpo=;
        b=pIdGZUcIkWTGj9DHDndJ1qXe0wsyHqddwaLwyro/GvJlAyfziJdsmMh/UhL3wy/hDg
         Q8ZXY172SqXrxGiGy0xZVYMrUtzODKRRlj0Jtpl144lbb5f9qo7J0/L2LRBVrHAON0E9
         eF00VC61uyvubmobe2UfTiTt0n72vwpFevHM6g/+CfXg8ZxN9oRplnKh+mjNA+jJ339m
         ixbLcGSEXPCJ98JENTLteMVyEVksdSmtmCQW+GY9SKeydPO+t455lFD2O8PW1qqgjJjk
         qEUXKG0uAipTtzdRmSM3gTR0hOqHn788PWHuri0QRrU8Wb+1hJkHHHKAkQkNMRX96jFK
         XZEQ==
X-Gm-Message-State: AOAM532ovsmQCaSgmyXPispoRRME2dDtB2uk9fAhYiCyY7w8hwo3yfLV
        lAxIvZL0zwBi0N4DQai/ZM9Z2AWUuBQ=
X-Google-Smtp-Source: ABdhPJwXE+XdVRbH/+re8HQW6RbdPOJvMuGSWC62VBONiJxczeZ3G5ezP+5iSSekRbzorBplCEfTNw==
X-Received: by 2002:a1c:7e52:: with SMTP id z79mr414617wmc.104.1591647312865;
        Mon, 08 Jun 2020 13:15:12 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id o6sm814877wrp.3.2020.06.08.13.15.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Jun 2020 13:15:12 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 2/3] fanotify_init.2: move out of place entry
 FAN_REPORT_FID
To:     Amir Goldstein <amir73il@gmail.com>
References: <20200529092530.25207-1-amir73il@gmail.com>
 <20200529092530.25207-3-amir73il@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9b30ffb7-c532-a2e5-ccd3-96ef2890ff29@gmail.com>
Date:   Mon, 8 Jun 2020 22:15:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200529092530.25207-3-amir73il@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 5/29/20 11:25 AM, Amir Goldstein wrote:
> It was inserted in the middle of the FAN_CLASS_ multi flags bit and
> broke the multi flag documentation.

Thanks, Amir. Patch applied.

Cheers,

Michael


> Signed-off-by: Amir Goldstein <amir73il@gmail.com>
> ---
>  man2/fanotify_init.2 | 60 ++++++++++++++++++++++----------------------
>  1 file changed, 30 insertions(+), 30 deletions(-)
> 
> diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
> index 0131575ab..5cfeea023 100644
> --- a/man2/fanotify_init.2
> +++ b/man2/fanotify_init.2
> @@ -94,36 +94,6 @@ already contain their final content.
>  This notification class might be used by malware detection programs, for
>  example.
>  .TP
> -.BR FAN_REPORT_FID " (since Linux 5.1)"
> -.\" commit a8b13aa20afb69161b5123b4f1acc7ea0a03d360
> -This value allows the receipt of events which contain additional information
> -about the underlying filesystem object correlated to an event.
> -An additional structure encapsulates the information about the object and is
> -included alongside the generic event metadata structure.
> -The file descriptor that is used to represent the object correlated to an
> -event is instead substituted with a file handle.
> -It is intended for applications that may find the use of a file handle to
> -identify an object more suitable than a file descriptor.
> -Additionally, it may be used for applications that are interested in
> -directory entry events, such as
> -.BR FAN_CREATE ,
> -.BR FAN_ATTRIB ,
> -.BR FAN_MOVE ,
> -and
> -.BR FAN_DELETE
> -for example.
> -Note that the use of directory modification events are not supported when
> -monitoring a mount point.
> -The use of
> -.BR FAN_CLASS_CONTENT
> -or
> -.BR FAN_CLASS_PRE_CONTENT
> -is not permitted with this flag and will result in the error
> -.BR EINVAL .
> -See
> -.BR fanotify (7)
> -for additional information.
> -.TP
>  .B FAN_CLASS_NOTIF
>  This is the default value.
>  It does not need to be specified.
> @@ -184,6 +154,36 @@ supplied to
>  .BR read (2)
>  (see
>  .BR fanotify (7)).
> +.TP
> +.BR FAN_REPORT_FID " (since Linux 5.1)"
> +.\" commit a8b13aa20afb69161b5123b4f1acc7ea0a03d360
> +This value allows the receipt of events which contain additional information
> +about the underlying filesystem object correlated to an event.
> +An additional structure encapsulates the information about the object and is
> +included alongside the generic event metadata structure.
> +The file descriptor that is used to represent the object correlated to an
> +event is instead substituted with a file handle.
> +It is intended for applications that may find the use of a file handle to
> +identify an object more suitable than a file descriptor.
> +Additionally, it may be used for applications that are interested in
> +directory entry events, such as
> +.BR FAN_CREATE ,
> +.BR FAN_ATTRIB ,
> +.BR FAN_MOVE ,
> +and
> +.BR FAN_DELETE
> +for example.
> +Note that the use of directory modification events are not supported when
> +monitoring a mount point.
> +The use of
> +.BR FAN_CLASS_CONTENT
> +or
> +.BR FAN_CLASS_PRE_CONTENT
> +is not permitted with this flag and will result in the error
> +.BR EINVAL .
> +See
> +.BR fanotify (7)
> +for additional information.
>  .PP
>  The
>  .I event_f_flags
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
