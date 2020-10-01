Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D5E3A27FE78
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 13:33:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731893AbgJALdo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 07:33:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731839AbgJALdo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 07:33:44 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 266D6C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 04:33:44 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id x14so5266507wrl.12
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 04:33:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=VpO62smcJakwUmFKwuE6g6J+/v1Mx5eshUL2yIlGwQc=;
        b=JvH3P+03/ppZ47PHZkZXI3w3pNnLjzg7iu1gL1Et3VrLQIFBdRbGmEkADHUL4DZNQC
         ZUUX69XoEsPLwhX/x+17Nl7j2ZKqc1RnLSVOWWmzXbMZCPWkXAStSwvKu4D3Yymo0Rlq
         Zsirtcyj6aaj8k88wUcv4OVzUccO96UveL240dfXHOkJO3geYV0JNB9uixSmE/ltt3Sc
         55JVR7VqO33Wyhdz8+AYnzPx9ELiulgz6yc+Vcj56U6dV2GlsDTZ1Cd6S+QKjHKpH5yR
         WKDolbS/T6k4+tEbtzSQMAzqJ+n4VLSY/JYl3lGESmLKm72FDDVYgbzANz/twtsZezcJ
         pCYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=VpO62smcJakwUmFKwuE6g6J+/v1Mx5eshUL2yIlGwQc=;
        b=j1AkZJeITnq1QIqo3CpZ2LNjHrWT2h0y6MTJbwq2fDKqHAV+r0rwT+KXPJl8EC09II
         i04NWzm8vi9H+I3MTNt+rfofrVBvdbplvtlTigJsMxNdFy3gpm8VcLDa3/+JnVyQ/kXN
         LxDtqOq+j46jBmfCzLoa6y2Z0IQpVIV2O46XNFN2U3+kofdBBYqBHoaBrfnimVgRH+T7
         mlQH9QFQfdmBgTh0iVe+O+Q1c5yZH7oZ2IEOUR/ic4xOZch6z9ZFgkXp4mcVF06cyKgR
         2YVsl1khP5r5ML4vdLjPaJfj6OLdReVk1U82z1ue/ZFUmeDywVHA1Eo76jdgFxxugki+
         Oefg==
X-Gm-Message-State: AOAM531YFY5SvOY/Rn1E5QIDg2dhlkwJD05e5PpG0cCmaA9Tf7HunBYS
        2K1XbKHKGzJJAGd9eOG8Mww=
X-Google-Smtp-Source: ABdhPJz1jwol3Zo10rHplbQ4wPHukItob03N0ES4TRjWrznLWa/PaZ+HJwYJbOVSjS7WpSkOHono5w==
X-Received: by 2002:adf:f852:: with SMTP id d18mr8401412wrq.245.1601552022857;
        Thu, 01 Oct 2020 04:33:42 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id 70sm9013640wmb.41.2020.10.01.04.33.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 04:33:42 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, gcc@gcc.gnu.org
Subject: Re: [PATCH 03/16] system_data_types.7: srcfix
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
 <20201001101559.77163-4-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <2264996c-db7f-5cae-047a-57008173b4fd@gmail.com>
Date:   Thu, 1 Oct 2020 13:33:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201001101559.77163-4-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 10/1/20 12:15 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man7/system_data_types.7 | 16 ++++++++++++----
>  1 file changed, 12 insertions(+), 4 deletions(-)

Yeah, this layout is my preferred form as well.

Applied.

Thanks,

Michael


> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index a653a7b11..a099c0250 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -406,7 +406,10 @@ Include:
>  Alternatively,
>  .IR <inttypes.h> .
>  .PP
> -.IR int8_t ", " int16_t ", " int32_t ", " int64_t
> +.IR int8_t ,
> +.IR int16_t ,
> +.IR int32_t ,
> +.I int64_t
>  .PP
>  A signed integer type
>  of a fixed width of exactly N bits,
> @@ -418,7 +421,8 @@ capable of storing values in the range
>  substituting N by the appropriate number.
>  .PP
>  According to POSIX,
> -.IR int8_t ", " int16_t
> +.IR int8_t ,
> +.IR int16_t
>  and
>  .I int32_t
>  are required;
> @@ -1299,7 +1303,10 @@ Include:
>  Alternatively,
>  .IR <inttypes.h> .
>  .PP
> -.IR uint8_t ", " uint16_t ", " uint32_t ", " uint64_t
> +.IR uint8_t ,
> +.IR uint16_t ,
> +.IR uint32_t ,
> +.I uint64_t
>  .PP
>  An unsigned integer type
>  of a fixed width of exactly N bits,
> @@ -1310,7 +1317,8 @@ capable of storing values in the range [0,
>  substituting N by the appropriate number.
>  .PP
>  According to POSIX,
> -.IR uint8_t ", " uint16_t
> +.IR uint8_t ,
> +.IR uint16_t
>  and
>  .I uint32_t
>  are required;
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
