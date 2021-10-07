Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5127D425EB0
	for <lists+linux-man@lfdr.de>; Thu,  7 Oct 2021 23:22:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233929AbhJGVYw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 7 Oct 2021 17:24:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233918AbhJGVYv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 7 Oct 2021 17:24:51 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E2A7C061570
        for <linux-man@vger.kernel.org>; Thu,  7 Oct 2021 14:22:57 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id k7so23015084wrd.13
        for <linux-man@vger.kernel.org>; Thu, 07 Oct 2021 14:22:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=L5k24eZLnYD169BMDjkZ/rQ+p1wtzk0SScmRw+tWjiQ=;
        b=ja98ilU7DucKgt0AbUVsOfwYGQKZH8lhjTh2hwBvN1uQidm4Ef4RAI2zqXByipsYfE
         E/MO6x2+IK1bG31zfQXFblJV8l5UXNPTiOHG/nNKq5ZVRbPHz9vNv4RviKtNUxyz5aJr
         DyRuLSxa7ogl83ZgqZ9kuEePJu26u2eonKaJkymgtncGSDBvMuy9U5+lqfM9ZFBcREh3
         TV1ABsm5xoesv7wRsXF7KjYxZAbzPZbqNKNpZeZrq3zUFf8JUWDStI8Ee0PYHqCf3uM2
         R9DHIhT4/dCNyoX1HniE+LUd8ot8qJLcEDm0xf5RoAYNR6A7agbo44w05WUF2XdHwGFc
         OrLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=L5k24eZLnYD169BMDjkZ/rQ+p1wtzk0SScmRw+tWjiQ=;
        b=zeiJ+Dq4csfJO8BB9Yfnk6E163TDjcsBEaZ5P7NZbOAtsdIdKvW70MKkQXNggGRtpy
         D9EbqGDDb+VaacCOta+fibd2NP3Guu7eVg1CM+/R3Zqmsf+H58NcEiQhabp21rQ99mgg
         zHIS25ittzCh4jVJHJF470bsLwp9xVe1zTl8CBCNyLpFuSNxebqV64IlqLT5rQwVvfZs
         IQEZs7uoWPF2kBISql8B7MA7RLwdlDFgjwkgiME6OltLdnN8vfkB+NqJz1sr8gs32fn6
         jXcVCB2hGFQz/OM/VdnNthN3M9tpL7sgG2nhAUIXF9jxHfd2D+EvQELFfsupQGkxsMNB
         H7+w==
X-Gm-Message-State: AOAM533/pafH6/IwGXlwd/7tuPPDHJYKi45Nr3D2TqCS7I0koiK0hcNs
        q8bCovXx4EFDIencqG5evgE=
X-Google-Smtp-Source: ABdhPJx68SuF1yopehk+xHKoN2ZGylAINjG0R1EM/k0M7tGhKyMSYrJ5hDvVlDIR9aOK89ZOGGTsVw==
X-Received: by 2002:a5d:64e9:: with SMTP id g9mr8371832wri.99.1633641776009;
        Thu, 07 Oct 2021 14:22:56 -0700 (PDT)
Received: from [10.8.0.18] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id d7sm498913wrh.13.2021.10.07.14.22.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Oct 2021 14:22:55 -0700 (PDT)
Sender: Alejandro Colomar <alx.mailinglists@gmail.com>
Subject: Re: [PATCH] tzset.3: ffix
To:     Stefan Puiu <stefan.puiu@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        lnx-man <linux-man@vger.kernel.org>, Jakub Wilk <jwilk@jwilk.net>
References: <20211007090914.8318-1-jwilk@jwilk.net>
 <CACKs7VDW_yqqfk2rqqi1-up2gysAFCUcXRz2WmApp2kLpXjiTg@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <cff89712-61ed-5348-f3b1-573d6d7e7a04@gmail.com>
Date:   Thu, 7 Oct 2021 23:22:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CACKs7VDW_yqqfk2rqqi1-up2gysAFCUcXRz2WmApp2kLpXjiTg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Stefan,

On 10/7/21 9:46 PM, Stefan Puiu wrote:
> Hi Jakub and Alex,
> 
> One quick question:
> 
> On Thu, Oct 7, 2021 at 12:16 PM Jakub Wilk <jwilk@jwilk.net> wrote:
>>
>> Use \- for minus sign
>>
>> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
>> ---
>>   man3/tzset.3 | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/man3/tzset.3 b/man3/tzset.3
>> index c80da53f8..694cd0ea9 100644
>> --- a/man3/tzset.3
>> +++ b/man3/tzset.3
>> @@ -111,7 +111,7 @@ There are no spaces in the specification.
>>   The \fIstd\fP string specifies an abbreviation for the timezone and must be
>>   three or more alphabetic characters.
>>   When enclosed between the less-than (<) and greater-than (>) signs, the
>> -characters set is expanded to include the plus (+) sign, the minus (-)
>> +characters set is expanded to include the plus (+) sign, the minus (\-)
> 
> Shouldn't this be 'character set'?

Yes, 'character' is acting as an adjective there, and should be singular.

Fixed.

Thanks,

Alex

---
     tzset.3: tfix

     Reported-by: Stefan Puiu <stefan.puiu@gmail.com>
     Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

diff --git a/man3/tzset.3 b/man3/tzset.3
index 694cd0ea9..4fea98628 100644
--- a/man3/tzset.3
+++ b/man3/tzset.3
@@ -111,7 +111,7 @@ There are no spaces in the specification.
  The \fIstd\fP string specifies an abbreviation for the timezone and 
must be
  three or more alphabetic characters.
  When enclosed between the less-than (<) and greater-than (>) signs, the
-characters set is expanded to include the plus (+) sign, the minus (\-)
+character set is expanded to include the plus (+) sign, the minus (\-)
  sign, and digits.
  The \fIoffset\fP string immediately
  follows \fIstd\fP and specifies the time value to be added to the local


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
