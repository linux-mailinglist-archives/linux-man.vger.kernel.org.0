Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 353C32823F6
	for <lists+linux-man@lfdr.de>; Sat,  3 Oct 2020 13:47:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725770AbgJCLrQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Oct 2020 07:47:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725767AbgJCLrQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Oct 2020 07:47:16 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17D63C0613D0;
        Sat,  3 Oct 2020 04:47:12 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id c18so4575004wrm.9;
        Sat, 03 Oct 2020 04:47:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=9jN9XVMzmzjaMJWim4qaT2tuLZwXpUnVvFhvPeku2A8=;
        b=jEh6jfj6rE9p5fIku2RvT9LSoHvxH9ojzBG+fXVRa+T/Fsor22RRTBDmvixijHpucr
         KCv5ViDedrD5vXWFVjZrvpvYS8qsbtDYlv2EaO8SIS7craDUXOpHJJOcAjn0cgOONdmw
         PsQzUm5gLz4Wk6qiJG9EbkqLvENKeEHlpXFEVLq0ofdcgKqIvZHFK9CFcdKlS1I1dV2F
         enQ+2S5PJGEKv3RAjQLqAJIx3bC3haAGKMre0x07eNmKrR/LV4e7X0TvVdR0y93/ufRq
         YDpxNrRw7vZTCcd74wtOKjzVixNd6kfoUqmZQAzvRGgRC1YjnYQz65BGyjovT72nhjJC
         0ASg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=9jN9XVMzmzjaMJWim4qaT2tuLZwXpUnVvFhvPeku2A8=;
        b=RI+8KPDt7cDvaqCsxwFEaSt8VnpEaE3OAWN0Y7v61Hc/2+08vyJw/6PQUusinSZ+Hb
         3OwFqoiMmrKRS0tK8FQHrQF6n55av5EYr5XbV/MTtcEUx4ZOQCHRRzutLbbhlSFefy41
         QTQwSfH3dHID1yrGXphb3fRNDs4lJZXXSnZMWesrLVzS4oh7fZbVSNYV8DEt9rl6VDjy
         BEpnHiZQf75Q6NeiLvwfjw3ykQeatVCIwQ5Y6KiPfyXEf9uJfX/tnk7/QZwd4e/p3/Af
         i4/xF9vH/xihs4sGH2Qnz/8rLCIkCbXMSjTLYGXYqwKccie+5a80x3tJNSm7Mc7vNTHh
         ToTg==
X-Gm-Message-State: AOAM531R4oqKz9JLQr+/Wvc8dB896Hnk3b4oEr2ExCUUW+2iLmfTAJ2y
        PD0aUk5hKSkr1D8cof4Ow8Y=
X-Google-Smtp-Source: ABdhPJxfblWzWXckhDHu/AbycFlc6LKGDEcoPaX/3yLzu9nkPCEyfqvqldKlMDkLUGWSfAi5d8vAlQ==
X-Received: by 2002:a5d:4c86:: with SMTP id z6mr1773021wrs.23.1601725630804;
        Sat, 03 Oct 2020 04:47:10 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.49.0])
        by smtp.gmail.com with ESMTPSA id m3sm4968732wrs.83.2020.10.03.04.47.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Oct 2020 04:47:10 -0700 (PDT)
Subject: Re: [PATCH v4 1/2] system_data_types.7: Add 'void *'
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org,
        gcc-patches@gcc.gnu.org, libc-alpha@sourceware.org,
        linux-kernel@vger.kernel.org, jwakely.gcc@gmail.com,
        David.Laight@ACULAB.COM
References: <20201002121645.23646-1-colomar.6.4.3@gmail.com>
 <20201002151419.32053-2-colomar.6.4.3@gmail.com>
 <3941e130-df05-778b-dc76-90cd58400192@cs.ucla.edu>
 <d794a058-0506-7c3c-6f3e-518a788933af@gmail.com>
 <ff1700df-d383-44e7-24b4-da10000f83fc@cs.ucla.edu>
 <5b01a17e-5819-115f-7972-7f849d4356df@gmail.com>
 <78368866-e848-d208-eef7-f3a93a797853@gmail.com>
 <20201003074807.swdpnwaq2rzigadl@localhost.localdomain>
 <97b1b0d8-1f87-ac68-2ae9-92c2681ac49a@gmail.com>
Message-ID: <bb43d258-e3e8-ea4b-fcf1-6e9d280dd85e@gmail.com>
Date:   Sat, 3 Oct 2020 13:47:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <97b1b0d8-1f87-ac68-2ae9-92c2681ac49a@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


On 10/3/20 9:48 AM, G. Branden Robinson wrote:
[...]
>> The "short" answer[1] is that I think Alex is correct; Paul's caution is
>> unwarranted and arises from confusion with the font alternation macros
>> of the man(7) macro package.  Examples of the latter are .BI and .BR.
>> Those set their even-numbered arguments in one font and odd-numbered
>> arguments in another, with no space between them.  That suppression of
>> space is the reason they exist.  With the "single-font" macros like .B
>> and .I[2], if you don't want space, don't type it.


Hi Branden,

This explanation is great :)
Would you mind writing a patch with it?

Cheers,

Alex

>>
>> I could say more, including an annotated explanation of the groff and
>> Version 7 Unix man(7) implementations of the I macro, if desired.  :)


:)

>>
>> Regards,
>> Branden
>>
>> [1] since as everyone knows, I struggle with brevity
>> [2] I (and others) discourage use of .SM and .SB because they can't be
>> distinguished from ordinary roman and bold type, respectively, on
>> terminals.
>>
