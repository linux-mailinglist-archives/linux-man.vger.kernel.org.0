Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 829E3B1BC3
	for <lists+linux-man@lfdr.de>; Fri, 13 Sep 2019 12:50:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387613AbfIMKus (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Sep 2019 06:50:48 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:32800 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387424AbfIMKur (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Sep 2019 06:50:47 -0400
Received: by mail-wr1-f66.google.com with SMTP id u16so31648649wrr.0
        for <linux-man@vger.kernel.org>; Fri, 13 Sep 2019 03:50:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Yl/J/IBipy6WdE5g1/62n3Ajd3RDlrkG6nsRb+7H0sE=;
        b=PoFujxHkTKu4XSPVxoIylR7zh6T3uRXH55jGSZy2NijA6FWsUPKmRTNtd/uWunFgWQ
         JkY1lof8oiJqWGTfo+aUBV1y9Mr+Dl3iniAQpRlBRcaIMv+wSlk/uShIBUq8bs/Psk3C
         TRE88jwuGtl9owN16FLJ3vS1dXzKlMfagaR1ktpwzwe2BKIphkGsbUwozQX+ZimrnJOx
         VaySvmGxdGPO4aXQTeq4Urt22+PXDRB8Uvq8Dy44EgxC8jMAL1yfRA4/2IZ6usFoeOBu
         K6KAwp2GZwA+vtWozac9Z+Zzus+63I6lu6a8cor6ZfNm29Db6wL4l7mGLvn+NHnUF0rH
         r7wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Yl/J/IBipy6WdE5g1/62n3Ajd3RDlrkG6nsRb+7H0sE=;
        b=I7y5hLRP4u6SnpbkTu0kBftj4j19tSvSZtKn70jbteCfb642HISxcBOuR+9nUmQ0Qs
         rB0xibYe/3ADyK5FKSR5tNEiPuwrvEigAg52RgGcFPUFCSZV7BKSLO3pmpEfXJ9Sl8r5
         ezVkvvwPxBqbHfuoeIOD0oAhLJ3mz7LrLDHvKEdFN2px3mp9HycrqtDJLg7Faw1O6knP
         8ljAFjSQZou/Hac+3xFGI4bgc7HIGoO1OzWcaz18tZ0trYYDi9KOJvi3Ah0zmOmN2Mnm
         m7iJp7FzPJJqKNL6EoSEX+nw8mXyjZSysGaP1Da07DXY8VdVt02YfDOZF5wHBUgRcnT/
         up6g==
X-Gm-Message-State: APjAAAUJfOpzNAct4KLA6myflBiDKJupKLKWhkQ825DSi9nyBfEwUV4X
        Tox4il+FFBjOrzSIGLkoqiU=
X-Google-Smtp-Source: APXvYqzGrKniA1/Mt9VdGSU8ET6uHVB5Kq2JjmfRK8iC/HNOWAV7eqTXju4U8NgrOSHtLr9HXxbQtg==
X-Received: by 2002:a5d:46c4:: with SMTP id g4mr2091334wrs.189.1568371845403;
        Fri, 13 Sep 2019 03:50:45 -0700 (PDT)
Received: from [10.0.20.253] ([95.157.63.22])
        by smtp.gmail.com with ESMTPSA id b7sm7574081wrj.28.2019.09.13.03.50.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Sep 2019 03:50:44 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>,
        bonzini@gnu.org
Subject: Re: Please document REG_STARTEND in man 3 regex.
To:     Rob Landley <rob@landley.net>
References: <1723842c-1ec6-c126-6981-38549954a290@gmail.com>
 <a731f69e-44be-0a5d-979b-436ab6a2c61a@landley.net>
 <fe9757c3-a24f-eb65-4990-d20ac99a92db@landley.net>
 <CAKgNAkiuTdiEL69PraVn9wwF0TnT1iSWdBGLbncmZXAQfF4wqg@mail.gmail.com>
 <852adfe8-5f27-f3fd-15c6-faf6ec48b101@landley.net>
 <54e35209-99f1-ef98-5dcb-2b1433305b40@landley.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <756442cd-6274-4ca5-5659-e1fd3445fc21@gmail.com>
Date:   Fri, 13 Sep 2019 12:50:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <54e35209-99f1-ef98-5dcb-2b1433305b40@landley.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[CC widened]

Hello Rob,

[Your mailer is breaking patches (wrapping long lines.)]

On 9/9/19 8:47 PM, Rob Landley wrote:
> Stab at it:
> 
> diff --git a/man3/regex.3 b/man3/regex.3
> index 0523bb124..b65799823 100644
> --- a/man3/regex.3
> +++ b/man3/regex.3
> @@ -157,6 +157,17 @@ The match-end-of-line operator always fails to match (but
> see the
>  compilation flag
>  .B REG_NEWLINE
>  above).
> +.SS BSD regex matching
> +.TP
> +.B REG_STARTEND
> +Use pmatch[0] on the input string, starting at byte pmatch[0].rm_so and ending
> +before byte pmatch[0].rm_eo. This allows matching embedded NUL bytes
> +and avoids a strlen() on large strings. It does not use nmatch on input,
> +and does not change
> +.B REG_NOTBOL
> +or
> +.B REG_NEWLINE
> +processing.
>  .SS Byte offsets
>  Unless
>  .B REG_NOSUB

Patch applied.

Thanks,

Michael


> On 9/9/19 1:23 PM, Rob Landley wrote:
>> Patch against what file? (The html? The /usr/share/man/man3/regex.3.gz in my
>> devuan ascii laptop? Is there a git repo somewhere?)
>>
>> It doesn't obviously say where your repo is in:
>>
>> https://www.kernel.org/doc/man-pages/contributing.html
>> https://www.kernel.org/doc/man-pages/patches.html
>> https://www.kernel.org/doc/man-pages/reporting_bugs.html
>>
>> Although that last one links to a directory of tarballs...
>>
>> Ah, I see. The downloading page has the git repo. Right...
>>
>> Rob
>>
>> On 9/9/19 12:43 AM, Michael Kerrisk (man-pages) wrote:
>>> Hello Rob,
>>>
>>> No reason to exclude it. But also no-one wrote a patch!
>>>
>>> Also, please CC the list on all man-pages related stuff
>>> (linux-man@vger.kernel.org). Perhaps (okay, yes, chances are small)
>>> someone even sees your message and writes a patch...
>>>
>>> Thanks,
>>>
>>> Michael
>>>
>>> On Sun, 8 Sep 2019 at 00:09, Rob Landley <rob@landley.net> wrote:
>>>>
>>>> Hi, this still isn't documented. Is there a reason to exclude it?
>>>>
>>>> Rob
>>>>
>>>> On 5/6/19 7:14 PM, Rob Landley wrote:
>>>>> The bionic maintainer suggested I use a regex extension in toybox that I was
>>>>> unaware of because it's not in the debian man page:
>>>>>
>>>>>   http://lists.landley.net/pipermail/toybox-landley.net/2019-May/010432.html
>>>>>
>>>>> But glibc added support for it in 2004:
>>>>>
>>>>>   http://lists.landley.net/pipermail/toybox-landley.net/2019-May/010433.html
>>>>>
>>>>> And uClibc picked it up in 2005, and it came from FreeBSD in the first place so
>>>>> presumably MacOS X has it...
>>>>>
>>>>> The obvious use for it is matching NUL bytes, but on glibc and bionic it also
>>>>> avoids calling strlen() on the target string before trying to match (without
>>>>> which a megabyte long xxxxx line takes forever for "sed s/x/y/g" to finish),
>>>>>
>>>>> Thanks,
>>>>>
>>>>> Rob
>>>>>
>>>
>>>
>>>
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
