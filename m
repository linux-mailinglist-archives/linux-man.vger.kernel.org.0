Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4D65DBE61C
	for <lists+linux-man@lfdr.de>; Wed, 25 Sep 2019 22:08:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732726AbfIYUIV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 25 Sep 2019 16:08:21 -0400
Received: from mail-wr1-f47.google.com ([209.85.221.47]:43204 "EHLO
        mail-wr1-f47.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731229AbfIYUIV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 25 Sep 2019 16:08:21 -0400
Received: by mail-wr1-f47.google.com with SMTP id q17so8358705wrx.10
        for <linux-man@vger.kernel.org>; Wed, 25 Sep 2019 13:08:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=y0H4U9rM4q+trHkwk0NDlX1wfTuCNX7nT0DsBlKAuqo=;
        b=JDIC5ifYP9gDC12ArD1yLgNcqMqb6vWo/hAPSC3PL2WE5kydXQ1mbmgayMVVmsW+he
         HlZGwV6YKKmKcRJMNmg8xrHYJ6h1CebQnVBgse2OXL2J5fRjy/UjaF7PoMo24O9CP/7H
         VFH4Yt878YG8aPpigd7g/6JaQkv9PQWGM4hvcVHkh487EXHDw8Pvhz+XRYvLxV8ijJ9U
         Mx40bnLcB8lgMJPrkjQANfPm8tlhxcjbebbvX3lpN+5vExmELyd5g076M8dykct3GHAs
         dQriTuYNYvyeBX4Wykqv9cnGgcmVFkNZua2yxHkmG+o2kOhj3RixOLwSn78e2N0OZGD9
         6shA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=y0H4U9rM4q+trHkwk0NDlX1wfTuCNX7nT0DsBlKAuqo=;
        b=kZBn/XCsiPTf0/ahl59THqMP5yxwiUq9gy4oozN3ETAD5VHTCShIjUKgucrfKbS9AH
         CKxwnb6dvxde6INOtHsaChqpRWWKYI68upDrnyP3qZjNZVGMjPwtNnL3dnuTeu7sM14e
         nhJKsaK+enrAJB3o+vRRQir47GswZYW0REfKDI4NC5ObtjBcwlXRAoUwlXYz7YsbrQ//
         NsNv/OzGrTawCHNczaxd+hG8kOUjiJjHHLClRCk7mPe6TIyheIG25xOB4dku6fr5W4SC
         c5u16ahmQCaQD7PJrtSSinfhjuTZqfmDTkA8ESS0LDpLO9JNOEVKi2+Ehk7iAfdeLafN
         GoSg==
X-Gm-Message-State: APjAAAU0v8rvNxAFsVDT6+B37JHou/B9ugCnJlEYXOz8MQga6Aw7offM
        4RdQ4trVe8Qa5FBipG8HmxePKvfk
X-Google-Smtp-Source: APXvYqxhZOW4CSZmsKUmgOFGlTqLAkXNnfr7QicA+Jwba4Wu3fMZz8YRuMcHUfF96Gapb3TVcjqjvg==
X-Received: by 2002:adf:de08:: with SMTP id b8mr91547wrm.200.1569442098662;
        Wed, 25 Sep 2019 13:08:18 -0700 (PDT)
Received: from ?IPv6:2001:a61:24d6:4e01:ef75:e978:47cd:1c50? ([2001:a61:24d6:4e01:ef75:e978:47cd:1c50])
        by smtp.gmail.com with ESMTPSA id y186sm25915wmb.41.2019.09.25.13.08.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Sep 2019 13:08:17 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Man page pre & post operators error
To:     rstanley@rsiny.com
References: <a1683c1cc450bf969aca13d8f7a99f08cc07635d.camel@rsiny.com>
 <47a9114e-4e31-45fc-131a-ca0c2571066d@gmail.com>
 <a872f7e970a7d2048243f21b9fb40ad5fa929ffe.camel@rsiny.com>
 <65c8c525eb718aa77816f3fe0b47e33d3504e623.camel@rsiny.com>
 <3cdbcb38-734a-2b1e-ba12-f5e85a89b805@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b26c24c2-63ae-bb99-4df9-653f9d33f20d@gmail.com>
Date:   Wed, 25 Sep 2019 22:08:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <3cdbcb38-734a-2b1e-ba12-f5e85a89b805@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Rick,

(Im reflecting more.)

On 9/25/19 9:42 PM, Michael Kerrisk (man-pages) wrote:
> Hello Rick,
> 
> On 9/25/19 5:23 PM, Rick Stanley wrote:
>> Hello again!
>>
>> In an effort to bring the current manpage for the C operator table up
>> to the current official Standard, I went back and compared the current
>> manpage operator table against the C99, C11, and C17(18) Draft
>> Standards documents.  I do not have access to the Official ISO C
>> Standards documents.
>>
>> I have attached a PDF to document my interpretation of the Standards
>> against the current `man operator` manpage
>>
>> In addition to the pre & postfix ++ & -- operators, I have found one
>> additional change & three additions to the table.  Because of these
>> appearing in 6.5.x, and A.2.1, I assume they should be included in the
>> operator table.
>>
>> The current table consists of 15 levels of precedence, C99 adds one new
>> level and C11 adds one more.
>>
>> (type) cast operator change
>>
>> In the current table, the cast operator is listed on level 2 of 15
>> levels, along with other operators.  In C99 this operator has been
>> demoted to a new level inserted between level 2 & 3 of the current
>> level, expanding the table to 16 levels of precedence.  I assume the
>> associativity is also "right to left", as is level 2.

How do you deduce that this changed between C89/90 and c99?
I'm not so convinced now that '(type) cast' changed in precedence.

>> _Generic operator/keyword addition
>>
>> This new operator/keyword was added in C11.  A new top level was
>> created and the remainder of the table has been demoted by one level.

But, is it really an operator? How do you deduce that?

>> default operator/keyword addition
>>
>> This too has been added to the new top level in C11
> 
> But, 'default' is not an operator as far as I can tell?
> (It is part of the '_Generic' construct, not an operator
> in its own right.)
> 
>> _Alignof operator/keyword addition

This seems clearly correct to me, and I find other sources
that agree on this.

My general problem is that I find no other sources
that confirm your interpretation of the standard that _Generic
is a new operator at a new level and that '(type) cast' has
changed in precedence.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
