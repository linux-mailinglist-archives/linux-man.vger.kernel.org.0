Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BA5BBBAE9C
	for <lists+linux-man@lfdr.de>; Mon, 23 Sep 2019 09:43:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2436493AbfIWHnf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 23 Sep 2019 03:43:35 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:36830 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2404716AbfIWHne (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 23 Sep 2019 03:43:34 -0400
Received: by mail-wr1-f68.google.com with SMTP id y19so12719142wrd.3
        for <linux-man@vger.kernel.org>; Mon, 23 Sep 2019 00:43:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=cqkyqLrIMKQ56O+IrNSXspYfwWty7B3XiiaqbGRRAZk=;
        b=uu5lsJigT6sc6B8jI0G+lxJHabp+Yp7o7wlLSWpeJm7IUx/1dZsSkFIKUPYLPe8kqk
         9Pl5prf/Z7i4YQDR0ChP2JIKrWEelfPRwR3KBQ7JyiAuxL55UqURUGWs5TS2mQu80Ayg
         z53/RaWpQZM6pAuXhmpIhC7RgCX/aabtGAh9lj4RCROGzHBAubncHAeB9tE+UsMfZuwh
         hy72/xfwTlkErcWWQmI3ybkZb5T4rnpLQwx4f7Xvj8eemlS1h89J76Og0sodQfcjTPS4
         UYHnpje8o6yQooHk9pWhfIiogWus52U3T0k630xz7zVX+HJldUoLVwrL6z9xDMPBBoYU
         QuZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=cqkyqLrIMKQ56O+IrNSXspYfwWty7B3XiiaqbGRRAZk=;
        b=qVY2omdl3Dgufl34J94cHVinFAo7P6R2PTeBQm3LBK9qQmrw5SWGo0o0LLniqhb449
         2Gf7cM8IGxLRVW1c4r2NTqr9prCQKzhIDkHReLxTNboGx2Av/c/6hKC8Iu5QBeNpqUqs
         yLmhtmmgtriz96ezudZsKlw/TYwOTTLFrYTy0iKO7rUst6o/Qei0IGhxjPLOcUJKdUyE
         07Rx7GzIixFuho553KKqFhosmQZLA/84Pk0BcwBgx1pKF0cUMmTC7+nEHZaIQX511CoW
         IfG8pvUz37TsMWTFiGcgZvBRP+TzsOwcV8Z4z4SkADSxlUHZTTx1ZS3E26YAD6W8+fqH
         SMwg==
X-Gm-Message-State: APjAAAXPnaL+5PsbGqnvLO+W/bbTZDbnVDaOjG5asOZPdhex8LDzSqoe
        sKcPIt3HC/JhptHzifFTE/bp+DZ5
X-Google-Smtp-Source: APXvYqxrCmuXrlQvsAwUZcx5/QjfdyfW5m5WjcJtYAiWC6kVC1VHa4Qv9Tia9oDh8olFROuTRYOkQQ==
X-Received: by 2002:adf:8168:: with SMTP id 95mr11525541wrm.332.1569224612503;
        Mon, 23 Sep 2019 00:43:32 -0700 (PDT)
Received: from [10.0.20.253] ([95.157.63.22])
        by smtp.gmail.com with ESMTPSA id x5sm19065942wrg.69.2019.09.23.00.43.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Sep 2019 00:43:31 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Man page pre & post operators error
To:     rstanley@rsiny.com
References: <a1683c1cc450bf969aca13d8f7a99f08cc07635d.camel@rsiny.com>
 <47a9114e-4e31-45fc-131a-ca0c2571066d@gmail.com>
 <a872f7e970a7d2048243f21b9fb40ad5fa929ffe.camel@rsiny.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b43e88f6-ba92-8e82-c4f5-0e24d98252d0@gmail.com>
Date:   Mon, 23 Sep 2019 09:43:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <a872f7e970a7d2048243f21b9fb40ad5fa929ffe.camel@rsiny.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Rick,

On 9/23/19 12:50 AM, Rick Stanley wrote:
> Thank you for the update.
> 
> I am sorry you have interpreted my request as a demand.  It was not
> meant or presented as such.

Okay. 

Thanks,

Michael

> On Sun, 2019-09-22 at 23:01 +0200, Michael Kerrisk (man-pages) wrote:
>> Hello Rick,
>>
>> On 9/20/19 4:19 PM, Rick Stanley wrote:
>>> Greetings!
>>>
>>> In the man pages, both in Linux and online in multiple sites, the
>>> pre
>>> and post operators are listed as equal precedence.  Two different
>>> web
>>> sites list them on different levels:
>>>
>>> http://man7.org/linux/man-pages/man7/precedence.7.html
>>> 	Level 1
>>>
>>> https://linux.die.net/man/7/operator
>>> 	Level 2
>>>
>>> Linux `man operator` list them on the second level, with right to
>>> left
>>> associativity:
>>>
>>>        Operator                            Associativity
>>>        () [] -> .                          left to right
>>>        ! ~ ++ -- + - (type) * & sizeof     right to left
>>>        ...
>>>
>>> Section "A.2.1 Expressions" of both the C99 & C11 C Draft
>>> Standards,
>>> list them on different levels:
>>>
>>> 	postfix ++ & -- on level 1, with left to right associativity
>>>
>>> 	prefix ++ & -- on level 2, with right to left associativity
>>
>> So, Harbison & Steele also seems to agree here. Things changed since
>> K&R! I've fixed the page:
>>
>>        Operator                            Associativity   Notes
>>        () [] -> . ++ --                    left to right   [1]
>>        ! ~ ++ -- + - (type) * & sizeof     right to left   [2]
>>        [...]
>>
>>        The following notes provide further information to
>> the  above  ta‐
>>        ble:
>>
>>        [1] The ++ and -- operators at this precedence level are the
>> post‐
>>            fix flavors of the operators.
>>        [2] The ++ and -- operators at this precedence level are
>> the  pre‐
>>            fix flavors of the operators.
>>
>>> Please review this and all the operator precedence and
>>> associativity in
>>> the current man page "man operator" against the official C99 & C11
>>> Standards documents, plus the current working draft for the next
>>> version of the Standard.
>>
>> You are free to do so. But please don't demand that someone else
>> does so, even if you say "please".
>>
>> Thank you for the bug report!
>>
>> Cheers,
>>
>> Michael
>>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
