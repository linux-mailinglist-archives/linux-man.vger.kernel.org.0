Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3E3B8413DFE
	for <lists+linux-man@lfdr.de>; Wed, 22 Sep 2021 01:25:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230110AbhIUX1V (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Sep 2021 19:27:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230089AbhIUX1U (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Sep 2021 19:27:20 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FD94C061574
        for <linux-man@vger.kernel.org>; Tue, 21 Sep 2021 16:25:51 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id u15so1366812wru.6
        for <linux-man@vger.kernel.org>; Tue, 21 Sep 2021 16:25:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=7/yQwl02zb6W7avc0sylj3gUGE/YM2EmCkMvFjGazT8=;
        b=mxap5lXMlncqOGWIkxrOzLuNVj2SuENHKec23atnWf208/ndv2IvINHwrSv5GzeRSD
         xchJFG1U5AGCIUOhQncz34i1N86DDn6vNWGHI/zyd8Qz/jrLa7RpD5TP0W5lBtg9jEOS
         lmxxpy8edWCmsO6UWvr24YuCUDEHZbqdXwRPyYpYI+ajf9i9AlSwjz1K+981IqneScFq
         M0JF8KdHuZSOps/0gMsGmlq4FtaXTVpY4+Xw+mnzziW3Y2tW936AprEwFY6a1HAkEoFl
         vJrFqovNaclRaPm0ZcW7q/Vv+znJmacpeFjOdDb6peoOflSn6U8deudc+C5kj2sHogmh
         SLGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=7/yQwl02zb6W7avc0sylj3gUGE/YM2EmCkMvFjGazT8=;
        b=WFyoSc8z1Ok5b5hzLiL5jut0Ql/b8XRE3F3UhTyPHIfgH9RKo99jONHacdQo0PaExu
         0rAUgGKSFaHm20FEpeSIU3+AjaNq5AKPegmq32nZJNhvDfOUAm43L3aIEKU/g20wpuCd
         oCi2hRcP+/ALRTUvC+EA9rD9QnvNLdv48dKiwhJjwtV+3g+ijRU9duRuK/CxDMHYb84o
         CznPGcekaO/5f6kkeSFbVrpCcFbIPLbk+uG07JzrTnhPZT2gZmluhODLEyJdeeSY4n1H
         M0sawXsod1SdybhSZS8OUMjNcptkaNOf0u0sui3pa1YMMc5EAbHraMniYYJ8By4RFPsU
         4eTg==
X-Gm-Message-State: AOAM530ozv3YJr8MVsh3k/uNBEJl7gcD7grDkxLr51jqpvVs3TlhBPNd
        GBYFE3/yyr1Q0d6dfUUSqDS07DMLRd8=
X-Google-Smtp-Source: ABdhPJzS8/QNd8PU7wYz7sVO/EyGvsxQg3jKSFutBIrrcBEo7oFNN3fmkm7OawISDlWR/PurTvAaiw==
X-Received: by 2002:adf:d1c4:: with SMTP id b4mr1178245wrd.356.1632266749936;
        Tue, 21 Sep 2021 16:25:49 -0700 (PDT)
Received: from [10.8.0.46] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id b187sm4260574wmd.33.2021.09.21.16.25.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Sep 2021 16:25:49 -0700 (PDT)
Subject: Re: [PATCH 1/2] rpmatch.3: remove first-character-only FUD
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <8f5f9b7d4f067a4a479fe400dee99120bf0a1abd.1632231952.git.nabijaczleweli@nabijaczleweli.xyz>
 <be1eaa87-3fa3-2e1f-7e6c-80362adbb935@gmail.com>
 <20210921160609.cq6vg2wqwchthqmt@tarta.nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <38855813-ada0-24e1-2482-711d82af3e2a@gmail.com>
Date:   Wed, 22 Sep 2021 01:25:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210921160609.cq6vg2wqwchthqmt@tarta.nabijaczleweli.xyz>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi!

On 9/21/21 6:06 PM, наб wrote:
> Hi!
> 
> On Tue, Sep 21, 2021 at 05:20:32PM +0200, Alejandro Colomar (man-pages) wrote:
>> Are you sure?
>>
>> So, it seems to me that by using {yes,no}expr and not {yes,no}str, it is
>> limiting itself to the first letter, as the current BUGS section specifies.
>> Right?
> Quite sure:
> 	localedata/locales/am_ET:yesexpr "^([+1yY<U12CE>]|<U12A0><U12CE><U1295>)"
> Granted, I, unfortunately, don't strictly read Aramaic
> (but a cursory glance at a dictionary shows "አዎን" means yes),
> but I do Ukrainian:
> 	localedata/locales/uk_UA:yesexpr "^([+1Yy]|[<U0422><U0442>][<U0410><U0430>][<U041A><U043A>]?)$"
> which works out to
> 	"^([+1Yy]|[Тт][Аа][Кк]?)$"
> 
> This is odd, data-wise, but it's decidedly not just the first letter
> (but it does match, what, "^y$", "^та$", and "^так$"? very odd!!).
> 
> On current glibc, if I was in a uk_UA locale,
> "nyes" is -1, not 0 like this page would lead me to believe,
> and, similarly, in an_ET, "አ" (-1) is not the same as "አዎን" (1).
> 
> FreeBSD (and, presumably, everyone else) uses CLDR data,
> which provides something much more sensible:
>    [1] ^(([yY]([eE][sS])?)|([yY]))
>    [2] ^(([дД]([аА])?)|([дД])|([yY]([eE][sS])?)|([yY]))
> 
> This, admittedly, is not perfect, but the code that generates it [3]
> explicitly handles full yesstr words because the data itself [4] is
> constructed around yesstr, and yesexpr is a generated expression that
> matches yesstr ‒ they're the same.
> 
> rpmatch() is a correct (well, /the/ correct) approach to handling this
> (or, well, an equivalent on libcs that lack it, it's like seven lines) ‒
> if a similar warning were prudent, and I very much believe it is /not/,
> it'd belong in nl_langinfo() {YES,NO}EXPR or langinfo.h,
> but it'd be a warning /for the end-user/, who, presumably,
> knows the language they speak, not for the programmer.

So, it seems that some locales try to do some extra work, and Ukrainian 
seems to be doing a good job.  I had a bit of bad luck with the Spanish 
one...  However, it seems that the C locale is also unfortunate:


user@sqli:~/src/test$ cat rpmatch.c
#include <locale.h>
#include <stdio.h>
#include <stdlib.h>

int main(void)
{
	const char *str;

	str = "ynever; don't even think about it!";
	printf("%s;; %i;; %s\n", setlocale(LC_MESSAGES, NULL), rpmatch(str), str);
	return 0;
}
user@sqli:~/src/test$ cc -Wall -Wextra -Werror rpmatch.c
user@sqli:~/src/test$ ./a.out
C;; 1;; ynever; don't even think about it!


Since the C locale is the most important one, IMHO, and it is as 
problematic as the BUGS section mentions, I think we should keep the 
warning, and maybe add a mention that it depends on the locale.  What do 
you think?

Thanks,

Alex

> 
> наб
> 
> 1. https://github.com/freebsd/freebsd-src/blob/373ffc62c158e52cde86a5b934ab4a51307f9f2e/share/msgdef/en_US.UTF-8.src
> 2. https://github.com/freebsd/freebsd-src/blob/373ffc62c158e52cde86a5b934ab4a51307f9f2e/share/msgdef/ru_RU.UTF-8.src
> 3. https://github.com/unicode-org/cldr/blob/62c90a357dc25911db60fcdf7d5a80119df27963/tools/cldr-code/src/main/java/org/unicode/cldr/posix/POSIXUtilities.java#L336
> 4. https://github.com/unicode-org/cldr/blob/62c90a357dc25911db60fcdf7d5a80119df27963/common/main/ru.xml#L15789
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
