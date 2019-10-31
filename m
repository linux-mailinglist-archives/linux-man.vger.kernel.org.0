Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2624EEAA21
	for <lists+linux-man@lfdr.de>; Thu, 31 Oct 2019 06:19:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726646AbfJaFS7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 31 Oct 2019 01:18:59 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:34363 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726552AbfJaFS7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 31 Oct 2019 01:18:59 -0400
Received: by mail-wm1-f65.google.com with SMTP id v3so5728137wmh.1
        for <linux-man@vger.kernel.org>; Wed, 30 Oct 2019 22:18:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Lt2IN0TeR/56cS7kozyiXbapJLRyssgwaNmetPnKr4k=;
        b=YBm8yJsMf/+c2Tej0vWGsYgEUdshTOq2Im+ZJ+ld45WAF2ZwS7K4aiet5gPB/0RTM3
         y5MOHZJ3CTf5ncZyz983Xq7oTKJtjrCEIhde/W3IxwpR6blVWLxvBh/YaRTdLyA8fo6R
         x9Ocg787LBVG2zt3R4swDrmdFgIeVxqh9aVc/sgAeb9vtNBS25k39c8pWQDI4BYdDNNV
         a9m9SoqLdl6jqXPtABzMyBa1ssdca+QZ4O8KaU4f4KSh7Z/PG5BEdtPLMb+VV4Ld11qi
         JXEP6f8fjMv5K7fffjAxcXduCiqlmtFe5nbJQ0YlxPLe5MVDRHd8kMBF1pW8blrXn1oD
         Atcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Lt2IN0TeR/56cS7kozyiXbapJLRyssgwaNmetPnKr4k=;
        b=gCJRLTLbzOKmrnDCC/AVzxUsUdLL3KDH7XujV7JilXt16uaTlEAPIwNYWFb5Qsv/gR
         2WIs3L2h0B7PlfmxY+DN+Tv7DO5gVm/uH/2F7IQb8Ns3Wjuc6eEhezGlFHEdjOG9YWRV
         4ys5uNpuOINewWTmYw3xYxIi0vIapWtuCilVkoPWb5hPf/uIHGNBHBZCTEYrwIVOq3mE
         IhMsgZcfmyqJ4pyxQBrzx6oEf7alL90N4+NxHgcg+CDQdbsMB6ofZjkhkDZz1saeVO/6
         zxWIii3jlGdUMN9r3YDNcYVUKDEaY8yswgR7LMbTDrtlLuIogRedRmzleWWYhkgpG3E7
         zmzg==
X-Gm-Message-State: APjAAAV+Yw2LgkKqxWTJPy5BEiNn1B7rq2BUHiUoldKgt8wd5uOlJP1g
        cIDaUUA0wCPxsZEYItMpRXOXOl7kTq8=
X-Google-Smtp-Source: APXvYqzyEq+ugRPQv3qtV18lPpiN+32H7vH/vz4vgdVkwe+iFpbUkNyaUUua0AtFrWXW6Yju7Iv88Q==
X-Received: by 2002:a05:600c:230d:: with SMTP id 13mr36136wmo.159.1572499136868;
        Wed, 30 Oct 2019 22:18:56 -0700 (PDT)
Received: from ?IPv6:2a01:e35:2f38:d7b0:e8b5:a4a9:346b:8c65? ([2a01:e35:2f38:d7b0:e8b5:a4a9:346b:8c65])
        by smtp.gmail.com with ESMTPSA id h205sm2548041wmf.35.2019.10.30.22.18.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2019 22:18:56 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] unix.7: tfix
To:     Torin Carey <torin@tcarey.uk>
References: <20191029124153.GA14599@kappa>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <902dbf36-8b5f-ba99-fca8-62c567cbbb60@gmail.com>
Date:   Thu, 31 Oct 2019 06:18:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20191029124153.GA14599@kappa>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Thanks, Torin. Patch applied.

Cheers,

Michael

On 10/29/19 1:41 PM, Torin Carey wrote:
> Signed-off-by: Torin Carey <torin@tcarey.uk>
> ---
>   man7/unix.7 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/unix.7 b/man7/unix.7
> index a9d54c8c0..594894268 100644
> --- a/man7/unix.7
> +++ b/man7/unix.7
> @@ -479,7 +479,7 @@ This can be used for authentication.
>   The credentials are passed as a
>   .I struct ucred
>   ancillary message.
> -Thus structure is defined in
> +This structure is defined in
>   .I <sys/socket.h>
>   as follows:
>   .IP
> 
