Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0866527A732
	for <lists+linux-man@lfdr.de>; Mon, 28 Sep 2020 08:04:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726469AbgI1GEn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Sep 2020 02:04:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726412AbgI1GEm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Sep 2020 02:04:42 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94538C0613CE
        for <linux-man@vger.kernel.org>; Sun, 27 Sep 2020 23:04:42 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id e11so3619085wme.0
        for <linux-man@vger.kernel.org>; Sun, 27 Sep 2020 23:04:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Gho4CNsY+CexjH0akIbz8cz8tSZra67Ao+cUGJ6Xc0Y=;
        b=s8bbpph5yEDZgfRFzZBnGEaT5Vylk1yCMGe4nHq+aZ63IH7GliUFmsUBr7zCLCotV3
         68dyiR162FSr2iJFjHL4ujhNeH0RXgWet6nA5OhIinUOvouVLtLRrDoavGk63jPMoe0I
         4wcu/KOoPxmzex4fMz4wrlTSWN5eaZ9tnFnJlfQr/ElTpmlhMXGrSKm4YtISARrLA7Do
         b8827YFQdDun8JCTMxotShfWqju4B3ahUc8pMiXoJOmj6unPr4S89RbdJhYXXNi9XFHQ
         ID/jZ2+uubZeWN2E0PE28RU2xLA3JF/Q+ejEly9gMJ1molATs+RpYyQaYt2ULz+NVzZV
         Ne6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Gho4CNsY+CexjH0akIbz8cz8tSZra67Ao+cUGJ6Xc0Y=;
        b=g95x+NnzZAT7brnxmhcsLrtUmE0UaD5k5A+FvDI1EJF+JBlzlN8d/tTYXkKCycAS6/
         Xlvid6dgXj6DjrjW0dBp3WZmYQc6TI1JC8xA7nDujLIvP5D5aBcf4z4yE55hI4kpYd1V
         WNVxZuCi+uNZdSGbxwdLIgf+GxSlW0OyT9W7dgtJvRZNy5OV/I2iSHomW28ksj7x/xti
         3sR84xhtMV8/IOjz/ZwDHhCPO2m4lZtk37w94kRnNPnw7gtD8qtptw7jUbvUiPOvl+uk
         bXmGmZQxL0CvDykrKUqNYNFGY+E0KHeCerGdw54LFbmjfkfGTR+DfyVyYTHKNXYRCYFH
         fPxQ==
X-Gm-Message-State: AOAM5302kEDVdBmpWmbC8iTKIwld64LZP3FXuh+dEr5C3rsNHisPN7jH
        V3ws4h1YMlRKTGWQBd6GlmY=
X-Google-Smtp-Source: ABdhPJy2HXExIBTBNHtvfc3Mmc204NnXxsFRo295mE/wEm9M2sibydHQdZeA1gD71R2tQqKsfXRtfw==
X-Received: by 2002:a1c:7918:: with SMTP id l24mr10064264wme.46.1601273081338;
        Sun, 27 Sep 2020 23:04:41 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id v128sm7816908wme.2.2020.09.27.23.04.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Sep 2020 23:04:40 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 2/3] system_data_types.7: Add 'FILE'
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200927211345.20433-1-colomar.6.4.3@gmail.com>
 <20200927211345.20433-2-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1a517588-29c1-f728-37ec-49e9825be321@gmail.com>
Date:   Mon, 28 Sep 2020 08:04:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200927211345.20433-2-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/27/20 11:13 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man7/system_data_types.7 | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index ff0403df9..16930985e 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -197,6 +197,29 @@ Conforming to: C99 and later; POSIX.1-2001 and later.
>  See also:
>  .BR fenv (3)
>  .RE
> +.\"------------------------------------- FILE -------------------------/
> +.TP
> +.I FILE
> +.RS
> +.br

See my previous mail. In the meantime, I'm okay with applying
this kind of formatting for this (and following) patches, though
it may need changing later.

> +Include:
> +.IR <stdio.h> ;
> +or
> +.IR <wchar.h> .
> +.PP
> +An object type used for streams.
> +.PP
> +Conforming to: C99 and later; POSIX.1-2001 and later.
> +.PP
> +See also:
> +.BR fclose (3),
> +.BR flockfile (3),
> +.BR fopen (3),
> +.BR fread (3),
> +.BR stdin (3),
> +.BR stdio (3),
> +.BR unlocked_stdio (3)

Let's have fscanf() and fprintf() here. On the other hand,
I think unlocked_stdio(3) probably isn't needed.

> +.RE
>  .\"------------------------------------- float_t ----------------------/
>  .TP
>  .I float_t

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
