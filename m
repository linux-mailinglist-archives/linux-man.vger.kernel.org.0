Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71B1F1B1550
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 21:03:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726710AbgDTTDV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 15:03:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726435AbgDTTDU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 15:03:20 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C33AC061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 12:03:20 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id s10so4404926wrr.0
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 12:03:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=wDIg2iC+h1lhKb0sZMpU0xzGTIgQ3+4SkG/U6wMvwk0=;
        b=bNGO8i7zuVk2FJqbXUe19kgZADTR6heRZNy28Fpv1/OXI95rwmxxDhUnRfMdXguaDo
         U1fpUZwWwMFL0nSCl+9Yos9fSG5YOiKW3+ln0YmWuhfveZZusOm9DZpOD19nGZV83Ub/
         pPivBgu+rEHKM8yJ+HzRSsoMy3XpB5z2NiPuZNNvIgTzteldN4dWZNzBgUG/RFvmx0Ni
         xJ1v1pb3I2p5OzFJVM5OFCKXgQQLddx2d9qfEH8NMD3ekBes/Q5cvFeZf8RguJHcsnNk
         zTROSZcQOfQFGbb8XZjgKqBWveGrG9NJcu9NN1OXI3P3cQLXciXBbreYTEYLI2ZFhF6v
         fmGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=wDIg2iC+h1lhKb0sZMpU0xzGTIgQ3+4SkG/U6wMvwk0=;
        b=O277lENG/dqMEsOIUQ/UCRiIm8/BfpH2/1kcO+AG32mzrQJxLzwvOmN44XkLNUUIsp
         tg0OXSmVeqcwYpkXA56gMrhqCeQEys1713a/qXI+nr+2G/j2yTkEHBoX8WDOQ2NWaHJ7
         4SVeMs6sjwa/bTnvRRNr59v57v3yTpHruoPwx7PZzeRScyoKhuPMvcykLMeGSDo5YXsB
         +Jys1F+ONKKbkB65ifruP9SpuEPk9OxA6pX79HJSsCIEfwyGbN4JMEl1ml/MXnfyFgZj
         hC4XTuRifaoMZGgksirED/B/K1SDP5IcK5NMUnrenxpoKIsXtFcyWg2ikT/I+SRom3vw
         TkMw==
X-Gm-Message-State: AGi0PubUy2L/tneSYBrPlLkg+3zbI+1qdpfDxYmN3eJJxeSfom11g4iM
        zdikT6d9YNDABzIc6Hn7nEeRF+rX
X-Google-Smtp-Source: APiQypLgHNUW0iPvqCFRtT7xmW/Q7jx11KE2oMkElE7Wfrp2rKUAovyMd/wrEzsWN6d9nWISagv/qA==
X-Received: by 2002:a05:6000:12c7:: with SMTP id l7mr20986073wrx.239.1587409399246;
        Mon, 20 Apr 2020 12:03:19 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id v7sm1149897wmg.3.2020.04.20.12.03.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 12:03:18 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 2/4] fanotify_mark.2: Clarification about
 FAN_EVENT_ON_CHILD and new events
To:     Amir Goldstein <amir73il@gmail.com>
References: <20200420184259.29406-1-amir73il@gmail.com>
 <20200420184259.29406-3-amir73il@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <db43d178-b9b4-59a2-10dc-9a4d0c7fe642@gmail.com>
Date:   Mon, 20 Apr 2020 21:03:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200420184259.29406-3-amir73il@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Amir,

On 4/20/20 8:42 PM, Amir Goldstein wrote:
> Some of the new event types that were added in v5.1 along with init flag
> FAN_REPORT_FID are not eligable for reporting to a directory watching
> with FAN_EVENT_ON_CHILD.
> 
> Document the events that cannot be generated on children of a watching
> parent.
> 
> Signed-off-by: Amir Goldstein <amir73il@gmail.com>
> Reviewed-by: Jan Kara <jack@suse.cz>
> Reviewed-by: Matthew Bobrowski <mbobrowski@mbobrowski.org>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man2/fanotify_mark.2 | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
> index 687e20f4a..7fbcd5e36 100644
> --- a/man2/fanotify_mark.2
> +++ b/man2/fanotify_mark.2
> @@ -314,8 +314,21 @@ Events for the immediate children of marked directories shall be created.
>  The flag has no effect when marking mounts and filesystems.
>  Note that events are not generated for children of the subdirectories
>  of marked directories.
> +More specifically, the directory entry modification events
> +.BR FAN_CREATE ,
> +.BR FAN_DELETE ,
> +.BR FAN_MOVED_FROM
> +and
> +.BR FAN_MOVED_TO
> +are not generated for any entry modifications performed inside subdirectories
> +of marked directories.
> +Note that the events
> +.BR FAN_DELETE_SELF
> +and
> +.BR FAN_MOVE_SELF
> +are not generated for children of marked directories.
>  To monitor complete directory trees it is necessary to mark the relevant
> -mount.
> +mount or filesystem.
>  .PP
>  The following composed values are defined:
>  .TP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
