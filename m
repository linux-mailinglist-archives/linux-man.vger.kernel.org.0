Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D053E262E3F
	for <lists+linux-man@lfdr.de>; Wed,  9 Sep 2020 13:58:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729663AbgIIL56 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Sep 2020 07:57:58 -0400
Received: from mail.cn.fujitsu.com ([183.91.158.132]:24282 "EHLO
        heian.cn.fujitsu.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1726440AbgIILz3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Sep 2020 07:55:29 -0400
X-IronPort-AV: E=Sophos;i="5.76,409,1592841600"; 
   d="scan'208";a="99056338"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 09 Sep 2020 19:14:17 +0800
Received: from G08CNEXMBPEKD04.g08.fujitsu.local (unknown [10.167.33.201])
        by cn.fujitsu.com (Postfix) with ESMTP id 4C2A748990E8;
        Wed,  9 Sep 2020 19:14:14 +0800 (CST)
Received: from [10.167.220.84] (10.167.220.84) by
 G08CNEXMBPEKD04.g08.fujitsu.local (10.167.33.201) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Wed, 9 Sep 2020 19:14:12 +0800
Subject: Re: [PATCH] msgop.2: Add restriction on ENOSYS error
To:     <mtk.manpages@gmail.com>
CC:     linux-man <linux-man@vger.kernel.org>
References: <1599623862-6490-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
 <CAKgNAkg6pV-qP0ZJWjzfP8XaaWJkOtqt=n2TrBBiUxKrBodTHg@mail.gmail.com>
From:   Yang Xu <xuyang2018.jy@cn.fujitsu.com>
Message-ID: <a66856cb-c055-a14f-71a0-d2fe29fe4ca7@cn.fujitsu.com>
Date:   Wed, 9 Sep 2020 19:14:12 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkg6pV-qP0ZJWjzfP8XaaWJkOtqt=n2TrBBiUxKrBodTHg@mail.gmail.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.167.220.84]
X-ClientProxiedBy: G08CNEXCHPEKD06.g08.fujitsu.local (10.167.33.205) To
 G08CNEXMBPEKD04.g08.fujitsu.local (10.167.33.201)
X-yoursite-MailScanner-ID: 4C2A748990E8.AAB7F
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: xuyang2018.jy@cn.fujitsu.com
X-Spam-Status: No
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael

> Hello Yang Xu,
> 
> On Wed, 9 Sep 2020 at 05:57, Yang Xu <xuyang2018.jy@cn.fujitsu.com> wrote:
>>
>> When calling msgrcv with MSG_COPY flag on 3.8 or new kernel, it will
>> report EINVAL error even we have disabled CONFIG_CHECKPOINT_RESTORE.
>> It also needs to specify IPC_NOWAIT flag.
>>
>> Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
>> ---
>>   man2/msgop.2 | 4 +++-
>>   1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/man2/msgop.2 b/man2/msgop.2
>> index 373e53aa7..e559097a7 100644
>> --- a/man2/msgop.2
>> +++ b/man2/msgop.2
>> @@ -467,7 +467,9 @@ and the queue contains less than
>>   messages.
>>   .TP
>>   .BR ENOSYS " (since Linux 3.8)"
>> -.I MSG_COPY
>> +.B IPC_NOWAIT
>> +and
>> +.B MSG_COPY
>>   was specified in
>>   .IR msgflg ,
>>   and this kernel was configured without
>> --
>> 2.23.0
> 
> My apologies, I have a little bit of trouble to understand your commit
> message, but the patch does seem to be wrong, at least as I understand
> the code:
> 
> [[
> #ifdef CONFIG_CHECKPOINT_RESTORE
> ...
> #else
> static inline struct msg_msg *prepare_copy(void __user *buf, size_t bufsz)
> {
>          return ERR_PTR(-ENOSYS);
> }
> 
> ...
> static long do_msgrcv(int msqid, void __user *buf, size_t bufsz, long
> msgtyp, int msgflg,
>                 long (*msg_handler)(void __user *, struct msg_msg *, size_t))
> {
> ...
>          if (msgflg & MSG_COPY) {
>                  if ((msgflg & MSG_EXCEPT) || !(msgflg & IPC_NOWAIT))
>                          return -EINVAL;
>                  copy = prepare_copy(buf, min_t(size_t, bufsz, ns->msg_ctlmax));

The #ifdef CONFIG_CHECKPOINT_RESTORE only affected prepare_copy function 
and the EINVAL judgment is not included in #ifdef.
So, if current kernel config disables CONFIG_CHECKPOINT_RESTORE, Using 
MSG_COPY without IPC_NOWAIT will still hit EINVAL error firstly and 
doesn't run into  prepare_copy function to hit ENOSYS error.


Best Regards
Yang Xu
> ...
> }
> ]]
> 
> My reading of that code is:
> if MSG_COPY && MSG_EXCEPT ==> EINVAL
> if MSG_COPY && ! IPC_NOWAIT ==> EINVAL
> if neither of the above: if MSG_COPY && ! CONFIG_CHECKPOINT_RESTORE ==> ENOSYS
> 
> And all of that seems already to be captured in the manual page:
> 
>         EINVAL (since Linux 3.14)
>                msgflg specified MSG_COPY, but not IPC_NOWAIT.
> 
>         EINVAL (since Linux 3.14)
>                msgflg specified both MSG_COPY and MSG_EXCEPT.
> 
>         ENOSYS (since Linux 3.8)
>                MSG_COPY was specified in msgflg, and this kernel was  con‐
>                figured without CONFIG_CHECKPOINT_RESTORE.
> 
> Have I missed something?
> 
> Thanks,
> 
> Michael
> 


