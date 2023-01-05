Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EE58165F57E
	for <lists+linux-man@lfdr.de>; Thu,  5 Jan 2023 22:05:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234584AbjAEVFp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 16:05:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233371AbjAEVFn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 16:05:43 -0500
X-Greylist: delayed 589 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 05 Jan 2023 13:05:42 PST
Received: from zimbra.cs.ucla.edu (zimbra.cs.ucla.edu [131.179.128.68])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3332E5DE79
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 13:05:42 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 3689916004F;
        Thu,  5 Jan 2023 12:55:53 -0800 (PST)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id uhp50-u1JiMx; Thu,  5 Jan 2023 12:55:52 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 660AE160064;
        Thu,  5 Jan 2023 12:55:52 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.9.2 zimbra.cs.ucla.edu 660AE160064
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
        s=78364E5A-2AF3-11ED-87FA-8298ECA2D365; t=1672952152;
        bh=V8w/rOojWrStgtMjX7QLfWcnqCdvWoudtXS+B+BT/fc=;
        h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type:
         Content-Transfer-Encoding;
        b=lcrIp70Ewph7MwbrY2UNHKFrD38+NJtyXNH9l32YfakYWLfdyOFEsTB+le14bvkqA
         +5w3gEGT0JacpI4fvLofEV25cLlnvVN4Yl39wYmS3kGd1EQ/DbZ+RLrRZEPALTBj0h
         49Rnz3RPihVB0dtISfCaISWgOzxTW/rbZvN7/zbM=
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id KezNScalAHsR; Thu,  5 Jan 2023 12:55:52 -0800 (PST)
Received: from [192.168.1.9] (cpe-172-91-119-151.socal.res.rr.com [172.91.119.151])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id 28CC316004F;
        Thu,  5 Jan 2023 12:55:52 -0800 (PST)
Message-ID: <18377873-00df-84fa-a9e9-5d1207e4ea52@cs.ucla.edu>
Date:   Thu, 5 Jan 2023 12:55:51 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH] bind.2, mount_setattr.2, openat2.2, perf_event_open.2,
 pidfd_send_signal.2, recvmmsg.2, seccomp_unotify.2, select_tut.2, sendmmsg.2,
 set_thread_area.2, sysctl.2, bzero.3, getaddrinfo.3, getaddrinfo_a.3,
 getutent.3, mbrtowc.3, mbsinit.3, rtime.3, rtnetlink.3, strptime.3,
 NULL.3const, size_t.3type, void.3type, aio.7, netlink.7, unix.7: Prefer
 bzero(3) over memset(3)
Content-Language: en-US
To:     Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>, libc-alpha@sourceware.org,
        Wilco Dijkstra <Wilco.Dijkstra@arm.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <20230105193751.18846-1-alx@kernel.org>
 <2e3e0b30-0fdd-cf17-fa84-a241d2169745@linaro.org>
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <2e3e0b30-0fdd-cf17-fa84-a241d2169745@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2023-01-05 12:48, Adhemerval Zanella Netto via Libc-alpha wrote:
> 
> 
> On 05/01/23 16:37, Alejandro Colomar via Libc-alpha wrote:
>> bzero(3) is simpler to use, and can avoid silly mistakes that are hard
>> to spot.  memset(3), while it is necessary in a few very-specific cases,
>> should be avoided when the memory is to be zeroed.
>>
>> POSIX and ISO can say otherwise, but it doesn't make any sense to
>> recommend using memset(3) over bzero(3).
> 
> bzero is deprecated by POSIX.1-2001, removed by POSIX.1-2008, and on glibc
> implementation now calls memset (previously some architecture added ifunc
> redirection to optimized bzero to avoid the extra function call, it was
> removed from all architectures).
> 
> Also, GCC for some time also replaces bzero with memset so there is no gain
> in actually call bzero (check glibc commit 9403b71ae97e3f1a91c796ddcbb4e6f044434734).

In addition, gcc -Wall warns if you mistakenly pass 0 as memset's 3rd 
arg, which undercuts the argument that bzero avoids silly mistakes.

