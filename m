Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B74441E5BA0
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2020 11:16:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728229AbgE1JQi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 28 May 2020 05:16:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728151AbgE1JQg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 28 May 2020 05:16:36 -0400
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com [IPv6:2a00:1450:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF034C05BD1E
        for <linux-man@vger.kernel.org>; Thu, 28 May 2020 02:16:35 -0700 (PDT)
Received: by mail-ej1-x641.google.com with SMTP id h21so31269371ejq.5
        for <linux-man@vger.kernel.org>; Thu, 28 May 2020 02:16:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=XdX06rEHpkE8epYWRg2MpHmZs4dJ4cPOZrHumDiipC0=;
        b=Y7je4jJMAEaUJ6zYEGIR1/medJEzQjsOKljP/spIt/PY/UChNTgwe0AYcKfJbmEeI5
         gJI3nvP98pQhg/2evLaJ1TVjvxpmHOFWxCs6pG78URcBZUv/Cs8lW7l6XVXTYaW8yCwn
         UjT8gHFZz7yWpaXS/ULak6oBvKrfXJFjqY7kemYEfjzG54Ig8eTFaWNtKq5z+taxgN8j
         HOJ+us+BNpcbBA2b5Hq0dbFzgnghGboYS9ejEVECbfdAQ7qJVgAiMJUWgK7hQZvKhkUA
         izF7l+7g8rgnJIbN7CEQ8n540D0Db0XSo6dfpswXt0ZR1lgLlPzCbgemXwgpoQLzC0DN
         1kPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=XdX06rEHpkE8epYWRg2MpHmZs4dJ4cPOZrHumDiipC0=;
        b=nd25yPXvx/6C0Lxby7DvkNrLegfeu/ydmG8AFSRrKhMgwH7riROs1PKe856AioEIj7
         x9wru/Qv+rsL4WPbn3FktYu/DHFBTVWgmHxAHGGUfSabIeesmbSNk/HG4bifC9diyDrQ
         JsZK+QqnCUNQoM8GHUcCKP7KTSBXBwZkUpSIE0nfoFqltFxMR7kDiSkLFB/GpcKBDoHl
         dRs1gdg8JDCxcY+akWitKeIDnflzEa+ck4tuAEIE/ooeoXo3MfCEUQVoXhwOejBcFlYc
         79zmnOwaI4sHR+Y3k6X3xY+7QqOgtuAlJvZLMG1hVyhYz53PR6DtOts5zXpuNpfjErJn
         IobQ==
X-Gm-Message-State: AOAM530Lx1w8YPAxmGvukxZ3/z2ZYdoONBm40YFF9O1XFcM8qB9EkGwh
        Tvo2QZLIxCKnkby8Jepoz6OipkLf9kk=
X-Google-Smtp-Source: ABdhPJyu/JUjb9v48TbVXRV/LiMG56M5n1RRI9p+MFiWa40my4bRfG1FBkEudVxfdPyiDp6eTLW+jQ==
X-Received: by 2002:a17:906:f189:: with SMTP id gs9mr2008756ejb.203.1590657394169;
        Thu, 28 May 2020 02:16:34 -0700 (PDT)
Received: from ?IPv6:2001:a61:2516:6501:a84b:ccd6:785a:2f0f? ([2001:a61:2516:6501:a84b:ccd6:785a:2f0f])
        by smtp.gmail.com with ESMTPSA id dt12sm4980532ejb.102.2020.05.28.02.16.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 May 2020 02:16:33 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: core sysctl
To:     Jonny Grant <jg@jguk.org>
References: <9e98156e-3ba9-e656-bb8f-c54229b5ac11@jguk.org>
 <CAKgNAkhkASJ8+Xe64_ifM1_GgrNSCd6Vx0GDdkJ7aFfJ7RG=7A@mail.gmail.com>
 <0e0f3d4e-b811-3423-ffe9-2fd68900c1a0@jguk.org>
 <CAKgNAkgRSAf2MVA-XMbvoQTk88T5j=Hn2-nyzZBo-tVrLxvbsA@mail.gmail.com>
 <0e4f5e7d-85bc-11d6-c73a-16509ab2a3e9@jguk.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6d57dced-2c9d-480b-8e4e-02ecbe42e4a9@gmail.com>
Date:   Thu, 28 May 2020 11:16:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <0e4f5e7d-85bc-11d6-c73a-16509ab2a3e9@jguk.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jonny,

On 5/27/20 5:22 PM, Jonny Grant wrote:
> 
> 
> On 27/05/2020 14:32, Michael Kerrisk (man-pages) wrote:
>> Hi Jonny
>>
>> On Wed, 27 May 2020 at 15:23, Jonny Grant <jg@jguk.org> wrote:
>>>
>>>
>>>
>>> On 27/05/2020 14:06, Michael Kerrisk (man-pages) wrote:
>>>> Hi Jonny,
>>>>
>>>> On Mon, 25 May 2020 at 17:08, Jonny Grant <jg@jguk.org> wrote:
>>>>>
>>>>> Suggestion for some additional information on this page:
>>>>>
>>>>> http://man7.org/linux/man-pages/man5/core.5.html
>>>>>
>>>>> Could "Core dumps and systemd" be extended to give an
>>>>> example of sysctl making a temporary change?
>>>>>
>>>>> eg set to the filename and signal that causes the core dump:
>>>>>
>>>>> # sysctl -w kernel.core_pattern="%e-%s.core"
>>>>
>>>> I'm a little confused: what do you mean by "making a *temporary*
>>>> change" (i.e., where does "temporary" come into it)?
>>>>
>>>> Thanks,
>>>>
>>>> Michael
>>>>
>>>
>>> As I understood, this core pattern is set until reboot.
>>
>> Okay, now I understand. Next question: what's the value in having the
>> signal number in the filename?
> 
> The signal number indicates the reason the core was dumped, > eg 11 SIGSEGV,  SIGTRAP is 5.

Sure, it tells us what signal triggered the core dump.
My reason for the question was that it doesn't tell us the
*reason* for the core dump--for example, SIGSEGV can be
generated for many reasons.

> %P %t %I also useful.

Okay. I applied the patch below.

Thanks,

Michael


diff --git a/man5/core.5 b/man5/core.5
index 9725ff64a..6dbaa69b8 100644
--- a/man5/core.5
+++ b/man5/core.5
@@ -533,7 +533,7 @@ For more extensive details, see the
 .BR coredumpctl (1)
 manual page.
 .PP
-To disable the
+To (persistently) disable the
 .BR systemd (1)
 mechanism that archives core dumps, restoring to something more like
 traditional Linux behavior, one can set an override for the
@@ -548,6 +548,18 @@ mechanism, using something like:
 .EE
 .in
 .PP
+It is also possible to temporarily (i.e., until the next reboot) change the
+.I core_patter
+setting using a command such as the following
+(which causes the names of core dump files to include the executable name
+as well as the number of the signal which triggered the core dump):
+.PP
+.in +4n
+.EX
+# \fBsysctl \-w kernel.core_pattern="%e\-%s.core"\fP
+.EE
+.in
+.PP
 .\"
 .SH NOTES
 The


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
