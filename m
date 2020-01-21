Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5F40F144562
	for <lists+linux-man@lfdr.de>; Tue, 21 Jan 2020 20:52:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727383AbgAUTwJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Jan 2020 14:52:09 -0500
Received: from mail-pj1-f67.google.com ([209.85.216.67]:40093 "EHLO
        mail-pj1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727360AbgAUTwJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Jan 2020 14:52:09 -0500
Received: by mail-pj1-f67.google.com with SMTP id bg7so2099250pjb.5
        for <linux-man@vger.kernel.org>; Tue, 21 Jan 2020 11:52:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Pdo2Ujpr0OHV6/gZiHGyg1Z54w04lgCRYeWd7Y6zcIM=;
        b=DCOYiBM+dN+mcSICwRuC+ZZTk6vm26zUssKrEQ8Iie3fxJWjCPrjSJISX3dHh/u7p0
         Dnpi9AZdCZTMhMjsM4/Mh2vSIlM4iz/vFsaCR7OgrNozHXXUhoqhqrbIdWdwv0EWcKqP
         KRQpqeBinqrZju5K3SJtPue4lcpCVnLNeVjpWw7OX7NurddQXkBESCCeg3lG9OnE/grO
         7aAr2tYpLhB1rAKeXLSwhn84T1Y/a5bmzBSTAwUWQ/4iJQPBjOLw6PrsTWMF4c+XagNF
         Ik07NpjVUpotkx7qSGVTFn6suVUU7R9Lj1nxn8pdIK3ZLopNYRw2flRhp+AYotWwd2BC
         o01Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Pdo2Ujpr0OHV6/gZiHGyg1Z54w04lgCRYeWd7Y6zcIM=;
        b=tvm2JxiNwGb2D6DQNdXHm+B2FOmgLZFXkbEHtEhveYttbiGftwD6RBdZQJ5CZVdzq9
         6i8Fea1jGYY7o8p2krd3hH5bEuWRy36Eq9FBs5rcxZQU/brx00SYY1PiWyRrL+PqYiXS
         H7uKUm6JQRUWCHPGsL58ez26JcoIVSmvdZDR5oI+3riUN6IPSNQERiX/7TnNvpe0oDOL
         tSJEu2zx/op3pZEa4OuRW9lR513UA8i43Y5MUXvSIhBeu7CwjiC+Wbf51GAItCTJpT9W
         AkTK0/B9rnle2iWoW4eeFLaLoTzxtaai1Tx1CMh+nDPP2qvRxOziE9YMZy6RMHSzgDuF
         yWIQ==
X-Gm-Message-State: APjAAAV9o1/2t8prLiOdCNpicgitDTWBiXixzMk8JMsxGf+laMhbil1I
        4tzAyLyWKbTshw4ejY4tFG5OGQ2F
X-Google-Smtp-Source: APXvYqwPChgz85y/VTOna1OXZN1LvQNuXRmZKH1Wi/w/EdeUEKDoeq+nF/V7OLWW2T8scqmZfANV2Q==
X-Received: by 2002:a17:90a:6484:: with SMTP id h4mr86078pjj.84.1579636328776;
        Tue, 21 Jan 2020 11:52:08 -0800 (PST)
Received: from [192.168.1.72] (122-58-99-230-adsl.sparkbb.co.nz. [122.58.99.230])
        by smtp.gmail.com with ESMTPSA id j28sm43665561pgb.36.2020.01.21.11.52.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jan 2020 11:52:08 -0800 (PST)
Cc:     mtk.manpages@gmail.com
Subject: Re: [PATCH] bcmp: note that this function is no longer legacy due to
 LLVM 9
To:     "Dmitry V. Levin" <ldv@altlinux.org>,
        Shawn Landden <shawn@git.icu>, linux-man@vger.kernel.org
References: <20200111145049.5393-1-shawn@git.icu>
 <20200111161126.GA22051@altlinux.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3ba906ad-7668-b420-778d-5e0a9b8d53e9@gmail.com>
Date:   Tue, 21 Jan 2020 20:52:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200111161126.GA22051@altlinux.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Shawn,

On 1/11/20 5:11 PM, Dmitry V. Levin wrote:
> Hi,
> 
> On Sat, Jan 11, 2020 at 06:50:49PM +0400, Shawn Landden wrote:
>> Signed-off-by: Shawn Landden <shawn@git.icu>
>> ---
>>  man3/bcmp.3 | 12 +++++++++---
>>  1 file changed, 9 insertions(+), 3 deletions(-)
>>
>> diff --git a/man3/bcmp.3 b/man3/bcmp.3
>> index ba9838019..18d238720 100644
>> --- a/man3/bcmp.3
>> +++ b/man3/bcmp.3
>> @@ -70,15 +70,21 @@ T{
>>  .BR bcmp ()
>>  T}	Thread safety	MT-Safe
>>  .TE
>>  .SH CONFORMING TO
>>  4.3BSD.
>> -This function is deprecated (marked as LEGACY in POSIX.1-2001): use
>> -.BR memcmp (3)
>> -in new programs.
>> +This function was deprecated (marked as LEGACY) by POSIX.1-2001).
>>  POSIX.1-2008 removes the specification of
>>  .BR bcmp ().
>> +LLVM 9, released in 2019, revived
>> +.BR bcmp ()
>> +and generates calls to it instead of
>> +.BR memcmp (3)
>> +as appropiate as an optimization (as
>> +.BR bcmp ()
>> +need not traverse memory in-order).
>> +.\" http://releases.llvm.org/9.0.0/docs/ReleaseNotes.html#noteworthy-optimizations
> 
> I believe the "CONFORMING TO" is about conformance and therefore
> shall not be changed.
> 
> Any notes about llvm-specific implementation details should go
> to a different section, e.g. "NOTES".

I'm not convinced that anything at all needs to be added to the
manual page. This is an implement-specific detail about a certain
compiler. Its behavior might change in the future. You do not
say anything about why t is relevant to document this detail.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
