Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D285868FA45
	for <lists+linux-man@lfdr.de>; Wed,  8 Feb 2023 23:33:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230259AbjBHWdu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Feb 2023 17:33:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230289AbjBHWdt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Feb 2023 17:33:49 -0500
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 763441729
        for <linux-man@vger.kernel.org>; Wed,  8 Feb 2023 14:33:47 -0800 (PST)
Received: from shw-obgw-4002a.ext.cloudfilter.net ([10.228.9.250])
        by cmsmtp with ESMTP
        id PnpwpsMYoc9C4Pt0cpcsVv; Wed, 08 Feb 2023 22:33:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675895626; bh=vy5W6XXNeKOHj3G2bGAAwpr5YVEeTOfYadXr0x3asJM=;
        h=Date:Reply-To:Subject:To:Cc:References:From:In-Reply-To;
        b=T3dH958Q5c6p7Kifcur98sahbb/KFHl909NQiFGNsZzXpmCQhzUbey+9gTK/ogNrz
         EzJm7OdFPtKFXlqoGFsjoQGY2bCPtfzmz3THbEUyM2ggt92QZgEdH7wqFIp0Sj90b4
         2kriSlv3f2t/C6SVpusHANSdlLH6jxapb0hnm8cqW4sdIaAROR8/WJX3BpzlqdBlfD
         tRx14nZ8KqNaVp9PQnGCf0ED+Oh3CRBHyOD0gxaqjsph6VpD8Ty0Qss6kX54uvmI4E
         2ngpHbpeF1RInz2TleLk8HujDQFsQEfhZk0+gD6/5AEfHNMnDLTv4I81SeNKWTxFF2
         23h1sB4BBSLFA==
Received: from [10.0.0.5] ([184.64.102.149])
        by cmsmtp with ESMTP
        id Pt0bpEr9XyAOePt0bpKJP9; Wed, 08 Feb 2023 22:33:46 +0000
X-Authority-Analysis: v=2.4 cv=e5oV9Il/ c=1 sm=1 tr=0 ts=63e4234a
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=IkcTkHD0fZMA:10 a=E6R8t--6F-UgR3yW7QkA:9 a=QEXdDO2ut3YA:10
Message-ID: <716eb1e9-8e51-b25f-2476-6e3d635d2538@Shaw.ca>
Date:   Wed, 8 Feb 2023 15:33:45 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Reply-To: Brian.Inglis@Shaw.ca
Subject: Re: [PATCH v2 10/11] man2/futex.2: change limit to use ISO multiple
 symbol
Content-Language: en-CA
To:     Linux Man-Pages <linux-man@vger.kernel.org>
Cc:     Jakub Wilk <jwilk@jwilk.net>, Tom Schwindl <schwindl@posteo.de>,
        Alejandro Colomar <alx.manpages@gmail.com>
References: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
 <dbcc41d977d4eeac999a0381ff9a411453b838fe.1675830945.git.Brian.Inglis@Shaw.ca>
 <b10498de-f55e-e39f-a051-3bbab2682ea5@gmail.com>
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
Organization: Inglis
In-Reply-To: <b10498de-f55e-e39f-a051-3bbab2682ea5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfB9BipOiaVnf9rPdO5zwT5I+Rno4LK/FvY0TukoDl890AQ2njDHNdc1WPqvFS+vIViWC6LHxoeeCmr8rkcgkTYvk7YHlANu3No2d5bHKcRNQhSbOKEVk
 Yfc+hb+u7pDDEZ9g9xZUfxIrsPQYAz2n4kOvR/MyJVQ1I7cHgGljYz7HUzqX9VQn65kVj6h3DeN224eWDWsoPBaQIgDx6bMVqNM23dFSwOtXB+9/Xn6qGxB1
 aUKgSzCYBZJB6WrwzQiKEYeEXWArMicrxnSyEknV6q4g0EsKXrljHpf0eAyQRLeA
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2023-02-08 14:12, Alejandro Colomar wrote:
> Hi Brian,
> 
> On 2/8/23 21:27, Brian Inglis wrote:
>> ---
>>   man2/futex.2 | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>>
>> v2-0010-man2-futex.2-change-limit-to-use-ISO-suffix.patch
>>
>> diff --git a/man2/futex.2 b/man2/futex.2
>> index b815056d231c..b9331ead985f 100644
>> --- a/man2/futex.2
>> +++ b/man2/futex.2
>> @@ -1536,7 +1536,7 @@ argument was invalid
>>   .RI ( tv_sec
>>   was less than zero, or
>>   .I tv_nsec
>> -was not less than 1,000,000,000).
>> +was not less than 1G).
> 
> For nanoseconds, I think 1G is a bit weird.  Since you cant say 1 Gns, I'd rather keep the value.  Anyway, 1_000_000_000 or 1'000'000'000, or whatever separator we use) is something quite readable  in the context of nanoseconds.

SI actually allows Gns (/nGs?) and they cancel to s, but either looks weird 
here, so okay if you don't like the G in text and want to keep the long form.
[I was used to the UK(/EU?) (electronics?) convention of using the SI prefix 
instead of a decimal point e.g. 3k6s 31M536s etc. so not much looks off to me.]

-- 
Take care. Thanks, Brian Inglis			Calgary, Alberta, Canada

La perfection est atteinte			Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter	not when there is no more to add
mais lorsqu'il n'y a plus rien à retirer	but when there is no more to cut
			-- Antoine de Saint-Exupéry
