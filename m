Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9993044C26
	for <lists+linux-man@lfdr.de>; Thu, 13 Jun 2019 21:33:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726945AbfFMTdL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 Jun 2019 15:33:11 -0400
Received: from mail-ed1-f65.google.com ([209.85.208.65]:34136 "EHLO
        mail-ed1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726370AbfFMTdL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 13 Jun 2019 15:33:11 -0400
Received: by mail-ed1-f65.google.com with SMTP id s49so3037705edb.1
        for <linux-man@vger.kernel.org>; Thu, 13 Jun 2019 12:33:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Wedg14k/Opn2lWy1fmXsA6Q1gH4aDgUbMgsn8q3dd5I=;
        b=WpbUhBWD1lRtdkRl6OszsIztcBO/g/gA5iIPaY8p09gQMFJZc4yWOtyKn+wQZwIWe/
         hCyNLoHv6nJVfY6XVymLq4SHbdAC9cBZUeIdXvFMJktSDMuNMt/9MCa39bZCor7N/iMd
         Y10x7yEP1Y17T9Ef6X+dMFfAf3q7J5hb76yqqB2LqtFjcVYjaAy+tLq83Cst0xjUV+z1
         FaR5YamWnvEXdM9UkA0Kl7SVS71J895iU3Y07rkhmiJJk2rSLYjr29cefjH2nbAkMgx3
         xY3PJJ1A8FuYANqVdgqApf5AfksdvGSfMbqQ6cxOnUWh/gXY4JN4qRPQKq5d5LkUOrLA
         QmOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Wedg14k/Opn2lWy1fmXsA6Q1gH4aDgUbMgsn8q3dd5I=;
        b=LgSWJOYO2CmtTQ28XBUPcPuaSGIj+Kmww4pqisJlS6h49AIk+JQU0U3GSsTYJAtHLW
         yooWZWYMPO8zbU/ne7AwNYz5YVB9FQwEbSFdnBDojklDdCNVMorbfNBpBhL94H7z3MFS
         sAQ/482X3wp5/rCPXaaxQ2AHxjduYE9GgeIqXQ5LP/cMYKMUdVmG2HF28L7u8zXkXN7Y
         lX9oQz+uDHQVH3QsoOAlmOGXwal5vzuU7vtgPT1UNpyVWfkjdMM8H67IJewszHS3Bj1Y
         xEhjy9ulaoKX0P2q/QYtEJ1GIJKR9iFWKDyMTx3Dtey4jbBL3Nb/PCx+6lyLMzmRP4Y1
         0GMw==
X-Gm-Message-State: APjAAAVnRLh5C9jxn0DhCmD/+Ky6cL9Q9UdEfsMm/Ri3Kb9Hz4lmihwa
        qfArr56sbDWZ8BWP3lXoGb4=
X-Google-Smtp-Source: APXvYqxR3cj86CpWwyPbPvj4O6Tae2dJf80nsEEzXa6X5xIlluVTaGaJ8xBKa5SfRWLcCHTybA2Kew==
X-Received: by 2002:a17:906:4d88:: with SMTP id s8mr54980135eju.225.1560454389179;
        Thu, 13 Jun 2019 12:33:09 -0700 (PDT)
Received: from [192.168.8.116] ([194.230.158.110])
        by smtp.gmail.com with ESMTPSA id u15sm181100edi.10.2019.06.13.12.33.08
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Jun 2019 12:33:08 -0700 (PDT)
Cc:     mtk.manpages@gmail.com
Subject: Re: [PATCH] vdso.7: Mention removal of Blackfin port
To:     Tobias Klauser <tklauser@distanz.ch>, linux-man@vger.kernel.org
References: <20190613112526.10285-1-tklauser@distanz.ch>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <65e3e387-7709-e79e-2bcd-5f161d09d091@gmail.com>
Date:   Thu, 13 Jun 2019 21:33:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190613112526.10285-1-tklauser@distanz.ch>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Tobias,


On 6/13/19 1:25 PM, Tobias Klauser wrote:
> The Blackfin port was removed in Linux 4.17. Mention this in the section
> concerning Blackfin vDSO functions.
> 
> Signed-off-by: Tobias Klauser <tklauser@distanz.ch>
> ---
>   man7/vdso.7 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/vdso.7 b/man7/vdso.7
> index 8ac6c12d2c2f..182acba00ea8 100644
> --- a/man7/vdso.7
> +++ b/man7/vdso.7
> @@ -235,7 +235,7 @@ __kernel_clock_getres	LINUX_2.6.39
>   .in
>   .ft P
>   \}
> -.SS bfin (Blackfin) functions
> +.SS bfin (Blackfin) functions (port removed in Linux 4.17)

Thanks! That's exactly how I'd want to document it.

Patch applied.

Cheers,

Michael

>   .\" See linux/arch/blackfin/kernel/fixed_code.S
>   .\" See http://docs.blackfin.uclinux.org/doku.php?id=linux-kernel:fixed-code
>   As this CPU lacks a memory management unit (MMU),
> 
