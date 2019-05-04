Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 53E0413C2B
	for <lists+linux-man@lfdr.de>; Sat,  4 May 2019 23:29:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727544AbfEDV3B (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 4 May 2019 17:29:01 -0400
Received: from mail-vk1-f194.google.com ([209.85.221.194]:42146 "EHLO
        mail-vk1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727476AbfEDV3B (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 4 May 2019 17:29:01 -0400
Received: by mail-vk1-f194.google.com with SMTP id u131so2266306vke.9
        for <linux-man@vger.kernel.org>; Sat, 04 May 2019 14:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=QyAmltrxR0Dq3vdHqJE8+sNB6nDPi35LP1A8RKu5Qas=;
        b=hSr3iK0Vxb3ixEIQESB0bQnbZK1+E22tczuQj/xAmaDcnOL3wt75pzE8zsej/2396j
         xI9K3/+CQ31NyFhlH3SGRFj120pmrlViDXsumJf6wdJtJj6Zs1tYDNKvo4l36U8GrsAW
         K+IAtZ3t/PzxrlzPG7CijibnA+P5g2PClT7Cqt5wqY65D+ZL3LXMvrhPNCexOPkrti1k
         yVpjQZAXFndPcwtuV2RpiR9iHYDDGeSGWgIsxgIA91DIdUfsEfJegh6pc3J3dA4Q5/U0
         3jBKuMRmGYPpyWDAbcs/jKH3q3P0Iwd6hyAO5oSbFgwSEfP9ROWDFCRExipzi/Ag9PRB
         DkEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=QyAmltrxR0Dq3vdHqJE8+sNB6nDPi35LP1A8RKu5Qas=;
        b=EMmnSNY1z8bYdqxHSdtsXAZ923NSDZS2NPR5izzUxrjER6VNqOCy6Lif0Jpxb67xEL
         ngm6qjLA+WK2o25XJ5uZ6PDJVoKrcf3Mmj0oT14EFbPRXYmSLz0ES4ZKzMU8Pn0BI26I
         YpHDFG+7F0sF3gIwmTR8PTCbNNPBBLQsLqNYva853NzVcab/lEEjBf7M77gtUXzPqRVq
         pehZglatd/RtJWYBzVoFqO7XaDw/Y7rACx5Fu/LCY4r48Q8gwfiRGOZci6SsbZEoXJ23
         52UmUtpJqMxEj28WKUDLwCMnIHQio/u5+pkdMrGE6VKNNw0G4UjCzP5S1y+TogEylL1b
         w2OA==
X-Gm-Message-State: APjAAAUHPQzfytf7lS7sq56aElAkCWOJdzx28Eokg0qdoryxDAo2Edp1
        qC6GqgevD0DMcl6Cljtoa7A6ZHSE
X-Google-Smtp-Source: APXvYqxsdebywV+tCXMjWB/dVtN0VUfq0MgJSggh0Fhfsor6Vpzc4dB0+rSMG41b595GawjeyTHVSQ==
X-Received: by 2002:a1f:1d06:: with SMTP id d6mr9046455vkd.82.1557005339954;
        Sat, 04 May 2019 14:28:59 -0700 (PDT)
Received: from [192.168.0.8] (dynamic-190-25-35-141.dynamic.etb.net.co. [190.25.35.141])
        by smtp.gmail.com with ESMTPSA id w69sm4009124vsc.8.2019.05.04.14.28.58
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 May 2019 14:28:59 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] mallinfo.3: discourage use.
To:     enh <enh@google.com>
References: <CAJgzZoo37xEyOdQcbevR3wce6=8kNtEu0+DQ82M8LQiqfCnEOw@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e0dc8e9b-337b-6922-0d22-d43486db5f96@gmail.com>
Date:   Sat, 4 May 2019 16:28:57 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAJgzZoo37xEyOdQcbevR3wce6=8kNtEu0+DQ82M8LQiqfCnEOw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Elliot

On 4/30/19 2:36 PM, enh wrote:
> The BUGS section already explains why you need to be cautious about
> using mallinfo, but given the number of bug reports we see on Android,
> it seems not many people are reading that far. Call it out up front.

Thanks. Patch applied.

Cheers,

Michael


> ---
>   man3/mallinfo.3 | 9 ++++++++-
>   1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/man3/mallinfo.3 b/man3/mallinfo.3
> index 0cf773882..677a9a1cf 100644
> --- a/man3/mallinfo.3
> +++ b/man3/mallinfo.3
> @@ -37,7 +37,14 @@ function returns a copy of a structure containing
> information about
>   memory allocations performed by
>   .BR malloc (3)
>   and related functions.
> -This structure is defined as follows:
> +.PP
> +Note that not all allocations are visible to
> +.BR mallinfo ();
> +see BUGS and consider using
> +.BR malloc_info (3)
> +instead.
> +.PP
> +The returned structure is defined as follows:
>   .PP
>   .in +4n
>   .EX
> 
