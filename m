Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C72F5278DC9
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 18:14:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728212AbgIYQOx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 12:14:53 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:31083 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1727402AbgIYQOw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 12:14:52 -0400
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1601050491;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=KxYl/gm9dXPHStE806yx8YetVSL6X9U7EykCWkM9cEY=;
        b=Ll28ehtzkikvaLHO2n8ZiJ6INVHk+wmFWOYOpY/uWIecBpTyPtVjLOYjzs4cLb+7YYB3sX
        7em9ZfRV9nAl30ew6x6b/l79XbKSkbnZ6+1zSYK2bG4CwebVkSFsm71wFWp+AKbMtKI94v
        kvlNjOR2LyWMsmH9H3gFzYpFVbg2bVc=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-185-jraOkeBTPd-lBnHBJyMl0g-1; Fri, 25 Sep 2020 12:14:49 -0400
X-MC-Unique: jraOkeBTPd-lBnHBJyMl0g-1
Received: by mail-qv1-f72.google.com with SMTP id o14so1994380qve.7
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 09:14:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=KxYl/gm9dXPHStE806yx8YetVSL6X9U7EykCWkM9cEY=;
        b=C50uHYg0z7OdopARf8vocBK6kWspCBWW/y5/yo5Q30GKK31tnj2GLSqvLEPVCX+CZU
         FS/DNAs3fVG0NkwsaEWLimmP90Pl4iP4Ls0pS202MjfGX77Tuz7OvCKftf08PaC1Z4ac
         V4A0EJ/GkZb23NOxjR+Q8C+tlwdA82hNUrr6PwR+cippeTLhgjBQY864ppe8oMe90Hnv
         y/nBUYjcd64ggZjyz5TcWGvtoozNgI30DKCcwz2Jhj7j3Q3khFyyCkOCd0TwWfWVM5XA
         SVc+1lFoxyzN06T1EX4E4jKezOhqANIvdawiDP81WOW3xkl9ZcLSNljr34c3PjqjUg65
         Irlg==
X-Gm-Message-State: AOAM533KO+r7guF8WfmDJ+wmGQrTc/eLf4MXhdNDwjOnrRx5mhVP2zwx
        nl9R650JP1diLzdzl+3Alsxl8QM9QvuDoz+ZKrH6dg04bBPCZmrDAF3j8841GxF/oR5mgBJmB+B
        fBdDaCCbs2hlsPglyhvt0
X-Received: by 2002:a05:620a:897:: with SMTP id b23mr706789qka.501.1601050488868;
        Fri, 25 Sep 2020 09:14:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxjMOEL5cpQu05I2OegyTFVb4H+qBMIXvSO8b/GhzxU2g7q6oijv7ZvlQ4dqoaW/+VBdUCHTw==
X-Received: by 2002:a05:620a:897:: with SMTP id b23mr706768qka.501.1601050488618;
        Fri, 25 Sep 2020 09:14:48 -0700 (PDT)
Received: from [192.168.1.16] (198-84-214-74.cpe.teksavvy.com. [198.84.214.74])
        by smtp.gmail.com with ESMTPSA id b34sm2285886qtc.73.2020.09.25.09.14.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Sep 2020 09:14:47 -0700 (PDT)
Subject: Re: [PATCH] rtld-audit.7: Clarify la_version handshake
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Florian Weimer <fweimer@redhat.com>, linux-man@vger.kernel.org
Cc:     libc-alpha@sourceware.org
References: <87k0wifdi2.fsf@oldenburg2.str.redhat.com>
 <299e6651-fa82-8350-f36f-e578e8180859@gmail.com>
From:   Carlos O'Donell <carlos@redhat.com>
Organization: Red Hat
Message-ID: <1f2734bb-fed4-07f9-94d8-4dbce661b5cf@redhat.com>
Date:   Fri, 25 Sep 2020 12:14:46 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <299e6651-fa82-8350-f36f-e578e8180859@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/25/20 6:47 AM, Michael Kerrisk (man-pages) wrote:
> On 9/25/20 10:48 AM, Florian Weimer wrote:
>> Returning its argument without further checks is almost always
>> wrong for la_version.
>>
>> Signed-off-by: Florian Weimer <fweimer@redhat.com>
> 
> Hello Florian,
> 
> I've applied this patch locally. I'll merge into master
> in a few hours. Perhaps in the meantime there are acks/reviews
> that come in.

Just for the record. This version looks good to me and addresses
my previous comments.

Reviewed-by: Carlos O'Donell <carlos@redhat.com>
 
> Cheers,
> 
> Michael
> 
>> ---
>>  man7/rtld-audit.7 | 36 +++++++++++++++++++++++++-----------
>>  1 file changed, 25 insertions(+), 11 deletions(-)
>>
>> diff --git a/man7/rtld-audit.7 b/man7/rtld-audit.7
>> index b1b7dfebc..21cc339d0 100644
>> --- a/man7/rtld-audit.7
>> +++ b/man7/rtld-audit.7
>> @@ -70,17 +70,30 @@ the auditing library.
>>  When invoking this function, the dynamic linker passes, in
>>  .IR version ,
>>  the highest version of the auditing interface that the linker supports.
>> -If necessary, the auditing library can check that this version
>> -is sufficient for its requirements.
>>  .PP
>> -As its function result,
>> -this function should return the version of the auditing interface
>> -that this auditing library expects to use (returning
>> +A typical implementation of this function simply returns the constant
>> +.BR LAV_CURRENT ,
>> +which indicates the version of
>> +.I <link.h>
>> +that was used to build the audit module.  If the dynamic linker does
>> +not support this version of the audit interface, it will refuse to
>> +activate this audit module.  If the function returns zero, the dynamic
>> +linker also does not activate this audit module.
>> +.PP
>> +In order to enable backwards compatibility with older dynamic linkers,
>> +an audit module can examine the
>> +.I version
>> +argument and return an earlier version than
>> +.BR LAV_CURRENT ,
>> +assuming the module can adjust its implementation to match the
>> +requirements of the previous version of the audit interface.  The
>> +.B la_version
>> +function should not return the value of
>>  .I version
>> -is acceptable).
>> -If the returned value is 0,
>> -or a version that is greater than that supported by the dynamic linker,
>> -then the audit library is ignored.
>> +without further checks because it could correspond to an interface
>> +that does not match the
>> +.I <link.h>
>> +definitions used to build the audit module.
>>  .SS la_objsearch()
>>  \&
>>  .nf
>> @@ -508,9 +521,10 @@ This is reportedly fixed in glibc 2.10.
>>  unsigned int
>>  la_version(unsigned int version)
>>  {
>> -    printf("la_version(): %u\en", version);
>> +    printf("la_version(): version = %u; LAV_CURRENT = %u\en",
>> +            version, LAV_CURRENT);
>>  
>> -    return version;
>> +    return LAV_CURRENT;
>>  }
>>  
>>  char *
>>
> 
> 


-- 
Cheers,
Carlos.

