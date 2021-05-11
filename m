Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F02F737A3F3
	for <lists+linux-man@lfdr.de>; Tue, 11 May 2021 11:46:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230466AbhEKJrR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 May 2021 05:47:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230434AbhEKJrR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 May 2021 05:47:17 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 276CFC061574
        for <linux-man@vger.kernel.org>; Tue, 11 May 2021 02:46:11 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id b19-20020a05600c06d3b029014258a636e8so873968wmn.2
        for <linux-man@vger.kernel.org>; Tue, 11 May 2021 02:46:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=kQ66aG1aDIC3OkJvvuowRGvmTxZ3jmz4fWJV50nUkN4=;
        b=NfQ+AHwhRLUVZQmlNF8/guDXq0HU1n41HCWgNg/oqDMstiUgJosBBbYGRaE4bw2+G7
         iu+MEJjHP8+b+Wd8kATKeC3shwwyzoVpMpYH02tCsfCW+msg7qDgKoq5qgNgoY9T3+dh
         QXxxhQePOatEHQFj9AxjGJkcQ5nJ5Wo5J3o4h651NcL7aBkNYCRIpMNjq8pJzfnNACwk
         2N82eb4RxK75LRKcosCu6jvHkeFRRd1Qxj2trM7MAb3Eqf+PY9UW41y6r7S5DhFe5X2O
         FXuCSwO2MMqtUqj0Sq6AwCe4XyWOG63+LV5gL5JLfX9meE6S67KyazhvIubkJhx4N9jm
         c6kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=kQ66aG1aDIC3OkJvvuowRGvmTxZ3jmz4fWJV50nUkN4=;
        b=P+Rv8IgcB9v04AUDd7ai9C/GL2nz3SKeYHy4KORP/4Iu4MO8DkMzkh9qP5+YAhGn5M
         7h8RmXTgUYYg0LHOZnohiRQrd8GNLJcB4B4Qd8TWySVAdyd194JYYniND3I70O1ZqqIz
         TZ6MGIIdIBfhY3IOW7huEAFmg++cVsEiptZbnGIckr1U/xpvTlICjFjE16igrH/Poj3Y
         OkS31KVI6apTe8pXNlNjVRd6RgHnLhRmnPYMwQjwjkmEwB5B1U41nByx32BEGWdBxZBm
         oGjhUvo0nLuy4tIugnuiynl1dGzHmMKUJmcr55RuaiROztcDzupii2I5bIcZyLBzrOL/
         istA==
X-Gm-Message-State: AOAM530pEgvRfV6My3E/BU1rtP9I5OWx1TvoMFrHkezM0AmtwxFmXaOx
        EIwoIdPSOOyUrKe+HzzQmQY=
X-Google-Smtp-Source: ABdhPJyZGiUa0dVKKBiYwKA5Ngj8HRYjxIR5v88yhR4BavUy6k0v0SK9D2UadDVKLhnYJGvvUydSkA==
X-Received: by 2002:a1c:238d:: with SMTP id j135mr4450582wmj.170.1620726369976;
        Tue, 11 May 2021 02:46:09 -0700 (PDT)
Received: from [192.168.43.70] ([46.222.232.120])
        by smtp.gmail.com with ESMTPSA id m16sm27012248wru.68.2021.05.11.02.46.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 May 2021 02:46:09 -0700 (PDT)
Subject: Re: [PATCH 1/5] tgamma.3: tfix
To:     Akihiro Motoki <amotoki@gmail.com>, linux-man@vger.kernel.org
Cc:     mtk.manpages@gmail.com
References: <20210511092846.98095-1-amotoki@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <94da6a6d-e0ae-2985-8400-e0e53d9d203f@gmail.com>
Date:   Tue, 11 May 2021 11:46:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210511092846.98095-1-amotoki@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Akihiro,

On 5/11/21 11:28 AM, Akihiro Motoki wrote:
> Signed-off-by: Akihiro Motoki <amotoki@gmail.com>

Patch applied.

Thanks!

Alex

> ---
>   man3/tgamma.3 | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/man3/tgamma.3 b/man3/tgamma.3
> index ae3f24ece..5cd58f251 100644
> --- a/man3/tgamma.3
> +++ b/man3/tgamma.3
> @@ -203,7 +203,6 @@ the glibc implementation of these functions did not set
>   to
>   .B ERANGE
>   on an underflow range error.
> -.I x
>   .PP
>   .\"
>   In glibc versions 2.3.3 and earlier,
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
Senior SW Engineer; http://www.alejandro-colomar.es/
