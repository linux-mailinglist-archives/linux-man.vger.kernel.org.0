Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B274042FDA3
	for <lists+linux-man@lfdr.de>; Fri, 15 Oct 2021 23:49:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238703AbhJOVvt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 15 Oct 2021 17:51:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229921AbhJOVvs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 15 Oct 2021 17:51:48 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6A52C061570
        for <linux-man@vger.kernel.org>; Fri, 15 Oct 2021 14:49:41 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id g25so28549743wrb.2
        for <linux-man@vger.kernel.org>; Fri, 15 Oct 2021 14:49:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=nl08TC8u4HjNj7yl1utcnX8NlqD7K8hyN6Zzf8JPpbI=;
        b=VsOjUSHVWw5m6dYYFAWgB1d7SWdOoyuS6QvDJdvA9axfV4hLMHG8oFrM4IbHzD81P1
         ts/SoB8TSSzWhnjFOEzwaZ+EA06l5GGHXgFx3WczvwiAAnmF53bqhLpjfQo76FjMTt7I
         MaFd6C/1hyjK0sZn69ofxakrwtNUlPaIuSGdE/Pdofe070JAaiyIdy46cghPRG56ZPrB
         EYVSquBBkI14k4mRbpucTbxD2rYzoreAEKdF0+wip8Q8o//Ke90/83QQSBr4bawmI4gM
         KT0h5XWHr/p+Xl/Q58lm+O6vt3npNnN2/DQOCNTpOCNZQp474PooT8M5LweAA5rpxE4p
         SBAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=nl08TC8u4HjNj7yl1utcnX8NlqD7K8hyN6Zzf8JPpbI=;
        b=skkjh+tiiAKhIkUHCgiVnuzK5QYz7tS0Lc9ZG9lavGdBgfN8fKCCLPmCVkpiWhehVa
         nIIlItEUjc9TQal3sPHIWom4Yeqrd/5JzGoabkCmGAfVth6p1LiDAHTFl0KZc3oeqPS9
         o0+RRhsNFniEk8aiogG9ql2ylUNxtYu1Y4YeyddezDuc7F6Lb3hP2D2ZHYmON9cXecq1
         8cafyWJd7obZhpXOcxGiK7sII9TqMo2bs7gL5AB6WMDCsWSI+9e1IaYpkfFLUtl4qw8Q
         7p03Yi9NuF5HvkuvYpVDK6qJFa8RUyAs1Vq9BsMDpA3iUv1FLlqOFu3BrvxWLnMH+YQ7
         ihXQ==
X-Gm-Message-State: AOAM531GOlsKF1+20aFYSRBWSXm+9rZuvcZju174qWZVTGY1icS9RH79
        SLwy7nE1nBtjd1tfxvFlzyg=
X-Google-Smtp-Source: ABdhPJwsYUpTCoCk+xYVVxenqmeKgnkAu9Tz8MjRW77vHBwRmfq3a/aQ+28xlo2a1A4ibrmfVnhEDQ==
X-Received: by 2002:adf:8919:: with SMTP id s25mr17861657wrs.185.1634334580264;
        Fri, 15 Oct 2021 14:49:40 -0700 (PDT)
Received: from [10.168.10.11] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o8sm12493380wme.38.2021.10.15.14.49.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Oct 2021 14:49:39 -0700 (PDT)
Subject: Re: [PATCH v2 1/2] ctime.3: mktime() may modify tm_hour due to
 tm_isdst
To:     Paul Eggert <eggert@cs.ucla.edu>, mtk.manpages@gmail.com,
        linux-man@vger.kernel.org
Cc:     libc-alpha@sourceware.org
References: <a8e09a03-3eb2-d6c0-c662-e3db800fe2fc@gmail.com>
 <20211011111237.9414-1-alx.manpages@gmail.com>
 <1ca68ed3-93e7-c94a-1859-ab876412e4c7@cs.ucla.edu>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <a927fbd7-6eff-8944-b772-a77f89e38212@gmail.com>
Date:   Fri, 15 Oct 2021 23:49:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <1ca68ed3-93e7-c94a-1859-ab876412e4c7@cs.ucla.edu>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Paul,

On 10/11/21 5:36 PM, Paul Eggert wrote:
> On 10/11/21 4:12 AM, Alejandro Colomar wrote:
>> +If the initial value of
>> +.I tm_isdst
>> +is inconsistent with the one set by
>> +.BR mktime (),
>> +.I tm_hour
>> +(and possibly other fields)
>> +will be modified to normalize the time to the correct DST.
> 
> I don't see why this change is necessary. mktime normalizes all its 
> input fields: there's nothing special about tm_isdst and tm_hour.
> 
> If normalization isn't explained clearly enough elsewhere in the man 
> page, that explanation should be fixed; there shouldn't be special-case 
> wording that implies that this is the only special case.

Hmm, you're right.  I think I was misled by the wording "if structure 
members are outside their valid interval", which led me to think that 
since 08h was between 0 and 23 it shouldn´t be affected, but the 
normalization goes beyond that and interprets "valid range" as a more 
general concept so that the full time has to correspond to a valid time 
for a given timezone.

I'm not sure how to reword it.  I'll keep it with the original text, and 
keep thinking about it.

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
