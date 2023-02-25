Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 011C96A26C5
	for <lists+linux-man@lfdr.de>; Sat, 25 Feb 2023 03:13:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229456AbjBYCN3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Feb 2023 21:13:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229379AbjBYCN3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Feb 2023 21:13:29 -0500
X-Greylist: delayed 372 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 24 Feb 2023 18:13:26 PST
Received: from mellona.thatsmathematics.com (mellona.thatsmathematics.com [IPv6:2001:4801:7825:103:be76:4eff:fe10:2a2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 975BB1A65A
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 18:13:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=thatsmathematics.com;
        s=condor; t=1677290833;
        bh=VkDPAha+ZHZY0C97eM+mccDRadCi/SbbcDAFvqtYVyk=;
        h=Date:From:To:cc:Subject:In-Reply-To:References:From;
        b=bX2cI0DuM8irY8fPXR3GXAnMIzgB/GYS81lj0sR8NFU1rYLupw1HdUzOmzwZUXLYv
         wL0XCRQvRoEHg3deNLGJFhW7LhUI5dmdTn0THHY2DfabwNg8GDhqAP2jplxWxFzWS6
         fLB1awyHg/rjphJSrmqsYgXLgZWR4h4oSyJ/4puGBsbS3kaks5huS372Bcmt0dW8hm
         z9Z4DmS/BTgxh4HHi+kfWbQeBa1ZEp2gfk/tVOizsmtQp2SAE+CBX/i8PB+c8IYYq0
         M2X0syn26LNuyfvCMg31fl/DoB18Bzw3uzfc7bzMXDnwJ+51ComPk374Ie58RyrdrU
         rTeTwraeL6hWQ==
Received: from moneta.lan (unknown [76.131.96.107])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by mellona.thatsmathematics.com (Postfix) with ESMTPSA id AE71B1E8A3C;
        Sat, 25 Feb 2023 02:07:12 +0000 (UTC)
Date:   Fri, 24 Feb 2023 19:07:10 -0700 (MST)
From:   Nate Eldredge <nate@thatsmathematics.com>
To:     Alex Colomar <alx.manpages@gmail.com>
cc:     Fotios Valasiadis <fvalasiad@gmail.com>, linux-man@vger.kernel.org,
        mtk.manpages@gmail.com, Fotios Valasiadis <fvalasiad@csd.auth.gr>
Subject: Re: [PATCH] ptrace.2: Add details about usage of
 PTRACE_GET_SYSCALL_INFO
In-Reply-To: <e8d981d1-c03a-cfe6-f6c7-9b4d422d7d0a@gmail.com>
Message-ID: <ebca96e3-9678-b402-4dc9-71c9e74a8ba5@thatsmathematics.com>
References: <20230224163142.29934-1-fvalasiad@gmail.com> <e8d981d1-c03a-cfe6-f6c7-9b4d422d7d0a@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, 25 Feb 2023, Alex Colomar wrote:

> On 2/24/23 17:31, Fotios Valasiadis wrote:
>> From: Fotios Valasiadis <fvalasiad@csd.auth.gr>
>> 
>> Fixed incomplete doc. PTRACE_GET_SYSCALL_INFO's description wouldn't inform 
>> the user that they need to enable PTRACE_O_TRACESYSGOOD to get detailed 
>> information from said operation.
>> 
>> Came upon this bug after writing a test program using 
>> PTRACE_O_TRACESYSGOOD. After failing to find what's wrong I posted a 
>> stackoverflow question which you can find right here: 
>> https://stackoverflow.com/questions/72410182/ptrace-get-syscall-info-always-returns-info-op-as-ptrace-syscall-info-none
>> 
>> Nate Eldredge found out what's wrong by looking into the kernel's source 
>> code, here is a link to the relevant part 
>> https://github.com/torvalds/linux/blob/8291eaafed36f575f23951f3ce18407f480e9ecf/kernel/ptrace.c#L1018
>> 
>> In the code it can be seen that the union is filled if and only if the 
>> signal matches "SIGTRAP | 0x80", a signal which is only sent if the 
>> PTRACE_O_TRACESYSGOOD option is set. You can read about that in the 
>> PTRACE_O_TRACESYSGOOD section of ptrace.2 's manual.
>> 
>> I am unaware if Nate wants to be included as a co-author of this commit, 
>> nor am I aware of any way to contact him.
>
> Hello Fotios,
>
> I found his address in a kernel commit:
>
> Nate Eldredge <nate@thatsmathematics.com>
>
> I'm CCing him in case he wants to review.

Hi everyone, I think it's a good clear explanation.  Thanks for taking the 
time to write the patch!  No need to include me as coauthor.

> Thanks for the patch!
>
> Alex
>
>> 
>> Signed-off-by: Fotios Valasiadis <fvalasiad@gmail.com>
>> ---
>>   man2/ptrace.2 | 5 +++++
>>   1 file changed, 5 insertions(+)
>> 
>> diff --git a/man2/ptrace.2 b/man2/ptrace.2
>> index 55d9fd36d..b437b4f44 100644
>> --- a/man2/ptrace.2
>> +++ b/man2/ptrace.2
>> @@ -1033,6 +1033,11 @@ If the size of the data to be written by the kernel 
>> exceeds the size
>>   specified by the
>>   .I addr
>>   argument, the output data is truncated.
>> +To obtain complete information during system call entry or exit stops,
>> +you should enable the
>> +.B PTRACE_O_TRACESYSGOOD
>> +option using
>> +.B PTRACE_SETOPTIONS.
>>   .IP
>>   The
>>   .I ptrace_syscall_info
>
> -- 
> <http://www.alejandro-colomar.es/>
> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
>
>

-- 
Nate Eldredge
nate@thatsmathematics.com

