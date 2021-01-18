Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A7F452FA4BD
	for <lists+linux-man@lfdr.de>; Mon, 18 Jan 2021 16:32:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2405899AbhARPaC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 Jan 2021 10:30:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2405880AbhARP3U (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 Jan 2021 10:29:20 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1DDEC061575
        for <linux-man@vger.kernel.org>; Mon, 18 Jan 2021 07:28:39 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id c124so13943331wma.5
        for <linux-man@vger.kernel.org>; Mon, 18 Jan 2021 07:28:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=/lPIGTsGOt6kc9GsiC4RbFGxANFdo0ydKQrcYzEtXRI=;
        b=eLnVkxFFgq7eTprY5JDe9eRJijyUgyH4VpbnbtK4AjaidJi2azq+UbQAHFgRFiMrf+
         hyaHWqYtyskuN9SLmPNqWSqcNJ16e5WtrbazxjjT0YQ/WVd9AIiPBbkU94U03xP54XGK
         PHsPdCavgb+wBuT2szuL7sCjX0m6jQJa1XNnidXEyDIaWsNa7p7WJVAYeu/LZtQY7xve
         6Y7vBx5AcQbVWPMkFizSOkGE98E6TBDRDrfbERvhUWZoaT+gvbffElUFeG0K4W2Fv3qk
         3jxCKiJl1d2mKPJvxAoQw8z7ci6H4PRxFMyhYXZGH0mOZjK1ogHHgKPkTl4ySSyARDNh
         p8ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/lPIGTsGOt6kc9GsiC4RbFGxANFdo0ydKQrcYzEtXRI=;
        b=njiNNlWWZ9IWOjyImCDI+BvVKEK+wii7geNS2+BeTwEPYK9a6lpKEY6/kbkFJOxKF/
         pUOBcB1dwFPw2fVG92IiIwCsNDvybXFqbVkc6Wo1pidPmKlRRWUd64NGng7Hu7CpBqeM
         U4yOKzki9UjBsu2DvsSRej51AK8PAL2YXPDUMrvb8iVETAd4PoDLYhfkRC9EM8boiVKu
         fKJxdHzqP7yTksK0eckeHR6Sc08vU2yuCW/2W2twj6l0pUWdLm0tXqS2cEcAnG8qXVMV
         1b7UY4aF9xQNG6mCAk2HUXKr9pF6X2V7XgJqdyH0k1S4ooR1tRfQIpOR1ysK/1Ls2gEI
         soWg==
X-Gm-Message-State: AOAM5307EVRKn8SHCnBhEoyCgtcEGLgDV37xPDGSpUFmNuAY9QH+Hyf7
        BeLJq34jDE8YTAaG9Ms/96Q=
X-Google-Smtp-Source: ABdhPJzVtXWlj/tydloYlOcDSILsM6hCjXGE80/6nP9+3COB4e0b/jT5nmp4xVwN0vGYhr/aezWAcA==
X-Received: by 2002:a1c:7dc4:: with SMTP id y187mr21866355wmc.42.1610983718748;
        Mon, 18 Jan 2021 07:28:38 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id o20sm17146466wmm.24.2021.01.18.07.28.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Jan 2021 07:28:38 -0800 (PST)
Subject: Ping: [PATCH v4] system.3: Document bug and workaround when the
 command name starts with a hypen
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     libc-alpha@sourceware.org, linux-man@vger.kernel.org,
        Ciprian Dorin Craciun <ciprian.craciun@gmail.com>,
        Florian Weimer <fweimer@redhat.com>
References: <20210104180420.74092-1-alx.manpages@gmail.com>
 <20210108142209.61938-1-alx.manpages@gmail.com>
 <a89dea2b-5b26-040a-2f12-3e096756f118@gmail.com>
Message-ID: <e6ee2473-9096-0d6e-b793-c90e03bc6dfc@gmail.com>
Date:   Mon, 18 Jan 2021 16:28:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <a89dea2b-5b26-040a-2f12-3e096756f118@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

Ping!

And now I noticed a typo in the subject:
s/hypen/hyphen/

Thanks,

Alex

On 1/8/21 3:28 PM, Alejandro Colomar (man-pages) wrote:
> 
> 
> On 1/8/21 3:22 PM, Alejandro Colomar wrote:
>> man-pages bug: 211029
>>  https://bugzilla.kernel.org/show_bug.cgi?id=211029
>>
>> Complete workaround
> 
> Maybe a bit more readable:
> Complete workaround example
> 
> 
>> (it was too long for the page, but it may be useful here):
>>
>> ......
>>
>> $ sudo ln -s -T /usr/bin/echo /usr/bin/-echo;
>> $ cc -o system_hyphen -x c - ;
>> #include <stdlib.h>
>>
>> int
>> main(void)
>> {
>>     system(" -echo Hello world!");
>>     exit(EXIT_SUCCESS);
>> }
>>
>> $ ./system_hyphen;
>> Hello world!
>>
>> Reported-by: Ciprian Dorin Craciun <ciprian.craciun@gmail.com>
>> Cc: Florian Weimer <fweimer@redhat.com>
>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>> ---
>>
>> D'oh!
>>
>>  man3/system.3 | 20 ++++++++++++++++++++
>>  1 file changed, 20 insertions(+)
>>
>> diff --git a/man3/system.3 b/man3/system.3
>> index 753d46f7d..ead35ab30 100644
>> --- a/man3/system.3
>> +++ b/man3/system.3
>> @@ -255,6 +255,26 @@ are not executed.
>>  Such risks are especially grave when using
>>  .BR system ()
>>  from a privileged program.
>> +.SH BUGS
>> +.\" [BUG 211029](https://bugzilla.kernel.org/show_bug.cgi?id=211029)
>> +.\" [Glibc bug](https://sourceware.org/bugzilla/show_bug.cgi?id=27143)
>> +.\" [POSIX bug](https://www.austingroupbugs.net/view.php?id=1440)
>> +If the command name starts with a hyphen,
>> +.BR sh (1)
>> +interprets the command name as an option,
>> +and the behavior is undefined.
>> +(See the
>> +.B \-c
>> +option to
>> +.BR sh (1).)
>> +To work around this problem,
>> +prepend the command with a space as in the following call:
>> +.PP
>> +.RS 4
>> +.EX
>> +    system(" \-unfortunate\-command\-name");
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
