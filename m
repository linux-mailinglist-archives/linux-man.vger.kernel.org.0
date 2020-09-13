Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 23801267E0E
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 07:55:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725883AbgIMFzX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 01:55:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725806AbgIMFzW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 01:55:22 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D9EEC061573
        for <linux-man@vger.kernel.org>; Sat, 12 Sep 2020 22:55:22 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id a17so15228125wrn.6
        for <linux-man@vger.kernel.org>; Sat, 12 Sep 2020 22:55:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=u0YH9q/bYc9rFQV8byfs1FLXaGQfiLuIEE5Ry8b9qHo=;
        b=ZxdxMKmAQfYR9PxYJwmRB7UUz8yVrYcI2dMAbbSFPMR5eABefQIvWeVEYeXDWvd+h8
         nN3DcTYuTbiIpLY6JVEt+5AecqN/O8S0h+EwpQONzYI0suSGbeWmH03tU5bMSg5IWD3z
         kV+M/e4ec+tdYVQyR5JV4koeHXQubsyUPwf0gJAfbyXVa3kzMrNe8lzvAPHpd4gJ/uax
         nn0Uefc/YrGuAqIfTwoC5t6SpS3n/Ij8+vH5t6/ajJnMg8ToqTMwxQeyuV436BFwTPM9
         S+BTb7VH30T0iGU137MXOtQL0L38Y0aZWA8J3yj8CAo4yHKM9HN3hfS9JHHkDG5JEIZL
         tQ5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=u0YH9q/bYc9rFQV8byfs1FLXaGQfiLuIEE5Ry8b9qHo=;
        b=SE5LCnU5HtmPMCa2ydGtUzHtyFEG27/Q3StFRTx0MokUEeLzmohdEVPqlYCXmLhgRS
         BySToo9dOVzVduQtG9j8NulNsvBMEiYNrOEYiV1cNFMvLuUoBtkiH/HBtv1046lGJi5P
         Pj4aRL5bDWwPLRmA1PoHd0vHU60dMCKnDvi6mRend7H69ON8NvdTX00ywYIE8kuZqauF
         PKV8844B1BhaqVSC6WTNigrGon8PGtHm8lqxg5D8q7CGFl/IcMhy+gaecXBs0+/rjHDX
         obMIihUF5mxFoMoarsb8qpp71Y+2NHLkeleiVF9fLpohxuMrxCMNISohL/MfFNk7+WQM
         iy1w==
X-Gm-Message-State: AOAM532EreGYq1OX8tTrlkNoJExlqGk8u6SM49EWNjGCtxGMIVunJHIe
        lkJgBzqJ4z6Ga4RMTqZOYyeQGe/j+YI=
X-Google-Smtp-Source: ABdhPJyE9DHFfrEbvIepNO2o7b69ZSa8S+t84ZPzwxfjbmumDEWA2QdIt+X/GB1BQeA+HFEijGSndQ==
X-Received: by 2002:a5d:4448:: with SMTP id x8mr10224447wrr.207.1599976519420;
        Sat, 12 Sep 2020 22:55:19 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id n11sm13729534wrx.91.2020.09.12.22.55.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Sep 2020 22:55:18 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 12/12] pidfd_open.2: Cast 'short' to 'unsigned int' when
 printing with "%x"
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
 <20200911231411.28406-13-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <002ec44f-8267-89bf-3959-955a0e1fa449@gmail.com>
Date:   Sun, 13 Sep 2020 07:55:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200911231411.28406-13-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/12/20 1:14 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man2/pidfd_open.2 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/man2/pidfd_open.2 b/man2/pidfd_open.2
> index 0256d6d8c..c51e9fd67 100644
> --- a/man2/pidfd_open.2
> +++ b/man2/pidfd_open.2
> @@ -253,7 +253,8 @@ main(int argc, char *argv[])
>          exit(EXIT_FAILURE);
>      }
>  
> -    printf("Events (%#x): POLLIN is %sset\en", pollfd.revents,
> +    printf("Events (%#x): POLLIN is %sset\en",
> +            (unsigned int) pollfd.revents,
>              (pollfd.revents & POLLIN) ? "" : "not ");
>  
>      close(pidfd);


Does something similar not also apply as for patch 11, since
the short will be promoted to an int in a variadic argument
list?

Thanks,

Michael






-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
