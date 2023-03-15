Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 036966BBA61
	for <lists+linux-man@lfdr.de>; Wed, 15 Mar 2023 18:01:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232408AbjCORBg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Mar 2023 13:01:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231859AbjCORBe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Mar 2023 13:01:34 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EDD06A9CA
        for <linux-man@vger.kernel.org>; Wed, 15 Mar 2023 10:01:26 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id j19-20020a05600c191300b003eb3e1eb0caso1509673wmq.1
        for <linux-man@vger.kernel.org>; Wed, 15 Mar 2023 10:01:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678899684;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=uvsEY/8YHF1/siibuFMpybWJY9JWVb4YQCQHqhN5NsM=;
        b=LJsUh1V2y55PKVs7OChCVWSB/DfdTUWR0jgOSaWlsUE5qPamAKBp/07zs40knEjMcG
         NH+CVkqGjx3cRWUOdjpBZdiHhJC9PyjtFcTTRvncxxz4fojwhbN10gc05gDc/5jjz0rP
         tplCMfC3gc+GPBvsc8DL42I/1TtCSsru75KB6TivsjPGl2kMNeuNn2x1murb3eFe1zMn
         EqmYZNogTXKmVsN22xad0SHENyFgz3W6NPDjtj3xCN9i9FO08TWfLIGNJStT1jhIr3gw
         jN8tPLCdJnoVoXlpjN/lfcNqfi92/+Owit+d/r22YifJLDm/jiumSRKbos/6Xu0aLdru
         14fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678899684;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uvsEY/8YHF1/siibuFMpybWJY9JWVb4YQCQHqhN5NsM=;
        b=Ni5MKTxMAN20dOQY5P6rsMVGAL4HEAWB2YtQdqkpvXA9B/9E5FY4ZI2DW1tP4DBbyh
         fSDaGGh1eQW0HUunU6QCUWwRZGyx4+Ed919rPdlvsthQCJWPSw0Nu3EUVPDzwI/vfhhj
         j6SRecAh7cskdeuovZY1d+8APr0fAcowtGHX1YpmO86GwGAz/2NoiBPh5NSDczs3MFmb
         Nmyf/Zqd0mxRgnkCQ9AUdpqMlvRCUEMW4/H1mbSCasJk0pYJ0v3REmr+K20IYE3C12/x
         tCLWrhtEK1OrHbBV/dPVVeUdnSKM2k2vA8/4T9kh/sVDdExatkvc720uwdVCkwqIrjxt
         EJJQ==
X-Gm-Message-State: AO0yUKVS2sBpzKSYnJVfA2lyKLo6yWfTR1FLTTpPcq32yan9iR/3nGQk
        wx003g21JRQsw2Wg01hsew98djoLS+A=
X-Google-Smtp-Source: AK7set/HI/zQQQwO6baR+AIZXLSTNUfQ4McBFya3KzffemHAByi67W7US2KxFn6KHz0ee3vP3tqgwA==
X-Received: by 2002:a05:600c:a4c:b0:3e2:589:2512 with SMTP id c12-20020a05600c0a4c00b003e205892512mr18145448wmq.21.1678899684516;
        Wed, 15 Mar 2023 10:01:24 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id t8-20020a05600c450800b003daf6e3bc2fsm6458814wmo.1.2023.03.15.10.01.23
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 10:01:23 -0700 (PDT)
Sender: Alejandro Colomar <alx.mailinglists@gmail.com>
Message-ID: <a1a5ea63-9fbe-17f6-fe69-1850552a5422@gmail.com>
Date:   Wed, 15 Mar 2023 18:01:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: Revert "Many Pages: Remove references to C89"
Content-Language: en-US
To:     linux-man@vger.kernel.org
References: <20230310015150.3545768-1-Matt.Jolly@footclan.ninja>
 <8899aff7-4193-dd54-4488-234b1a6cee83@gmail.com> <ZAq5gg+aQB5TrDQ3@dj3ntoo>
 <f5aac742-4417-fced-343d-002117d629f1@gmail.com> <ZA5/n8Ix+eCYnNgM@dj3ntoo>
 <591290fb-e78d-ad3a-8b25-4a860d26f775@gmail.com> <ZBAIkHrBm50vjSqL@dj3ntoo>
 <d3aee611-844b-fba3-5642-16b0ddc576a3@gmail.com>
 <6aad40b5-04ca-68d8-7da2-cb4a7bed7ded@Shaw.ca>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <6aad40b5-04ca-68d8-7da2-cb4a7bed7ded@Shaw.ca>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Brian,

On 3/15/23 17:51, Brian Inglis wrote:
> On 2023-03-15 06:30, Alejandro Colomar wrote:
>> On 3/14/23 06:39, Oskari Pirhonen wrote:
>>> On Mon, Mar 13, 2023 at 13:00:52 +0100, Alejandro Colomar wrote:
>>>>>> <https://port70.net/~nsz/c/c89/c89-draft.txt>
>>>>>> I suggest you download that file, and use a function like this:
>>>>>> $ stdc89() { grep "[[:alpha:]] \**\b$1([[:alnum:]*,. ]*);" /path/to/c89-draft.txt; }
>>>>>> $ stdc89 printf
>>>>>>           int printf(const char *format, ...);
>>>>>>           int printf(const char *format, ...);
> 
>>>>> I gave this a quick spin and it seems to work decently well. So thanks
>>>>> for that.
> 
>>>>> It's still not quite as nice as having C89 mentioned in
>>>>> STANDARDS, and couldn't this be leveraged to fix up the inconsistencies
>>>>> you mentioned earlier?
> 
>>> Looking at the site you linked to for the c89-draft.txt, there's also
>>> C99, C11, and C2x. With yet some more work, it'd be possible to have
>>> equivalent functions for those standards as well. They could even be
>>> combined to create an "std-diff" tool to give, eg, new "str*" functions
>>> introduced in C89 -> C99.
>>> Perhaps such a tool already exists, but I thought it worth mentioning
>>> here in case anyone reading this gets inspired to write it. I've added
>>> it to my (ever growing) TODO list, but don't know when I might get
>>> around to actually giving it a go.
> 
>> Interesting idea.  Sounds fun to do.  I'll check if we can redistribute
>> the drafts of the standard in the Linux man-pages repo.  If so, we could
>> have the standard .txt files in some directory inside the repo, and then
>> have a script that reads those files.
> 
> I have an archive of many drafts including (so far):
> 
>   1.5M Sep 10  1998 N0843-C1999-CD-1998-08.pdf
>   3.4M May  6  2005 N1124-C1999+TC2-CD-2005-05.pdf
>   3.7M Sep  8  2007 N1256-C1999+TC3-CD-2007-09.pdf
>   1.7M Apr 12  2011 N1570-C201X-CD-2011-04.pdf
>   2.3M Oct  9  2017 N2176-C2017-CD-2017-10.pdf
>   6.7M Jan 24 11:37 N3088-C2023-CD1-2023-01.pdf
> 
> which can be downloaded as:
> 
> 	https://www.open-std.org/jtc1/sc22/wg14/www/docs/n####.pdf

Do you know if we can distribute them?  which license applied to them?
I'm worried that some distros are very strict in what can be distributed
in a package (e.g., Fedora, Debian (main)).  There were issues with
man-pages-posix in the past.

Should we maybe open a separate project iso-c-drafts that installs
drafts of the ISO C standards and maybe some scripts that will be useful
with them?


> 
> Package poppler contains pdftotext which with -layout produces easily searchable 
> text files.

Nice.


Thanks,

Alex
