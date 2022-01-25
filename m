Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA2FC49BA2F
	for <lists+linux-man@lfdr.de>; Tue, 25 Jan 2022 18:23:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1389814AbiAYRUG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 25 Jan 2022 12:20:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1587494AbiAYRRx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 25 Jan 2022 12:17:53 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23518C06174E
        for <linux-man@vger.kernel.org>; Tue, 25 Jan 2022 09:17:53 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id f17so21173800wrx.1
        for <linux-man@vger.kernel.org>; Tue, 25 Jan 2022 09:17:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:cc:references:in-reply-to:content-transfer-encoding;
        bh=4xAYGehL3lU7xRoocawS3IAzsvwLauEQY2ccT3iIs/0=;
        b=TKw2nLM7t45xQSOrOXRDujNry0uzKA35wkQHYT2vMApKqz+r+s6iJ1voYU4jgg9pGk
         9UmevdmS5sH1hICywUoHR+Ovsji2ggcffvioP29ZL/8kg3kvYkEIS3dv3OtwULqcs08z
         HcZ0hWtdUlpHUsY2te3XFc4t+D/KN3Zd4TWou0m+FKRAWW+GYiRChTIi7EbfKsr3lWZX
         r6gNHuGwbxZtdgfSce3OQcF0NlMovNXHO6HSAmzRyw3OpFtOwdiJOd62pYZpVFPAV6+S
         9/yrgX0S2pb7ADOf0KwE8o7Gv0Ks7tNWloGN99G0Q96+fi7VyX7Z4SlyhdkobsEm0WbS
         DIsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to
         :content-transfer-encoding;
        bh=4xAYGehL3lU7xRoocawS3IAzsvwLauEQY2ccT3iIs/0=;
        b=xeJ95sYDx51/eD3XC8P2DmNWoQpmEfbjFRMvsgjd4/nlO8+yXf8QDR+F0mn4u5h574
         IVfC49aOM6mYl6ysoeBjzfKgJwNojEsYw1ywcTA/V51iDWtIPIgoYFZo9SpSd9kBgKyD
         tPCc8tgIydUAI1JSckj8HOPoKUmSMDFlIFgA1plgwl3Uet21L/lmH6GieVImuii+jvIz
         Cph1zoyVQ3LBbPaMMtlkxU2J5suO4BkbXlw3Tj7t4VyMG6dL/VZFqCQjonR0paSlXE7R
         huKbAtjDBMrYAibvtMbPpUVhLoHTYleJW6fz9y4Xq+vZ85AXVSpuHpZQBZX48RLbIzkD
         /UAA==
X-Gm-Message-State: AOAM531FXA7UWbdYuTRAC+39+FgbxxR6iswOIAdShZ341ptljFJP7YC0
        Dk6/+Kt6C/Mv7RhndUvoj1Y=
X-Google-Smtp-Source: ABdhPJwKJjwjNi0mCgxm1PA9PQJ4b3z/vHqGc+U626Q1wxudlZT63oGBu1rLU/OCZezU7bds7McZ6w==
X-Received: by 2002:a5d:6d49:: with SMTP id k9mr19441040wri.530.1643131071583;
        Tue, 25 Jan 2022 09:17:51 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id 31sm21657035wrl.27.2022.01.25.09.17.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Jan 2022 09:17:51 -0800 (PST)
Message-ID: <2ec0f3fb-841b-196a-b77c-88848bfe4a3b@gmail.com>
Date:   Tue, 25 Jan 2022 18:17:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2] strsep.3: port strtok(3) example
Content-Language: en-US
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <20220123002121.r6lldjw55n6zvcxi@tarta.nabijaczleweli.xyz>
 <2e4b6b15b6533b067aed6df1a2f4bf077c5d5184.1643064165.git.nabijaczleweli@nabijaczleweli.xyz>
 <3eb39fc3-3582-cb06-ed5d-b9e7b7af9188@gmail.com>
In-Reply-To: <3eb39fc3-3582-cb06-ed5d-b9e7b7af9188@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi наб,

On 1/25/22 00:27, Alejandro Colomar (man-pages) wrote:
> Hi, наб!
> 
> On 1/24/22 23:43, наб wrote:
>> Each time I use strsep I want something like this;
>> this serves to snappily highlight the programming model,
>> esp. in contrast to strtok_r ‒ I elided the long
>> (and, frankly, gratuitous, even there) argv explanation
>> ‒ if you need it, you can read the original
>> (or the usage string, or the seven-line main)
>>
>> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
>> ---

I applied this patch and all of the other patches you sent in the past 2
days (5 patches in total).

Thanks,

Alex

> All of the other patches look good to me.
> This one I haven't reviewed it yet.
> I'll probably apply them all tomorrow.
> 
>> v2: I accidentally a word in "multiple delimiters or empty tokens"
> 
> It made me laugh :p
> 
> Thanks,
> 
> Alex
> 
>>
>>  man3/strsep.3 | 50 ++++++++++++++++++++++++++++++++++++++++++++++++++
>>  1 file changed, 50 insertions(+)
>>
>> diff --git a/man3/strsep.3 b/man3/strsep.3
>> index fb5f7fd1a..3ce4fc35d 100644
>> --- a/man3/strsep.3
>> +++ b/man3/strsep.3
>> @@ -118,6 +118,56 @@ This function modifies its first argument.
>>  This function cannot be used on constant strings.
>>  .IP *
>>  The identity of the delimiting character is lost.
>> +.SH EXAMPLES
>> +The program below is a port of the one found in
>> +.BR strtok (3),
>> +which, however, doesn't discard multiple delimiters or empty tokens:
>> +.PP
>> +.in +4n
>> +.EX
>> +.RB "$" " ./a.out \(aqa/bbb///cc;xxx:yyy:\(aq \(aq:;\(aq \(aq/\(aq"
>> +1: a/bbb///cc
>> +         \-\-> a
>> +         \-\-> bbb
>> +         \-\->
>> +         \-\->
>> +         \-\-> cc
>> +2: xxx
>> +         \-\-> xxx
>> +3: yyy
>> +         \-\-> yyy
>> +4:
>> +         \-\->
>> +.EE
>> +.in
>> +.SS Program source
>> +\&
>> +.EX
>> +#include <stdio.h>
>> +#include <stdlib.h>
>> +#include <string.h>
>> +
>> +int
>> +main(int argc, char *argv[])
>> +{
>> +    char *token, *subtoken;
>> +
>> +    if (argc != 4) {
>> +        fprintf(stderr, "Usage: %s string delim subdelim\en",
>> +                argv[0]);
>> +        exit(EXIT_FAILURE);
>> +    }
>> +
>> +    for (int j = 1; (token = strsep(&argv[1], argv[2])); j++) {
>> +        printf("%d: %s\en", j, token);
>> +
>> +        while ((subtoken = strsep(&token, argv[3])))
>> +            printf("\et \-\-> %s\en", subtoken);
>> +    }
>> +
>> +    exit(EXIT_SUCCESS);
>> +}
>> +.EE
>>  .SH SEE ALSO
>>  .BR index (3),
>>  .BR memchr (3),
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
