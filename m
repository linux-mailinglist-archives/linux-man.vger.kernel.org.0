Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 97E67E2E0C
	for <lists+linux-man@lfdr.de>; Thu, 24 Oct 2019 12:03:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2393147AbfJXKDZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Oct 2019 06:03:25 -0400
Received: from mail.cn.fujitsu.com ([183.91.158.132]:39078 "EHLO
        heian.cn.fujitsu.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1725874AbfJXKDZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Oct 2019 06:03:25 -0400
X-IronPort-AV: E=Sophos;i="5.68,224,1569254400"; 
   d="scan'208";a="77414985"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 24 Oct 2019 18:03:23 +0800
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (unknown [10.167.33.83])
        by cn.fujitsu.com (Postfix) with ESMTP id 06C994CE1510;
        Thu, 24 Oct 2019 17:55:30 +0800 (CST)
Received: from [10.167.220.84] (10.167.220.84) by
 G08CNEXCHPEKD02.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP Server
 id 14.3.439.0; Thu, 24 Oct 2019 18:03:24 +0800
Subject: Re: [PATCH] quotactl.2: Add some details about Q_QUOTAON
To:     Jan Kara <jack@suse.cz>
CC:     <mtk.manpages@gmail.com>, <linux-man@vger.kernel.org>
References: <1571904693-22537-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
 <20191024095558.GL31271@quack2.suse.cz>
From:   Yang Xu <xuyang2018.jy@cn.fujitsu.com>
Message-ID: <dcc9aac1-77f2-83bb-a4a1-5cc4623ecd58@cn.fujitsu.com>
Date:   Thu, 24 Oct 2019 18:03:22 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.0
MIME-Version: 1.0
In-Reply-To: <20191024095558.GL31271@quack2.suse.cz>
Content-Type: text/plain; charset="gbk"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.167.220.84]
X-yoursite-MailScanner-ID: 06C994CE1510.AE8D6
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: xuyang2018.jy@cn.fujitsu.com
X-Spam-Status: No
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



on 2019/10/24 17:55, Jan Kara wrote:
> On Thu 24-10-19 16:11:33, Yang Xu wrote:
>> For Q_QUOTAON, on old kernel we can use quotacheck -ug to
>> generate quota files. But in current kernel, we can also hide them
>> in system inodes and indicate them by using "quota" or project feature.
>>
>> For user or group quota, we can do as below(etc ext4):
>> mkfs.ext4 -F -o quota /dev/sda5
>> mount /dev/sda5 /mnt
>> quotactl(QCMD(Q_QUOTAON, USRQUOTA), /dev/sda5, QFMT_VFS_V0, NULL);
>>
>> For project quota, we can do as below(etc ext4)
>> mkfs.ext4 -F -o quota,project /dev/sda5
>> mount /dev/sda5 /mnt
>> quotactl(QCMD(Q_QUOTAON, PRJQUOTA), /dev/sda5, QFMT_VFS_V0, NULL);
>>
>> Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
> 
> ...
>>   The quota file must exist; it is normally created with the
>>   .BR quotacheck (8)
>> -program.
>> +program. It also can been stored as hidden system inode. In this case, there
>> +are no visible quota files in filesystem and no need to use
>> +.BR quotacheck (8)
>> +program. This is indicated by 'quota' and 'project' features.
>>   This operation requires privilege
>>   .RB ( CAP_SYS_ADMIN ).
>>   .TP 8
> 
> This is a good clarification. Thanks! I'd just somewhat expand this like:
> 
> Quota information can be also stored in hidden system inodes for ext4, xfs,
> and other filesystems if the filesystem is configured so. In this case,
> there are no visible quota files and there is no need to use quotacheck(8).
> Quota information is always kept consistent by the filesystem and Q_QUOTAON
> quotactl only enables enforcement of quota limits. The presence of hidden
> system inodes with quota information is indicated by DQF_SYS_FILE flag in
> Q_GETINFO output.
Good. It is very professional.
> 
>> @@ -638,7 +641,8 @@ The
>>   .I id
>>   argument is ignored.
>>   .TP
>> -.B Q_XQUOTARM
>> +.B Q_XQUOTARM (Since linux 3.16)
>> +.\" 9da93f9b7cdf8ab28da6b364cdc1fafc8670b4dc
> 
> Not sure if we need to specify commit ID here...

It is only a supplementary explanation. Other flag has similar id 
message such as Q_XGETNEXTQUOTA in quotactl.2
------
.BR Q_XGETNEXTQUOTA " (since Linux 4.6)"
.\" commit 8b37524962b9c54423374717786198f5c0820a28
------
So, I think it is no problem.
> 
> 								Honza
> 


