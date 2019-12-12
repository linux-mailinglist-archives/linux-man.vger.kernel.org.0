Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2F1C311C850
	for <lists+linux-man@lfdr.de>; Thu, 12 Dec 2019 09:36:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728190AbfLLIgy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 12 Dec 2019 03:36:54 -0500
Received: from mail-wm1-f65.google.com ([209.85.128.65]:36441 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728192AbfLLIgy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 12 Dec 2019 03:36:54 -0500
Received: by mail-wm1-f65.google.com with SMTP id p17so1489240wma.1
        for <linux-man@vger.kernel.org>; Thu, 12 Dec 2019 00:36:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=3lVm5xvPRc/IRfiM0WktOk8Z5N3H6HHiJBCbd8KbNB4=;
        b=uwkr78JYwQ4dfbeHAm9Zs0VJr3my009HrxMDRDLHrQwsc0Nd4FY4dQF5bYF5MEHYay
         EksNG1FAMAVvC9A9GPsZYpSuBdrW1r5LGSr8PaOgKe9yECaiF4GjvGB5q9/xWsEbfSGh
         mktZGRP+UX9XGQJYUeVWZu0m7f/Ztku5oFOA5Od1HJo0lSJnWqDJujhpt0j4Pv5/6uUz
         e8SWUuqiHQxUgbHNRKzM9vE5TsJFmAp+B3polvTAoYjLE0O450C4yQdaUPvzolY/s37q
         Be8vLaKKxj9D7PtWm1grQgUmxTRSGyLrXwfm+02PSZ9/XSub/dHfDi3sEftNanFBWqe6
         8gxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=3lVm5xvPRc/IRfiM0WktOk8Z5N3H6HHiJBCbd8KbNB4=;
        b=DiEFCX1GRs6gXAtuTupfnL74fh2vbqkOhzBfBkGfVl4umFIgC+eDUTiU6m9ueRVGgT
         Pu6KUT7J0N2ICf0+hfabrRVX/sWsw3uOT711nVrxDLm4geKwM2SjYYfToPY3QzYOlEiv
         sYFft8OCa9GUcq28zOZFAXVAD9QsbjAU8d9SSRYagACr5VzfnlpLrwk0aGhhMcGv1f8K
         pZhTPfDc2ehG7muXoVkC/uppSxHrBBu6bGWdZO5XKGm9HTFWIU0bWBTN6ApJQ8YphMOX
         +/Dgef1+QP1aAXgqi8gZoWOXUGNBpEYMNp1WVAp7xU+AKrSQfi6Ponp/NfX1TZTN3emE
         T6rg==
X-Gm-Message-State: APjAAAWOVRzNJjwYOnNsPCmMe1byPZvUgGWeSWWbjEfgmI+5rV8u9X7M
        xhHNLI6vLpbyhSRBRCZM/kRQfk1c
X-Google-Smtp-Source: APXvYqwkB5YAr5BIlSo93oAPngvFm74Y+P1RG5IjXoZw7yt6CcW8H/0kFwNRzF9CDJv4+SdYtNyTZQ==
X-Received: by 2002:a1c:5451:: with SMTP id p17mr4912489wmi.57.1576139811914;
        Thu, 12 Dec 2019 00:36:51 -0800 (PST)
Received: from ?IPv6:2001:a61:2426:9c01:6648:18:8d7:e4e0? ([2001:a61:2426:9c01:6648:18:8d7:e4e0])
        by smtp.gmail.com with ESMTPSA id z20sm4167143wmi.45.2019.12.12.00.36.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2019 00:36:51 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] copy_file_range.2: tfix
To:     nforro@redhat.com
References: <4c44701f852aba14f40f4b815e8ed0e080c00bea.camel@redhat.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e529a67d-65d7-ceba-0059-4dbf182fd694@gmail.com>
Date:   Thu, 12 Dec 2019 09:36:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <4c44701f852aba14f40f4b815e8ed0e080c00bea.camel@redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/9/19 11:56 AM, Nikola Forró wrote:
> Signed-off-by: Nikola Forró <nforro@redhat.com>

Thanks, Nikola. Patch applied.

Cheers,

Michael

> ---
>  man2/copy_file_range.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/copy_file_range.2 b/man2/copy_file_range.2
> index 9ed0cc31a..4173b84a2 100644
> --- a/man2/copy_file_range.2
> +++ b/man2/copy_file_range.2
> @@ -84,7 +84,7 @@ allowed to overlap.
>  The
>  .I flags
>  argument is provided to allow for future extensions
> -and currently must be to 0.
> +and currently must be set to 0.
>  .SH RETURN VALUE
>  Upon successful completion,
>  .BR copy_file_range ()
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
