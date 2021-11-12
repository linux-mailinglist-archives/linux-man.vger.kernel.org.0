Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 81B0844EDB6
	for <lists+linux-man@lfdr.de>; Fri, 12 Nov 2021 21:07:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235497AbhKLUKs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 12 Nov 2021 15:10:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235464AbhKLUKr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 12 Nov 2021 15:10:47 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0DE0C061766
        for <linux-man@vger.kernel.org>; Fri, 12 Nov 2021 12:07:56 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id u1so17460655wru.13
        for <linux-man@vger.kernel.org>; Fri, 12 Nov 2021 12:07:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:cc:references:in-reply-to:content-transfer-encoding;
        bh=tLpivrBb+8Hw+u+PlGvRFWyiStMpmcrjr825s5lqJMQ=;
        b=CHYBUq+E8dbU4Ofr5Xw+w1xBja94hJBna/eWSECE1/67rbrDNdI1iTDV3SOhKR0UTJ
         9G/4jrg9FVmc7VulCHU9Y6CAgNKlf4Mb+gWm4VKgZdzQrfD4VhRUpcaLF6/ma+7vNbBR
         xon7EsbDCPW/VkCnXLSWZMSOIr7XaipB6R0UV2rhxkHKLud0GUWUsJNOyL2yK0EK+HpQ
         vgl3N4o6jde9Bhke/3UpcE/GCn+xPxpePMgWILTX3qSkrVMP69iC64KrgncKHRLNYGxd
         2SEY5rWeRMzk0RSjZTYxO32ULrKxgiEhg8A2b8FQrviRzlr/L1LrvM08v86vjyzwsi3F
         ofig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to
         :content-transfer-encoding;
        bh=tLpivrBb+8Hw+u+PlGvRFWyiStMpmcrjr825s5lqJMQ=;
        b=q7zJG7nk3Wv3xFnDQkRdhdA2Tn3qasIPOoYsjcBga1upZMXKmY9VwpXng0yduqcj2x
         c9c6FY7qgiquHhajTBd6zhaRQuqkYMiVZDPKu+AaB8ubJ4fEDHTOw2E6jbVpjSDbD3r7
         F4x7YTPDacUyeDUveEDsJiCE0zZgPpYbY0/IgxDSq9vc9jV64Tz7ygmVwPls3xBezboj
         YqHMFsc3Fw5frnGhR6Foqg6vo9pNcfBuTPHfejKZ3JMnDPE0XZp1jXduoIMtTXQW5Hpv
         4YdC7j9qGrMdwFN6pNiyppi1GnjSBkcAmHGPIEvKJ4oZE5UVub34dNrHEOIT6mLbY8le
         hkKA==
X-Gm-Message-State: AOAM530FpNXmp4Kp0lC8gzgnvuPyWrKubPyHqngE3ejJ1/k/j6B0cskB
        G1TYvChE+pdgXXmVLuAAC6c=
X-Google-Smtp-Source: ABdhPJyMwwe12KJxr34FKM1IqZ9kFca8BLWG/7GCoPAh619CXhR/OZnJV44BfjObnnv49ZisaprThw==
X-Received: by 2002:a5d:47c7:: with SMTP id o7mr22361237wrc.204.1636747675235;
        Fri, 12 Nov 2021 12:07:55 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n1sm7202449wmq.6.2021.11.12.12.07.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Nov 2021 12:07:55 -0800 (PST)
Message-ID: <8c840e69-e437-2ec8-a8e8-c990f35dffe6@gmail.com>
Date:   Fri, 12 Nov 2021 21:07:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [PATCH v2] mctp.7: Add man page for Linux MCTP support
Content-Language: en-US
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Jeremy Kerr <jk@codeconstruct.com.au>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
References: <20211111015323.3542313-1-jk@codeconstruct.com.au>
 <76dd85f7-ab8a-1dcc-5b1a-5eb9a87d23bc@gmail.com>
 <d6c9edca79f9aedd4dd9e07e46a4587153f35149.camel@codeconstruct.com.au>
 <d0f4c857-db51-8482-d658-69f6ac25c73b@gmail.com>
 <20211112194050.w675gtlnecpc2r3x@localhost.localdomain>
 <02a98db8-6dec-d66b-4cde-81bed9de6620@gmail.com>
In-Reply-To: <02a98db8-6dec-d66b-4cde-81bed9de6620@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 11/12/21 21:07, Alejandro Colomar (man-pages) wrote:
> 
> 
> On 11/12/21 20:40, G. Branden Robinson wrote:
>> At 2021-11-12T19:45:16+0100, Alejandro Colomar (man-pages) wrote:
>>> Also, we prevent some crazy programmers from relying on that padding
>>> byte being actually padding and not something else, even if it "must"
>>> be zero.  I've seen too much crazy stuff; programmers relying on
>>> undefined behavior just because "we don't plan to move from C++17 to
>>> C++20, so this is safe".
> 
> A more complete report of the horrifying story can be found here:
> <https://github.com/tcbrindle/span/issues/42#event-5473150481>
> 
> The code to which it refers is closed-source, so I can't link to it.
> But you can feel how wrong it was.
> It made use of a library that provided C20's std::span for older 
> standards, and has some specified behavior for what C20 regarded as UB. 
>   Guess what.

D'oh! C++20
-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
