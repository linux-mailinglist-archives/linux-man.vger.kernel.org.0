Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D7F025E857
	for <lists+linux-man@lfdr.de>; Sat,  5 Sep 2020 16:23:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728264AbgIEOX5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Sep 2020 10:23:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727875AbgIEOX4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Sep 2020 10:23:56 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1BBDC061244
        for <linux-man@vger.kernel.org>; Sat,  5 Sep 2020 07:23:55 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id z1so10264003wrt.3
        for <linux-man@vger.kernel.org>; Sat, 05 Sep 2020 07:23:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=0mrzRUWV8wf+MUrKaKNvC24JA7ptrEajad491gQMWRs=;
        b=jag4/c/z/RHTQGuLBf99UxAGwiSC/l/eyGuXCI257nn+VtP3cJ8gGl+KPFWSrGARJk
         qFuHu6toV3qCrI3SH/Jfrk4aZpH8BOH1/eVSEnX0oPWAg2hMUQO0XL0tOZqyd6Ob8E2c
         Zr5RDm11oYzWqJl/QGZGBfDifrgtZ0hfvTOBo2gVJqrMT9UQ5mr1+c54TAGhIBPKPKZ7
         O4ceNHE0xC29NYZ5mCaHAhPnI5h/z+S8p7UKoWXitHIMo+GdNsA399O1mFr+KZMwm7NP
         fMKqjRBNpXCg+RgyMdmpT2pipJj9bN6eqyz9J286WgHAsIUUMcwBQ/S52QvivUWnEHiS
         L7xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=0mrzRUWV8wf+MUrKaKNvC24JA7ptrEajad491gQMWRs=;
        b=PTHWZTMVpaBF6kLPbgKoyf6Kwh0txsDyr7+H6Ugn1w7LZgtmrBiC0EcfIgj8YeTUCF
         yo6rNv2ivDRhRWuhzSE74rGi1Sm64KgYY6iu+TZiISID5sG/sl1wtS5ieigttUajIOHx
         Fm7tGiHQh9wti+xxWqfNCjQ/25UvcJMyapm5t/LU0r69gmyoUKbJ9lOGrVf+fV7kUDhz
         0lUlqMAe2BlkuZs4Ox3+pDh4aiAIq2ELSSzOwMk+7rjhWpNw8n7/q8RbitlAnvSS4V8L
         MxMy+mCF+oN5Bbx5B6Q2M2EoPX+l5rCZ/FM6nfAB7VwsSO0AaXBGRd7m4nSywSIqbDkH
         9MAA==
X-Gm-Message-State: AOAM530I7lF1iD1PKarxNCfjmWXzeAvYpryKc+DRb5FiyM1pooPw0IYL
        KHFAvOho77eTTwDbnQQAudg=
X-Google-Smtp-Source: ABdhPJwoqUylxqFt5VFb6HHmMl8cT28xL7MOg1HZn67UTk9rCZLmyLWRMIotgfRRomAeGSxm5A0Wig==
X-Received: by 2002:a5d:468f:: with SMTP id u15mr12461001wrq.336.1599315834721;
        Sat, 05 Sep 2020 07:23:54 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id w15sm17494316wro.46.2020.09.05.07.23.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Sep 2020 07:23:54 -0700 (PDT)
Subject: Re: [PATCH 35/35] qsort.3: Use sizeof consistently
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <20200905142037.522910-1-colomar.6.4.3@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <546fd24e-05d8-747b-bef5-bf2f20be5aac@gmail.com>
Date:   Sat, 5 Sep 2020 16:23:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200905142037.522910-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

This one I sent it with git.  It is *really* *really* simple :)

Cheers,
Alex

On 9/5/20 4:20 PM, Alejandro Colomar wrote:
> Use ``sizeof`` consistently through all the examples in the following
> way:
> 
> - Use the name of the variable instead of its type as argument for
>   ``sizeof``.
> 
> 	Rationale:
> 	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/qsort.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/qsort.3 b/man3/qsort.3
> index b49c2a9d3..e1af43cf0 100644
> --- a/man3/qsort.3
> +++ b/man3/qsort.3
> @@ -150,7 +150,7 @@ main(int argc, char *argv[])
>          exit(EXIT_FAILURE);
>      }
>  
> -    qsort(&argv[1], argc \- 1, sizeof(char *), cmpstringp);
> +    qsort(&argv[1], argc \- 1, sizeof(argv[0]), cmpstringp);
>  
>      for (j = 1; j < argc; j++)
>          puts(argv[j]);
> 
