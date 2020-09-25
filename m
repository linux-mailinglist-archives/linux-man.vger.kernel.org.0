Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F53F27821F
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 10:00:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727697AbgIYIAL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 04:00:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727063AbgIYIAL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 04:00:11 -0400
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com [IPv6:2a00:1450:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19F7EC0613CE
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 01:00:11 -0700 (PDT)
Received: by mail-ej1-x641.google.com with SMTP id gx22so2393313ejb.5
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 01:00:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=qB7uvhpcnWsVTt1nvcm1JqQd0uaiRJEYpeyagZxfeLg=;
        b=nEQHtAo31t7iSR1jb2wxsD1LszYZFDbZLVbNjqqeplwUMsZicHJeVOuZ6/3170TFxQ
         ZcpWVoNhRA5QWEsdnjPHZTLvYMZUUVMxrhmYbg7DWeuR6zLBj/ZbMG97D4PYqGqkE/+1
         lcyMVZhb/G5NeNu/KcIJN1bA32KsnoNH50Pl+++XptQiqjJG5fFxlCamI8XR3x9QgVQi
         T3erIw/k8PTuix9JW4C96K79aqj4C34fJCScHNRSxk8xSPVOBVeBdVKmoSBaqvl9j/yK
         cW9U8cYUgIIagpPJLmJ4u7IJBmokbft2qlIvL17AU5K6xY6fB0L7eoidCtfqhiElskHT
         hR2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=qB7uvhpcnWsVTt1nvcm1JqQd0uaiRJEYpeyagZxfeLg=;
        b=WGdN8O4hOxB1OSb3fY4tXHsOv0xPpmZKB3KwdCXfMLDMMSwm7DXsLK7/Q9Vk8hVuJL
         OTtGFFkEE+3rkFKRevv+IgdHEq65RoHnIJsYQWL6Neue5GHHA7oSS//yRZ1oYS0/VR7B
         LUhKcffp7+YeLXNYb70PjhEN1gmrJWcbW/4ZlP7u1DzqrBobL8Eg5gbTfy9SqTT49WfZ
         AsOqowkXpE5cqFAWjv2N/HZEyKuzEgUvt38OfI690ZpFIhOxK8sVnC73Odh3XWOyiTKv
         JxBmrDTSjI9XsF3keDLFOySVieCyZlfvurm2ZJ2KqDIkHZdtZSfDMcLtw8k+BrSTsP1q
         fi8Q==
X-Gm-Message-State: AOAM5302cpjZeqxkd3VCqoCwoOGpS5bt5UfJrgchyIIorQI9CxcbIOrq
        1tAKdk9tAFUL7qXAwkfPRjw=
X-Google-Smtp-Source: ABdhPJznRUVniT3S9VNCmcIcHaWggAKCWKjnz67tPdxkrcHjDu5esSVjWYRmwMCuJzSEm6RH1DZVxA==
X-Received: by 2002:a17:906:a211:: with SMTP id r17mr1573081ejy.444.1601020809772;
        Fri, 25 Sep 2020 01:00:09 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id r10sm1225500edm.94.2020.09.25.01.00.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Sep 2020 01:00:09 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 03/10] lconv.3: New link to system_data_types(7)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200925073140.173394-1-colomar.6.4.3@gmail.com>
 <20200925073140.173394-4-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <635602b8-6b79-bc04-5056-4556a8811b6c@gmail.com>
Date:   Fri, 25 Sep 2020 10:00:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200925073140.173394-4-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/25/20 9:31 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael


> ---
>  man3/lconv.3 | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 man3/lconv.3
> 
> diff --git a/man3/lconv.3 b/man3/lconv.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/lconv.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
