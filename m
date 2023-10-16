Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6AA6E7CA952
	for <lists+linux-man@lfdr.de>; Mon, 16 Oct 2023 15:28:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231508AbjJPN2o (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 16 Oct 2023 09:28:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229459AbjJPN2n (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 16 Oct 2023 09:28:43 -0400
Received: from bird.elm.relay.mailchannels.net (bird.elm.relay.mailchannels.net [23.83.212.17])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1164DE3
        for <linux-man@vger.kernel.org>; Mon, 16 Oct 2023 06:28:41 -0700 (PDT)
X-Sender-Id: dreamhost|x-authsender|siddhesh@gotplt.org
Received: from relay.mailchannels.net (localhost [127.0.0.1])
        by relay.mailchannels.net (Postfix) with ESMTP id 43600541A86;
        Mon, 16 Oct 2023 13:28:41 +0000 (UTC)
Received: from pdx1-sub0-mail-a202.dreamhost.com (unknown [127.0.0.6])
        (Authenticated sender: dreamhost)
        by relay.mailchannels.net (Postfix) with ESMTPA id BE7595412FE;
        Mon, 16 Oct 2023 13:28:40 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1697462920; a=rsa-sha256;
        cv=none;
        b=YNAabEJCDCtjKyEENF2UdpwPmiB4ik6oVkrbvScni/809U+H0W4ffKKLF19qZd3inSQDGY
        iZGvOM5A3trQWg+9rRuXapoziEExRpfZuj61GcBMqX+HNWuY6V0eDTW+gGNtmC8z7sa8/j
        aBOUCoF9XSfTtKBtGzTrUW9aplqBr9ghXIesU2BlSozz24k7obenL+XqkFci8a4HMKecxG
        KC8m1cl4wlnRlienzBQfKzqksJtudAuMpQSuLlamb+lBW8yhHO9e65BAnFPnqlIYNtMLrK
        ExKZvhf+d1WTHzX/B1lnGmzBcSwE2VBCVF6p0kbvs8J5Y1r2lap/XGDvSM8kkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
        s=arc-2022; t=1697462920;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references:dkim-signature;
        bh=O8HS5sCgwv2LPx7Xj9H+YDgKNaFKBk/zBt7qiwyymeA=;
        b=j/KZEhpa/0WOTBGDlpl5ALraAt5rL2hoHED4b0KJJvoDU0oFJhDwTlUAUu78XECBcSTpp8
        q/otJIphHeu4O66bBOLQUnpnu0/bTdOekQWY+syZ8T1b/8ITTyogXOrdYaCUhYGVFCvS3y
        pK1COB5pWjoyDmc1zkRqEL2e+xZAJxoj81Bf7i2x7wPM3+l9Cnj0KhX37e9vCG5nnFQygM
        tXFQwHVHM1brIk+0p3y9QteW/QcdV/SFdhRv7mSldUKnyDmaP5bRxxIeSS6jet1xu+YitL
        Esfcqm19v2+KhrLys63uIxlR8gBZsa31zv8Yt8G4uMcmJr2LNVoHx3O2/yD11A==
ARC-Authentication-Results: i=1;
        rspamd-549cb46585-srlx9;
        auth=pass smtp.auth=dreamhost smtp.mailfrom=siddhesh@gotplt.org
X-Sender-Id: dreamhost|x-authsender|siddhesh@gotplt.org
X-MC-Relay: Neutral
X-MailChannels-SenderId: dreamhost|x-authsender|siddhesh@gotplt.org
X-MailChannels-Auth-Id: dreamhost
X-Befitting-Shelf: 04114e5239fe954e_1697462921053_3460731086
X-MC-Loop-Signature: 1697462921053:20374717
X-MC-Ingress-Time: 1697462921052
Received: from pdx1-sub0-mail-a202.dreamhost.com (pop.dreamhost.com
 [64.90.62.162])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
        by 100.113.180.174 (trex/6.9.2);
        Mon, 16 Oct 2023 13:28:41 +0000
Received: from [192.168.2.12] (bras-vprn-toroon4834w-lp130-02-142-113-138-136.dsl.bell.ca [142.113.138.136])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        (Authenticated sender: siddhesh@gotplt.org)
        by pdx1-sub0-mail-a202.dreamhost.com (Postfix) with ESMTPSA id 4S8Hxh2BJSz4w;
        Mon, 16 Oct 2023 06:28:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gotplt.org;
        s=dreamhost; t=1697462920;
        bh=O8HS5sCgwv2LPx7Xj9H+YDgKNaFKBk/zBt7qiwyymeA=;
        h=Date:Subject:To:Cc:From:Content-Type:Content-Transfer-Encoding;
        b=ih6GzanGrIKWaF8fRNdGsjcplyD/WtjGgPQWM0md+pA/9CL1sQlocIq95rwcn8enF
         gpnyYzilqEoA8Y1BOFD9uk3qLeoe6567Y/5PQfI7AY0fCimZzGIdlzL6C50bZmoiDJ
         1r5sqeAx0us7qHK6ThR+EEdGnTcu2cyw40vhhH38RXOqYPLBGX2dM+V2+46TeKob29
         C0F99+ryzyHYikaKw01qxHVhgi/BcKN2+JueCFmzO3f8sAGJsMBWe+54uzmnB36q7w
         IS5uN8ugv8SDNYDdHzkCOGdg9nk1d7a8Q5tbn1Ns6gJjJTdwdDs873iptIXSuorsvj
         lk2t+O5UJZOOA==
Message-ID: <9af68795-52c0-f376-220c-d13d7adf622a@gotplt.org>
Date:   Mon, 16 Oct 2023 09:28:39 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH] ldd: Do not recommend binutils as the safer option
Content-Language: en-US
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, alx.manpages@gmail.com
References: <20231016061923.105814-1-siddhesh@gotplt.org>
 <ZS0LipiiOBsntjmb@debian>
From:   Siddhesh Poyarekar <siddhesh@gotplt.org>
In-Reply-To: <ZS0LipiiOBsntjmb@debian>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2023-10-16 06:08, Alejandro Colomar wrote:
> Hi Siddhesh,
> 
> On Mon, Oct 16, 2023 at 02:19:23AM -0400, Siddhesh Poyarekar wrote:
>> The binutils security policy[1] states that diagnostic tools should not
>> be expected to be safe without sandboxing, so it doesn't make sense to
>> recommend it as the alternative to ldd, especially since it is not a
>> drop-in replacement.  Recommend sandboxing instead, since that is in
>> fact the safest known way at the moment to deal with untrusted binaries.
>>
>> [1] https://sourceware.org/git/?p=binutils-gdb.git;a=blob;f=binutils/SECURITY.txt
>>
>> Signed-off-by: Siddhesh Poyarekar <siddhesh@gotplt.org>
>> ---
>>   man1/ldd.1 | 14 +-------------
>>   1 file changed, 1 insertion(+), 13 deletions(-)
>>
>> diff --git a/man1/ldd.1 b/man1/ldd.1
>> index cca96ec4d..f86798566 100644
>> --- a/man1/ldd.1
>> +++ b/man1/ldd.1
>> @@ -94,20 +94,8 @@ Thus, you should
>>   .I never
>>   employ
>>   .B ldd
>> -on an untrusted executable,
>> +on an untrusted executable without appropriate sandboxing,
>>   since this may result in the execution of arbitrary code.
>> -A safer alternative when dealing with untrusted executables is:
>> -.PP
>> -.in +4n
>> -.EX
>> -$ \fBobjdump \-p /path/to/program | grep NEEDED\fP
> 
> Should we maybe keep this example, and suggest using it with sandboxing?
> Or is it not useful anymore?

I don't see the point TBH.  I wouldn't mind if that example was replaced 
with lddtree as the alternative since it is functionally equivalent. 
However it would be a safer recommendation to put that too inside a 
sandbox because IMO you'd generally never want to run or even analyze 
arbitrary executables without proper sandboxing.

Thanks,
Sid
