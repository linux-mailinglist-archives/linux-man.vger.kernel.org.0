Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D55B1BD350
	for <lists+linux-man@lfdr.de>; Tue, 24 Sep 2019 22:08:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728503AbfIXUIc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Sep 2019 16:08:32 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:40149 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728405AbfIXUIb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Sep 2019 16:08:31 -0400
Received: by mail-wr1-f66.google.com with SMTP id l3so3439565wru.7
        for <linux-man@vger.kernel.org>; Tue, 24 Sep 2019 13:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=oN3kyG9l0svl28qzhZ4+iWiotbgBqAWCAp5Wg0KDKGE=;
        b=LoLvyj2W8TDHYVpzZbvy63Gvv6fHwpFiOv9VgpqR6kTzVKDdHjQMm5awaPhiLwTh6O
         TJSWJnFZVeP2dwmBoyimclbixRrZrLli9u0gj82L09kYfalkahVp/9u4D0d5GqQSuzSr
         VyK2znEKtsfh67xZpoFuzR1Tt46E1Vl35sVO8zsCSmyaw3HWqHooKiTiZUablj1NgQi5
         Bb+duPfjK4b9JQHWeoF+KAfGKIDTBifNuuQ71e9QoWRgyGYrcTr3R+JgpsbYvMh3vaI6
         2tm2CUkvSaoWjntjRmCZLT0g6b7qPTHX4zTB9hT9S6xffe3qCxAJlibBnZ2kDwqVRj2Z
         9VAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=oN3kyG9l0svl28qzhZ4+iWiotbgBqAWCAp5Wg0KDKGE=;
        b=raTIs84ZFwTq5xwB1JzpSi4UFTl6ut/j/JeHl+gl7PDc3Ufr5jk+Dez1GvMlIN9swe
         H2HEOHYRE9b7rSOFgZj9PxOEk90/aE4mUbWj/VhF9CCmyIyYv6MD3TkW8oncYPpMV/jG
         uLMOTeCzSVy3WKsrBhkKcPiA+r7ZWfawHBuNgTSrHPLeHDjn4TdaQOkuiSg9SJaJVXPc
         Q49OHNM2SEUwYkiZK0DEtoxoiO/s6HY2axURQa/hGTnkOAQNqBpbTOnDmqSgOyksmLO4
         VrAKJwMHiKMlZa7yOalBY4NlUwtq5jPHsycynqcWmYb56JEHKIfTqz6v+0H0OBzIUUof
         1KSQ==
X-Gm-Message-State: APjAAAUXwWVCgXxLQzhE6HYmvDjoAAPaRlLsSDgUtp1Nrc0J+zJFgi4C
        RAhOcqfuIIXYYp8I0mC03gE=
X-Google-Smtp-Source: APXvYqxmrtsk8oKyxg86KRsp/6p45NWozTf/7zKKXrNT7YCscRjvvuLl131318plxnw+Y+W0GuiSXQ==
X-Received: by 2002:a5d:560a:: with SMTP id l10mr1702310wrv.387.1569355709604;
        Tue, 24 Sep 2019 13:08:29 -0700 (PDT)
Received: from ?IPv6:2001:a61:24d6:4e01:ef75:e978:47cd:1c50? ([2001:a61:24d6:4e01:ef75:e978:47cd:1c50])
        by smtp.gmail.com with ESMTPSA id b16sm4635569wrh.5.2019.09.24.13.08.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Sep 2019 13:08:29 -0700 (PDT)
Cc:     mtk.manpages@gmail.com
Subject: Re: [PATCH] getauxval.3: Add new cache geometry entries
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org, benh@kernel.crashing.org,
        mpe@ellerman.id.au
References: <20190916184136.13621-1-rzinsly@linux.vnet.ibm.com>
 <3a8ec98c-f93e-f186-b365-82857ec46395@gmail.com>
 <91faffae-777b-7e77-2986-463dc01508be@linux.vnet.ibm.com>
 <20190924184158.3f3au7aqnitasrrn@localhost.localdomain>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <945cbcbb-8459-4fdc-a161-ce6ecfee7248@gmail.com>
Date:   Tue, 24 Sep 2019 22:08:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190924184158.3f3au7aqnitasrrn@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/24/19 8:41 PM, G. Branden Robinson wrote:
> At 2019-09-23T10:36:16-0300, Raphael M Zinsly wrote:
>>>> +Geometry of the L1 data cache, that is, line size and number
>>>> +of ways.
>>>
>>> What is "number of ways"?
>>
>> It is the cache associativity, e.g.: 8 means the cache is 8-way set
>> associative.
> 
> Yup.  At some point when I wasn't looking, the "-way" in "n-way cache"
> got promoted from a partial adjective along the lines of "all cars must
> halt at the four-way stop sign" to a full-blooded noun and term of art.
> I bumped into it while proofreading a Ph.D. thesis[1].
> 
> To help familiarize practitioners with the new cloak of terminology
> draped over this hoary descendant of Old English "weg", I suggest adding
> a parenthetical:
> 
>   Geometry of the L1 data cache; that is, line size and number of ways
>   (e.g., \(lq4-way associative\(rq).

Thanks jumping in Branden. I think Raphael's revised patch clarifies
things in a similar way, so I'm happy.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
