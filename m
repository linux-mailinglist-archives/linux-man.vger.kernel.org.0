Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 496AE1B4324
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2020 13:22:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726415AbgDVLWZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 22 Apr 2020 07:22:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726104AbgDVLWY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 22 Apr 2020 07:22:24 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32992C03C1A8
        for <linux-man@vger.kernel.org>; Wed, 22 Apr 2020 04:22:24 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id e26so1870062wmk.5
        for <linux-man@vger.kernel.org>; Wed, 22 Apr 2020 04:22:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=a5Ra86e7NyNsC9Nx/Zm3olOeFH3MxtexAgOzfrZq4Y0=;
        b=Lb8+Hgx1JTc0v6suCvfFoPZjRrOHj5bBP8GYzcZnpUXB2+2BTs+UZTAAAuAicieE9W
         cWPWIiiHQIpwcp+R1vgxN7bvH/rvgAGCbwBY2gMVuGvyYHz8IwyHUXNgMU2bWEpprDgE
         KkxGjP6mhc+YhuDCmRSkEkQbCcTtQ3/cDmEu5ze6OxmHc7HROiGrjKsUxCIupZgkZcHm
         IFq1/OTTXQ4XjaubkPHKZWlWi362h5d8Kvd+Nq8rd1NdYzhSELGoqAQ/L7QBaodEp4yE
         CXpsi4Hw++12GhJM65yTTzXx5YVvv1/NCBvH+XlBkT7reqDFgMYQIXqSHXPsBj2T2uD6
         rHeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=a5Ra86e7NyNsC9Nx/Zm3olOeFH3MxtexAgOzfrZq4Y0=;
        b=G5eB3oCOmftdbhOs9tZcJTSnzzClGRv4AUj0opVSSLavNsmE1ZhMBHgBmZZ8/eZmjo
         oTf/bgzdw5zQnxCRQsE+ivE1MO0i2kHtgf5gq0DEK49qcsktuWlQHYv+FBS0NjUiO5R1
         8tr5vsY8KjUyT8q13IoN0T1f6XQNHWegYvAm2H2eRWvYt5bAMp3Zuohe/XDAEL8u4uBz
         rvixR9LpTVT9YcGW3+9zMZfc01BZmjmO6LUVosk27ONfRz6OB4xfztdZBlUvGoVA+6M+
         rylyYQWmgC46WJ+fbIVS4KOZS/ybIGbgFgF47CpCvu/cdlI0IC1RkyvxTZjkzC8AirOT
         nqJw==
X-Gm-Message-State: AGi0PuZi/WbYSyq61eNkUUTwXu1a1emw3++Hb1wOZfpmqSaGuGMGy7Ae
        0eZhgV980z8ekgInYmqNQlr81KZk
X-Google-Smtp-Source: APiQypJca6D3LZXkDUA4hWwxJSHjJKkxvdHEYNAjepcrMg1D8lKJd+aw+x+AggXF4s/8MJAUyH+KfA==
X-Received: by 2002:a05:600c:2218:: with SMTP id z24mr9906642wml.82.1587554542736;
        Wed, 22 Apr 2020 04:22:22 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id y5sm8139747wru.15.2020.04.22.04.22.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Apr 2020 04:22:22 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] prctl.2: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20200422095921.4813-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <37175cb3-6238-79c0-caf8-2b7c6c431f64@gmail.com>
Date:   Wed, 22 Apr 2020 13:22:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200422095921.4813-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 4/22/20 11:59 AM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
> ---
>  man2/prctl.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index 7a5af76f4..195870908 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -248,7 +248,7 @@ for security reasons, this feature has been removed.
>  in
>  .BR proc (5).)
>  .IP
> -Normally, the "dumpable" attribue is set to 1.
> +Normally, the "dumpable" attribute is set to 1.
>  However, it is reset to the current value contained in the file
>  .IR /proc/sys/fs/\:suid_dumpable
>  (which by default has the value 0),

Thanks, Jakub. Applied.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
