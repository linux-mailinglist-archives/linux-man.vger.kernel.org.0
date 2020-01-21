Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0AA91144506
	for <lists+linux-man@lfdr.de>; Tue, 21 Jan 2020 20:23:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728776AbgAUTXP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Jan 2020 14:23:15 -0500
Received: from mail-pj1-f65.google.com ([209.85.216.65]:37308 "EHLO
        mail-pj1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729061AbgAUTXO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Jan 2020 14:23:14 -0500
Received: by mail-pj1-f65.google.com with SMTP id m13so2068047pjb.2
        for <linux-man@vger.kernel.org>; Tue, 21 Jan 2020 11:23:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=IvqsT6ONnS2NTbkwWmE1HP2ORm6VJoF9+A6npRGjKuw=;
        b=LciFYjsKyNTYWOFZUUcHKaTEBTIa+n64KJqpGbLkVuqZ67jibZHGJH82xE0FYq6NmX
         30hCTcYFTwdD7pAYJZ5ST9+GBX2kCM1GN3eYCJZVr2ZEuEGPQrjqxcr2R4lFDYYhY/bX
         zS/6H7fH3zgqHlJyNihWUpm768/9jrO5CWTvqQ7HkAzlGowz8IOdO1J9eS+rGsg6CgrW
         kAB6S02C7nmdI/e6+oC3+xdwov2hkVu3KwYDRtwy8ojmAo85DR3hio50nnRaJ1YDJ4DV
         XeFM2EhJhlWIgkBzQ2CChCzE5bCAFQOl7GuTTKr6PcFkqNETE5hFlUhVENhtaPB0knTO
         wabg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=IvqsT6ONnS2NTbkwWmE1HP2ORm6VJoF9+A6npRGjKuw=;
        b=Ni1teafF6XuVCXc44HwPh5BE4xzqLKh5aMYQBl5FrKHp/oA1YqMD5l85gtyoI1TOgs
         3oBFYTi0YAMvQyhof81DkTGCZx0PaeuwbmCzrnz4AVMwIuLF1Rr3yi+MvByinOWknUY/
         sgZtYQUT2hVWo19pdX1Ptnv4ivVKnZKnlcwwI93L071wdCWG16dd1x/FXltq/hLO+YXF
         S69Vvj9qmibZRnBY6VHeAS978Y63hn4KPrXXzJggrWL+vDXP0lOk9nky8IV05/P82O/O
         46yXRc3hr6LgDVXvm3Gepu3k5SG0oOgifZC+ljoaTlwy9r0ctefHLvuRw0APk/DMRRJE
         QqMw==
X-Gm-Message-State: APjAAAWaxYfkgUxu5VUcCY282b+91O9Xu7ImJ3XcFEd7iUsghDvQ9OUb
        BlfdW4J9fyfxo+GCW1P8JMXExOEj
X-Google-Smtp-Source: APXvYqzj1NBSoTQEnDAwyyRiVawp+wfv0EOh4XvNKz4rk0Utwj9T93kMWojJ/oarztUbNXp7CIWTlw==
X-Received: by 2002:a17:902:788b:: with SMTP id q11mr6969165pll.21.1579634593462;
        Tue, 21 Jan 2020 11:23:13 -0800 (PST)
Received: from [192.168.1.72] (122-58-99-230-adsl.sparkbb.co.nz. [122.58.99.230])
        by smtp.gmail.com with ESMTPSA id r28sm41401673pgk.39.2020.01.21.11.23.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jan 2020 11:23:12 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] keyrings.7: ffix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20200121112832.9064-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3e1ba30a-6163-b036-2e0b-3be62354b70b@gmail.com>
Date:   Tue, 21 Jan 2020 20:23:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200121112832.9064-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/21/20 12:28 PM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

Thanks, Jakub. Patch applied.

Cheers,

Michael

> ---
>  man7/keyrings.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/keyrings.7 b/man7/keyrings.7
> index 4270d2e91..3367149ef 100644
> --- a/man7/keyrings.7
> +++ b/man7/keyrings.7
> @@ -146,7 +146,7 @@ that should not be readable from user space.
>  The description of a
>  .IR """logon"""
>  key
> -.I must\
> +.I must
>  start with a non-empty colon-delimited prefix whose purpose
>  is to identify the service to which the key belongs.
>  (Note that this differs from keys of the
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
