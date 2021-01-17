Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6BB0D2F93D9
	for <lists+linux-man@lfdr.de>; Sun, 17 Jan 2021 17:11:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729437AbhAQQJD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 17 Jan 2021 11:09:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729419AbhAQQIw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 17 Jan 2021 11:08:52 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71C35C061574
        for <linux-man@vger.kernel.org>; Sun, 17 Jan 2021 08:08:12 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id a9so10685496wrt.5
        for <linux-man@vger.kernel.org>; Sun, 17 Jan 2021 08:08:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=8JvkaM/9fWfCBGC6P67bxfttQ1DbGAt6KzqhdBZZKrI=;
        b=LlcQpsJ04q38csMiu6SFHm4voQIN+uKQQ3R1VYkjMXF9omOHlGPBf5UREkzM9wJVip
         4P79RiOGth42KHPi3BQWw6d/gPO7S47BuILHQX2zzovNEepSblZrxn7YEzNdZj10ytu3
         0voyuAgwHFOND+neONkSAyrIOfCROD6Uj6dbylRBqGHMcnRbCfkIo9ELeq2YHZ+JPvHY
         e0qoUN9qMN6RvokRYplsrPFqSCuak1qevodbuzNO3JAcmtHeYJCLtjfZvN8Jg4VyX5Cb
         dHgqaFPa8GTX99q8GR3LyfGWHN4hnY4DbZQgveURmqTfzUxCdW3lTEmYh0rrkqrVdNfN
         DhJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8JvkaM/9fWfCBGC6P67bxfttQ1DbGAt6KzqhdBZZKrI=;
        b=uJbtK71RQCuD5TSswFKoMY5IloTrETvAAKclNJ+Obo8/Bx84CpEWFBzzsI/4YrYzxD
         4vJYzZ6xQ7GxipazU5tLtcDmdjK+oJ7Mx3itDU7ukaL4OPX7DOMYDkiQJ4qRoTnOGHhV
         PCdUeCr4CmpnXTdtxf6SZdiMSmHhYt/Ruj85Hnz0AZ+qTR3ina7oZGdDn+DOAKFuwG6T
         4i7TJfAivtwDu1ikPqa5HRpnkk5oRYQBhVAPgAlJDmT0yUzrM5ceDcknkie8s1iWGxG2
         dV9EugfHjzM44eAQm9nuIRvaS8h9mhR+HwAWXIF9ZfOu5LMnFphvxdziChNigKqix6BR
         WC6A==
X-Gm-Message-State: AOAM533T3cIsNR4ruNUQ2lGoFdJ80Wi4X10Kq7r8qn7/2UK/CLOQwQum
        1NNWL6EJsfS92Y9a5mMuKlqXoCqIO08=
X-Google-Smtp-Source: ABdhPJyCVFkMOGrXAClCqPJJjVmH0aiFFZ+q/GT6J1KkG28aYnRJ+Q3bcB6m+tWRRRmoa57FrJcL0w==
X-Received: by 2002:adf:f845:: with SMTP id d5mr21867982wrq.182.1610899691297;
        Sun, 17 Jan 2021 08:08:11 -0800 (PST)
Received: from [192.168.0.160] ([170.253.49.0])
        by smtp.gmail.com with ESMTPSA id a6sm4765695wmj.27.2021.01.17.08.08.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Jan 2021 08:08:10 -0800 (PST)
Subject: Re: [PATCH] sock_diag.7: Fix recvmsg() usage in the example
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <20210116184554.30730-1-pali@kernel.org>
Cc:     linux-man@vger.kernel.org
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <ef7ce97c-2d9c-adb9-b40e-322f3107ff50@gmail.com>
Date:   Sun, 17 Jan 2021 17:08:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210116184554.30730-1-pali@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 1/16/21 7:45 PM, Pali Rohár wrote:
> The msg_name field for recvmsg() call points to a caller-allocated buffer
> nladdr that is used to return the source address of the (netlink) socket.
> 
> As recvmsg() does not read this buffer and fills it for a caller, do not
> initialize it and instead check its value in the example.
> 
> Signed-off-by: Pali Rohár <pali@kernel.org>

Hi Pali,

Patch applied.

Thanks,

Alex

> ---
>  man7/sock_diag.7 | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/man7/sock_diag.7 b/man7/sock_diag.7
> index 91ccf3ac5..191e6ac49 100644
> --- a/man7/sock_diag.7
> +++ b/man7/sock_diag.7
> @@ -753,9 +753,7 @@ static int
>  receive_responses(int fd)
>  {
>      long buf[8192 / sizeof(long)];
> -    struct sockaddr_nl nladdr = {
> -        .nl_family = AF_NETLINK
> -    };
> +    struct sockaddr_nl nladdr;
>      struct iovec iov = {
>          .iov_base = buf,
>          .iov_len = sizeof(buf)
> @@ -782,6 +780,11 @@ receive_responses(int fd)
>          if (ret == 0)
>              return 0;
>  
> +        if (nladdr.nl_family != AF_NETLINK) {
> +            fputs("!AF_NETLINK\en", stderr);
> +            return \-1;
> +        }
> +
>          const struct nlmsghdr *h = (struct nlmsghdr *) buf;
>  
>          if (!NLMSG_OK(h, ret)) {
> 
