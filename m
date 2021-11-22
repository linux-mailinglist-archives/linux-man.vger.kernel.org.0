Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 34D574593BD
	for <lists+linux-man@lfdr.de>; Mon, 22 Nov 2021 18:12:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239850AbhKVRP6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Nov 2021 12:15:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239798AbhKVRP5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Nov 2021 12:15:57 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3F44C061574
        for <linux-man@vger.kernel.org>; Mon, 22 Nov 2021 09:12:50 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id u18so34057426wrg.5
        for <linux-man@vger.kernel.org>; Mon, 22 Nov 2021 09:12:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=+OjZ/1raVbCv22LnyQWGHWvuwhlyJ52TRLiF604fipw=;
        b=FiTfiIIGiy/2TPDnO//C379iQvDSTpuob3Md09ggjU0TEX0RTFGoFfXoeit3jf1mTO
         cFSeBK524c1qO9giO0LudQ4WG4TmoVqH8n86PQ1n4N7wY7i2N7BDrEgsCkF/qh0yn54v
         qMAaIah1rcl7MO9fFE9UAuf+NNog1+6yQJSAAVvY85YPkyGhSVsTno4khrB4kMEvDJ+m
         89eXhqkw5KJi36SrHscesWmavWbG/CzATGzjt/u/eXKPb86RM6zF0JpuXunSKcMMLel0
         XE0kA2jU2RTTrBX0F2igsSORfcCxzg1Gz2DJwUQ0RAPWcLEpR2n6dWw8xpqwG/a4aw5H
         Qh6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=+OjZ/1raVbCv22LnyQWGHWvuwhlyJ52TRLiF604fipw=;
        b=BU1l0FsCTkLkhcmXLdwjv3OZeLboPvjK65DPE7Gaz++xcYqE7hajY5yLqOHhCknBXW
         yosyCYFTDlKxVA+qZmxLQbgTF9jKQz1h2Z+Cv0DB65Xme6wSh4MP9LEE7A4kILf2M2AO
         nLB/x6rTO6TDt26Sms4awL8ad+1fFeK9JVEGKLj0qWkajvA0cbL3BUy7vpHmKfRtFsO0
         9ydwLmN4Oi0JMXFbmDeH2EhsaXIuvi/ePwqNYO2leW9WkXZ7ORGqo7aLiVBPfIrJvx0g
         q0TcCm9cLWW5ptu/AfRLvrEV1Zb6hGIegh6I6SkrKw7fElDCGpib5tfoRGkUO4Pt1HYQ
         OQZg==
X-Gm-Message-State: AOAM532c2wxENlAcfHU3XNnU3p9TQOHdB/D2c/tEUFqcVoUr3swzXWmg
        FrFugonn+f/I1qq86wn9gLs=
X-Google-Smtp-Source: ABdhPJxY1vZU6T79bWn4+vmM/A+nY/SP+uzHq4Gi8E6HLQ00pc3TNLLGTnvjHtVSooFJ09rASlja0w==
X-Received: by 2002:a5d:63ca:: with SMTP id c10mr39577627wrw.124.1637601169602;
        Mon, 22 Nov 2021 09:12:49 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id k27sm26498221wms.41.2021.11.22.09.12.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Nov 2021 09:12:49 -0800 (PST)
Message-ID: <5f765ff0-59a2-7a54-873c-4632eed575d9@gmail.com>
Date:   Mon, 22 Nov 2021 18:12:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [patch] futex.2, mount_setattr.2, proc.5, netlink.7, tcp.7: tfix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Samanta Navarro <ferivoz@riseup.net>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
References: <20211113115808.zzvid3gla4r33kc4@localhost>
 <20211113124154.lazhqkb6qms7mpbo@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20211113124154.lazhqkb6qms7mpbo@localhost.localdomain>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden and Samanta,

On 11/13/21 13:41, G. Branden Robinson wrote:
> Hi Samanta,
> 
> At 2021-11-13T11:58:08+0000, Samanta Navarro wrote:
>> Typos found with codespell.
> [...]
>> diff --git a/man2/mount_setattr.2 b/man2/mount_setattr.2
>> index 77233f5..ca56256 100644
>> --- a/man2/mount_setattr.2
>> +++ b/man2/mount_setattr.2
>> @@ -986,7 +986,7 @@ main(int argc, char *argv[])
>>   .\"     because. Because making assumptions about the current working directory
>>   .\"     of the calling process is just too easy to get wrong; especially when
>>   .\"     pivot_root() or chroot() are in play.
>> -.\"     My absolut preference (joke intended) is to open a well-known starting
>> +.\"     My absolute preference (joke intended) is to open a well-known starting
>>   .\"     point with an absolute path to get a dirfd and then scope all future
>>   .\"     operations beneath that dirfd. This already works with old-style
>>   .\"     openat() and _very_ cautious programming but openat2() and its
> 
> I always thought the foregoing was a double entendre expressing the
> author's taste for vodka...

Yes.  There have been other attempts to patch this[1], but I'll defend 
the author's joke, even if I don't share his preferences for liquid 
ingestion. :)

[1]: 
https://lore.kernel.org/linux-man/20210910200429.4816-3-jwilk@jwilk.net/

Cheers,
Alex
-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
