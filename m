Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AB21220F2A
	for <lists+linux-man@lfdr.de>; Thu, 16 May 2019 21:22:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727264AbfEPTWY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 16 May 2019 15:22:24 -0400
Received: from mail-wm1-f50.google.com ([209.85.128.50]:34792 "EHLO
        mail-wm1-f50.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727708AbfEPTWY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 16 May 2019 15:22:24 -0400
Received: by mail-wm1-f50.google.com with SMTP id j187so7726676wma.1
        for <linux-man@vger.kernel.org>; Thu, 16 May 2019 12:22:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=khwp5ozWPQdrpkkeT5/whMi/w1dN8oGk8FzNeDAEwJc=;
        b=bGNvny8UaL4a64oqePHSFc8hYigLoP2q2gMEf+fb9Lcym3fPWEhaJb94OQmwR377NY
         kTgaT7jCzfyHa5ufHZEDQtwQLAnhlOHAnghwLUAAhzjaO8oYu1ZQhmqO+qLlSpz8XmBc
         9ZFsy6rKdXwXzYBduTai+LlyyaJMJUNG8c2OjdV5ivcjlLCK5rnf2gcRyMvfZ4Tzjp5a
         qrWwf5YViroJ9Gt0NxPsXtj2Loy2vuT4bIqJfCw36uowV3uj8DGK1O531MNygDxFC9TZ
         HcRxx5B6diTwzojJ2Rj2JdJyqiFJlaZdSBWBcwxTMeoDwwwOW7yKOCMkh8GUYzX/W/IV
         CkEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=khwp5ozWPQdrpkkeT5/whMi/w1dN8oGk8FzNeDAEwJc=;
        b=guRtcyVsD3IC2aYhzN+4/L2MYQaZCkg12IeBnRDpkwazXeMrECO7IafNi4Su3BQXPj
         /Bt5zjMiX4ta8J27qgxkovKf/ds0M8EryvMXeUBWKb2aNaleiD+iRfCxveqLuA1Z18Ji
         9iIwd8Mf/MzT+X22fMUnAyqEH1obpCSHjI4dhLubNxXJFqr+ql2OFCEubYIQp5LCXX8n
         +6csJnJ9oTgUyVkUhlT0gcY3ky7qSaYq9fKWYvkDybCO57PF5lJMZsNbQX6e+mzlr0VP
         4fJWeIeWGUeO2/cGxRfv2pSU4aqBd117FuuDc41axx1s5n9GcjbmxLBc/tLvMM9J+JW/
         AhYg==
X-Gm-Message-State: APjAAAWgbEaACiEITaQ8tLFt4mf5K3vFUaa5CObxyyiNFePkAJi3lB3v
        NVpdRGEZZwRqRCR+AAMrwejxxxxUDGI=
X-Google-Smtp-Source: APXvYqwiYa7Whu9aRZ7kJ6htWPbTKbon8G4nPtZtmrfCMIrQMvoAEHZfbHqNfzh8bDFvBskxMsZcHQ==
X-Received: by 2002:a1c:6783:: with SMTP id b125mr29791992wmc.41.1558034542756;
        Thu, 16 May 2019 12:22:22 -0700 (PDT)
Received: from [10.105.146.2] ([88.128.80.89])
        by smtp.gmail.com with ESMTPSA id a5sm5400578wrt.10.2019.05.16.12.22.21
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 May 2019 12:22:22 -0700 (PDT)
Cc:     mtk.manpages@gmail.com,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: [patch] pthread_spin_init.3: Add missing comma in the argument
 list
To:     "Kumar Chaudhary, Naveen" <naveen.kumar.chaudhary@intel.com>
References: <0783406BCA031A4CA8D0E001951381F304EAC9A4@BGSMSX109.gar.corp.intel.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b59fefa4-d528-b903-86c9-a90c7961d16a@gmail.com>
Date:   Thu, 16 May 2019 14:22:17 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <0783406BCA031A4CA8D0E001951381F304EAC9A4@BGSMSX109.gar.corp.intel.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Thanks for the patch Naveen, but it looks like your mailer
corrupted it, so I've made the change manually instead.

Cheers,

Michael



On 5/16/19 10:24 AM, Kumar Chaudhary, Naveen wrote:
> Hi,
> 
> *_man-pages-5.02_*
> 
> diff --git a/man3/pthread_spin_init.3 b/man3/pthread_spin_init.3
> 
> index 3018d804a..ce47d4280 100644
> 
> --- a/man3/pthread_spin_init.3
> 
> +++ b/man3/pthread_spin_init.3
> 
> @@ -29,7 +29,7 @@ pthread_spin_init, pthread_spin_destroy \- initialize 
> or destroy a spin lock
> 
> .nf
> 
> .B #include <pthread.h>
> 
> .PP
> 
> -.BI "int pthread_spin_init(pthread_spinlock_t *" lock " int " pshared ");"
> 
> +.BI "int pthread_spin_init(pthread_spinlock_t *" lock ", int " pshared ");"
> 
> .BI "int pthread_spin_destroy(pthread_spinlock_t *" lock ");"
> 
> .fi
> 
> .PP
> 
> *Best Regards,*
> 
> *Naveen*
> 
