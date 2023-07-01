Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 12405744BB5
	for <lists+linux-man@lfdr.de>; Sun,  2 Jul 2023 01:06:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229701AbjGAXGh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 1 Jul 2023 19:06:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229477AbjGAXGh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 1 Jul 2023 19:06:37 -0400
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E6DD10DC
        for <linux-man@vger.kernel.org>; Sat,  1 Jul 2023 16:06:36 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by mail.cs.ucla.edu (Postfix) with ESMTP id 2CE363C020F7C;
        Sat,  1 Jul 2023 16:06:36 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
        by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id UFEVEFJE9Nk5; Sat,  1 Jul 2023 16:06:35 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by mail.cs.ucla.edu (Postfix) with ESMTP id CB8CD3C02213D;
        Sat,  1 Jul 2023 16:06:35 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu CB8CD3C02213D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
        s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1688252795;
        bh=ibULZz4pTrFKBqTg2yMNvGFnfxNW1ou9HfNTuSKXD2U=;
        h=Message-ID:Date:MIME-Version:To:From;
        b=OCpTsXkOmDbMGtpaB2pDFI6pw84hPc5Yn0i7s2eF8TVKQugqZXrfel7Bkp8Hz53Vo
         wIZj2QV95PoY9ZJ+Oz9Ey3HsjRk0XLuAeckhW6u1BTY17QC8bCB6MlV2ure8wkGIiP
         JjgTJsk176IUQGivlsJI8d4nbxbaWAxVbIIrFS2p+1ky6+oisqTecrpuIfY7lhObRG
         pRDf3gxuYEPTQ2AGtIy59Wsk6n5Mj3pGKtRwG2zbF/Mu3c/Beii8UKyeANx+c3YGzp
         9fNXwI36oYhASncDaHfFG1vxOJiDEkVlCJflAIAA+IknU59ykYbWM328VtP2tjXRSd
         BAfcOtCcZs+Dw==
X-Virus-Scanned: amavisd-new at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
        by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id 0CGijym30Goy; Sat,  1 Jul 2023 16:06:35 -0700 (PDT)
Received: from [192.168.1.9] (cpe-172-91-119-151.socal.res.rr.com [172.91.119.151])
        by mail.cs.ucla.edu (Postfix) with ESMTPSA id 9D88F3C020F7C;
        Sat,  1 Jul 2023 16:06:35 -0700 (PDT)
Message-ID: <8eb7980c-0d3d-4b6e-95fc-43d570d220a0@cs.ucla.edu>
Date:   Sat, 1 Jul 2023 16:06:35 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To:     Rich Felker <dalias@libc.org>
Cc:     libc-coord@lists.openwall.com, linux-man@vger.kernel.org,
        musl@lists.openwall.com, libc-alpha@sourceware.org
References: <20230628175329.GA16113@brightrain.aerifal.cx>
 <add1e27e-e10c-e70d-ed5e-85bb0d4d4101@cs.ucla.edu>
 <20230628191525.GS20050@brightrain.aerifal.cx>
 <8e65a459-a933-38b4-5f82-f7016c107d91@cs.ucla.edu>
 <20230630233705.GW4163@brightrain.aerifal.cx>
 <f3f58057-f764-b4bf-a3fe-92867cfa3131@cs.ucla.edu>
 <20230701143205.GX4163@brightrain.aerifal.cx>
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
Subject: Re: [musl] Re: [libc-coord] Re: [musl] Re: regression in man pages
 for interfaces using loff_t
In-Reply-To: <20230701143205.GX4163@brightrain.aerifal.cx>
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

On 2023-07-01 07:32, Rich Felker wrote:

> These are not "new APIs" from the standpoint of glibc, which already
> had them in 32-bit-off_t API profiles and can't be expected just to
> remove them.

That's OK, as the proposed doc change doesn't remove the new APIs.

By "new APIs" I meant off_t-oriented APIs newer than the fallout from 
the LFS mess of the 1990s; these APIs are not that new to people versed 
with the Linux kernel.


> I'm all for using off_t in new interfaces. But unless glibc folks
> agree, I am not for redefining interface types in a way that breaks
> one of their supported profile

The change I just proposed doesn't invalidate any part of the glibc 
implementation, or of musl for that matter. They're both fine as-is. 
(The previous doc change - the one that prompted your objection - did 
invalidate the musl implementation, and that is one thing the proposed 
change fixes.)

Just to be clear, the proposed change is merely trying to document the 
current situation more carefully, so that programmers who are not expert 
in this area are better aware about the unlikely gotchas. It doesn't 
attempt to change or invalidate any existing implementation.


> 1. The spec was that apps declare loff_t objects and pass pointers to
>     those to some of the interfaces. That works on all existing
>     implementations and profiles.

The fact that it worked was merely an accident, as people didn't follow 
that old spec. None of the apps I know of use loff_t for these APIs.

The spec for these APIs should never have suggested using an oddball 
type like loff_t that actual app code typically doesn't use. The spec 
should instead suggest working code, code that is what people would or 
should actually write. The proposed patch does this.


> 2. The spec was silently changed to be that apps declare off64_t
>     objects and pass those instead. This breaks on musl which
>     intentionally does not have LFS64 types/interfaces.

The proposed patch fixes this.


> 3. Under your proposal, the spec is that apps declare off_t objects
>     and pass pointers to those. This produces a pointer type mismatch,
>     and buffer overflow, if building with glibc and (still default)
>     _FILE_OFFSET_BITS=32.

There's a loud compile-time error if you make such a mistake. It's the 
came sort of compile-time error you get if you misuse any glibc API by 
passing a wrong pointer type. If these compile-time errors are good 
enough for the rest of the glibc API, they're good enough here.


> Of course glibc could try to remedy this by somehow masking these
> functions when _FILE_OFFSET_BITS=32 so they can't get used.

I don't see why that is necessary, or even a good idea. Many (in my 
experience most) calls to these functions will work fine even with 
_FILE_OFFSET_BITS=32, because they're passing a null pointer. I don't 
see why we'd want to prohibit this.
