Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3D212EAA29
	for <lists+linux-man@lfdr.de>; Thu, 31 Oct 2019 06:22:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726875AbfJaFWp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 31 Oct 2019 01:22:45 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:40436 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726552AbfJaFWp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 31 Oct 2019 01:22:45 -0400
Received: by mail-wr1-f68.google.com with SMTP id o28so4768564wro.7
        for <linux-man@vger.kernel.org>; Wed, 30 Oct 2019 22:22:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=YvL6yauwUITzesjCHNu2szs2RrsGy8lLDFC1hV8lUYs=;
        b=XBl70Fxufm/a0zC39Mg80X4w4Uc7CZXOC2gIUt34YUTcRF6rxIV4vCX3yCu+/kr3WK
         qa/gZZlutLtN9Taw5mV1iEK8rsefkM45WY0qjZ0ZjoJ6VOLJVBvEvb5yDHkSizMtZOPu
         B14cErUS3GA3HFVRrIdMCGezw2L99GqNJBJK37ZQ1bG4rBjIqfg5qJL3I3DDWhbaKt88
         mV1wapDu9bfvzIuIATV51nMoYEgrBJflXAWO69YAHNKmWsm6G5f4tGK465g2Uee30496
         kjgm/qPgJf1uBmEnHP3B2oewPsDmpSbKOV/pn6/RQcDV9iMYh1plTJ6i7X21X8iRcSBK
         wi7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=YvL6yauwUITzesjCHNu2szs2RrsGy8lLDFC1hV8lUYs=;
        b=iklTAzJVXuZ2zMkNPa+lRUtJkIxEo2hcCWUNpl8p+k513HW4JUj3rksDRXHQKFfPer
         tOX8JVJ00GqNLHxatXz6vPA0EEMWVVsBDi+YQYZ48AsOkhjiK0TbyfUI9nEEKcqsRZrY
         noT8n3ac7bCuY/1ROzmZLLsFRbXCRrG8TNlQ8iLLgf/6tdedWHhqtEAwmBfv8HLGpVLQ
         s1gQeJfDAFpROizvfBBes9A3/cy4QagYxg3IaIpWrd0zCdkXnxiHZTCA6VPe42/0IYTV
         NFbvrfSVDuP71XnXtgdsSqFUuqCl418HTUhCIMes1I0ATA7USGdXC1dHTg6XQqS67cYl
         7GrA==
X-Gm-Message-State: APjAAAU7QAvCNuHVBFMbTgHVVliVQJTbd+0UOBl+lQycSJM9SrdTPJRC
        BcUreLX1AqMQgIpPf4Ya0F+kNU3MbFw=
X-Google-Smtp-Source: APXvYqysgt1kVDNJ/CiJvuUL6dJ42APYLzjDwN5pJvgRy6y348hNQ8zovHSnMbBKX54mv5+czfqp1g==
X-Received: by 2002:adf:ffd0:: with SMTP id x16mr3325610wrs.86.1572499362965;
        Wed, 30 Oct 2019 22:22:42 -0700 (PDT)
Received: from ?IPv6:2a01:e35:2f38:d7b0:e8b5:a4a9:346b:8c65? ([2a01:e35:2f38:d7b0:e8b5:a4a9:346b:8c65])
        by smtp.gmail.com with ESMTPSA id z10sm2523751wrw.12.2019.10.30.22.22.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2019 22:22:42 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] clone.2: include clone3 in NAME section.
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20191028105054.6447-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <cf39f878-7fde-1fae-56c4-f8a7afc141f2@gmail.com>
Date:   Thu, 31 Oct 2019 06:22:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20191028105054.6447-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Thanks, Jakub.  Patch applied.

Cheers,

Michael


On 10/28/19 11:50 AM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
> ---
>   man2/clone.2 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/clone.2 b/man2/clone.2
> index c4afdf449..7d1106604 100644
> --- a/man2/clone.2
> +++ b/man2/clone.2
> @@ -41,7 +41,7 @@
>   .\"
>   .TH CLONE 2 2019-08-02 "Linux" "Linux Programmer's Manual"
>   .SH NAME
> -clone, __clone2 \- create a child process
> +clone, __clone2, clone3 \- create a child process
>   .SH SYNOPSIS
>   .nf
>   /* Prototype for the glibc wrapper function */
> 
