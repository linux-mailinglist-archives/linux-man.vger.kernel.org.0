Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4A53513ED7
	for <lists+linux-man@lfdr.de>; Sun,  5 May 2019 12:29:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727507AbfEEK3o (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 May 2019 06:29:44 -0400
Received: from mail-ua1-f66.google.com ([209.85.222.66]:45581 "EHLO
        mail-ua1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725873AbfEEK3o (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 May 2019 06:29:44 -0400
Received: by mail-ua1-f66.google.com with SMTP id o33so3628444uae.12;
        Sun, 05 May 2019 03:29:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=WzmuVexjIOdPIVFzh6r2aPj/iITGFbWKqKBmj0pGs8Q=;
        b=B95ot/HhGbc4xMnenfmyBm6TFxcDQjVp9BYAItaSSm4stQ4T4mx72ib6AvqR+l2o4+
         zx+nORT3rjIzY+D+L6a6OA+FhmpI8W19j5dynO6kv/aLCPu5DmkhRTMTLhvgMcbh6MCN
         SqZlw2vO2tmXB51S/9UUdvD9oJVND1HLgbbnzveUKwHUavH3f7l4s6P1LzZ1dZIz1wry
         Yzn8OvjS9wlmM0ffzTqSW3omHaIWmGNtrJyFRIB7EBJlwk0zrnQKD0Ydr87sk8pX+key
         zO2PE6hWE2PggvDP8p1TDV7RUtcYuX/JW+B7O5neqW1J6CUvTTTVXYBJr4iEu6Oit0pP
         APKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=WzmuVexjIOdPIVFzh6r2aPj/iITGFbWKqKBmj0pGs8Q=;
        b=ZSh+ZcA//Bk6f2jfiu0UAoOZK4O0cpMF/7RQfHuiN77iJigVWX+o+QNDkZQt4nDJpd
         mopqmF3qUDgak0vbFFdD7Zma0NiSpaVP8p0dgX2hvJ0EhCcl8P1nTXayir5QLtnLP7Ho
         zPeLbQRgjqSe5ZO+CW4UVGUxN7M69S+11PQxm6BnHWRkhm2eqcCxaMylQ4ktWm2K4fK0
         2iVs32I3Vcvl567+U5EzISZ1N0eW/zG+OIolLev6Og1h9bIfY5dDIC6hmYyH1wGo59aD
         RPhKZ1ULK18250/2K9/StSy3UaR5zGc+qW7hoJrORq+y8gtpr3jjzjBlQjNkSbu2lyHM
         CZdQ==
X-Gm-Message-State: APjAAAXyeQXJzmQX/DVJR/Oa2FQumgT3TUYSLy4P1SQU01BxGA0C+ajG
        h3EICHeSBn6N0TPe8uZI15aQChOw
X-Google-Smtp-Source: APXvYqxKlp66veNNGeGEEnYNciskotCRCXUlT/JhAQra/7dFHLomXz6NFGafTDGX/aBjqzWVlhfzdQ==
X-Received: by 2002:a9f:2b84:: with SMTP id y4mr7275843uai.28.1557052182852;
        Sun, 05 May 2019 03:29:42 -0700 (PDT)
Received: from [192.168.0.8] (dynamic-190-25-35-141.dynamic.etb.net.co. [190.25.35.141])
        by smtp.gmail.com with ESMTPSA id b81sm2284394vkf.47.2019.05.05.03.29.41
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 May 2019 03:29:42 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org, slavomir.kaslev@gmail.com
Subject: Re: [PATCH 2/2] tee.2: Note EAGAIN can occur when called on
 nonblocking file descriptors
To:     Slavomir Kaslev <kaslevs@vmware.com>
References: <20190412140247.9897-1-kaslevs@vmware.com>
 <20190412140247.9897-3-kaslevs@vmware.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a95fd0e5-adc9-5bdd-d00c-2d096c2fc3d1@gmail.com>
Date:   Sun, 5 May 2019 05:29:40 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190412140247.9897-3-kaslevs@vmware.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello again Slavomir,

On 4/12/19 9:02 AM, Slavomir Kaslev wrote:
> Signed-off-by: Slavomir Kaslev <kaslevs@vmware.com>

Thanks! Applied.

Cheers,

Michael


> ---
>   man2/tee.2 | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/man2/tee.2 b/man2/tee.2
> index 7bb0d3a31..03d043b46 100644
> --- a/man2/tee.2
> +++ b/man2/tee.2
> @@ -100,7 +100,9 @@ is set to indicate the error.
>   .B EAGAIN
>   .B SPLICE_F_NONBLOCK
>   was specified in
> -.IR flags ,
> +.IR flags
> +or one of the file descriptors had been marked as nonblocking
> +.RB ( O_NONBLOCK ) ,
>   and the operation would block.
>   .TP
>   .B EINVAL
> 
