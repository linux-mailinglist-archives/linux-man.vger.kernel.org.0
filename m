Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3CDFB3E8564
	for <lists+linux-man@lfdr.de>; Tue, 10 Aug 2021 23:34:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234531AbhHJVfA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 10 Aug 2021 17:35:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234249AbhHJVez (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 10 Aug 2021 17:34:55 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3B20C061765
        for <linux-man@vger.kernel.org>; Tue, 10 Aug 2021 14:34:32 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id lw7-20020a17090b1807b029017881cc80b7so6260389pjb.3
        for <linux-man@vger.kernel.org>; Tue, 10 Aug 2021 14:34:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=oZe2YsS2rOG9MID92Y6l8YYIlyMgY7DWi0b/eWvwIFQ=;
        b=WmFAzwA31qpHif4MfuEYc0LwiF5MNP2uA3Y1buIbmVsSDYTKn2PyKFXsCZAA3aiJFm
         Kgn/dhvXD63RmBPqwU7ryhE1F0Lp3kUYH6URHy5ALy3c1KPoS8oBXhDQ81p8uWO9yDY/
         KDQxLPMKlHKUV+FGa2INr+nfWkPqWzqkwj9tEq9u78x6roxUk3CyvhQZZKXyWsw93/fO
         Sqps6XY6Rz+p/GXsIkR9YFBE9gx18BwESBtNJs4Ud+r4dAV4F/lO6HUDkN31wv2pKjbD
         LIJWHAgEWLwVpjiVh+AkxT8aBBVftPJcWfq7MX1VqGdqhVmhFRdl4nxv5JvMu0iENZ2o
         T/aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=oZe2YsS2rOG9MID92Y6l8YYIlyMgY7DWi0b/eWvwIFQ=;
        b=mTk9ndnz0OV1LsDkA1l+UskWvPfdi/mSvNO0/SNEhfo3ap835QUcDMUSZpZ83jZaBF
         NF6HTN93oW/A1eOf1d8pPTSvDPCVO3zPIwowEqIRTCJ0cF8prD9LHIfb3Rp+B4/PIGO7
         T2Vc9aZuxzlacL6Cm8rtmujnXNbmnrtqjjgbfs2KzAC6j4axh+eBSrc0IDvzgCPCLqwI
         d5Rkn5/l6+VEVILPQyLPAlzoYeRTjl87TwOrKNpTClJ/L2KRsosJPRQYMWx72c7e5/Pu
         uHVPkKMZK5VKkjFfOfegFu9S+Lxz0sW4btmBOvwkI6KlqSqq4KKBnzS0h2GOgjMATSTh
         AUlw==
X-Gm-Message-State: AOAM531oehkQqFvbekMY7aEuKF38cCsfTNmjd0Do/PYKT1Dj9T8LythE
        DV2EZ27uehBD9nolRzgH9Y5ZWyM6uq4=
X-Google-Smtp-Source: ABdhPJxBEZjYm1Zww8Eb2SssYnYdgHEGtPtObDwmDUVfEL2g0VKAJz/e9hgZxClWMNq4VVS86AwmwQ==
X-Received: by 2002:a65:6785:: with SMTP id e5mr294613pgr.199.1628631272077;
        Tue, 10 Aug 2021 14:34:32 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id w15sm22929773pjc.45.2021.08.10.14.34.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Aug 2021 14:34:31 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] fsync: note syncfs in in SEE ALSO
To:     Tycho Andersen <tycho@tycho.pizza>
References: <20210728181603.2694191-1-tycho@tycho.pizza>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <daad13cb-384f-13b3-9fc2-fc4ee10afd33@gmail.com>
Date:   Tue, 10 Aug 2021 23:34:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728181603.2694191-1-tycho@tycho.pizza>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Tycho,

On 7/28/21 8:16 PM, Tycho Andersen wrote:
> I didn't know about this syscall until just now somehow, but it seems
> reasonable to mention it in the fsync.
> 
> Signed-off-by: Tycho Andersen <tycho@tycho.pizza>
> ---
>  man2/fsync.2 | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/man2/fsync.2 b/man2/fsync.2
> index 0f070ed2c..32238dc07 100644
> --- a/man2/fsync.2
> +++ b/man2/fsync.2
> @@ -200,6 +200,7 @@ to guarantee safe operation.
>  .BR pwritev (2),
>  .BR sync (2),
>  .BR sync_file_range (2),
> +.BR syncfs (2),
>  .BR fflush (3),
>  .BR fileno (3),
>  .BR hdparm (8),
> 
> base-commit: fbe71b1b79e72be3b9afc44b5d479e7fd84b598a

I'm hesitant about this. syncfs(2) is documented in the sync(2)
page, which is already in SEE ALSO. Knowing that, do you still
think this patch has benefit?

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
