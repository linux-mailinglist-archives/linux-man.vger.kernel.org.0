Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D3BF511F036
	for <lists+linux-man@lfdr.de>; Sat, 14 Dec 2019 05:54:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726676AbfLNEy6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Dec 2019 23:54:58 -0500
Received: from mail-ot1-f48.google.com ([209.85.210.48]:40987 "EHLO
        mail-ot1-f48.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726638AbfLNEy5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Dec 2019 23:54:57 -0500
Received: by mail-ot1-f48.google.com with SMTP id r27so1714066otc.8
        for <linux-man@vger.kernel.org>; Fri, 13 Dec 2019 20:54:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=nFiNG45SXg/A+WpW55+1quaWTyZDscqMVp12g2M1N50=;
        b=cJyKv559FvR9F51xf3rkSGJg9ZNZjUkSjesnxCOtS569a2eH7oNunKjNlp0YBOB2Mq
         NYUcpdz1O8K0QDh04N6HtEsWVOuk/RQLLzkscGUXLoVWa/Yh3BsO98PieBFOLyiQXJ3t
         N/8zGNuVy+y7McwBH5KJEjxKqGSb8npDhSjuogKh9tVuc0kfPtJn9fj3+0Vw1Ls+2JCn
         sG2YcsVzhZ+9ysVr5HZehxPAt/VUIaAyEluz0D/TcZBm5UmanWS4c/dJAZwZVAVqElyW
         gpkzIJLeqxr9Z6TtANKz0jDvCgnkC5MuWasrT4WRZdwdJJd0lbc+wrxdnhefPscZiEDR
         cpWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=nFiNG45SXg/A+WpW55+1quaWTyZDscqMVp12g2M1N50=;
        b=hgTHBH+hH+2KzPBVxcWOond51EjFVOqkf2c+uBRbLntZz+X0ZafxJCAWefnCd2n0zi
         BgkIsr9BxiyJXaAGw3figCcE26RJg39m+InrQzYOzXMYrEdgo1X05cStWRgR+KmCdvaq
         iGJT5TKLjbXNTIRNtHQCyFWuSaJXzvl4zVdRTbIv74n055uzSoBe3QD2pnR/igL/EdR6
         UaiMlVGxBW+xeVc57HFVq52LyYmAepgbUkv2PD52OELZwy4cp4j975A78q4KVEqkOIO7
         iBJwYB8OGbzNN0Z98ABhxdC0QezQwPl0Qls45yQlTJrHhUjXrrkgYjhtEJHnq76/2gRk
         tI2Q==
X-Gm-Message-State: APjAAAVbJWLLEi4ALpiP+kVMvAhbDqsfIoX6ZfI2JpRRDkSgBZQ01ZLz
        sxwFMoyy0IJjWW/dHgoW1EM=
X-Google-Smtp-Source: APXvYqxaBtZjPYAfUrYVWOzw/oT2Wk4jcfTtfkUKEAa6B6I88VmncWly2m31G1mhiBJzuJ5jNw/o7w==
X-Received: by 2002:a05:6830:611:: with SMTP id w17mr18842909oti.191.1576299296922;
        Fri, 13 Dec 2019 20:54:56 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:dac0:2450::34])
        by smtp.gmail.com with ESMTPSA id b5sm4127088otl.13.2019.12.13.20.54.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2019 20:54:56 -0800 (PST)
Subject: Re: [patch] ldconfig.8: Document file filter and symlink pattern
 expectations
To:     Carlos O'Donell <codonell@redhat.com>, DJ Delorie <dj@redhat.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <xna78awjsl.fsf@greed.delorie.com>
 <61151119-f965-3472-0ad5-5b1dd9be26ee@redhat.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <cbee77a5-de29-34f7-91bd-883491105245@gmail.com>
Date:   Sat, 14 Dec 2019 05:54:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <61151119-f965-3472-0ad5-5b1dd9be26ee@redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Carlis,

On 12/2/19 10:41 PM, Carlos O'Donell wrote:
> On 12/2/19 3:32 PM, DJ Delorie wrote:
>>
>> Information gleaned from comments in glibc's elf/ldconfig.c
>>
>> diff --git a/man8/ldconfig.8 b/man8/ldconfig.8
>> index 4f799962c..15585243c 100644
>> --- a/man8/ldconfig.8
>> +++ b/man8/ldconfig.8
>> @@ -93,6 +93,28 @@ option.
>>   .B ldconfig
>>   should normally be run by the superuser as it may require write
>>   permission on some root owned directories and files.
>> +.PP
>> +Note that
>> +.B ldconfig
>> +will only look at files that are named
>> +.I lib*.so*
>> +(for regular shared objects) or
>> +.I ld-*.so*
>> +(for the dynamic loader itsef).  Other files will be ignored.  Also,
>> +.B ldconfig
>> +expects a certain pattern to how the symlinks are set up, like this
>> +example, where the middle file
>> +.RB ( libfoo.so.1
>> +here) is the SONAME for the library:
>> +.PP
>> +.in +4n
>> +.EX
>> +libfoo.so -> libfoo.so.1 -> libfoo.so.1.12
>> +.EE
>> +.in
>> +.PP
>> +Failure to follow this pattern may result in compatibility issues
>> +after an upgrade.
>>   .SH OPTIONS
>>   .TP
>>   .BR \-c " \fIfmt\fP, " \-\-format=\fIfmt\fP
>>
> 
> I wrote the relevant comment in glibc here after a frustrating
> night of debugging :-)
> 
> elf/ldconfig.c
> 
>   884           /* If the path the link points to isn't its soname or it is not
>   885              the .so symlink for ld(1), we treat it as a normal file.
>   886
>   887              You should always do this:
>   888
>   889                 libfoo.so -> SONAME -> Arbitrary package-chosen name.
>   890
>   891              e.g. libfoo.so -> libfoo.so.1 -> libfooimp.so.9.99.
>   892              Given a SONAME of libfoo.so.1.
>   893
>   894              You should *never* do this:
>   895
>   896                 libfoo.so -> libfooimp.so.9.99
>   897
>   898              If you do, and your SONAME is libfoo.so.1, then libfoo.so
>   899              fails to point at the SONAME. In that case ldconfig may consider
>   900              libfoo.so as another implementation of SONAME and will create
>   901              symlinks against it causing problems when you try to upgrade
>   902              or downgrade. The problems will arise because ldconfig will,
>   903              depending on directory ordering, creat symlinks against libfoo.so
>   904              e.g. libfoo.so.1.2 -> libfoo.so, but when libfoo.so is removed
>   905              (typically by the removal of a development pacakge not required
>   906              for the runtime) it will break the libfoo.so.1.2 symlink and the
>   907              application will fail to start.  */

Thanks for that added info.

> Should we be more specific about always doing:
> 
> 	libfoo.so -> SONAME -> Arbitrary package-chosen name.
> 
> Users love having examples of how to do it right :-)

Well, I applied DJ's patch. Would you be willing to send a small patch
with this extra info?

Thanks,

Michael
