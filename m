Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C02A868E745
	for <lists+linux-man@lfdr.de>; Wed,  8 Feb 2023 05:54:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229739AbjBHEyn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Feb 2023 23:54:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229487AbjBHEym (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Feb 2023 23:54:42 -0500
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C15A2659C
        for <linux-man@vger.kernel.org>; Tue,  7 Feb 2023 20:54:41 -0800 (PST)
Received: from shw-obgw-4001a.ext.cloudfilter.net ([10.228.9.142])
        by cmsmtp with ESMTP
        id PTlHpqc9ec9C4PcTgpZz3W; Wed, 08 Feb 2023 04:54:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675832080; bh=Nm+8PvG2zuacq4cdeiWL+jv2tGhf2uD8Zs/NhmHfFfY=;
        h=Date:Reply-To:Subject:To:References:Cc:From:In-Reply-To;
        b=lMnxr2KKyEl8a216Z8Bblt0xWb/PwayNGWJ9YUMA2FdiWj3V9D7H0RbdZoxzdT9a5
         19EkwLkzSg1855USlbbA6PD1LDIfWHxJK/D8HO/O5IWDIWnXg40j48D7UHGshZEJGk
         RGBekRegxq1V27iCXRunJjkdlplHf0cBr1qTFVAy8sr9UhOOg6t1rF4YiEsZJC04O2
         QjGpJ0M4U0AtFC3U4NaWZR2vWzDwWw0dM+tg013TthqyWL2bIig6U63jNkE0FdpRsO
         2ilPog8maBw6slwSz4amQ4xY5Yz93whmq7yY0UVrTsuyEZp6U9oHfr4CJMb0K04MQp
         UdQz/W8Ufx+QA==
Received: from [10.0.0.5] ([184.64.102.149])
        by cmsmtp with ESMTP
        id PcTfpiJDxHFsOPcTfp8u2m; Wed, 08 Feb 2023 04:54:40 +0000
X-Authority-Analysis: v=2.4 cv=XZqaca15 c=1 sm=1 tr=0 ts=63e32b10
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=IkcTkHD0fZMA:10 a=xpESjN4P3-oQwm21j3sA:9 a=QEXdDO2ut3YA:10
Message-ID: <0a15e67d-536b-fc1d-54a9-ac942b8e8564@Shaw.ca>
Date:   Tue, 7 Feb 2023 21:54:39 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Reply-To: Brian.Inglis@Shaw.ca
Subject: Re: [PATCH 00/11] man2/: punctuate long numeric strings with digit
 separators
Content-Language: en-CA
To:     Linux Man-Pages <linux-man@vger.kernel.org>
References: <20230207203300.49894-1-Brian.Inglis@Shaw.ca>
 <fc3c60b1-ca32-7eb1-60e1-99308bce51cd@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
Organization: Inglis
In-Reply-To: <fc3c60b1-ca32-7eb1-60e1-99308bce51cd@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfCh1xhKEZAxRRHam+hqTiHPpxecD3La3Bhh31Lht1wfCLuY+tfahLZL256hQb28Q+vi0rvr4OAd8i+RS+qlRxFGDdT6zbz16YUh2SX8niLAd4NUsMFmN
 UaGgIEGR7T/f9WQoQuYfmhS+BUWITzdOdIkFP/SOjVyZRkzSXlP1o7q1hXc2uPYyxogJFsOv4hLWkYKKTtlFBXXru0rLBczk20IkbI0sTstGT6RiJBZooPeV
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

The problem was /etc/gitconfig [format] attach which is not invertible or 
overridable, expect perhaps with command line --inline: probably requested by 
some other project.

All patches 1-11 have identical content; MIME content-disposition is the issue; 
as is setting parameters to allow a single successful series of sends via my ISP 
milter provider that considers patch series as just more email spam.

I will retry format-patch with -v2 --inline and send-email with longer delays.

-- 
Take care. Thanks, Brian Inglis			Calgary, Alberta, Canada

La perfection est atteinte			Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter	not when there is no more to add
mais lorsqu'il n'y a plus rien à retirer	but when there is no more to cut
			-- Antoine de Saint-Exupéry


On 2023-02-07 16:49, Alejandro Colomar wrote:
> Hi Brian,
> 
> On 2/7/23 21:32, Brian Inglis wrote:
>> man2/: use C digit separators with \\[aq] to show "'" or ISO/IEC
>> suffixes to clarify long binary, octal, hex, decimal numeric strings;
>> use consistent interval notation for value ranges;
>> fix minor discrepancies.
>>
>> [PATCH 01/11] man2/shmget.2: fix limit units suffix from SI to IEC
>> [PATCH 02/11] man2/spu_run.2: fix example comment status code or-ed
>> [PATCH 03/11] man2/: use consistent interval notation for value
>> [PATCH 04/11] man2/open.2: punctuate octal perms with digit
>> [PATCH 05/11] man2/reboot.2: show BCD dates in hex not decimal
>> [PATCH 06/11] man2/reboot.2: punctuate hex in docs with digit
>> [PATCH 07/11] man2/statfs.2: punctuate hex in docs with digit
>> [PATCH 08/11] man2/adjtimex.2: use ISO/IEC suffixes and digit
>> [PATCH 09/11] man2/getrandom.2: change limit to use IEC suffix
>> [PATCH 10/11] man2/futex.2: change limit to use ISO suffix
>> [PATCH 11/11] man2/: punctuate long numeric strings with digit
> 
> I received patches [1, 4] in inline format, and then received again the entire patch set as emails with attachments.  I'm a bit confused about which are the correct ones.  Are they the same?  Please resend all inline if possible, and put a patch version number (v3 already?).
> 
> Cheers,
> 
> Alex
>>
>> Brian Inglis (11):
>>    man2/shmget.2: fix limit units suffix from SI to IEC
>>    man2/spu_run.2: fix example comment status code or-ed value
>>    man2/: use consistent interval notation for value ranges
>>    man2/open.2: punctuate octal perms with digit separators
>>    man2/reboot.2: show BCD dates in hex not decimal
>>    man2/reboot.2: punctuate hex in docs with digit separators
>>    man2/statfs.2: punctuate hex in docs with digit separators
>>    man2/adjtimex.2: use ISO/IEC suffixes and digit separators in ranges
>>      and example docs
>>    man2/getrandom.2: change limit to use IEC suffix
>>    man2/futex.2: change limit to use ISO suffix
>>    man2/: punctuate long numeric strings with digit separators
>>
>>   man2/add_key.2         |   2 +-
>>   man2/adjtimex.2        |  12 ++---
>>   man2/clock_getres.2    |   2 +-
>>   man2/clock_nanosleep.2 |   2 +-
>>   man2/eventfd.2         |   6 +--
>>   man2/execve.2          |   2 +-
>>   man2/fcntl.2           |   4 +-
>>   man2/futex.2           |   2 +-
>>   man2/getitimer.2       |   4 +-
>>   man2/getrandom.2       |   2 +-
>>   man2/gettimeofday.2    |   2 +-
>>   man2/ioctl.2           |   4 +-
>>   man2/ioctl_console.2   |   2 +-
>>   man2/ioctl_getfsmap.2  |   4 +-
>>   man2/ioperm.2          |   2 +-
>>   man2/kexec_load.2      |   2 +-
>>   man2/link.2            |   4 +-
>>   man2/msgget.2          |   2 +-
>>   man2/nanosleep.2       |   4 +-
>>   man2/open.2            |  32 ++++++------
>>   man2/pciconfig_read.2  |   2 +-
>>   man2/perf_event_open.2 |   2 +-
>>   man2/personality.2     |   8 +--
>>   man2/prctl.2           |   2 +-
>>   man2/read.2            |   2 +-
>>   man2/reboot.2          |  24 ++++-----
>>   man2/semget.2          |   4 +-
>>   man2/sendfile.2        |   2 +-
>>   man2/shmget.2          |   2 +-
>>   man2/sigaction.2       |   4 +-
>>   man2/spu_run.2         |   8 +--
>>   man2/statfs.2          | 110 ++++++++++++++++++++---------------------
>>   man2/statx.2           |   2 +-
>>   man2/syscall.2         |   2 +-
>>   man2/timer_settime.2   |   4 +-
>>   man2/timerfd_create.2  |   2 +-
>>   man2/truncate.2        |   4 +-
>>   man2/utimensat.2       |   6 +--
>>   man2/write.2           |   2 +-
>>   39 files changed, 144 insertions(+), 144 deletions(-)
