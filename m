Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 701617E6C9C
	for <lists+linux-man@lfdr.de>; Thu,  9 Nov 2023 15:47:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232193AbjKIOrL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Nov 2023 09:47:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231659AbjKIOrK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Nov 2023 09:47:10 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8637E325B
        for <linux-man@vger.kernel.org>; Thu,  9 Nov 2023 06:47:08 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-3313263888dso520777f8f.0
        for <linux-man@vger.kernel.org>; Thu, 09 Nov 2023 06:47:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google; t=1699541227; x=1700146027; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YhFCLxW8LJp5VBNpr0oqDGKKi+8RqbZ4fMqaAAz4WWM=;
        b=FKsz7E8sPCdwqUTcxoOfn/ok0Cf9mdQFuYpSJNXTaGGtIthm064Fs+n+9Fn0k0m8qE
         ZyYXN7MF/LhFJGblvggfOR3pohJBkS7WBIkIFzLVLYu4P778QfTIEULnQiL6e1ebViN4
         uWGEExkiX1QOJ2bWlLONHs9MaI7w6U+UUHMy8JeYuDLHsxyfQKRigHSs4eMCtDCEXXt/
         gBpbiSEAY1MVusQ0cqGPRS9QbGq7O7aEnbWettVphm+F8JCKFpJ0cYkz11dXeDROh0bE
         FANwCP/1DLmu3W9UPkV950/gMAld6V/yAxbEbA16/yTt48ntKhcp2uOu+Qc8eoy6rDZu
         Thww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699541227; x=1700146027;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YhFCLxW8LJp5VBNpr0oqDGKKi+8RqbZ4fMqaAAz4WWM=;
        b=KTTVSSQd0fOmAawuoaAnM3I7L6maU5F6BGoc2T3QwnFzYbrq5ZM+8g9ZHGPcmz+1Go
         NaRJklI/RnPEVDCteQRXKiWrJQfSDNSFfbycP9oC6kRjhpzxcAL1cZTj8V96GaBuVDGy
         kZFkEVjkPvOUrE/+R8LXaR75rWbC+n+qshYYNTsr9Mf68v+033/gmPfzJzeMwws09ctc
         LzHsh1imt81cWU2TLSckFai3McyufeTIH9wdyTpQswu1d2VKhE7LMob7rx/g3HoJS3T9
         ZlbTxcygn3anXUXMo+/r8TbNurvVnm+qC7EQcJphQoIvdoz90NWDkQxYzpoUF1kgQqK4
         vZdg==
X-Gm-Message-State: AOJu0YwD7awFra5sgR5qUvvf/Ug/1MsyIW6kMvzmuOMix6ZCoCWAZGLI
        DRRCLQtNXNriZWQKpUryxB/JKg==
X-Google-Smtp-Source: AGHT+IGFKCUL6vP+1IuHx2DpDkr09CDqy2XXJFFDT4XsinYGwu51CrABJymDyovR0jO+1MeYFIodWg==
X-Received: by 2002:a5d:58ec:0:b0:32d:b55c:41fa with SMTP id f12-20020a5d58ec000000b0032db55c41famr3578843wrd.28.1699541226768;
        Thu, 09 Nov 2023 06:47:06 -0800 (PST)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id d5-20020adff2c5000000b0032d2f09d991sm7479026wrp.33.2023.11.09.06.47.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Nov 2023 06:47:06 -0800 (PST)
Message-ID: <86f95c84-c26d-48ad-be82-5259573678fc@jguk.org>
Date:   Thu, 9 Nov 2023 14:47:05 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] stpncpy.3, string_copying.7: Clarify that st[rp]ncpy() do
 NOT produce a string
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, DJ Delorie <dj@redhat.com>,
        Matthew House <mattlloydhouse@gmail.com>,
        Oskari Pirhonen <xxc3ncoredxx@gmail.com>,
        Thorsten Kukuk <kukuk@suse.com>,
        Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
        Zack Weinberg <zack@owlfolio.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Carlos O'Donell <carlos@redhat.com>
References: <ZUwCwxyPfur-hfea@debian> <20231108221638.37101-2-alx@kernel.org>
 <290c7650-bc39-4315-a9dd-7b9b7ec55333@cs.ucla.edu>
 <93436b5b-c373-4cbe-ae64-cc7c2f70f165@jguk.org> <ZUzuJGn-VUCdao4z@debian>
Content-Language: en-GB
From:   Jonny Grant <jg@jguk.org>
In-Reply-To: <ZUzuJGn-VUCdao4z@debian>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 09/11/2023 14:35, Alejandro Colomar wrote:
> Hi Jonny,
> 
> On Thu, Nov 09, 2023 at 02:11:14PM +0000, Jonny Grant wrote:
>> On 08/11/2023 23:06, Paul Eggert wrote:
>>> On 11/8/23 14:17, Alejandro Colomar wrote:
>>>> These copy*from*  a string
>>>
>>> Not necessarily. For example, in strncpy (DST, SRC, N), SRC need not be a string.
>>>
>>> By the way, have you looked at the recent (i.e., this-year) changes to the glibc manual's string section? They're relevant.
>>
>> That's a great reference page Paul, lots of useful information in the manual.
>> https://www.gnu.org/software/libc/manual/html_node/String-and-Array-Utilities.html
>>
>> Re this man page:
>>
>> https://man7.org/linux/man-pages/man3/string.3.html
>>
>>  Obsolete functions
>>        char *strncpy(char dest[restrict .n], const char src[restrict .n],
>>                      size_t n);
>>               Copy at most n bytes from string src to dest, returning a
>>               pointer to the start of dest.
> 
> Uh, I forgot about that page.  I'll have a look at it and update it.  At
> least, I need to remove that "Obsolete functions".
> 
>>
>>
>> It could clarify
>> "Copy at most n bytes from string src to ARRAY dest, returning a
>> pointer to the start of ARRAY dest."
> 
> I think I prefer DJ's suggestion:
> 
> "Fill a fixed‐width null‐padded buffer with bytes from a string."

Better to make it clear it's null-padded after?

"Fill a fixed‐width buffer with bytes from a string and pad with null bytes."

I'll leave it with you.

Kind regards
Jonny
