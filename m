Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B781A488590
	for <lists+linux-man@lfdr.de>; Sat,  8 Jan 2022 20:20:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230409AbiAHTUz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jan 2022 14:20:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230345AbiAHTUy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jan 2022 14:20:54 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59422C06173F
        for <linux-man@vger.kernel.org>; Sat,  8 Jan 2022 11:20:54 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id h10so7981796wrb.1
        for <linux-man@vger.kernel.org>; Sat, 08 Jan 2022 11:20:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=UQMkMSZYqJ1qslX8JveeHHUUgb1mSqqwGURmPZdHqdo=;
        b=D9kH3nNrb/pUZIsXMP+RyXIlv1shmEpd7vE4FHJZ0fHhjyIy21uNJ6F5WRrHNU2HqF
         EXSJEhZF5fpC4xduZc+vpm2m9WbTKGyL5JJ9mo+4e5Cm6VR/hfI5VAJLcekFAs1LOBsy
         LfsHy3/pm16Kn0cck8JyoRzJvWnLw2iwBuq5Fk2haauELgAz+ueXikJ9+cdhOjEbb1HW
         CZI52CMzuLc8c0aync43QGW8IW8Emow07EUkiIF2dkSxTz+8N1XSqWf9748SRd528N7x
         vgr9V2xsl7gCVFUaxYZXqzUXwO57T3i8r7MRHzp4o/FW3ZBcfQLhKpTZdiPt+vliaG4E
         xPtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=UQMkMSZYqJ1qslX8JveeHHUUgb1mSqqwGURmPZdHqdo=;
        b=x7M/lZg21gOQ2Bg80ARW09Q/9vuw1vZVxK4sFvEuDkaGp4kCGgbXDnG2ZKi0l+QzSW
         MBxWzk51mvjr2zoo6xVUHo51N7b/Okx30j2Lnf9kKHME8hghQ70EkZtX0aSYHCm6WG6A
         FUEBA54PZH3QakBDYn0X57cHSTKhZ7CGPIfOBYqxuPu8MEgzKUbzr7e4HN1TjPJ0XarL
         1ykO+W/9XCHEcK6V5Hu9+CXgiC4HKxCJ7CJkQBeJyWTGSS6pqjOdXS6YKo+raVZDBIjY
         uA09bvL6SbC1HJfCeGwreo/ph3wdaHXoOeQDcxjy1ovkYTtzByvSTLLbrn2+2N7494Uz
         PwGg==
X-Gm-Message-State: AOAM532ZUkYuOn+Lr4uMnn1DYwv4qCqhn+rNhVoDruxJdJkb0j4kT3HH
        VlpAgPF49lHNLg84WfG0pV4=
X-Google-Smtp-Source: ABdhPJzNj8dxxrUm4mAvUt69kOTY605rb5LTns8zqJ2oq9ZHqkzzl8FnAjr0Es3qIZiRt5j680pL2A==
X-Received: by 2002:adf:c10e:: with SMTP id r14mr59739956wre.558.1641669652868;
        Sat, 08 Jan 2022 11:20:52 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l4sm2322116wrm.62.2022.01.08.11.20.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Jan 2022 11:20:52 -0800 (PST)
Message-ID: <952e79b8-24fc-f635-c903-d709858a9127@gmail.com>
Date:   Sat, 8 Jan 2022 20:20:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH 7/9] pkeys.7: Update the example to match glibc
Content-Language: en-US
To:     Stephen Kitt <steve@sk2.org>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20220107164621.275794-1-steve@sk2.org>
 <20220107164621.275794-7-steve@sk2.org>
 <c520d866-0b71-d756-58f6-f54be3560974@gmail.com>
 <20220108151857.4d4454f7@heffalump.sk2.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220108151857.4d4454f7@heffalump.sk2.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Stephen,

On 1/8/22 15:18, Stephen Kitt wrote:
>> A part from that, I prefer EXAMPLES to be as simple as possible, so I'd
>> do 2 patches.  One to match the definitions to the glibc ones, and then
>> one commit removing old code, assuming glibc is new enough.  Would you
>> mind sending a subsequent patch to remove everything under #if ... #endif?
> 
> Right, will do!

If you know those functions enough and would like to send new pages for 
them, that'd be great, but maybe too much to ask.  The simplest thing 
would be enough, and if someone cares enough to add more info, we can 
add it later.


Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
