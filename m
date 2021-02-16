Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4900131C995
	for <lists+linux-man@lfdr.de>; Tue, 16 Feb 2021 12:22:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229662AbhBPLVu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 16 Feb 2021 06:21:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230053AbhBPLVm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 16 Feb 2021 06:21:42 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1452C061574
        for <linux-man@vger.kernel.org>; Tue, 16 Feb 2021 03:21:01 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id o24so14051832wmh.5
        for <linux-man@vger.kernel.org>; Tue, 16 Feb 2021 03:21:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=W8tEkF0WrFrOurjWTMAQ6pGQaQ43Zd8pGW+Q7jtzg7E=;
        b=BDbB+UaVBPZGHdkJcD6cEOzx8jjLwT53Er15x2q0aBCAkLfCKVvABhOx34vaF6b1wT
         nhnCUJhe0Rwodr9igrSBp2SATp6m7aJ+ZznwyVTiG/cbyQgY1Dd8W2nkxMLHSwdJpSHx
         j8Rja2UVmbhP9aXpyC+rcTDuB05G8NoxezBPoi1xVXnn0x2Al0zgvzs0voATc8SA18hc
         xVl1h6+b32UuUgIHPDN5wZqMGAtqJNSTO3KvmnufhFc+7JrFGQCmrel9KJy8PT+EEP5n
         HpkvnVPanOnKbw6uRtkp3brC66dfmG92I0Cj5HLDkn4DUDXuSbuHa2gVopiAeej2WRSy
         dlHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=W8tEkF0WrFrOurjWTMAQ6pGQaQ43Zd8pGW+Q7jtzg7E=;
        b=QwXddcu2wdkVswpTAhcf4CC2OWWAE/pRFXOgPqlajXbdyX5+u46x3uthezqNubxW/N
         K66PYwxVKQe6SAoNvQ3St6D0TcPRXlvGoXZCU7KYS9mTAaT4lLNp0ideomtwMVuHJL9J
         jLPFE3QBahA6NmnHb7Y3/7OBQL4WoLhse0J4+jjSeoaCt86F4f2JISIkBUBpY3xCajJq
         wZ5dhsa/Ym+kQ+AU1KeasBX4i9Lfjr/aHgL3ZVt3AEvnYFpvyVOXiPplzGiL7xJAOJPD
         m/pv2xTKZ2Jc6VCHadwkqsolLrQwNEXSK+pz3c7pVWCtARIcz9lhI6nH/SJvv9N6bbFM
         CfBw==
X-Gm-Message-State: AOAM533wU1egSlDRJSiY9lspVHq5AHEgjmquV+wNgYniUryfMwABs+Ts
        5x6+tihm1w6KorU35hvomO3QuNkneW/kBw==
X-Google-Smtp-Source: ABdhPJxHIkscnvw1WxfMad9ESXJr7t5FWF0+MegUliy++RnwvN1bog0JOVvwUkorJpb/wMteVTNv/Q==
X-Received: by 2002:a05:600c:19c7:: with SMTP id u7mr2891257wmq.122.1613474460583;
        Tue, 16 Feb 2021 03:21:00 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id t30sm24608855wra.56.2021.02.16.03.20.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Feb 2021 03:21:00 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: make html: Errors
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <62633911-34b5-e5da-1fa1-aaaf3e19ba1e@gmail.com>
 <3dd7707d-6ea6-c68b-8f53-15e743f273c3@gmail.com>
 <28981140-bfc6-d7f7-697c-2479af764311@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <d3488179-3841-628a-e538-68995575df65@gmail.com>
Date:   Tue, 16 Feb 2021 12:20:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <28981140-bfc6-d7f7-697c-2479af764311@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/16/21 11:46 AM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> On 2/16/21 11:23 AM, Michael Kerrisk (man-pages) wrote:
>> Hi Alex,
>>
>> On 2/15/21 10:11 PM, Alejandro Colomar (man-pages) wrote:
>>> Hi Michael,
>>>
>>> I tried to render HTML pages with the Makefile.
>>> I had some errors, even though the operation succeed (I have the
>>> resulting HTML files, and the contents look good in the browser.
>>> Has it happened to you before?  Do you know how to solve it?
>>> I copied here the full error messages, in case it is useful.
>>
>> There's a bug in the script, it seems. Not all of the pages
>> were being correctly processed. In particular, link pages
>> (".so dir/page.n") were not being correctly handled. I think
>> the patch below fixes things. Can you test and confirm?
> 
> Yes, it fixes the error about link pages.  Now I have:
> 
> $ make HTDIR=.html/ html
> man2html: Unknown operator .
> man2html: Unknown operator .
> man2html: Unknown operator .
> man2html: Unknown operator .
> man2html: Unknown operator .
> man2html: Unknown operator .
> man2html: Unknown operator .
> man2html: Unknown operator .
> man2html: Unknown operator .

Yes, it's because of some rather idiosyncratic mark-up
in elf.5. I also noticed this problem, and I've already
changed the mark-up. Changes pushed now.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
