Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A1E9044EDB2
	for <lists+linux-man@lfdr.de>; Fri, 12 Nov 2021 21:07:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235552AbhKLUJ6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 12 Nov 2021 15:09:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235519AbhKLUJ5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 12 Nov 2021 15:09:57 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C1E8C061766
        for <linux-man@vger.kernel.org>; Fri, 12 Nov 2021 12:07:06 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id d24so17575117wra.0
        for <linux-man@vger.kernel.org>; Fri, 12 Nov 2021 12:07:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=hwhjidhBsPsUimn3XVGu73PJi9X6nninQxYywfBU5dw=;
        b=IDm2FprdlykVOMurTNzMR9f5odCGRz4PX08ZQhbgxJiuEoZJHOU2xcZFiIsBvvMe/X
         5PeHCJ4h2HG/X2pMqppJI/OUhf/hdedUCvw8hqGVCXWBEz7uCDVFYBDcKVriJSMsWkgL
         XqrbT1P43IxQDlyrEGWLyJM7OQlfvpN//lktZF6IGcl2mwLj4mZAqVaSOrR5GqLCPRjx
         J9Hg0qM+PlkYQUzUyvKgXhayELfbWZhMQi/NgXjXSDpHBr+i2OfAQP0Ic/vopjqfWMf/
         lByo7mViGQB/B/LeCnEKpZP33swdL5RATm13IWR6icYUHhpJa7wZ/uk4EWwmIQRpE+3w
         VpbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=hwhjidhBsPsUimn3XVGu73PJi9X6nninQxYywfBU5dw=;
        b=c5rfwxCeYvatHwWSTYYfhnCc8i6Zm4rj1evCE+rwv1a3LPAx56hScwuliAdQE5WlCO
         tR6fETr7lF+/ZUiO2RAlPMxyhODd/KHYTuYqgLMiOc2eAkxsMqwMwaX5eafe422Ee1rJ
         j5zeW85pQ62gMO9qtUjUZxxnSWPZr+M7GqrCvnGIgnEkksiwxCe+cTfyDSvMGv7m/Bq2
         l42hxegMBscDUtvssuyFtuJzfVPn/P2ZvOPg94fK6M+tmrcgqIgQblQo5mkZOLKiXuaa
         VjVLHn+CfF2WJqa6PTuYDdBiQ/JPuKUOueDH1O7DMq90lcKObwOo8pGjtQ1y8teQ//ch
         plnA==
X-Gm-Message-State: AOAM5335S0Z+0FQdnB/5f+KVnXNLMyFkgXAgnwnk+su0O2TroKBSyuG7
        HN3pKYwcOCrGsf0ybrPkl6M=
X-Google-Smtp-Source: ABdhPJx1I+Qo3X6LTFHV9IFUBAIFHGVGk91ULVC5S3Fv5++7g53MaQ5Vl0UkerN8PxXqACaOoMvaUQ==
X-Received: by 2002:a5d:468f:: with SMTP id u15mr21510831wrq.171.1636747624677;
        Fri, 12 Nov 2021 12:07:04 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id 4sm8803731wrz.90.2021.11.12.12.07.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Nov 2021 12:07:04 -0800 (PST)
Message-ID: <02a98db8-6dec-d66b-4cde-81bed9de6620@gmail.com>
Date:   Fri, 12 Nov 2021 21:07:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [PATCH v2] mctp.7: Add man page for Linux MCTP support
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Jeremy Kerr <jk@codeconstruct.com.au>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
References: <20211111015323.3542313-1-jk@codeconstruct.com.au>
 <76dd85f7-ab8a-1dcc-5b1a-5eb9a87d23bc@gmail.com>
 <d6c9edca79f9aedd4dd9e07e46a4587153f35149.camel@codeconstruct.com.au>
 <d0f4c857-db51-8482-d658-69f6ac25c73b@gmail.com>
 <20211112194050.w675gtlnecpc2r3x@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20211112194050.w675gtlnecpc2r3x@localhost.localdomain>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 11/12/21 20:40, G. Branden Robinson wrote:
> At 2021-11-12T19:45:16+0100, Alejandro Colomar (man-pages) wrote:
>> Also, we prevent some crazy programmers from relying on that padding
>> byte being actually padding and not something else, even if it "must"
>> be zero.  I've seen too much crazy stuff; programmers relying on
>> undefined behavior just because "we don't plan to move from C++17 to
>> C++20, so this is safe".

A more complete report of the horrifying story can be found here:
<https://github.com/tcbrindle/span/issues/42#event-5473150481>

The code to which it refers is closed-source, so I can't link to it.
But you can feel how wrong it was.
It made use of a library that provided C20's std::span for older 
standards, and has some specified behavior for what C20 regarded as UB. 
  Guess what.

> 
> +1.  One can almost see them producing a cowboy hat from an
> extradimensional space in their cubicle.  Strap in--the UB bronco is
> gonna start bucking.

-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
