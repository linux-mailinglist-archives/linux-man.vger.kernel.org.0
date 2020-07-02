Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 67B7521213C
	for <lists+linux-man@lfdr.de>; Thu,  2 Jul 2020 12:28:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728367AbgGBK2l (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 2 Jul 2020 06:28:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727991AbgGBK2k (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 2 Jul 2020 06:28:40 -0400
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com [IPv6:2a00:1450:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69FA9C08C5C1
        for <linux-man@vger.kernel.org>; Thu,  2 Jul 2020 03:28:40 -0700 (PDT)
Received: by mail-ed1-x543.google.com with SMTP id dg28so23055227edb.3
        for <linux-man@vger.kernel.org>; Thu, 02 Jul 2020 03:28:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=o7Hm8RCe1vdIU0/Nx9z0I6nic1g/z9naZebXvHagMpk=;
        b=rTBGF/8NWsCyUODhqLA9E97DFxMxQUZTM8JEkHTRFysWngL+s7eP74zvTFtnhgW0qr
         +MKz9CzDCwCvPihBmUoUgfFsMQlbE0smGc3jhH9o/1kbYRjSCr8j+WfTViUJnW5mKdb8
         +JMcjEGXqgE9IY4zBVO+vrmRHWaMnDnk+DG/ZRbl6Rw0HAVLm6+mGVbHx8L8HkjCfF/p
         sYUuBT0DVr2Wex3WUTFkUY17jfq5J2X7k2RnocrqxUYP3SngB8CYoHH9qaST8RTD9WbG
         Sdw2e84CjZ4QNhny+g6HybrJySPT1lHDZY5cCT++O4GlkhQ/I1UmFE1ySkEpPQsOwTuK
         YlGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=o7Hm8RCe1vdIU0/Nx9z0I6nic1g/z9naZebXvHagMpk=;
        b=tr2HcL5f2TS/LFbIxXDbaFlB03XXBQ6NShe2EZ2Gq6ibGnNa+f9mZt9Iuc/EnFKKqg
         yNgx364mKDhD6U04QjdgYDuz5S2SgOaePnw8HqNN89lW4SKU7BH+ovrrCbKlMzFZIBlp
         f58z+h6VvmVjSHyeb7l9ju1vkxNqJ2jgtmBZ1CF60afMw7AohMWGNWuUjU7pqx4Rm+ZM
         4FFexPSyBF9OJWDhG01SgVfRHCAYHb/Rcy8mz8rqpxmI9xrOKZIS99xiYE4Eg7j6vnN0
         eej7FVPx3Q9O9qyvJkJePa2iS+P2KyfNrerwHDOrL2I8zDh6dlNJFKFJFZ8vEKPXcpS1
         DT2A==
X-Gm-Message-State: AOAM533xKXMLnMzVyHdb5KYd+xE9AwNMmfkD3gZKRe4gr4piAJA0bNre
        gqZo2F47BrNoKLJIEx11pYLAJheY
X-Google-Smtp-Source: ABdhPJwDw3B7HJSWF0/TsGSC67AaDea0sszqkR/fyeoXyoXDDp0AN3g+zboCbbKQwjBvMhg+v3awFw==
X-Received: by 2002:a50:c8c9:: with SMTP id k9mr32896628edh.157.1593685719151;
        Thu, 02 Jul 2020 03:28:39 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id o14sm6619025eja.121.2020.07.02.03.28.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jul 2020 03:28:38 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] man8/*: ffix, change '-' to '\-' for options
To:     Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
References: <20200701233801.GA29209@rhi.hi.is>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8c5453ea-12d2-b6ff-dadc-56198d3742d6@gmail.com>
Date:   Thu, 2 Jul 2020 12:28:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200701233801.GA29209@rhi.hi.is>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/2/20 1:38 AM, Bjarni Ingi Gislason wrote:
>   Change '-' to '\-' for the prefix of names to indicate an option.


Thanks! Patch applied,

Cheers,

Michael


> Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
> ---
>  man8/nscd.8 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man8/nscd.8 b/man8/nscd.8
> index a0b3733e4..8ddc538d3 100644
> --- a/man8/nscd.8
> +++ b/man8/nscd.8
> @@ -87,7 +87,7 @@ invalidates its cache:
>  .PP
>  .in +4n
>  .EX
> -$ \fBnscd -i\fP \fI<database>\fP
> +$ \fBnscd \-i\fP \fI<database>\fP
>  .EE
>  .in
>  .SH SEE ALSO
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
