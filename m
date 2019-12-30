Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1D3BA12D386
	for <lists+linux-man@lfdr.de>; Mon, 30 Dec 2019 19:47:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727544AbfL3SrX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 30 Dec 2019 13:47:23 -0500
Received: from mail-pj1-f67.google.com ([209.85.216.67]:54317 "EHLO
        mail-pj1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727537AbfL3SrX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 30 Dec 2019 13:47:23 -0500
Received: by mail-pj1-f67.google.com with SMTP id kx11so124860pjb.4
        for <linux-man@vger.kernel.org>; Mon, 30 Dec 2019 10:47:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=fTS0qosFXXR/HVKKtj69quE7U5GJWVntKb6PPRIhxEU=;
        b=JMpUIsC7VotmnDktgbFA8OvZbNtnfXmZ7UKMMRZMJBrZPyhg9eI4lr7M/ubRVwk6H3
         Qad9Q1yZb3m4wL65+YVAmU8mqlDP4DpOJd7lpbc5PFP+KHpOyE8YLwYIiHVpL7178i7Q
         i9hNwr9uYqFUuAEQftKemMzD71ADPhgDOp3P3c0L5dXDfD6Elrhzjnr3D3Dt/f7UkVEh
         zCyQGyPhTpd+3arh3HvX1PVoe+vBW+qFf3ledTdH88sS7EnC1CAf3+I03vroxJju+dI6
         ldXTgrDyupHN8tkDQr7ZeG11xl586yDA6vv0PKUk6LjPXKkCaZM6vYXc69IMXmpIc4c1
         K7LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=fTS0qosFXXR/HVKKtj69quE7U5GJWVntKb6PPRIhxEU=;
        b=uPYU8N7vII3g+9SIeLfCeRxfEwdOw84N6SjjMHBWFm+dnOjse+GTMWpUnoabevmmCV
         3RMHpr6KJhNbQkFGAy9i6fgcNld3eY5oJPnUiT0IBPHJPCg2FsOHLdVCYlQ1AArY9xZu
         FzBPY9VA25+NYmGupUZycvu3l9MbcbaP13MOT5z1q5oHOMmWwP7OeL1ERTe53MImn5IA
         J7tSAkJJoNsfD0aGK77EKykYCS3RCfYoO9Ml3LsQqL4j69QnYWB6hyVIv4rjZw3iesf9
         iXIeeMEIwjVR2ELmbyErK4siHBXErdpDA4+657fKpwzJV9+uARQ3Q+VbKiXvURBFx5nS
         nzIQ==
X-Gm-Message-State: APjAAAUuC87psuWwIfQTyPktw+YPK0ikWEu/FT5TpJyySmKyZ73av/r6
        U1Df5/UTGkqkBRQJt5wRaZWIYRPy
X-Google-Smtp-Source: APXvYqxQsKZozA+kyXrtlKTD66pHbut8pMKBeXNgK75Vm26N6aPO1UgYp0ld1YyaZ5lcsghVKBkd+g==
X-Received: by 2002:a17:90a:2763:: with SMTP id o90mr640919pje.110.1577731642233;
        Mon, 30 Dec 2019 10:47:22 -0800 (PST)
Received: from [192.168.178.94] ([121.98.29.40])
        by smtp.gmail.com with ESMTPSA id h6sm48325323pgq.61.2019.12.30.10.47.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Dec 2019 10:47:21 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] rtnetlink.7: ifa_index is an unsigned int
To:     =?UTF-8?Q?Antonin_D=c3=a9cimo?= <antonin.decimo@gmail.com>
References: <CAC=54BJP7GrFk=0OMgAtRk6T5W4OLdQDpfC6h0xCr57BuuBaKg@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <005b7f00-0af1-89f0-8a42-8eab4be56dcf@gmail.com>
Date:   Mon, 30 Dec 2019 19:47:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <CAC=54BJP7GrFk=0OMgAtRk6T5W4OLdQDpfC6h0xCr57BuuBaKg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/29/19 7:25 PM, Antonin Décimo wrote:
> See include/linux/if_addr.h.

Thanks, Antonin. Patch applied.

Cheers,

Michael

> struct ifaddrmsg {
>     __u8        ifa_family;
>     __u8        ifa_prefixlen;    /* The prefix length        */
>     __u8        ifa_flags;    /* Flags            */
>     __u8        ifa_scope;    /* Address scope        */
>     __u32        ifa_index;    /* Link index            */
> };
> 
> ---
>  man7/rtnetlink.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/rtnetlink.7 b/man7/rtnetlink.7
> index 0be59a7..6260545 100644
> --- a/man7/rtnetlink.7
> +++ b/man7/rtnetlink.7
> @@ -134,7 +134,7 @@ struct ifaddrmsg {
>      unsigned char ifa_prefixlen; /* Prefixlength of address */
>      unsigned char ifa_flags;     /* Address flags */
>      unsigned char ifa_scope;     /* Address scope */
> -    int           ifa_index;     /* Interface index */
> +    unsigned int  ifa_index;     /* Interface index */
>  };
>  .EE
>  .IP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
