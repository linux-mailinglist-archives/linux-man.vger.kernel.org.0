Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6897FEAA22
	for <lists+linux-man@lfdr.de>; Thu, 31 Oct 2019 06:19:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726755AbfJaFTQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 31 Oct 2019 01:19:16 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:36523 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726552AbfJaFTP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 31 Oct 2019 01:19:15 -0400
Received: by mail-wm1-f68.google.com with SMTP id c22so4520324wmd.1
        for <linux-man@vger.kernel.org>; Wed, 30 Oct 2019 22:19:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=IYzz9ZeUsssCnw24x4jRQIhtFwHth9J87dKksR7cUwo=;
        b=rC3BZ2Kd+ClByl+CkOjgU73on+JZPqbNQFeoM38uazbFFZ5HIrbaHqiw8LjNUYETdu
         NhuN5yXuiXVJtg2A/kunmQ6DnNcSgzNAnVjMAvyXbaOP9rRyHXam/1lNgt1knNHSUZK6
         HApPAMxKCLXgL1nfgRQAMpQs84YRfWzZjSA/CrHJPUbs8QNGRK8McZWFybDnh9Tn9vh2
         ojhkcUJa82ph+VMS16CYlnzl46igTi8FnzQsymZRsj2Wmfh1A1vbg/kRe2fXVhCehwmr
         A+IKAkBWuCxpw8HQmn36qC4GHLn2M9NKxulESvfGDhYt7UloZnJiUTOAKWAazDPxn9NE
         5jXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=IYzz9ZeUsssCnw24x4jRQIhtFwHth9J87dKksR7cUwo=;
        b=kTEy3JW+3t+lg3YXIP2y8pdPaS6aAsTXZ/baTWwARZY9hbQiJ6qFKtUbM7atuCZl0h
         UFmhSwECYgH943/0O0F/0Z1G45BRgZABRmLLjgJlYlp+P+qLShHOZuT/kKp3v9ZjUktw
         q9RUHk6fjQPdttIUpV4NvIeFQLtuRus2OT61054zKmWCrUm/XIF0V93pRKN1jWmlfAML
         RJLrudlM3nJt/1B60/JSQ+aazBvxAo+HeiihzCFpRT9KY4XUJ/5gPlEQl2xGS9FU4V3y
         JfmD5Cxnj1jTUUn2NgUABx+qjUoEpv+0GBryVsX/5pgfQShbNTlhh4Gi1E6WIN5bEuEe
         dIDQ==
X-Gm-Message-State: APjAAAU1JNpzfyKnsGsdZbaC76LBWfGVDGouy3JMeOP0z6Ow209Z/9HW
        qZyPnJ05WaFXhgMKerG3GwMdnU0EHG8=
X-Google-Smtp-Source: APXvYqyKF8NmJo4kz5yihCUFLUB1hwLoXkQ0umrYjSgxTHThmcWlWeNUaXIPCNqzIbjPgtG/WORnPg==
X-Received: by 2002:a1c:10a:: with SMTP id 10mr3029649wmb.17.1572499153670;
        Wed, 30 Oct 2019 22:19:13 -0700 (PDT)
Received: from ?IPv6:2a01:e35:2f38:d7b0:e8b5:a4a9:346b:8c65? ([2a01:e35:2f38:d7b0:e8b5:a4a9:346b:8c65])
        by smtp.gmail.com with ESMTPSA id z12sm2472197wmi.4.2019.10.30.22.19.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2019 22:19:13 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] unix.7: tfix
To:     Torin Carey <torin@tcarey.uk>
References: <20191029125142.GA17313@kappa>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <cabdb001-2089-c5aa-36c6-7d4040681e47@gmail.com>
Date:   Thu, 31 Oct 2019 06:19:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20191029125142.GA17313@kappa>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Thanks again, Torin. Patch applied.

Cheers,

Michael


On 10/29/19 1:51 PM, Torin Carey wrote:
> In the given example, the second recvmsg(2) call should receive four bytes,
> as the third sendmsg(2) call only sends four.
> ---
>   man7/unix.7 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/unix.7 b/man7/unix.7
> index a9d54c8c0..bdd5091d1 100644
> --- a/man7/unix.7
> +++ b/man7/unix.7
> @@ -566,7 +566,7 @@ The first call will receive five bytes of data,
>   along with the ancillary data sent by the second
>   .BR sendmsg (2)
>   call.
> -The next call will receive the remaining five bytes of data.
> +The next call will receive the remaining four bytes of data.
>   .PP
>   If the space allocated for receiving incoming ancillary data is too small
>   then the ancillary data is truncated to the number of headers
> 
