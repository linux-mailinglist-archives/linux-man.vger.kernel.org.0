Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A87822ED6BD
	for <lists+linux-man@lfdr.de>; Thu,  7 Jan 2021 19:33:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727058AbhAGSd3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 7 Jan 2021 13:33:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725944AbhAGSd3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 7 Jan 2021 13:33:29 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17386C0612F4
        for <linux-man@vger.kernel.org>; Thu,  7 Jan 2021 10:32:49 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id q18so6642951wrn.1
        for <linux-man@vger.kernel.org>; Thu, 07 Jan 2021 10:32:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=xHggbYjmOASG05igpNEe3gsHKVa0pd43P6CmKjSpWm4=;
        b=BCLw9wAGrhO1TM46PQoABgkbqzAntym0f3lpzk7IoCl/1Sf3xCn33RnUCCfw+Fq2r/
         2WZr8viIHGOONeNzjWRS5NCKVadxmczbLTXzWOBGKKOKrMfYe1kHJb/yYFFjiMKpQlmR
         vwNprwfI15f5uH2N1v+jLwIVk224EHdh1qNFANXEgNxsWFuuR40wmOMySLfabhY3YNIi
         IC54mNkOsLXjfvXlVKkcAq5tIT75sVHf0Y3aMOm1gchLRGyGZn3LdrECcmsyds9epXX7
         JWc5P2F4gPWqtAE0YjhXHT9TZkZdnZ0yErD7NunWuR4I/PX78NMMPIbETyhyNTkAyMXV
         60Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=xHggbYjmOASG05igpNEe3gsHKVa0pd43P6CmKjSpWm4=;
        b=ENxIqIGRxNlSM1lXA5gQSQ9Ng3HOOdaTwMhXvbf1wzqf3SJYp/in+FyDlAzY+OYSZV
         Da4/Jsk8ajWH3EWNBSbbgM4DjGYdqBoP3vAgCUva1ycptvR3AKK+TpPeOxH7F1T0IjPC
         enx1nZ82YLNGwitDKpUXAA6j8nYqv/M5vOflmUnui6b9rKDf+asdTOhZGHQQiGxvRioE
         KDsgsmncQOnXFytMxyiRvZeehiOK/IOlKAEFvoxcQC3Rk02xUGaOEJAmMeO6VEBKE9cJ
         MMh3zDKo+k1gfMq/q994p1NHCStzAcBeTAdhcEjInltpDqWyM8uFMc1lM7pEf8x0t320
         7hlA==
X-Gm-Message-State: AOAM532akPybeH7+8j+xhMuZWVF/oPcqxm7yFEFBc7Gdc9AKj6wHwpW4
        XuXcAtLwNwQi+hHXyqZr3GTWMQNrtEU=
X-Google-Smtp-Source: ABdhPJzT9RMgXhWErs+haQqS5GW9mntsilPuhoG+PAIzSQsIhJU1JnBpmamO/F9bwQvr5Z06QBaWMQ==
X-Received: by 2002:a5d:51cc:: with SMTP id n12mr10062550wrv.375.1610044367920;
        Thu, 07 Jan 2021 10:32:47 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id g1sm9394057wrq.30.2021.01.07.10.32.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Jan 2021 10:32:47 -0800 (PST)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: setlocale.3: Wording issues
Message-ID: <e198d995-5a85-bda1-1a82-57260b9d4efe@gmail.com>
Date:   Thu, 7 Jan 2021 19:32:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

I don't understand what this paragraph means, I think it needs some wfix.

Around setlocale.3:179:
[
       On  startup  of  the main program, the portable "C" locale is
       selected as default.  A program may be made portable  to  all
       locales by calling:

           setlocale(LC_ALL, "");

       after  program  initialization,  by using the values returned
       from a localeconv(3) call for  locale-dependent  information,
       by  using the multibyte and wide character functions for text
       processing if MB_CUR_MAX > 1, and by  using  strcoll(3),  wc‐
       scoll(3) or strxfrm(3), wcsxfrm(3) to compare strings.

<<<Especially these last 2 lines

]

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
