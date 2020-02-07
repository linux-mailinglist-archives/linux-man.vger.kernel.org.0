Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E2A67155A96
	for <lists+linux-man@lfdr.de>; Fri,  7 Feb 2020 16:22:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726951AbgBGPWE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Feb 2020 10:22:04 -0500
Received: from mail-wm1-f66.google.com ([209.85.128.66]:54565 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726899AbgBGPWE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Feb 2020 10:22:04 -0500
Received: by mail-wm1-f66.google.com with SMTP id g1so2953380wmh.4
        for <linux-man@vger.kernel.org>; Fri, 07 Feb 2020 07:22:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=J+Ia3XswisZxpDID4zR5C3hu0DgZNZa1KGX3u7V/Nwc=;
        b=VNoVK9qYOmPghOex9Xq1Uy5oGCyu9Tsp8Qaj7eJncxi8LK96brn70o8uSPlahewdet
         sJlKv15WXdqB+Ko1fNhq2wXoKRuebMsAG6g+mQ71RL3G3Nukxpm+Y8UYzmBX/ib0pTca
         luWq5nwx+Sz11Lcmn1lnaDydx/sQPz7CHMRRqqRY1R6WSL/MuOKKFkTOI/xUBUY4J14P
         GbwovegkepUWTBN4zF0ncA96JwyGIKcxGzHUG4tRj633BZgMyCLoTA1DnNglIuTdPdpS
         gI1mAh5eEikneXO8Z77dkSr40ygAJvEuQ2ZQ2LznVCbr3jw+Ypg7bMDjonMU3P0Fg9WX
         QmEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=J+Ia3XswisZxpDID4zR5C3hu0DgZNZa1KGX3u7V/Nwc=;
        b=Jh5VRaXR3C0DBwFTGd/QrWz6m/Yqi6+E47OM7cZ8h1J1UZ0CJzcjBS7AX/d3VYzmxN
         o9NSMwlMH0ljK8XsHxyRKlWTy3UxNx1uTQC5CusWkbX45rkVM2OzZ8SkI9ql5wDfCq7w
         V38XBDNUrDoDRbl7+QsVto7koXYomLw0Pg9IVGIWUrSD4NEBVy3i7rUyvBn7SByfRHqF
         vohuWqFCoe6xrUOasCKNAnmSWcXpK/5xX3pZDFqSn7Vt6g/a7hvKBAn0TO/CQS+UY2u2
         7gsKDGz/K/eK+wKDVN45zgYUtpCLhJMYSupoXmnIBRnjh1uUAHC12PJzZ6ZQHwNPu0Fh
         XHvg==
X-Gm-Message-State: APjAAAWGF+eCNf4DXng+WcYsE9ZqXTblmgTU7+jK1Vwzj3p+rZeZ10H0
        /8fQhqNmP5YofgKR7MqFkfztSDtTTJo=
X-Google-Smtp-Source: APXvYqxwDFXSSTxZGyprLpWYIPHq2KneC+JI/H91oUmJR3xyNiYYbBCq01NG5AU7XwdgsqB8HzI1aQ==
X-Received: by 2002:a1c:541b:: with SMTP id i27mr5195504wmb.137.1581088921546;
        Fri, 07 Feb 2020 07:22:01 -0800 (PST)
Received: from ?IPv6:2001:a61:251f:d701:c8c9:6ecf:205c:abb7? ([2001:a61:251f:d701:c8c9:6ecf:205c:abb7])
        by smtp.gmail.com with ESMTPSA id j5sm3843330wrw.24.2020.02.07.07.22.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2020 07:22:01 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [patch] ioctl_userfaultfd.2: wfix
To:     Yu Jian Wu <yujian.wu1@gmail.com>
References: <CADvajOpe=aBfVCbjXnKXpReixRAtZhjE2O7VzSW+OTYvCjiDOQ@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a9b9f4cf-237a-be5d-f1e9-f67c0fce878f@gmail.com>
Date:   Fri, 7 Feb 2020 16:22:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <CADvajOpe=aBfVCbjXnKXpReixRAtZhjE2O7VzSW+OTYvCjiDOQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Yu Jian Wu

On 1/30/20 5:02 PM, Yu Jian Wu wrote:
> Hi,
> 
> Patch as attached. I think the comment on the variables in the struct is
> reversed.
> 
> Thanks!


Thanks. Patch applied.

Cheers,

Michael

> diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
> index cd3e089b7..d417e30f3 100644
> --- a/man2/ioctl_userfaultfd.2
> +++ b/man2/ioctl_userfaultfd.2
> @@ -421,8 +421,8 @@ structure pointed to by
>  .in +4n
>  .EX
>  struct uffdio_copy {
> -    __u64 dst;    /* Source of copy */
> -    __u64 src;    /* Destination of copy */
> +    __u64 dst;    /* Destination of copy */
> +    __u64 src;    /* Source of copy */
>      __u64 len;    /* Number of bytes to copy */
>      __u64 mode;   /* Flags controlling behavior of copy */
>      __s64 copy;   /* Number of bytes copied, or negated error */
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
