Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 027947447AE
	for <lists+linux-man@lfdr.de>; Sat,  1 Jul 2023 09:24:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229585AbjGAHYf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 1 Jul 2023 03:24:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229607AbjGAHYc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 1 Jul 2023 03:24:32 -0400
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22D62189
        for <linux-man@vger.kernel.org>; Sat,  1 Jul 2023 00:24:31 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by mail.cs.ucla.edu (Postfix) with ESMTP id 7450D3C020F7C;
        Sat,  1 Jul 2023 00:24:30 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
        by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id ocoApJmETMIH; Sat,  1 Jul 2023 00:24:30 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by mail.cs.ucla.edu (Postfix) with ESMTP id 2772C3C09FA06;
        Sat,  1 Jul 2023 00:24:30 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 2772C3C09FA06
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
        s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1688196270;
        bh=d982aaVZ4blMEiXS8r+oah/252WdKqingA39w13DBFI=;
        h=Message-ID:Date:MIME-Version:To:From;
        b=V/mfqW8sgYhynXs/DCbfen3SQhZ7KAbQmNfrzpKbaDDt1jbhnWojwb/Y0GcFb+PCn
         kEY9IcHzeYyII/UduC0+SZRN7HkVd3AEXaILZFIT5QLodb579GTjObc6axfUfOqWcX
         F8jKUUy1JN9yONR70wkOya+ri/mwHs2WemOfmSX/Kc5m6hnsayUfHF2FkV3aLpW1BY
         3IIG3yuge5GtiViiHjm7DR/r1UHy0P0PoquoWZdGedqpprQOEiZNzT1Q4cFuqR2tR1
         9iccKMwYhxaujy30L6+7e2Zc7P1W0qunJlFLliHcfYNvC8FBRHODQ02S6oCQpeox0m
         mie98Sr7yOdfw==
X-Virus-Scanned: amavisd-new at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
        by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id VvlkLvNK2-Tc; Sat,  1 Jul 2023 00:24:30 -0700 (PDT)
Received: from [192.168.1.9] (cpe-172-91-119-151.socal.res.rr.com [172.91.119.151])
        by mail.cs.ucla.edu (Postfix) with ESMTPSA id ED6B13C020F7C;
        Sat,  1 Jul 2023 00:24:29 -0700 (PDT)
Message-ID: <f3f58057-f764-b4bf-a3fe-92867cfa3131@cs.ucla.edu>
Date:   Sat, 1 Jul 2023 00:24:27 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To:     libc-coord@lists.openwall.com, Rich Felker <dalias@libc.org>
Cc:     linux-man@vger.kernel.org, musl@lists.openwall.com,
        libc-alpha@sourceware.org
References: <20230628175329.GA16113@brightrain.aerifal.cx>
 <add1e27e-e10c-e70d-ed5e-85bb0d4d4101@cs.ucla.edu>
 <20230628191525.GS20050@brightrain.aerifal.cx>
 <8e65a459-a933-38b4-5f82-f7016c107d91@cs.ucla.edu>
 <20230630233705.GW4163@brightrain.aerifal.cx>
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
Subject: Re: [libc-coord] Re: [musl] Re: regression in man pages for
 interfaces using loff_t
In-Reply-To: <20230630233705.GW4163@brightrain.aerifal.cx>
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

On 2023-06-30 16:37, Rich Felker wrote:
> glibc made it so off_t can be 32- or 64-bit depending on
> _FILE_OFFSET_BITS, and if it's 32-bit, there is no matching version of
> the libc syscall wrappers for these functions. It seems to have been a
> conscious choice not to make any.

Yes, _FILE_OFFSET_BITS=32 is obsolescent. Among other things in 
GNU/Linux it is guaranteed to stop working in the year 2038, because you 
can't have 64-bit time_t without also having 64-bit off_t. There is no 
interest in supporting _FILE_OFFSET_BITS=32 for new APIs, which these are.


> I'm talking about
> how an interface using a type that's under somebody else's
> jurisdiction

I don't understand why jurisdiction matters here. Although off_t is 
under someone else's (POSIX's) jurisdiction, that doesn't mean the Linux 
man pages can't use POSIX-specified types like off_t.


> This is still changing the documentated signature, which isn't really
> nice, and would not be compatible with glibc unless glibc went out of
> its way to hide those functions when _FILE_OFFSET_BITS is 32.

I don't see any incompatibility with glibc and the changes I proposed. 
The changes merely weaken the spec in the man pages in an area where the 
spec should be weakened. glibc is compatible with the spec before it was 
changed to use off64_t, it's compatible with the spec now that it uses 
off64_t, and it would continue to be compatible with the spec if the 
proposed changes are adopted.
