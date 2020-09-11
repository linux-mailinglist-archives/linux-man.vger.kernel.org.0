Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3FBE3265C3B
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 11:12:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725779AbgIKJMj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 05:12:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725774AbgIKJMh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 05:12:37 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA75DC061573;
        Fri, 11 Sep 2020 02:12:36 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id q9so3729329wmj.2;
        Fri, 11 Sep 2020 02:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=iVuZbTVcQSrrVEPpwKsg24X5Ol39bwWfizZYHRTRwPE=;
        b=GmK/pO173Z7r1u4+xT3311cYlKHzLPAiztBWYn5MYKwfwG0bz/LvKT88CQ/Gh7xb4O
         IpBKgdHzLrkwpf9kQRsMY1W/Xyl4NF7o5OBZxOx5Tb811QphL1xcxgI2iYkScbk+rgCI
         Eoxvn2Db6tb7dytYTIlUUpDVu7xxU9DJVeBX3fR2QL3D3bvT88cZQ4Sj+F5y/tH4dtVJ
         W+1NwmRsa9bLvM9OyoIIElKUmBc+F88awwiIWreR6oTm4y5T6MeIkgheBkwU8KYqdtUY
         +9pOX4wV7SrpCy/sTJW1fmznzt1vKJii9TKLmV9qAxYZy/WWS6ZfjShGnMC79N08exGt
         A6yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=iVuZbTVcQSrrVEPpwKsg24X5Ol39bwWfizZYHRTRwPE=;
        b=mfZrH55W7LwobMmpvwDBl47DMJoVnNvb852yJ3wMvELyg4HuxoSZllFZNbpKF/5KRL
         ae238QF+iHklyVPKd+4VkVGHOzmggsmjE32v5l2ht4f/agHmwp3sAUvAsgz+piYwoY3i
         HqJEfp/Gf+v0C2a6LEipRkd9f47aAcbfWwDmUSSvxOCa9wMvIbTxHNE2CvcEhRVMfJNC
         qJ01fLOuP45rFBSGZxaCSI0AgAah+btfF8W62a/uTnwK6kYccVLAs2cgjfiItqi4HnU1
         LPt2UM30JMmn8IWaHs9cT8i/fSxRtA6VbBEAHwl4AtQpc7hK1Cw5EqvbWToEFN1lSJ64
         bFUg==
X-Gm-Message-State: AOAM530mPOktggTeW4eK8obGwrkDVMpbVGXHU0NyM3zuHnJ9DYWlXSfl
        0WL+SnqxV5bezMQpTaYFiqrkAX4BuAk=
X-Google-Smtp-Source: ABdhPJx8kfDW9s3wW6bRWmuOFhIdsaM5hLLM9wNa7SZ8j/C8DbkXiAKxqBNiH5lveHMZq6ai7xMY8Q==
X-Received: by 2002:a1c:2983:: with SMTP id p125mr1201608wmp.21.1599815555072;
        Fri, 11 Sep 2020 02:12:35 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id i3sm3307338wrs.4.2020.09.11.02.12.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 02:12:34 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 24/24] bpf.2: Add missing headers
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-25-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <eb985a52-1f4e-0c48-9bb0-3ad91646ad2c@gmail.com>
Date:   Fri, 11 Sep 2020 11:12:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200910211344.3562-25-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/10/20 11:13 PM, Alejandro Colomar wrote:
> I added some headers to reduce the number of warnings.
> I found the needed headers by using grep, but maybe some of them
> shouldn't be included directly.
> 
> The example still has many problems to compile.

Yes, there are so many problems there, I'm not sure it's really worth
adding the header files. It increases the impression that this is
somehow a complete program,  when it's not. I agree this is a bit of
a mess, but I think it's probably best to leave the example as is.
As the manual page  says:

       Some  complete working code can be found in the samples/bpf direc‐
       tory in the kernel source tree.

Thanks,

Michael
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man2/bpf.2 | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/man2/bpf.2 b/man2/bpf.2
> index b45acde76..d26d6a43d 100644
> --- a/man2/bpf.2
> +++ b/man2/bpf.2
> @@ -981,6 +981,18 @@ ioctl(event_fd, PERF_EVENT_IOC_SET_BPF, prog_fd);
>   * 3. attach prog_fd to raw socket via setsockopt()
>   * 4. print number of received TCP/UDP packets every second
>   */
> +#include <assert.h>
> +#include <errno.h>
> +#include <stddef.h>
> +#include <stdio.h>
> +#include <string.h>
> +#include <sys/socket.h>
> +#include <unistd.h>
> +#include <linux/bpf.h>
> +#include <linux/if_ether.h>
> +#include <linux/in.h>
> +#include <linux/ip.h>
> +
>  int
>  main(int argc, char **argv)
>  {
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
