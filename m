Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E290638AD9B
	for <lists+linux-man@lfdr.de>; Thu, 20 May 2021 14:07:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241948AbhETMIl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 May 2021 08:08:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241650AbhETMIc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 May 2021 08:08:32 -0400
X-Greylist: delayed 552 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 20 May 2021 03:40:00 PDT
Received: from shout02.mail.de (shout02.mail.de [IPv6:2001:868:100:600::217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07D61C0A887F
        for <linux-man@vger.kernel.org>; Thu, 20 May 2021 03:39:59 -0700 (PDT)
Received: from postfix01.mail.de (postfix02.bt.mail.de [10.0.121.126])
        by shout02.mail.de (Postfix) with ESMTP id 0F30EC00CA
        for <linux-man@vger.kernel.org>; Thu, 20 May 2021 12:30:46 +0200 (CEST)
Received: from smtp04.mail.de (smtp04.bt.mail.de [10.0.121.214])
        by postfix01.mail.de (Postfix) with ESMTP id EABE1A0097
        for <linux-man@vger.kernel.org>; Thu, 20 May 2021 12:30:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.de;
        s=mailde202009; t=1621506646;
        bh=++4PkQQwccioAqS2bmw+TXki6qgeotHQ4FF5JInFGLw=;
        h=To:From:Subject:Date:From;
        b=lgCeJxXES8Xs7VkFNzXqMAXC+clg3BaazJtnhfgJ+BbR+kUy7SDSdmdrVn+f/uKpO
         VabyLtSDsm1Mc0HZVfNdrg52jGLhLp1O6MiCAx+tqNf4zuapDlUzcN2F2WMcEWXzUF
         BF1OibJH5O11E1mFeRznEwMfycAnPCVfk+vSG1SYP/AMC+yg+VY5UCCJ4SQF8HJcGf
         gpQgy+wIT70vMtPBybwBbdFX7a+sXDI5egJF6FRE5rThfCYOILXk23GJA2THVJcNKd
         9x9MevNWR+Lx583pSDUbgYe52NzJiYy46QQzoFLoZdkW+KRQg22IIVY8gxqpgLOf5M
         i8Am8uX2uGAdg==
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by smtp04.mail.de (Postfix) with ESMTPSA id AD66BC0063
        for <linux-man@vger.kernel.org>; Thu, 20 May 2021 12:30:45 +0200 (CEST)
To:     linux-man <linux-man@vger.kernel.org>
From:   Tycho Kirchner <tychokirchner@mail.de>
Subject: ioprio_get(2) outdated
Message-ID: <f959ce98-f47b-bbb0-8159-b84a84bdf3eb@mail.de>
Date:   Thu, 20 May 2021 12:30:45 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-purgate: clean
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate: clean
X-purgate-size: 671
X-purgate-ID: 154282::1621506645-00006678-1E5134A6/0/0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,
please update ioprio_get(2) to the today more common Multi-Queue Block 
IO Queueing Mechanism (blk-mq). In particular:

> These system calls have an effect only when used in conjunction
> with an I/O scheduler that supports I/O priorities.  As at kernel
> 2.6.17 the only such scheduler is the Completely Fair Queuing
> (CFQ) I/O scheduler.

As far as I know BFQ is the only mq-iosched which supports (read-) 
priorities. See also [1]. The kernel Documentation/block/ioprio.txt is 
outdated as well, I guess I'll send an email there too.

Thanks and kind regards
Tycho Kirchner



[1]: https://www.kernel.org/doc/html/latest/block/bfq-iosched.html
