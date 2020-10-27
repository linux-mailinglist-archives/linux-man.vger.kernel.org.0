Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C75BF29BDA9
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 17:50:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1811880AbgJ0Qnp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 12:43:45 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:54309 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1810971AbgJ0Qgd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Oct 2020 12:36:33 -0400
Received: by mail-wm1-f67.google.com with SMTP id w23so1981776wmi.4
        for <linux-man@vger.kernel.org>; Tue, 27 Oct 2020 09:36:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=jwZeDifE+AXPnX0ad5AcMFzgtUv2zZOBMDoOTrMBT3k=;
        b=RIt8bwmDIOLVxnLsvtplYl9d50CKU/xo/wWZntHQ+IrxMIgwBSOAO/rHWrFMFZij3K
         /mHswFd8e2Z6pFPNBOo3nd8f1Ulq+yfS6IpJ8Q1xBIYvjcxxEJYxTf2qSgWWTb7s+Nd8
         56l6A413IaRTFYL3qEWl0iXZl1EcO1Y45rNH5y0fLbswifTkWX6V5sRwd2q3u4pf/Cqu
         1pDZxSjXd5B9Krcx7d6/rEQwGkNwkf7D4mTYqdys+Eea2/DTa2VAhTv7fZTiQkjOQ2v2
         9YyLfMYnifZGksKbDyLCo6vmr6pxzst6Yc3n49lBM6DQ53MQX878eqmERvoHW9IMdn24
         BIbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jwZeDifE+AXPnX0ad5AcMFzgtUv2zZOBMDoOTrMBT3k=;
        b=V4MULW53962tusXbLb+DnEpHyFKAdXok3HT4iBY+LcdOGo57pTonfT5na+eAe6+Uh/
         lmgD7WxJYbnJpLvygRv3hQ/MPFIZnTpfc6IB4uUncZZl9LS4Ni+cY7FgWUK9h0RiUkV4
         yoNsvce6P5apCmJld3qm8hblQ0DeS7Q0GcVD2yrxQPW1T0bNHL6kq65bhuv/8KWKVA4h
         9e26vMOfvMazK0t6YZtl16WPY9mEPNnki9qgBnqEFxPJlBJheDdR2CXTzxnXhvvb8MCU
         V4TKUDSSN6eFzaQ8It8baW5toR0biCTOkZC1+laz+1Iu+ilqc8q5lbeO8u4CU7TyclgC
         R+5Q==
X-Gm-Message-State: AOAM533B3MIoX01MmApUeln1LKh7DU8mG+3lvKRlNjaUlyVWRMcY7Pua
        vpLxsgpncPfP8my19bO6HOw=
X-Google-Smtp-Source: ABdhPJxJTmJRnmBmA4VB2my4pGNRAEAOmjA5CVd84bI7ZgaswIjG0f6mIgPieBZyrXFHyqT43HhbEw==
X-Received: by 2002:a1c:4445:: with SMTP id r66mr3526466wma.140.1603816592207;
        Tue, 27 Oct 2020 09:36:32 -0700 (PDT)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id q7sm2693675wrr.39.2020.10.27.09.36.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 09:36:30 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 2/6] system_data_types.7: off_t: Add note about
 _FILE_OFFSET_BITS
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201027162114.47521-1-colomar.6.4.3@gmail.com>
 <20201027162114.47521-3-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1467c13a-638f-0e49-db2e-21c2633320d1@gmail.com>
Date:   Tue, 27 Oct 2020 17:36:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201027162114.47521-3-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Applied!

On 10/27/20 5:21 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man7/system_data_types.7 | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index c02782ed8..e846de68b 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -756,6 +756,11 @@ since POSIX.1-2008.
>  .IR "Conforming to" :
>  POSIX.1-2001 and later.
>  .PP
> +.IR Notes :
> +On some architectures,
> +the width of this type can be controlled with the feature test macro
> +.BR _FILE_OFFSET_BITS .
> +.PP
>  .IR "See also" :
>  .\" .BR fallocate (2),
>  .BR lseek (2),
> @@ -768,7 +773,8 @@ POSIX.1-2001 and later.
>  .BR fseeko (3),
>  .\" .BR getdirentries (3),
>  .BR lockf (3),
> -.BR posix_fallocate (3)
> +.BR posix_fallocate (3),
> +.BR feature_test_macros (7)
>  .PP
>  See also the
>  .I loff_t
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
