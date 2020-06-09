Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE49A1F39D2
	for <lists+linux-man@lfdr.de>; Tue,  9 Jun 2020 13:35:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728729AbgFILfK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 9 Jun 2020 07:35:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728051AbgFILfJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 9 Jun 2020 07:35:09 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B890C05BD1E
        for <linux-man@vger.kernel.org>; Tue,  9 Jun 2020 04:35:08 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id u26so2100508wmn.1
        for <linux-man@vger.kernel.org>; Tue, 09 Jun 2020 04:35:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=IKjtETQQGu8CkN1gmFA4SaMKoMg8sotVOeSkKS/hL+0=;
        b=gCofTTxgO3OLIBMc22foNu3BjBoIaLZB3kl9q/3t1zrZ6XqaiQVPWtI81QNeSnOzwI
         7i4d2NcNsaoyxoFBIMN4B5UkXGo6vhHoHiiINhJgVGpK1sx15iAYm1FrLeXT6JWCV1JJ
         Cc/ut32LjCzNWFR01aAk4NrSjJiL9b/p75ArcO3/j+8ifw8a2ZRR8nwacIHA52nm4SBF
         hdFpby4l0S2mNA7itAvj/DNFY88vO4BN9tSyodLn8yaGmZcTNyM4d5JmwY9KrZtt1KPK
         ZhHhQfgZNJVmxMUUqW5b4f7t6I0MchqRmRp0AggPmlww1Eholz1L3CCfdw/VVoYIi7oa
         CMiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=IKjtETQQGu8CkN1gmFA4SaMKoMg8sotVOeSkKS/hL+0=;
        b=Tjip7BkZktc7fSYONkbjRv8P1LxWW5Q9pYvfmhN+3BZujpG9D9nOMqtDW5TiT9CePH
         34O+piTcqEtww9Mo11sBj/9XqprDfSux/8tuwHjxZJOMYRbU/iND2Iav0hs35WOCPOH5
         n9N90qBj28SGzvgLquYC269lVRkgGFaNM1TwKW5BFNZ3hc9U7NVM8YapBS26rVh060XU
         dFf2hiJNLs6m5/e6akeyLJgBF7PKcShjV0e6uuv3ah/SrCXgeyrAr3HNu3m79fIjTOa2
         kHm89YaOzzNRAfXH0bUpYWOyYyTLSQiES3RfuaYlxcX2+dU3RXVrFAwby8F+EtuXuz6E
         cRnA==
X-Gm-Message-State: AOAM5339gXpwf/efhMreXeV3iHGUmJAPdO53JrXbqOZ5FDblUaCTgU7X
        mR31A0CZ9UPsWAuuHvyUkWz0bDlSfJY=
X-Google-Smtp-Source: ABdhPJyTuxmNbDHMOXGa2Y/WgKgIatFCDVYWbshzrRb9sxyYOsOpMLuowNp/1mkbEAgY47Zfit+22A==
X-Received: by 2002:a1c:e355:: with SMTP id a82mr3518909wmh.1.1591702506683;
        Tue, 09 Jun 2020 04:35:06 -0700 (PDT)
Received: from [192.168.0.12] (cpc87281-slou4-2-0-cust47.17-4.cable.virginm.net. [92.236.12.48])
        by smtp.gmail.com with ESMTPSA id i8sm3143053wru.30.2020.06.09.04.35.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jun 2020 04:35:05 -0700 (PDT)
Subject: Re: core man page %e
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
References: <ae5293ba-17dd-fd6d-54b0-312a008e3167@jguk.org>
 <2c72b844-c99f-ec66-02a9-a12d688ece13@gmail.com>
From:   Jonny Grant <jg@jguk.org>
Message-ID: <15f56f99-f3e8-3a8d-97f3-42b6620d1e17@jguk.org>
Date:   Tue, 9 Jun 2020 12:35:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <2c72b844-c99f-ec66-02a9-a12d688ece13@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 09/06/2020 11:18, Michael Kerrisk (man-pages) wrote:
> Hello Jonny,
> 
> On 5/30/20 12:39 PM, Jonny Grant wrote:
>> Hello mtk
>>
>> I've noticed "%e-%s.core" often gives something other than the
>> filename and the name is truncated to 16 bytes:-
>>
>> ThreadPoolServi-5.core
>> Chrome_InProcUt-5.core
>>
>> This was set:
>> sysctl -w kernel.core_pattern="%e-%s.core"
>>
>>
>>
>> In multithreaded applications it looks like %e is giving something
>> other than the filename, perhaps a thread entry-point symbol name.>
>> https://www.man7.org/linux/man-pages/man5/core.5.html
>>
>>              %e  executable filename (without path prefix)
>>
>> Could this be updated to:
>>
>>              %e  executable filename or thread name truncated to 16 bytes
> 
> I changed it to this:
> 
>             %e  The process or thread's comm value, which typically is the
>                 same  as the executable filename (without path prefix, and
>                 truncated to a maximum of 15  characters),  but  may  have
>                 been  modified  to be something different; see the discus‐
>                 sion of /proc/[pid]/comm  and  /proc/[pid]/task/[tid]/comm
>                 in proc(5).

Hi Michael

That looks good.

I saw $ top -H shows these similar 15 byte truncated names. It's a shame it is such a low limit.

19697 jonny     20   0  657252  46120  29096 S  2.6  0.3   0:18.84 gnome-terminal- 
 
 

19431 jonny     20   0 4823508 114384  75668 S  1.6  0.7   0:00.08 ThreadPoolForeg


Is it better to say "15 bytes" because utf8 binary filenames or thread names would be less characters?

For example:

$ ./おはようございます
$ cat /proc/892/comm
おはようご

That is 15 bytes of utf8
E3 81 8A E3 81 AF E3 82 88 E3 81 86 E3 81 94 0A

Cheers, Jonny
