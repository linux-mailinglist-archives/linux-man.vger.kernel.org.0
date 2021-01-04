Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D1A822E9E80
	for <lists+linux-man@lfdr.de>; Mon,  4 Jan 2021 21:04:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727672AbhADUCt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 4 Jan 2021 15:02:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727978AbhADUCs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 4 Jan 2021 15:02:48 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97266C061574
        for <linux-man@vger.kernel.org>; Mon,  4 Jan 2021 12:02:07 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id r4so371989wmh.5
        for <linux-man@vger.kernel.org>; Mon, 04 Jan 2021 12:02:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=F36oRPJ4qCKdlOrDn7G9mknUoCGe6gloB7wnOKzuo34=;
        b=dCxXMqZHw3UaXPkkyfMmuHY3LtoSre+0My/JcdFr546G+J+E3miO7fnJIaVSNTvOJX
         8xLKyVoUSem1JWNb0I7TbyTXY2TaaqGB/J31Ab0VZH1WEf+0VEZlEkru7pz6LTmfQo2+
         w4r1mZaHFboBj8dGLFus4D/5WYJwPBUHvUcoPjZZQ4FIQmgrofZkZxaJRTAXdSSQR5OO
         t1uyxAAr40lxH0TUOWKSTk9B83XdAK80iG27+l5dylVwmugkdNIM1di9DtCwb+pAm8JK
         v4DJCU2ywNUMS+WVZo6y3SbqsievxKk+RFb3PCUdcRGNvIyv+E0QVhj0eXB8AMptmQy8
         732g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=F36oRPJ4qCKdlOrDn7G9mknUoCGe6gloB7wnOKzuo34=;
        b=Blwaz9jF+mfQ4j3t6HgKwbhUroQ8ZqFxg9n9xImwcXTV1Tenz5Ek/Cf2WfHie+1uu1
         QvWPA+yB0VxYy2NWf5nAb/crZUeDN3IthfBONdOE9Tw014qzY8o1lb/bfB9mDJ4BNAbF
         glw6bDpDHUUKJzZC2lJU4C/099j1UBecSEryHp960KfoLYtsaLPBBr2PhPcFwmTO95Nx
         HEd7elaFZPCg57pUKluaMSqbw/UyowSQo1Q4Q/wdpoDxwFtLthkBL7ZtBa/dyzKSPbtV
         ubKpFHiXS5vXe6kHcAVd/GxDF3xGOUxdb+0Egkm/aPjpq1nJVmeksEU4LWGIbWbQEmJp
         MMpw==
X-Gm-Message-State: AOAM532vym0W69HB1knFcZwpdJYC9yJtrITySkrxTTGGypueVcvqO/XH
        b/v+AltPyHhaewS/2J7Litw=
X-Google-Smtp-Source: ABdhPJw7AT+fJCzk8Wf7WeG37CuKiQTYTJfC/pzzY1BZMWBMEcyauFzWEY5ehGLHb+lmv1t8E5w9YQ==
X-Received: by 2002:a1c:a5d8:: with SMTP id o207mr486442wme.30.1609790525251;
        Mon, 04 Jan 2021 12:02:05 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id i7sm94890077wrv.12.2021.01.04.12.02.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jan 2021 12:02:04 -0800 (PST)
Subject: Re: [PATCH] system.3: Document bug and workaround when the command
 name starts with a hypen
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     libc-alpha@sourceware.org, linux-man@vger.kernel.org,
        Ciprian Dorin Craciun <ciprian.craciun@gmail.com>,
        Florian Weimer <fweimer@redhat.com>
References: <CA+Tk8fykJjf=KzYjW7YMonnZ1qAdQJhqKDRrX0FNGyAYjSnkqg@mail.gmail.com>
 <20210104180420.74092-1-alx.manpages@gmail.com>
 <5c64d9f9-5bef-ba6a-ac7c-b119ce61d731@gmail.com>
Message-ID: <0d69b38d-2dc0-31ca-1218-c5483bf507b7@gmail.com>
Date:   Mon, 4 Jan 2021 21:02:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <5c64d9f9-5bef-ba6a-ac7c-b119ce61d731@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

D'oh

On 1/4/21 7:32 PM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> See a few corrections below.
> 
> Cheers,
> 
> Alex
> 
> On 1/4/21 7:04 PM, Alejandro Colomar wrote:
>> man-pages bug: 211029
>>  https://bugzilla.kernel.org/show_bug.cgi?id=211029
>>
>> Reported-by: Ciprian Dorin Craciun <ciprian.craciun@gmail.com>
>> Cc: Florian Weimer <fweimer@redhat.com>
>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>> ---
>>  man3/system.3 | 34 ++++++++++++++++++++++++++++++++++
>>  1 file changed, 34 insertions(+)
>>
>> diff --git a/man3/system.3 b/man3/system.3
>> index aef40417a..0310d9a04 100644
>> --- a/man3/system.3
>> +++ b/man3/system.3
>> @@ -250,6 +250,40 @@ are not executed.
>>  Such risks are especially grave when using
>>  .BR system ()
>>  from a privileged program.
>> +.SH BUGS
>> +./" [BUG 211029](https://bugzilla.kernel.org/show_bug.cgi?id=211029)
>> +./" [Glibc bug](https://sourceware.org/bugzilla/show_bug.cgi?id=27143)
>> +./" [POSIX bug](https://www.austingroupbugs.net/view.php?id=1440)

s%/%\\%

>> +If the command name starts with a hyphen,
>> +.BR sh (1)
>> +interprets the command name as an option,
>> +and the behavior is undefined
>> +(See the
>> +.B \-c
>> +option in
> 
> option to
> 
>> +.BR sh (1).).
>> +To work around this problem,
>> +prepend the command with a space as below:
>> +.PP
>> +.RS 4
>> +.EX
>> +/* system_hyphen.c */
>> +
>> +#include <stdlib.h>
>> +
>> +int
>> +main(void)
>> +{
>> +    system(" -echo Hello world!");
> 
> \-echo
> 
>> +    exit(EXIT_SUCCESS);
>> +}
>> +.PP
>> +.RB "$" " sudo ln \-s \-T /usr/bin/echo /usr/bin/\-echo;"
>> +.RB "$" " cc \-o system_hyphen system_hyphen.c;"
>> +.RB "$" " ./system_hyphen;"
>> +Hello world!
>> +.EE
>> +.RE
>>  .SH SEE ALSO
>>  .BR sh (1),
>>  .BR execve (2),
>>
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
