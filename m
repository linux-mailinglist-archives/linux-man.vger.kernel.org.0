Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4219C1ADE46
	for <lists+linux-man@lfdr.de>; Fri, 17 Apr 2020 15:28:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730370AbgDQN2F (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Apr 2020 09:28:05 -0400
Received: from mx2.suse.de ([195.135.220.15]:36208 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1730322AbgDQN2F (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 17 Apr 2020 09:28:05 -0400
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
        by mx2.suse.de (Postfix) with ESMTP id 989F4B131;
        Fri, 17 Apr 2020 13:28:02 +0000 (UTC)
References: <20190729125843.6319-1-rpalethorpe@suse.com> <7f9476e0-a05a-c9ec-1135-87c641b93e32@gmail.com>
User-agent: mu4e 1.2.0; emacs 26.3
From:   Richard Palethorpe <rpalethorpe@suse.de>
To:     "Michael Kerrisk \(man-pages\)" <mtk.manpages@gmail.com>
Cc:     Richard Palethorpe <rpalethorpe@suse.com>,
        linux-man@vger.kernel.org, ast@plumgrid.com, davem@davemloft.net,
        Alexei Starovoitov <ast@kernel.org>,
        Daniel Borkmann <daniel@iogearbox.net>
Subject: Re: [PATCH] bpf.2: Change note on unprivileged access
Reply-To: rpalethorpe@suse.de
In-reply-to: <7f9476e0-a05a-c9ec-1135-87c641b93e32@gmail.com>
Date:   Fri, 17 Apr 2020 15:28:00 +0200
Message-ID: <87h7xii6n3.fsf@our.domain.is.not.set>
MIME-Version: 1.0
Content-Type: text/plain
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Michael,

Michael Kerrisk (man-pages) <mtk.manpages@gmail.com> writes:

> Hello Richard,
>
> On 7/29/19 2:58 PM, Richard Palethorpe wrote:
>> This notes that the kernel now allows calls to bpf() without CAP_SYS_ADMIN
>> under some circumstances.
>
> Thanks. I have (at last) applied this patch.

:-)

>
> In Linux 4.4, the allowed BPF helper functions that could
> be called was, I think, governed by a check in sk_filter_func_proto().
> Nowadays (Linux 5.6), it is, I think, governed by the check in
> sk_filter_func_proto(). If that is the case, then probably there

It looks like bpf_base_func_proto() and sk_filter_func_proto(). Possibly
also cg_skb_func_proto() because it seems normal users can also attach a
cgroup skb filter program type (looking at bpf_prog_load() in syscall.c
for 5.7).

> are one or two more helper functions to be added to the list
> (e.g., get_numa_node_id, map_push_elem, map_pop_elem).
> Do you agree with my analysis?

Yes, at least those. IMO this is such a fast moving target it might be
best to direct users towards <linux/bpf.h>.

>
> Thanks,
>
> Michael
>
>> Signed-off-by: Richard Palethorpe <rpalethorpe@suse.com>
>> ---
>>  man2/bpf.2 | 22 ++++++++++++++++++++--
>>  1 file changed, 20 insertions(+), 2 deletions(-)
>>
>> diff --git a/man2/bpf.2 b/man2/bpf.2
>> index b5c0869ae..a57ed9086 100644
>> --- a/man2/bpf.2
>> +++ b/man2/bpf.2
>> @@ -1120,11 +1120,29 @@ The
>>  .BR bpf ()
>>  system call is Linux-specific.
>>  .SH NOTES
>> -In the current implementation, all
>> +Prior to Linux 4.4, all
>>  .BR bpf ()
>>  commands require the caller to have the
>>  .B CAP_SYS_ADMIN
>> -capability.
>> +capability. From 4.4 onwards an unprivileged user may create limited
>> +programs of type
>> +.BR BPF_PROG_TYPE_SOCKET_FILTER
>> +and associated maps. However they may not store kernel pointers within
>> +the maps and are presently limited to the following helper functions:
>> +.IP * 3
>> +get_random
>> +.PD 0
>> +.IP *
>> +get_smp_processor_id
>> +.IP *
>> +tail_call
>> +.IP *
>> +ktime_get_ns
>> +.PD 1
>> +.PP
>> +Unprivileged access may be blocked by setting the sysctl
>> +.IR /proc/sys/kernel/unprivileged_bpf_disabled .
>> +.\" commit 1be7f75d1668d6296b80bf35dcf6762393530afc
>>  .PP
>>  eBPF objects (maps and programs) can be shared between processes.
>>  For example, after
>>


--
Thank you,
Richard.
