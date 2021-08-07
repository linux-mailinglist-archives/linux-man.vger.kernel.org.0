Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 43E513E3720
	for <lists+linux-man@lfdr.de>; Sat,  7 Aug 2021 23:39:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229719AbhHGVjw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 17:39:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229537AbhHGVjv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 17:39:51 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2806DC0613CF
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 14:39:33 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id u13so101535pjd.0
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 14:39:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=G2/fcnXM6moP1yvfG5CyK74aWPwf/WXGIFG0CXcpQE0=;
        b=TX8YQaW9grEwh/SgoDFvVjIOwzo/Qw6/mDrbUqoM2cheEuBHWmrSNgQ5zBXApagL7s
         RykOkSieMNbGg0FcN+DW1Sf572vLHw2H6Zs/Iq4IX42aa7ejJh/fyEQvkp1N8d4isROa
         HfskWvD8JCo+WBHb4KWH/5FoO+bhdRvaBeeAOWQgIRGwAZanAvQgLhGiwU5OR1Jx38jr
         fpT0n+yXKt/+RcYJxMqk3tJl0W7XApqFnn1iEtqWUw+ERM4AO/7Kmszc3vjINnSvkPbi
         I3QIAc3mG/wVzu30AAXHeiPin2Oqq9sIMQfAI/qcukT4z0xKyvQxmQAupnc/86YZDhM7
         kzmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=G2/fcnXM6moP1yvfG5CyK74aWPwf/WXGIFG0CXcpQE0=;
        b=hWNWxeyw9gLwhfGrcL5Ptr0VXFGeEwnclgvU6P2cw1Jg2AexzxerMTo2tnzaupdAyB
         R1PKRdJvNXTjdBIo5eELZ/GDq8O7MXlAOkFmSQVulcpLy/o0nREFTYOCBFo1+u0SIePL
         D26pZ+sPAIy0fcCesusy57fQMz4nW4I7JfVtuoXgWYU1eL261efO4pFPjMd5crx96aH4
         ljqD5GxS3EQb18qdk2pvm4dUpj4hei06Q6m7eaarjaOEwR4ZrjkiwGGsoZlDDBTFGSYO
         VYxcnl9KtueWdxOIX8QvBmJnTa6uzo3vzhz1r9KS9pdiroflfDcitdTm9CDCzDxMpdMj
         WV5w==
X-Gm-Message-State: AOAM532Y+kuQlGc5SNwxLJCG4Zg+r/mGj08zIfveO/XqvBKf199rGpLH
        Gj5TyMQan5xxBQGYTgmXRANDyijE1No=
X-Google-Smtp-Source: ABdhPJzjhC8o+x7bMYHAtI9cAJ4mThPAf4CFiYWVeyDHUO2pZgv4nF1wZyfrSYfndn7LeBi2la5t4g==
X-Received: by 2002:a17:90a:bd18:: with SMTP id y24mr27993768pjr.83.1628372372533;
        Sat, 07 Aug 2021 14:39:32 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id v1sm17484903pgj.40.2021.08.07.14.39.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 14:39:32 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Kir Kolyshkin <kolyshkin@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 12/32] capabilities.7: tfix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-13-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f6c02d70-39d9-84b1-d12c-9af6d5cff3c2@gmail.com>
Date:   Sat, 7 Aug 2021 23:39:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728202008.3158-13-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex, Kir,

On 7/28/21 10:19 PM, Alejandro Colomar wrote:
> From: Kir Kolyshkin <kolyshkin@gmail.com>
> 
> Add a missing comma.
>
> Fixes: 3dcdef9437fafb
> Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Applied. Thanks!

Cheers,

Michael

> ---
>  man7/capabilities.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/capabilities.7 b/man7/capabilities.7
> index cf9dc190f..9f8f0087f 100644
> --- a/man7/capabilities.7
> +++ b/man7/capabilities.7
> @@ -215,7 +215,7 @@ Lock memory
>  .BR shmctl (2));
>  .IP *
>  Allocate memory using huge pages
> -.RB ( memfd_create (2)
> +.RB ( memfd_create (2),
>  .BR mmap (2),
>  .BR shmctl (2)).
>  .PD 0
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
