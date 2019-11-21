Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 931EF104E08
	for <lists+linux-man@lfdr.de>; Thu, 21 Nov 2019 09:33:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726568AbfKUIcz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Nov 2019 03:32:55 -0500
Received: from mail-wr1-f67.google.com ([209.85.221.67]:46634 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726947AbfKUIcz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 Nov 2019 03:32:55 -0500
Received: by mail-wr1-f67.google.com with SMTP id b3so3200011wrs.13
        for <linux-man@vger.kernel.org>; Thu, 21 Nov 2019 00:32:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=WzBzX/6AHfHzPN8+y9lAxv2KgJg40GQiaxSrAewF9/A=;
        b=HKAfJYVrj/gJ6G9k7wq0AiOXlbCMUFj68IfFEY0fgJbq0XXRwNcDfzb4PsGVbNfgsC
         DCyx9s4U6UCnjZQb1ug5g1BJuUw0zFLEQ9VGv6TLp7G9drxBElJBMRzyqEZd1Rs327eg
         0vsa7s469noO5sZZtn7E8PdQ/Lrwr4WDXRFDBiRdXe4QaZxfCr+aL5qTMCfQRf953DHs
         cqw/FS6JfVoiYginyIKGZ+RyC5B5pM8KiWBBGxIsZXCIL1s7xFFYeOPahDOPt/m/NI8K
         2K6d023heYheYE91hL9Yo7+ZGLjse3hPUXPu5kC2XnLfJg+lwqkiCU829ShvdqKoftgt
         /ohA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=WzBzX/6AHfHzPN8+y9lAxv2KgJg40GQiaxSrAewF9/A=;
        b=F/jISaP0KvPSX1bP5fwjyapuNg+ASjTlhBNwkgSHaabntZ8Iv4mDeADRN+qzpnRXjt
         PhoJOWBQCHrFtHm08/pSIoV9IJXIiq1PO+FZ0lY9xTArh4w0Y76N2yN85uUfGumxBD5T
         hKSOBin3ZoBCCK+CXaWNyKD41cV8mwH+hfAOR739v0vy+BnwzrlYa048t4PgSI+4qlNv
         /rRu+LUWOKWoT8Cahfa0e4WOxXzaDDSeKEG2vuP4or0kOjGq9cH3VLx6erCa2CeEbecx
         266EJi6DmfqsKBR1c9RUCL92BS+PXKvL8y0HN9nub/Wkx5+tqTkIO7vP+T6vfUThNvxh
         Wijw==
X-Gm-Message-State: APjAAAXdHKkuUGb1LoWTxO/5Qoj/VFYJNfRbMJLS8srp1GiE/FWcel+1
        LiMAkCsRJC6nDESm62eXVyghxw7B
X-Google-Smtp-Source: APXvYqyvo0lHhyfi9IifJy+rgkQP59GV9TqMC6zQm4JjvGkD1Nwxea8oHb5P9G5RWziLdoqqQzvDTQ==
X-Received: by 2002:adf:da52:: with SMTP id r18mr9020770wrl.167.1574325172768;
        Thu, 21 Nov 2019 00:32:52 -0800 (PST)
Received: from ?IPv6:2001:a61:3a4e:101:8d4d:f454:a7e5:543d? ([2001:a61:3a4e:101:8d4d:f454:a7e5:543d])
        by smtp.gmail.com with ESMTPSA id c10sm2075124wml.37.2019.11.21.00.32.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Nov 2019 00:32:52 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] strtok.3: tfix
To:     Jashank Jeremy <jashank@rulingia.com.au>
References: <20191120233439.50980-1-jashank@rulingia.com.au>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <de7256b6-c9a2-af03-2b40-10562ab70e7a@gmail.com>
Date:   Thu, 21 Nov 2019 09:32:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191120233439.50980-1-jashank@rulingia.com.au>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Thanks Jashank,

On 11/21/19 12:34 AM, Jashank Jeremy wrote:
> ---
>  man3/strtok.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Patch applied.

Cheers,

Michael

> diff --git a/man3/strtok.3 b/man3/strtok.3
> index 3bb578004..933a7b96c 100644
> --- a/man3/strtok.3
> +++ b/man3/strtok.3
> @@ -131,7 +131,7 @@ and then a null pointer.
>  .PP
>  The
>  .BR strtok_r ()
> -function is a reentrant version
> +function is a reentrant version of
>  .BR strtok ().
>  The
>  .I saveptr
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
