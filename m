Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CD50913CB9
	for <lists+linux-man@lfdr.de>; Sun,  5 May 2019 04:05:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727020AbfEECFN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 4 May 2019 22:05:13 -0400
Received: from mail-vs1-f65.google.com ([209.85.217.65]:46195 "EHLO
        mail-vs1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726768AbfEECFM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 4 May 2019 22:05:12 -0400
Received: by mail-vs1-f65.google.com with SMTP id e2so6022502vsc.13
        for <linux-man@vger.kernel.org>; Sat, 04 May 2019 19:05:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=7jNgZY/lLSD1TCPwFqBpxZdkSM6bZsj2t6/LEbxiMUY=;
        b=D8SVfYQKEba91ujHqUBiXgopRUAswaNwVtpirOmWVNLF2mavmaS4RFTIYB8vvLypI0
         uwnHcBaylpS6e/U75bQfaqICOiClsfDepH7ZHszazXYLDO4rhNOqlXQV2r09z5mvSmoB
         wjf7VB/g/Tj9F9qAvn8+fybwCVhhr7pM61bQ7ndgt2qiwp3nX1Ltbu0lm+rNl7XYjSVk
         fuWP5yflTUEaen8sniSOQ1XEylacNqwsaa8WTbVv+ScSPdEn3gStLTLxP+cfk1am81i1
         7D55i6agR+6HNNgCk0aWtdeo7Vn+X/WOYhRz6zI0uDFI/1L9MFSvXE7xhVSzTEeal11w
         GpnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=7jNgZY/lLSD1TCPwFqBpxZdkSM6bZsj2t6/LEbxiMUY=;
        b=pNw7yFVwse8wZknQDUb5RNE2nDcqi4gNSc+IeJINEf1uwYeN9OMj66c5dx87MOK0Yi
         AMizti3Dt5ExrJl6k4N50FRT0NOE4nemJPC978NaEGDdUrsuN36i5V/oCPnzvDbqvEOe
         i+DOPGLVBbUgfEBBd9uGxhQo+T26Dp522D0u64eqNGqwbHyApJwpS8FHOpQm/qsc07HT
         ZeJAgoYXh/2VMyAwO7LipnV2FXyfrKEVCV99V2Cx3NZxTfCuw/alwrlu17g/OuNmTufO
         LdaPOSxKDsNVdnDVoUhXaiDQXzhvsiZFrbZnRtheJI82kBKhHewRtlypAC/UV88DIOT7
         BtQA==
X-Gm-Message-State: APjAAAXaAR703s/iwLe+IoHTVJpvF/7hFpsmiGFAPOcpWOx4xnMCcAb4
        IMyafvtF+3BofDFgfGeWaiuUISZp
X-Google-Smtp-Source: APXvYqyuERyPrdHSsVyzSRBqqREjvvUkpvS/omDzG2l1HkZVh34X5aDgHi6QlBtoCIFgaEElRb21XQ==
X-Received: by 2002:a67:ed44:: with SMTP id m4mr9815189vsp.112.1557021911683;
        Sat, 04 May 2019 19:05:11 -0700 (PDT)
Received: from [192.168.0.8] (dynamic-190-25-35-141.dynamic.etb.net.co. [190.25.35.141])
        by smtp.gmail.com with ESMTPSA id y3sm7133556uai.0.2019.05.04.19.05.09
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 May 2019 19:05:10 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        nmeyerha@amazon.com
Subject: Re: [PATCH 3/3] capabilities.7: File effective capability is a bit
To:     Samuel Karp <skarp@amazon.com>
References: <20190422203443.9539-1-skarp@amazon.com>
 <20190422203443.9539-3-skarp@amazon.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <5aef9a15-1a5f-a1af-8a4f-ea6059893f9d@gmail.com>
Date:   Sat, 4 May 2019 21:05:03 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190422203443.9539-3-skarp@amazon.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Samuel,

On 4/22/19 3:34 PM, Samuel Karp wrote:
> Reword file Effective capability to clarify that it is not a capability
> set, but a single bit.

I don't really see any point to this change. The page already clearly
explains that the "effective set" is really just a bit. And,
conventionally, the three sets are referred to as "sets" even though
one of them is just a bit.

Thanks,

Michael

> Signed-off-by: Samuel Karp <skarp@amazon.com>
> ---
>   man7/capabilities.7 | 13 ++++++++-----
>   1 file changed, 8 insertions(+), 5 deletions(-)
> 
> diff --git a/man7/capabilities.7 b/man7/capabilities.7
> index 2776b1f8b..4a719130d 100644
> --- a/man7/capabilities.7
> +++ b/man7/capabilities.7
> @@ -48,6 +48,7 @@
>   .\"     Clarify wording for Inheritable thread capability sets.
>   .\"     Reorganize thread capability sets to group total bounds and inheritance
>   .\"     together.
> +.\"     File Effective capability is a bit, not a set.
>   .\"
>   .TH CAPABILITIES 7 2019-03-06 "Linux" "Linux Programmer's Manual"
>   .SH NAME
> @@ -925,7 +926,7 @@ in conjunction with the capability sets of the thread,
>   determine the capabilities of a thread after an
>   .BR execve (2).
>   .PP
> -The three file capability sets are:
> +The two file capability sets are:
>   .TP
>   .IR Permitted " (formerly known as " forced ):
>   These capabilities are automatically permitted to the thread,
> @@ -936,9 +937,11 @@ This set is ANDed with the thread's inheritable set to determine which
>   inheritable capabilities are enabled in the permitted set of
>   the thread after the
>   .BR execve (2).
> -.TP
> -.IR Effective :
> -This is not a set, but rather just a single bit.
> +.\"
> +.PP
> +Files may also have an
> +.BR Effective
> +capability bit set.
>   If this bit is set, then during an
>   .BR execve (2)
>   all of the new permitted capabilities for the thread are
> @@ -946,7 +949,7 @@ also raised in the effective set.
>   If this bit is not set, then after an
>   .BR execve (2),
>   none of the new permitted capabilities is in the new effective set.
> -.IP
> +.PP
>   Enabling the file effective capability bit implies
>   that any file permitted or inheritable capability that causes a
>   thread to acquire the corresponding permitted capability during an
> 
