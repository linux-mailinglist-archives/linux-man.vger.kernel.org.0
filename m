Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CEC393E3CE4
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 23:19:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230071AbhHHVUG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 17:20:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229977AbhHHVUG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 17:20:06 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4BD8C061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 14:19:45 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id b11so2557862wrx.6
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 14:19:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=JA0sj3hLM2Qf6Vz/jVLvjW8pe4pKXIxBwPOdw3poh8w=;
        b=UwrdwPrKO7fXH9oJeeJLWnBA673fNnVxhVkWc8W9rwVqCpDce5s0JbbtlnDcZMRuZF
         87iJ6IoPXIiomb4EGLtIq08iM6ChD1ec+iuOSfnrpyZxWMVDBjwzlQnjBU615RpB/xMs
         aTfI1dIZrWDQUUuYZYDDQquQCVltwP4HSXKH9UH1KCD6WwDuP2MWZFG8CTRnvfcZ+4iX
         80p+BVb56VBfViCifoBW2vUhQFoFZeZlM3oL7pbAt+tJ7Z1HWzpa4av6+Moez2ecHeDw
         82W5n7InhEtRGajF7b7qizZpdY99Y3cVEKfwLxGMqJgee7DnVaTzl3QetL/9xfB/W1xr
         aNMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=JA0sj3hLM2Qf6Vz/jVLvjW8pe4pKXIxBwPOdw3poh8w=;
        b=Nev07w3OFMgl1kNESaHlG/mBvHCiAudeqKNU/F4Bjz95UQG8PiwjO5dOEOzZowc3RU
         QjBSgQVl27RwetuZ9gP31UUfZJKn59f7Gbgfjpi+wYZUivGhWG2CREtzHvxG/H120KYd
         eMZtvvj7J0Ol1l9Y7K/INvJqjsApKK8YRpT5lZr6a92RoQW7OZTijwh8ol1UesT4j8rB
         0VyxB3bgqAsTpfXxRDcoeBD1/V8UqgaqJluhKaqUDZiOwFMFxr08TVY/ibJ0KQEvLEod
         DZ6LK+GdnIe7G81XUv9uDyWsZaACBv6qonpzkYnSCWQ7KpeHgCT89Vk+Y1IxGe+eBemk
         s36w==
X-Gm-Message-State: AOAM533hYzY7VYamuGTZyZuEnw7kWePF5f7x3nS489wuVjcdKcJZzqF0
        YZ39qDhWE+6nw96dp+8se3scjjtiLGU=
X-Google-Smtp-Source: ABdhPJykps6yRaN3Qs5phVQjTdg0Z7bpCdfyzdAcMoZV/9LBkJNB740yrJSZw1k/E8y2WIglaJorZA==
X-Received: by 2002:adf:dfc2:: with SMTP id q2mr21858216wrn.13.1628457584351;
        Sun, 08 Aug 2021 14:19:44 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id d16sm16917841wrx.76.2021.08.08.14.19.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 14:19:44 -0700 (PDT)
Subject: Re: [PATCH v3] ioctl_tty.2: Add example how to get or set baudrate on
 the serial port
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>
Cc:     =?UTF-8?Q?Marek_Beh=c3=ban?= <kabel@kernel.org>,
        libc-alpha@sourceware.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
References: <20210730095333.6118-1-pali@kernel.org>
 <20210801135146.14849-1-pali@kernel.org>
 <54c8c04d-4f9b-1ab6-a3a5-c23b2be74a9d@gmail.com>
 <20210808210530.ykqrihpfmdabbdl2@pali>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <27a03c58-33d5-0c63-5228-3320db1f42ad@gmail.com>
Date:   Sun, 8 Aug 2021 23:19:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210808210530.ykqrihpfmdabbdl2@pali>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Pali,

On 8/8/21 11:05 PM, Pali Rohár wrote:
>> When you send v4, please include the above text (or something similar) to
>> the commit message.
> 
> Hello Alejandro! Sure I will put description into commit message.
> 
> Moreover this kind of information should be properly documented into
> ioctl_tty.2 manpage itself. But I really do not know in which part. Into
> ioctl (and which?)? Or separate paragraph? As it basically describe some
> field of struct termios and struct termios2, which are undocumented too.
> 
> Do you have some idea or picture how such thing should be properly
> documented in man-pages project?

Being documentation for a type,
I think the best place for that is system_data_types(7)
<https://man7.org/linux/man-pages/man7/system_data_types.7.html>.

Do you feel like writing that?
See the thread we started the other day:
<https://lore.kernel.org/linux-man/5e9e1f1a-1e08-59f5-6579-a02c0738b9a4@gmail.com/T/#u>

You can also get some inspiration from other pages that
also define types, like stat(2), and sigevent(7).

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
