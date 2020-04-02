Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 148B619CA7F
	for <lists+linux-man@lfdr.de>; Thu,  2 Apr 2020 21:48:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728225AbgDBTsI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 2 Apr 2020 15:48:08 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:38284 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726963AbgDBTsI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 2 Apr 2020 15:48:08 -0400
Received: by mail-wm1-f67.google.com with SMTP id f6so5045195wmj.3;
        Thu, 02 Apr 2020 12:48:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=7vqQZx3OFDl9v1JNKAG7obOLJpITQf/WYHmvkQex5ko=;
        b=FrX91c2d3qLq7JRgHaP+bH7mT69/MVfcSRGj5D6byzNquYJat1soSS0icjxXetVVfE
         DbSZDkPn3naB8JV/qu4KvBScLiPTcpjRA7ZmtSmeOEjxxyjdsHxj8sOJImzFYBHHjCtD
         Fmx0QJgcQKtHNvHFxwT9U/JqW6ZpS/QnJQSNzB8AC9efbB8PPdesIZDD8t8cMugcp7cp
         FMIfYqUnVy/Ti9VjRG7pGxN9qLR8/QbefO66CxOZuq+DYy4tS8esksvKamG+A/mrVNTY
         JzP6HcPTJKaaC76KL2WH4nSARi+vD60MOTUPmgZ8QrHQzSP5bI9lKNp29GNLIwvQALLm
         tPLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=7vqQZx3OFDl9v1JNKAG7obOLJpITQf/WYHmvkQex5ko=;
        b=eYwyOpLPhF0Kiy8wlJ80LntzUjQL3f3IeE0Nu5gdXzgB5MtsErL7HQBglS63QV7/Bu
         7o5+qx/evWQtnpULN2RCSD9COJJ1MCfMxv/Woxxje7OFqqJyC4eNcX/sypy27mfSHSja
         DLj5tWM2reVulA2DWVjKmKHmlkb5ov4ZsEA64Eo7xiBLzUNniBGVAk2ZngB6fW4OOebA
         4/s83lDE7B0cwVK0OwjH0+yzxkUlNk2prgQCSnLtgqG8oXmHyk4TKNhLFWvPUOrPBaMX
         PS8tfev6DA8OgnZlld3s+uwvZxtJEt2RN2bhJZNiYv75iOybww6nwwh1/By/d3rJkzKx
         LZAg==
X-Gm-Message-State: AGi0PuZgk16YOEU7/gpYa2RK8vVvje7w/oFFO+VkDMT7QyLvc/h6i8Wb
        hTqSh30unXCS+utWHBeorBA7KZ4J
X-Google-Smtp-Source: APiQypK9lezQR0B1p3BvE0aXGmcJT1b3BYafop75EFrepb28NEqNafonBVvf4JtP4QTWJSIPROqHGw==
X-Received: by 2002:a1c:e341:: with SMTP id a62mr5211708wmh.121.1585856885813;
        Thu, 02 Apr 2020 12:48:05 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id o16sm8909021wrw.75.2020.04.02.12.48.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2020 12:48:05 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>, arul.jeniston@gmail.com,
        "devi R.K" <devi.feb27@gmail.com>,
        Marc Lehmann <debian-reportbug@plan9.de>,
        John Stultz <john.stultz@linaro.org>,
        Andrei Vagin <avagin@gmail.com>,
        Cyrill Gorcunov <gorcunov@gmail.com>
Subject: Re: timer_settime() and ECANCELED
To:     Thomas Gleixner <tglx@linutronix.de>
References: <87pncrf6gd.fsf@nanos.tec.linutronix.de>
 <4c557b44-4e4e-a689-a17b-f95e6c5ee4b0@gmail.com>
 <87mu7unugh.fsf@nanos.tec.linutronix.de>
 <8ae32d2f-e4a8-240f-c7bd-580c26bba2d0@gmail.com>
 <87bloanh89.fsf@nanos.tec.linutronix.de>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <5052f8a7-c6b9-be30-878e-053a3d035f7a@gmail.com>
Date:   Thu, 2 Apr 2020 21:48:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <87bloanh89.fsf@nanos.tec.linutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 4/2/20 3:35 PM, Thomas Gleixner wrote:
> "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com> writes:
>> NOTES
>>        Suppose  the  following scenario for CLOCK_REALTIME or CLOCK_REAL‐
>>        TIME_ALARM timer that was created with timerfd_create():
>>
>>        (a) The  timer  has  been  started  (timerfd_settime())  with  the
>>            TFD_TIMER_ABSTIME and TFD_TIMER_CANCEL_ON_SET flags;
>>
>>        (b) A discontinuous change (e.g.  settimeofday(2)) is subsequently
>>            made to the CLOCK_REALTIME clock; and
>>
>>        (c) the caller once more  calls  timerfd_settime()  to  rearm  the
>>            timer (without first doing a read(2) on the file descriptor).
>>
>>        In this case the following occurs:
>>
>>        · The  timerfd_settime()  returns  -1 with errno set to ECANCELED.
>>          (This enables the caller to know that  the  previous  timer  was
>>          affected by a discontinuous change to the clock.)
>>
>>        · The  timer is successfully rearmed with the settings provided in
>>          the second timerfd_settime() call.  (This was probably an imple‐
>>          mentation  accident,  but  won't be fixed now, in case there are
>>          applications that depend on this behaviour.)
> 
> Clear enough.
> 
> Thanks Michael!

Thanks. Committed. (But, next time you change the API. maybe a 
man-pages patch to go with that? :-).)

Cheers,

Michael

 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
