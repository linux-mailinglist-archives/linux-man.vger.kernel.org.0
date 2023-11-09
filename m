Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E8AF07E6C2F
	for <lists+linux-man@lfdr.de>; Thu,  9 Nov 2023 15:11:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231835AbjKIOLU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Nov 2023 09:11:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234351AbjKIOLT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Nov 2023 09:11:19 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BB5F30D4
        for <linux-man@vger.kernel.org>; Thu,  9 Nov 2023 06:11:17 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4084de32db5so6780845e9.0
        for <linux-man@vger.kernel.org>; Thu, 09 Nov 2023 06:11:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google; t=1699539075; x=1700143875; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YqwZdZmbcWbGjqCVCfw7coY9GbPR+WBpYN3VcSQN5FY=;
        b=k5gYBOxiOZ6RWjAicadhnX/6f2SYoaLkBQFU02Wyj17e3Ere+lawKTMZN3wv9hcyZ2
         gKQAhVZxaXmT+6Y7qKOdxuTt6+SpE98BXducWPe/JbF3xu2mbN5Wf4HiwZdLVnw3FA/b
         V5L2Jbt/P7Dp6XB5k14IPvHMa8u33gExgSHLEInML5v1lCQ5pk1dQBsISZcx0E+dpCEF
         jiINGQTbT+7rjlXtokixySDuKmgKZPIlcPYiLYzXu6UlwzzX8HRpI0p12yL5y7OVRuhl
         ZwgbO3mfs4ni8dWAQzUf9NW3uJE5/PIIo8vdvnLehYUkzVyYCNd1cbrhTRbX3/nc28ii
         QyoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699539075; x=1700143875;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YqwZdZmbcWbGjqCVCfw7coY9GbPR+WBpYN3VcSQN5FY=;
        b=p0rnO5sGbIffBYNvTxSaEtlQBm/RZhNci4T7qgFqaQ7DJRISp8SNRgtDdzZRE+5LYV
         +i2bK6wn5fn6unR5ZaOlIBj1bX/G0Ns3zo2bxXXZekyvJ79hd0SlyoHcFCWhv8AfGLph
         slu3v8G8YAT+fIwkaDRkkpQWx6hYRLyQcu1lBPHH+vNIvUu8lm4OrjelRorWn4ComVMW
         RbZCmrf8MbosWnsPTPnez0PNHr/xk9CASZXxY4sBA/BGL72F+VMKHmwt1vIAy7mm4TXo
         nIxJs4Jnebhle4f2VZDHFI+iqmvEA7HRfoCaW5lstd5f7ZXnRUIS1SfU6uidSDq5LPNB
         SZAA==
X-Gm-Message-State: AOJu0Yyp+9eZg3qFPe6equ4Drkj2Y6MPI2B35gVDdgRwOHXucPPmiHBV
        PKV2AS0wHlrBA3db6/n9WhqpnQ==
X-Google-Smtp-Source: AGHT+IHfMoTh7SOtIeXSXWEhuKm0aoE3pp2/POhZsPBnIOEh7SmCZpZLV3o4UZ0nAQrxG21uMTT0BQ==
X-Received: by 2002:a05:600c:3d9a:b0:408:5bc6:a7d with SMTP id bi26-20020a05600c3d9a00b004085bc60a7dmr4331792wmb.19.1699539075381;
        Thu, 09 Nov 2023 06:11:15 -0800 (PST)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id iv11-20020a05600c548b00b00405c7591b09sm2224191wmb.35.2023.11.09.06.11.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Nov 2023 06:11:15 -0800 (PST)
Message-ID: <93436b5b-c373-4cbe-ae64-cc7c2f70f165@jguk.org>
Date:   Thu, 9 Nov 2023 14:11:14 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From:   Jonny Grant <jg@jguk.org>
Subject: Re: [PATCH] stpncpy.3, string_copying.7: Clarify that st[rp]ncpy() do
 NOT produce a string
To:     Paul Eggert <eggert@cs.ucla.edu>,
        Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Cc:     libc-alpha@sourceware.org, DJ Delorie <dj@redhat.com>,
        Matthew House <mattlloydhouse@gmail.com>,
        Oskari Pirhonen <xxc3ncoredxx@gmail.com>,
        Thorsten Kukuk <kukuk@suse.com>,
        Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
        Zack Weinberg <zack@owlfolio.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Carlos O'Donell <carlos@redhat.com>
References: <ZUwCwxyPfur-hfea@debian> <20231108221638.37101-2-alx@kernel.org>
 <290c7650-bc39-4315-a9dd-7b9b7ec55333@cs.ucla.edu>
Content-Language: en-GB
In-Reply-To: <290c7650-bc39-4315-a9dd-7b9b7ec55333@cs.ucla.edu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 08/11/2023 23:06, Paul Eggert wrote:
> On 11/8/23 14:17, Alejandro Colomar wrote:
>> These copy*from*  a string
> 
> Not necessarily. For example, in strncpy (DST, SRC, N), SRC need not be a string.
> 
> By the way, have you looked at the recent (i.e., this-year) changes to the glibc manual's string section? They're relevant.

That's a great reference page Paul, lots of useful information in the manual.
https://www.gnu.org/software/libc/manual/html_node/String-and-Array-Utilities.html

Re this man page:

https://man7.org/linux/man-pages/man3/string.3.html

 Obsolete functions
       char *strncpy(char dest[restrict .n], const char src[restrict .n],
                     size_t n);
              Copy at most n bytes from string src to dest, returning a
              pointer to the start of dest.


It could clarify
"Copy at most n bytes from string src to ARRAY dest, returning a
pointer to the start of ARRAY dest."

(caps for my emphasis in this email)

Kind regards
Jonny
