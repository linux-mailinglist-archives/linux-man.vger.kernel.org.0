Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 45143744BAD
	for <lists+linux-man@lfdr.de>; Sun,  2 Jul 2023 01:03:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229743AbjGAXC5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 1 Jul 2023 19:02:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229803AbjGAXCy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 1 Jul 2023 19:02:54 -0400
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0867F19BA
        for <linux-man@vger.kernel.org>; Sat,  1 Jul 2023 16:02:50 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by mail.cs.ucla.edu (Postfix) with ESMTP id 84DF53C020F7C;
        Sat,  1 Jul 2023 16:02:50 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
        by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id XWSHxUdqbynW; Sat,  1 Jul 2023 16:02:50 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by mail.cs.ucla.edu (Postfix) with ESMTP id 3B2D13C02213D;
        Sat,  1 Jul 2023 16:02:50 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 3B2D13C02213D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
        s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1688252570;
        bh=gNgJUjk+lxbUNoQmgNdwo8nuZs4gFTCjKlXTFnyIsRg=;
        h=Message-ID:Date:MIME-Version:To:From;
        b=i2hRUX2J1pQRlHr0XUJbVcu/QPggVSelIwRgyb05ZvVT/Ty3eNKT7LNcEq4V8s/7h
         7eBXIzAbGOl1UVrNkNZURAcIMrqXJ3guaqJlecM8xh92G2omRNmc0t+oMwz0B8knUb
         OSQQMxq/ncs0UC+G5qSLfdjFGVYnYqc/r9LTsSzGuP7kCIf0qO1bcS1p24gCH/iVVp
         DtgA1EMqvwYvQmT0gvpLqU+m69htUV8/Mr+NrcBpYR/zkYY8YILH+lQPggTbN4sOtX
         ge8FBKtrOY1+QsG6j6al1e2mQbH2PFZYSkMmeY6eLMwEIY0vSwCfSEZqGlorM7IH1a
         JnnX1jRunasYA==
X-Virus-Scanned: amavisd-new at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
        by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id WAc3HBRxQv8u; Sat,  1 Jul 2023 16:02:50 -0700 (PDT)
Received: from [192.168.1.9] (cpe-172-91-119-151.socal.res.rr.com [172.91.119.151])
        by mail.cs.ucla.edu (Postfix) with ESMTPSA id 0DE2B3C020F7C;
        Sat,  1 Jul 2023 16:02:50 -0700 (PDT)
Message-ID: <574389bd-7481-7192-d1ba-f4e62e34c358@cs.ucla.edu>
Date:   Sat, 1 Jul 2023 16:02:49 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To:     libc-coord@lists.openwall.com, Rich Felker <dalias@libc.org>,
        linux-man@vger.kernel.org, musl@lists.openwall.com,
        libc-alpha@sourceware.org
References: <20230628175329.GA16113@brightrain.aerifal.cx>
 <add1e27e-e10c-e70d-ed5e-85bb0d4d4101@cs.ucla.edu>
 <20230628191525.GS20050@brightrain.aerifal.cx>
 <8e65a459-a933-38b4-5f82-f7016c107d91@cs.ucla.edu>
 <20230630233705.GW4163@brightrain.aerifal.cx>
 <f3f58057-f764-b4bf-a3fe-92867cfa3131@cs.ucla.edu>
 <20230701133652.GF3630668@port70.net>
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
Subject: Re: [libc-coord] Re: [musl] Re: regression in man pages for
 interfaces using loff_t
In-Reply-To: <20230701133652.GF3630668@port70.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2023-07-01 06:36, Szabolcs Nagy wrote:

> loff_t * can be incompatible with off64_t * as well as off_t *.

loff_t * cannot be incompatible with the off64_t in the current 
implementation. The same goes for off_t, if you compile with 
_FILE_OFFSET_BITS set to 64.

As you suggest, a future implementation might change this. But if 
anything this strengthens the case for the documentation avoiding these 
pseudo-off_t types, as they're less stable.


> the documentation change can break the api of an implementation,
> it is not weakening the spec.

Are you talking about the doc change from loff_t to off64_t? If so, I 
agree that change invalidated the musl implementation. When I wrote "I 
don't see any incompatibility with glibc and the changes I proposed" I 
was talking about the patch proposed here:

https://lore.kernel.org/linux-man/31b53a8d-7cf4-b3a3-371f-a5723963383e@cs.ucla.edu/2-0001-off64_t-prefer-off_t-for-splice-etc.patch

As far as I can see, this proposed patch doesn't invalidate any 
implementation. If it does invalidate one could you please give an 
example call that follows the rules of the proposed patch but does not 
work on glibc or on musl?
