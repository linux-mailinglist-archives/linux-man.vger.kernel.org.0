Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DABE337536B
	for <lists+linux-man@lfdr.de>; Thu,  6 May 2021 14:05:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231560AbhEFMGo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 6 May 2021 08:06:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230145AbhEFMGn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 6 May 2021 08:06:43 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA868C061574
        for <linux-man@vger.kernel.org>; Thu,  6 May 2021 05:05:44 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id t18so5341936wry.1
        for <linux-man@vger.kernel.org>; Thu, 06 May 2021 05:05:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=w7Tz0eH1hMn3lWMGhzlRtvMhwQpGAMpx9HMbKn/SlNE=;
        b=hYf5Ksnl6HuScOCLIryBR1DS+wUq08phbunwsEMh/Khw+XwctJiwOxm6DY7ZSZgjN0
         7xQUjHgx+bKN+x20J5tSnjTwNJHE1yffYCsZ1L1Mwo/m1GlPg6VLnk/6AnFYXbA/8F4r
         bwQ22NLrgOmrgUl34uszc7WMxmQwSuI0EvV/oAfgsI8P5RmHeR7DqAyH0ipiCsdkm3Rr
         OinZD7XFwsKy7KHpuaM/hQ40cjtnzA22613cr1lLHe4oeGObmDVjrEvHgK0oPL1OUrIu
         buQMS/1VXvNaj8n/GgsmZP0nQ1uwOkEgAFClzV0Lojo1qepSsDNGBahAPBceW5t9Pb7B
         9Ryg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=w7Tz0eH1hMn3lWMGhzlRtvMhwQpGAMpx9HMbKn/SlNE=;
        b=sl786Ox+CePBbTQGjI2KyWipTysSqTTnRw62CkdScoCasbX0y1mizvYfd/MzGb4BCE
         r92UA6OI5UohWEYW3A346DBnq04BhM9sAbBwzD/smkJXNfTw58gDY+Ap42STd3PSBzgM
         N19/SK9j9zMPqg98fjDjr5U+LbzrB4B5tazv8lcKdyXVOwwi5xm82jT18yTBo7moexTY
         PEL6jH3mrtV0eE9j900C2bAY+qnmUxwGz1qkRQIHsk2BfK47I14r4dnBFxg7BJxTRXKf
         3W8Hjg1zg4DLPiJ1hBavXQfEAJOspNKbdYOIKETsWQjPxzCIBs3gcn8mOQwRNVY03fPs
         w6ow==
X-Gm-Message-State: AOAM5339fkzb4kKF5b5mTEpQIsdCCt8+IHzyhic5U7bk1WIXJuwJyII5
        sKj8fnE3bwlM67pGutk4Crk=
X-Google-Smtp-Source: ABdhPJz9e1Z4wEmCYmtR3UnmmlHPUdRlnYi0Ngu69gJcypUEtCGd7VJMmWAJ+X/TKiQBYuly1y5/9A==
X-Received: by 2002:a5d:5263:: with SMTP id l3mr4728270wrc.263.1620302743714;
        Thu, 06 May 2021 05:05:43 -0700 (PDT)
Received: from [10.8.0.106] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id v18sm4782526wro.18.2021.05.06.05.05.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 May 2021 05:05:43 -0700 (PDT)
Subject: Re: [patch] signalfd.2: ffix
To:     Akihiro Motoki <amotoki@gmail.com>, linux-man@vger.kernel.org
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
References: <CALhU9tnz9ufWpCR7cdn51JeKUHraqHPMmqqBKp8pSyYfSyUBpQ@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <d222b73f-c16c-ef3d-4459-b0e54243d469@gmail.com>
Date:   Thu, 6 May 2021 14:05:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <CALhU9tnz9ufWpCR7cdn51JeKUHraqHPMmqqBKp8pSyYfSyUBpQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Akihiro,

Patch applied.

Thanks,

Alex

On 5/6/21 2:02 PM, Akihiro Motoki wrote:
> diff --git a/man2/signalfd.2 b/man2/signalfd.2
> index e362d1f72..102679c0d 100644
> --- a/man2/signalfd.2
> +++ b/man2/signalfd.2
> @@ -196,7 +196,7 @@ struct signalfd_siginfo {
>       uint64_t ssi_addr;     /* Address that generated signal
>                                 (for hardware\-generated signals) */
>       uint16_t ssi_addr_lsb; /* Least significant bit of address
> -                              (SIGBUS; since Linux 2.6.37)
> +                              (SIGBUS; since Linux 2.6.37) */
>   .\" ssi_addr_lsb: commit b8aeec34175fc8fe8b0d40efea4846dfc1ba663e
>       uint8_t  pad[\fIX\fP];       /* Pad size to 128 bytes (allow for
>                                 additional fields in the future) */
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
