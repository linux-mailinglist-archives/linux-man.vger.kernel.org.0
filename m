Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B5644276E30
	for <lists+linux-man@lfdr.de>; Thu, 24 Sep 2020 12:08:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727330AbgIXKIF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Sep 2020 06:08:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727325AbgIXKIF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Sep 2020 06:08:05 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF7A1C0613CE;
        Thu, 24 Sep 2020 03:08:04 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id j2so3131679wrx.7;
        Thu, 24 Sep 2020 03:08:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=RAZc+yTyqNXVgcuIO1vA6L+zFS2CxS5eFjivb7Dq8j4=;
        b=fVXqX/ezP4w/UGdrqSUw3j5TUbPa1Y2ZID3CaJ6X8UjW0UjM8Xrzr409brLE54NyxY
         VJx4/2jq8vPdvRXcoVxEo9ULZ3UIW1ozAyGWLuMK2/b/CawTj5AMuOGQQ04JULHL6WjL
         BbVdSOZlap70ApU7gNquHVu/Z+rftYKwA0jsDqNVk63oCe51s/36jtpwtZtpTfxRORvN
         JggUdaYIOQ7jT6VXc17fLkMf5elkUtCnH9ETTu7c24t3u+4kO4ADNKL53i4X/mSrNRYW
         NSdNUZ2CPyXOHQShjuoNlUJj5bsTjH4E9d4yXMhGx9+MceRvex2c3FMBEiCicdeCiqb1
         f4AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=RAZc+yTyqNXVgcuIO1vA6L+zFS2CxS5eFjivb7Dq8j4=;
        b=hreOSZu/RxXbDGHjDYxkKgXFZo5cp+5MS0gb1OfOUq4RR0n0nU4mPTzOooPLuzHO8+
         ZlAUePqVSEq2u/xbVg6H7Rs3oB7vTKvmUyQ/G9BrKFc0xRqrxFGJswT/9NQbmLpJ4Tyb
         /Ovch/0UNi4a1WE1+MxFkIzFMKMHlM54vte/JSDaLxp57MlThM274yNHdfhDAft14iP+
         WrF+tdwBNdblTI4Hy5waUhOqff8Mnvp4dWlPq7QjUs+oszKEN2Mi+yty5pfhREu5X1+V
         rsQjxhn9XRAc+fWjR7UhGveMzwRKH3PFMgXNM4RfKiCE0tXoScOxahCFlqWPcH6ZLXUJ
         FoNA==
X-Gm-Message-State: AOAM533/8TybG66jsSEUBywZa/4Pwj3K0RmKJx/TcZlbp1yeVCFkOe71
        V/e/AKK95pHtS6qfvd1IG3g=
X-Google-Smtp-Source: ABdhPJw9s0dvuLIXVtRy5C7lDlNQpPBUpanWncQN3HTTJXI3ELtyCvdhKTgbYffkTAw6XS2cqjb4Sw==
X-Received: by 2002:adf:ea0f:: with SMTP id q15mr4542670wrm.371.1600942083478;
        Thu, 24 Sep 2020 03:08:03 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id t1sm2684498wmi.16.2020.09.24.03.08.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Sep 2020 03:08:02 -0700 (PDT)
Subject: Re: [PATCH 12/24] getgrent_r.3: Use sizeof() to get buffer size
 (instead of hardcoding macro name)
To:     mtk.manpages@gmail.com
Cc:     Stefan Puiu <stefan.puiu@gmail.com>,
        lnx-man <linux-man@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>, Walter Harms <wharms@bfs.de>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-13-colomar.6.4.3@gmail.com>
 <CACKs7VD_p=d+nvuFxkWofSE6jCoKAKx5w44_5ciTJ0NX_H1ZFA@mail.gmail.com>
 <7dd2ab72-3ce7-1f50-229a-e663c3df2dcd@gmail.com>
 <CACKs7VDzgUyDM9FhRR69Aqw2-0xiZC86EhkqSmD5P68derRBFw@mail.gmail.com>
 <de87f720-68fd-02ef-1ce4-aba7593dd84a@gmail.com>
 <caf93f04-4d73-0377-8787-ad38d217795d@gmail.com>
 <CAKgNAkiHKmqO+v7ZLhD0T-86e-jPgGabWDc3V-fucS0n-vdQ4g@mail.gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <ce4e6217-de2a-01d4-1092-1dcd7f984034@gmail.com>
Date:   Thu, 24 Sep 2020 12:08:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkiHKmqO+v7ZLhD0T-86e-jPgGabWDc3V-fucS0n-vdQ4g@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael

On 2020-09-24 12:04, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> [..]
> 
>> I was reverting the 3 patches I introduced (they changed from solution 1
>> to solution 2), and also was grepping for already existing solution 2 in
>> the pages (it seems that solution 2 was a bit more extended than
>> solution 1).
> 
> Just so I can refresh my cache, which commits were those?

* b9bf90297 - Thu, 10 Sep 2020 23:13:36 +0200 (2 weeks ago)
|           unix.7: Use sizeof() to get buffer size (instead of 
hardcoding macro name) - Alejandro Colomar

[...]

* 1656c1702 - Thu, 10 Sep 2020 23:13:34 +0200 (2 weeks ago)
|           getpwent_r.3: Use sizeof() to get buffer size (instead of 
hardcoding macro name) - Alejandro Colomar
* cf254328f - Thu, 10 Sep 2020 23:13:33 +0200 (2 weeks ago)
|           getgrent_r.3: Use sizeof() to get buffer size (instead of 
hardcoding macro name) - Alejandro Colomar


> 
> Thanks,
> 
> Michael
> 

Cheers,

Alex
