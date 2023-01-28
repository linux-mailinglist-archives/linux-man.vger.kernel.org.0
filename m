Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6CC1467FAF3
	for <lists+linux-man@lfdr.de>; Sat, 28 Jan 2023 21:41:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230482AbjA1Ulu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 28 Jan 2023 15:41:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230087AbjA1Ult (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 28 Jan 2023 15:41:49 -0500
X-Greylist: delayed 90 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 28 Jan 2023 12:41:45 PST
Received: from omta002.cacentral1.a.cloudfilter.net (omta002.cacentral1.a.cloudfilter.net [3.97.99.33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC82B16AE6
        for <linux-man@vger.kernel.org>; Sat, 28 Jan 2023 12:41:45 -0800 (PST)
Received: from shw-obgw-4002a.ext.cloudfilter.net ([10.228.9.250])
        by cmsmtp with ESMTP
        id LcXUpcl1dl2xSLrzip1cbz; Sat, 28 Jan 2023 20:40:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1674938414; bh=piBaLV+CYLoCE/OwsBRVXiMcCU/5swLzULQ7km4BBuQ=;
        h=Date:Reply-To:To:Cc:From:Subject;
        b=aIfdQYJJFHGA0GNALJ3M3yzsuB5jeZzWXE8vsJf8waVlutdkBT7cX6FZbgV802oiV
         +CT5PLPcWz0N3fiKJo9kp5lz+ND9IiS607r4jFdV4heBFhKTPjBoyPUBDgfILQC+NH
         8UcoxFt42n2K3/1iZUMq9K6267aGZmEPeRbu9DAYZq2a21FDlkUZN5wkzfdQocHMIp
         0TZJkDWCTVe0vBx0KOybQ8H+kU3h0QiLG95fC6CfAMjkUULUTDfzGXBBPd8BP+j87d
         DfuEo+G0DNxwGDktMCYSTr9CkPgIsTwfzDwNxMLnOQObVb6PorQe8GZOGuZtqghUQ/
         jz+7BT2NrLdUQ==
Received: from [10.0.0.5] ([184.64.124.72])
        by cmsmtp with ESMTP
        id LrzhpvxvlyAOeLrzipuxIK; Sat, 28 Jan 2023 20:40:14 +0000
X-Authority-Analysis: v=2.4 cv=e5oV9Il/ c=1 sm=1 tr=0 ts=63d5882e
 a=oHm12aVswOWz6TMtn9zYKg==:117 a=oHm12aVswOWz6TMtn9zYKg==:17
 a=IkcTkHD0fZMA:10 a=aVn4rjLt-QJO4qNxf38A:9 a=QEXdDO2ut3YA:10
Message-ID: <19a71139-7807-2692-3eec-16a0f754911d@Shaw.ca>
Date:   Sat, 28 Jan 2023 13:40:10 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Reply-To: Linux Man-Pages <linux-man@vger.kernel.org>
Content-Language: en-CA
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Linux Man-Pages <linux-man@vger.kernel.org>
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
Subject: Using C23 digit separators not locale digit grouping characters
Organization: Inglis
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfOOgaWKtHOZEbQ99rzCsOcJF6DjsDVfSuL2vkH3JcQUuSFVmdtDLguZICCt4li8ScZ5AU7Mg1GRemI4HY2+Hpg76FiHW8GIsn7HBfVTmOmtbh7gBjIs4
 MCe4nMMTYPP+P0IaiODMphGcH2I+2AcehREyK66wecwhZQb8YkY90bpRi5UAriWK3YvPq3lagidbhHPV+AQQBH4wS3fdx6Sspp7RpV55LzD+kRfEdCDkAFyY
 ZkxfBw5CRKFVZlrpPMdwWavhr98NDwW7bZRSWot19uM=
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_20,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi folks,

Seeing the recent tv_nsec patches drop the standard locale digit grouping 
characters "," from the member range [0-999,999,999] made me regret the loss of 
the punctuation which provides better and quicker comprehension of long strings 
of digits.

It may be time to consider using the locale independent C23 digit separator 
characters "'" wherever more than a handful of digits occur, possibly convert 
grouping character uses in existing man pages as they are changed, and specify a 
future standard policy approach to provide better and quicker comprehension of 
long strings of digits: perhaps using a new digit separator register and glyph 
escape sequence \*ds \*[ds] \[ds] \(ds if not in use by base groff?

As well as the recently modified pages:

clock_getres.2
timer_settime.2
timerfd_create.2
utimensat.2

there appear to be obvious occurrences in only the following pages:

futex.2
read.2
sendfile.2
write.2
mallopt.3
keyrings.7
mq_overview.7
sched.7
time_namespaces.7

but there appear to be about 400 pages with more than 6 decimal digit strings 
(some spurious glibc hex commits and address outputs) where it could perhaps 
help, such as in POSIX version dates e.g. 2001'12L, and undoubtedly more with 
long digit strings in other radixes.

-- 
Take care. Thanks, Brian Inglis			Calgary, Alberta, Canada

La perfection est atteinte			Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter	not when there is no more to add
mais lorsqu'il n'y a plus rien à retirer	but when there is no more to cut
			-- Antoine de Saint-Exupéry
