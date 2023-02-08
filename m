Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A44168F058
	for <lists+linux-man@lfdr.de>; Wed,  8 Feb 2023 15:06:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229732AbjBHOGY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Feb 2023 09:06:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57800 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230011AbjBHOGX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Feb 2023 09:06:23 -0500
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 755D7172A
        for <linux-man@vger.kernel.org>; Wed,  8 Feb 2023 06:06:22 -0800 (PST)
Received: from shw-obgw-4003a.ext.cloudfilter.net ([10.228.9.183])
        by cmsmtp with ESMTP
        id PaWVprKXzc9C4Pl5ZpaUoz; Wed, 08 Feb 2023 14:06:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675865181; bh=FdVqN1OEW6YaiVoMIFQjuWCZVcm/cXP2BK4xrN2hElg=;
        h=Date:Reply-To:Subject:To:References:Cc:From:In-Reply-To;
        b=DE4IP32NRu6nj5ycIqKnXDaH9rq8FWTcS2G89GG89E9bMcF9pv4ONQ8Z3JXaFDB6L
         K95zkJai74XFQGZu3c3ZosNccK9n985Axngi9scE8osrDlKE0xPvmDC5OOh75APZgt
         7stGRTDeII3ABheJNeSOhkQxRS/HClOmaM6Y9yW8TrDAaVSHRqoKlzzQ/bjIDORLwQ
         LiGx1ZgGMOgm600VzcANusReGuBEilHRhmrITQukFBTHbmmxNhVfW+OD5idG0yuSGm
         zptqr9oLDANlXhyeSlUpMOIfjB8lci9YpI8cpHPx8ffeypqn/KBT/VADSrspDn6jOc
         pIUd9upFVV1wA==
Received: from [10.0.0.5] ([184.64.102.149])
        by cmsmtp with ESMTP
        id Pl5YpKlN6cyvuPl5ZpkwMp; Wed, 08 Feb 2023 14:06:21 +0000
X-Authority-Analysis: v=2.4 cv=VbHkgXl9 c=1 sm=1 tr=0 ts=63e3ac5d
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=IkcTkHD0fZMA:10 a=8pif782wAAAA:8 a=HjEdur_ZAAAA:8 a=r2hQAoJQDWf6hjc69t8A:9
 a=QEXdDO2ut3YA:10 a=aD4WmjVXVPxnezg8-Tec:22
Message-ID: <6d8a77e6-013f-e96a-0b6c-39c238a91831@Shaw.ca>
Date:   Wed, 8 Feb 2023 07:06:20 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Reply-To: Brian.Inglis@Shaw.ca
Subject: Re: [PATCH 01/11] man2/shmget.2: fix limit units suffix from SI to
 IEC
Content-Language: en-CA
To:     Linux Man-Pages <linux-man@vger.kernel.org>
References: <20230207201132.49747-1-Brian.Inglis@Shaw.ca>
 <4f2f18f59261d9da0d7e1c530ad6e63b6b367a2d.1675800581.git.Brian.Inglis@Shaw.ca>
 <5683f0e0-f561-d7e8-8727-c1453178bba0@gmail.com>
 <0ff16070-522a-d943-f7b5-3696f002c520@Shaw.ca>
 <155f2766-394d-8b89-71b0-a7021701d818@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
Organization: Inglis
In-Reply-To: <155f2766-394d-8b89-71b0-a7021701d818@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfKrfsBvyhFDAfubUTxib7le03/xT9ufxDM7fo8R5pO22ILk71YbB+umy6GUdQ+jx1oMh/EoCg7Aj4cq2k7CjSRlV3kUycBx2Wa5zM4tvy2+GjrrwEGEP
 2B9Ube/q85+e7l0qnpTMDi+kM8zqe0b9hFTvpp1G2wwT1tgaOXPvzdHUPreZKwwy0hw5RqmUDrjWI6pRz2NV/wwtips4muX9OUSmim/8pRVJ5IrXYWePLRuO
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2023-02-08 03:59, Alejandro Colomar wrote:
> On 2/8/23 04:58, Brian Inglis wrote:
>> TL;DR: They are bit/byte unit prefixes kibi..., ... but abstract value suffix
>> symbols, which is how I think of them, and mainly how we use them. Perhaps we
>> should just call them all multiples or symbosl, as we only sometimes(/rarely?)
>> use them as unit prefixes (and seldom written out, only to explain the weird Xi
>> notation)? Feel free to change the titles and log messages as you see fit.
> 
> Indeed, I had doubts about using them as suffixes because that's incorrect 
> according to the SI, but it makes sense and improves documentation, so I'm
> fine with the use as suffixes now. However, I'm still concerned with calling
> them suffixes. How about multipliers? Does it make sense to you?
>> [BT;DT: Many discussions about units over the decades, including various
>> *industry* conventions about "accepted" units, values, and conversion factors,
>> invariant regardless of SI and CODATA.
>>
>> ISO/BIPM etc. uses SI to mean decimal *metric* unit prefixes (and notes that SI
>> does not support non-physical units of information) and IEC to mean binary unit
>> prefixes for bits, bytes, and also allows Hertz so far. See refs from:
>>
>> https://en.wikipedia.org/wiki/Binary_prefix#cite_note-bipm-book-91

>> https://www.bipm.org/documents/20126/41483022/SI-Brochure-9-EN.pdf#page=29

> Thanks.  It now makes sense.  Looks like the SI talks about them, but only 
> takes them as defined by IEC, and doesn't incorporate them as their own.
> So, using IEC seems correct (as SI does itself).

> BTW, this was one of the few patches that I received inline :/

>> On 2023-02-07 16:44, Alejandro Colomar wrote:
>>> The subject is not correct, IMO.  The SI also defines the Ki, Mi, ... prefixes for binary multipliers.
>>> Also, they are prefixes, not suffixes.

Thanks Alex,

I have regenerated with format-patch -v2 --inline and will later edit and resend 
as suggested and hopefully you will get what you expect to review.

-- 
Take care. Thanks, Brian Inglis			Calgary, Alberta, Canada

La perfection est atteinte			Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter	not when there is no more to add
mais lorsqu'il n'y a plus rien à retirer	but when there is no more to cut
			-- Antoine de Saint-Exupéry
