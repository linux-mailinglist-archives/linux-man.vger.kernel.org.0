Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C10D769A27F
	for <lists+linux-man@lfdr.de>; Fri, 17 Feb 2023 00:40:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230089AbjBPXk5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 16 Feb 2023 18:40:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229482AbjBPXk4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 16 Feb 2023 18:40:56 -0500
Received: from omta002.cacentral1.a.cloudfilter.net (omta002.cacentral1.a.cloudfilter.net [3.97.99.33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 843BF505D6
        for <linux-man@vger.kernel.org>; Thu, 16 Feb 2023 15:40:54 -0800 (PST)
Received: from shw-obgw-4004a.ext.cloudfilter.net ([10.228.9.227])
        by cmsmtp with ESMTP
        id SfElpCfWgl2xSSnrxp51Re; Thu, 16 Feb 2023 23:40:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1676590853; bh=So83yulglBpQpM3YJgam5YrLPqDwmzHiYyAReu9Q+HY=;
        h=Date:Reply-To:Subject:References:From:To:Cc:In-Reply-To;
        b=QLFoW6iFi99V3Pnmdkth+6Q9Nq88ORYWcya8KLqIlWwxSV2VfHBi9576UWol0NmYy
         1jY3pH1gvXI0ovV8HbxjfjgcaH5liuzG1qJEYpaTNYQsJBtFi5SaGk/neGGrbVNsN+
         cIb0P0iQb2hUPeC9o7YrsEb0BDikLPb0RRyuGHyzy2cPduUtJeVa7B5x1nRZxa/MO0
         yPQ6iKLms2K9JolxWSLJWeDkjrr/WO0bC5Fcbsli3jQNY7842xN007iXvIAIIRGj6d
         0lrPj4694QEcEa6drmc3mMoil6ex2qllfv/51B8u+PGWsVjXODpuC3mnvP/RGSkGue
         EVoGX8z2th6Xg==
Received: from [10.0.0.5] ([184.64.102.149])
        by cmsmtp with ESMTP
        id SnrwpqDPs3fOSSnrwpgnkw; Thu, 16 Feb 2023 23:40:53 +0000
X-Authority-Analysis: v=2.4 cv=J8G5USrS c=1 sm=1 tr=0 ts=63eebf05
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=IkcTkHD0fZMA:10 a=_Dj-zB-qAAAA:8 a=CCpqsmhAAAAA:8 a=kWw70epyffe82mh2MMIA:9
 a=QEXdDO2ut3YA:10 a=hRrdT3L0C3MA:10 a=ul9cdbp4aOFLsgKbc677:22
Message-ID: <200281a7-8bf0-c286-374a-6f0dd8c8cc6a@Shaw.ca>
Date:   Thu, 16 Feb 2023 16:40:52 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Reply-To: Brian.Inglis@Shaw.ca
Subject: Re: [PATCH v3 1/6] man2/: use IEC or ISO multiples to clarify long
 numeric digit strings
Content-Language: en-CA
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
 <4a3350ac873f45df96abf9045cfe1605839f490d.1676489381.git.Brian.Inglis@Shaw.ca>
 <CACKs7VB672Ka6GJQmVozS6n1kR+g8LoDuLtw1XuwSjKsttFBTg@mail.gmail.com>
 <cb47e19b-ba02-da3f-b253-ee8ddec28aa8@gmail.com>
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
Organization: Inglis
To:     Linux Man Pages <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Stefan Puiu <stefan.puiu@gmail.com>
In-Reply-To: <cb47e19b-ba02-da3f-b253-ee8ddec28aa8@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfNmhmPJa2cS/UGa8qwvJLtiLpH6wRokfgyjEcZQXOz+IB0RDCJYMA9TtCycBqhaFbvlHApr3xWwi/dbjV/GU+41hN1r4eEL2BjtOp1bfLHfQQ8I3cjhO
 PWzbapIvtY9qhB4Q9RVChsTRKtRB5cGlGIvUkXA+X5q6mPGAlUm6vobX7+d85ExpkHxMdEI6rzx7GGybOPr/yyt8tBF62MxneJrDfXb93V7+T5byXoJNLxAf
 OVEOefX8ddtmLV7mvTb/iejWZ7OpiLtnUlxJgEvueqU=
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

Should we leave some of these POSIX doc strings and short numbers as they are?
I have been careful to use digit separators in POSIX feature docs only not code.

I see *those* as less formal, digit separators and ISO decimal multipliers as 
more formal, and IEC binary multipliers more accurate and informative than 
decimal digits where used.

I think hex values are 50/50 depending on counts of zero and non-zero digits and 
context; IEC binary multipliers are more informative for amounts or sizes in 
appropriate contexts.

-- 
Take care. Thanks, Brian Inglis			Calgary, Alberta, Canada

La perfection est atteinte			Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter	not when there is no more to add
mais lorsqu'il n'y a plus rien à retirer	but when there is no more to cut
			-- Antoine de Saint-Exupéry


On 2023-02-16 16:01, Alejandro Colomar wrote:
> Hi Stefan and Brian,
> 
> On 2/16/23 22:06, Stefan Puiu wrote:
>> Hi Brian,
>>
>> On Wed, Feb 15, 2023 at 10:21 PM Brian Inglis <Brian.Inglis@shaw.ca> wrote:
>>>
>>> ---
>>>   man2/add_key.2           | 2 +-
>>>   man2/epoll_wait.2        | 2 +-
>>>   man2/fcntl.2             | 2 +-
>>>   man2/getgroups.2         | 2 +-
>>>   man2/ioctl_console.2     | 4 ++--
>>>   man2/iopl.2              | 2 +-
>>>   man2/madvise.2           | 4 ++--
>>>   man2/mmap2.2             | 8 ++++----
>>>   man2/request_key.2       | 2 +-
>>>   man2/sched_setaffinity.2 | 4 ++--
>>>   man2/seccomp.2           | 4 ++--
>>>   man2/semop.2             | 4 ++--
>>>   man2/sendmmsg.2          | 2 +-
>>>   man2/shmget.2            | 4 ++--
>>>   man2/syslog.2            | 6 +++---
>>>   man2/vmsplice.2          | 2 +-
>>>   16 files changed, 27 insertions(+), 27 deletions(-)
>>>
>>> diff --git a/man2/add_key.2 b/man2/add_key.2
>>> index 56fc6d198d21..215de20baeae 100644
>>> --- a/man2/add_key.2
>>> +++ b/man2/add_key.2
>>> @@ -167,7 +167,7 @@ The size of the string (including the terminating null byte) specified in
>>>   .I type
>>>   or
>>>   .I description
>>> -exceeded the limit (32 bytes and 4096 bytes respectively).
>>> +exceeded the limit (32 bytes and 4Ki bytes respectively).
>>
>> For what it's worth, I find 4096 much clearer over 4Ki (what is Ki
>> anyway?). Ditto for 32768 / 32Ki etc. What are we trying to achieve?
> 
> In this case, we should rather use 4\ KiB, which is standard.
> 
> In general, let's divide the patches so that we can apply those that
> use standard syntax more easily, and then discuss more those that
> are more informal.
> 
>>
>>>   .TP
>>>   .B EINVAL
>>>   The payload data was invalid.
>>> diff --git a/man2/epoll_wait.2 b/man2/epoll_wait.2
>>> index 1620cff9dfcc..4863ae4a43fa 100644
>>> --- a/man2/epoll_wait.2
>>> +++ b/man2/epoll_wait.2
>>> @@ -283,7 +283,7 @@ Thus, for example, on a system where
>>>   .I sizeof(long)
>>>   is 4 and the kernel
>>>   .I HZ
>>> -value is 1000,
>>> +value is 1k,
>>
>> I still prefer the old version, my impression is that 1k and friends
>> are used in informal contexts. Of course, it could be only my
>> impression.
> 
> Thanks for sharing your impression.  I'll take it into consideration.
> 
> Cheers,
> 
> Alex
> 
>>
>> Just my 2 cents,
>> Stefan.
>>
>>>   this means that timeouts greater than 35.79 minutes are treated as infinity.
>>>   .SH SEE ALSO
>>>   .BR epoll_create (2),
>>> diff --git a/man2/fcntl.2 b/man2/fcntl.2
>>> index 3ec52dc4dc03..630fc55888bc 100644
>>> --- a/man2/fcntl.2
>>> +++ b/man2/fcntl.2
>>> @@ -2004,7 +2004,7 @@ A limitation of the Linux system call conventions on some
>>>   architectures (notably i386) means that if a (negative)
>>>   process group ID to be returned by
>>>   .B F_GETOWN
>>> -falls in the range \-1 to \-4095, then the return value is wrongly
>>> +falls in the range \-1 to \-4Ki-1, then the return value is wrongly
>>>   interpreted by glibc as an error in the system call;
>>>   .\" glibc source: sysdeps/unix/sysv/linux/i386/sysdep.h
>>>   that is, the return value of
>>> diff --git a/man2/getgroups.2 b/man2/getgroups.2
>>> index 36300bf61b6a..f01af687ccbd 100644
>>> --- a/man2/getgroups.2
>>> +++ b/man2/getgroups.2
>>> @@ -119,7 +119,7 @@ can additionally fail with the following errors:
>>>   .I size
>>>   is greater than
>>>   .B NGROUPS_MAX
>>> -(32 before Linux 2.6.4; 65536 since Linux 2.6.4).
>>> +(32 before Linux 2.6.4; 64Ki since Linux 2.6.4).
>>>   .TP
>>>   .B ENOMEM
>>>   Out of memory.
>>> diff --git a/man2/ioctl_console.2 b/man2/ioctl_console.2
>>> index 89f794c1956c..477e6fd1a7e1 100644
>>> --- a/man2/ioctl_console.2
>>> +++ b/man2/ioctl_console.2
>>> @@ -171,7 +171,7 @@ bright cyan, and white.
>>>   .B GIO_FONT
>>>   Gets 256-character screen font in expanded form.
>>>   .I argp
>>> -points to an 8192-byte array.
>>> +points to an 8Ki-byte array.
>>>   Fails with error code
>>>   .B EINVAL
>>>   if the
>>> @@ -211,7 +211,7 @@ Sets 256-character screen font.
>>>   Load font into the EGA/VGA character
>>>   generator.
>>>   .I argp
>>> -points to an 8192-byte map, with 32 bytes per
>>> +points to an 8Ki-byte map, with 32 bytes per
>>>   character.
>>>   Only the first
>>>   .I N
>>> diff --git a/man2/iopl.2 b/man2/iopl.2
>>> index abf1bef675fd..c967296157b7 100644
>>> --- a/man2/iopl.2
>>> +++ b/man2/iopl.2
>>> @@ -34,7 +34,7 @@ Permissions are inherited from parents to children.
>>>   This call is deprecated, is significantly slower than
>>>   .BR ioperm (2),
>>>   and is only provided for older X servers which require
>>> -access to all 65536 I/O ports.
>>> +access to all 64Ki I/O ports.
>>>   It is mostly for the i386 architecture.
>>>   On many other architectures it does not exist or will always
>>>   return an error.
>>> diff --git a/man2/madvise.2 b/man2/madvise.2
>>> index 9b4652a635d3..e05e9c5de4a7 100644
>>> --- a/man2/madvise.2
>>> +++ b/man2/madvise.2
>>> @@ -329,8 +329,8 @@ naturally aligned to the huge page size (see
>>>   This feature is primarily aimed at applications that use large mappings of
>>>   data and access large regions of that memory at a time (e.g., virtualization
>>>   systems such as QEMU).
>>> -It can very easily waste memory (e.g., a 2\ MB mapping that only ever accesses
>>> -1 byte will result in 2\ MB of wired memory instead of one 4\ KB page).
>>> +It can very easily waste memory (e.g., a 2\ MiB mapping that only ever accesses
>>> +1 byte will result in 2\ MiB of wired memory instead of one 4\ KiB page).
>>>   See the Linux kernel source file
>>>   .I Documentation/admin\-guide/mm/transhuge.rst
>>>   for more details.
>>> diff --git a/man2/mmap2.2 b/man2/mmap2.2
>>> index 1fd5732ad41b..f975c1388a77 100644
>>> --- a/man2/mmap2.2
>>> +++ b/man2/mmap2.2
>>> @@ -32,7 +32,7 @@ The
>>>   system call provides the same interface as
>>>   .BR mmap (2),
>>>   except that the final argument specifies the offset into the
>>> -file in 4096-byte units (instead of bytes, as is done by
>>> +file in 4Ki-byte units (instead of bytes, as is done by
>>>   .BR mmap (2)).
>>>   This enables applications that use a 32-bit
>>>   .I off_t
>>> @@ -50,8 +50,8 @@ is set to indicate the error.
>>>   Problem with getting the data from user space.
>>>   .TP
>>>   .B EINVAL
>>> -(Various platforms where the page size is not 4096 bytes.)
>>> -.I "offset\ *\ 4096"
>>> +(Various platforms where the page size is not 4Ki bytes.)
>>> +.I "offset\ *\ 4Ki"
>>>   is not a multiple of the system page size.
>>>   .PP
>>>   .BR mmap2 ()
>>> @@ -74,7 +74,7 @@ This system call does not exist on x86-64.
>>>   .PP
>>>   On ia64, the unit for
>>>   .I offset
>>> -is actually the system page size, rather than 4096 bytes.
>>> +is actually the system page size, rather than 4Ki bytes.
>>>   .\" ia64 can have page sizes ranging from 4 kB to 64 kB.
>>>   .\" On cris, it looks like the unit might also be the page size,
>>>   .\" which is 8192 bytes. -- mtk, June 2007
>>> diff --git a/man2/request_key.2 b/man2/request_key.2
>>> index e78321e3c23f..dacc5282f3d8 100644
>>> --- a/man2/request_key.2
>>> +++ b/man2/request_key.2
>>> @@ -399,7 +399,7 @@ The size of the string (including the terminating null byte) specified in
>>>   .I type
>>>   or
>>>   .I description
>>> -exceeded the limit (32 bytes and 4096 bytes respectively).
>>> +exceeded the limit (32 bytes and 4Ki bytes respectively).
>>>   .TP
>>>   .B EINVAL
>>>   The size of the string (including the terminating null byte) specified in
>>> diff --git a/man2/sched_setaffinity.2 b/man2/sched_setaffinity.2
>>> index 86a93539137d..9e7a26293e73 100644
>>> --- a/man2/sched_setaffinity.2
>>> +++ b/man2/sched_setaffinity.2
>>> @@ -243,10 +243,10 @@ impose no restriction on the size of the CPU mask.
>>>   However, the
>>>   .I cpu_set_t
>>>   data type used by glibc has a fixed size of 128 bytes,
>>> -meaning that the maximum CPU number that can be represented is 1023.
>>> +meaning that the maximum CPU number that can be represented is 1\[aq]023.
>>>   .\" FIXME . See https://sourceware.org/bugzilla/show_bug.cgi?id=15630
>>>   .\" and https://sourceware.org/ml/libc-alpha/2013-07/msg00288.html
>>> -If the kernel CPU affinity mask is larger than 1024,
>>> +If the kernel CPU affinity mask is larger than 1Ki,
>>>   then calls of the form:
>>>   .PP
>>>   .in +4n
>>> diff --git a/man2/seccomp.2 b/man2/seccomp.2
>>> index 32706397f03e..0bb8caa75698 100644
>>> --- a/man2/seccomp.2
>>> +++ b/man2/seccomp.2
>>> @@ -836,7 +836,7 @@ but the filter program pointed to by
>>>   .I args
>>>   was not valid or the length of the filter program was zero or exceeded
>>>   .B BPF_MAXINSNS
>>> -(4096) instructions.
>>> +(4Ki) instructions.
>>>   .TP
>>>   .B ENOMEM
>>>   Out of memory.
>>> @@ -846,7 +846,7 @@ Out of memory.
>>>   The total length of all filter programs attached
>>>   to the calling thread would exceed
>>>   .B MAX_INSNS_PER_PATH
>>> -(32768) instructions.
>>> +(32Ki) instructions.
>>>   Note that for the purposes of calculating this limit,
>>>   each already existing filter program incurs an
>>>   overhead penalty of 4 instructions.
>>> diff --git a/man2/semop.2 b/man2/semop.2
>>> index 7a1416a26894..a0027e0706c5 100644
>>> --- a/man2/semop.2
>>> +++ b/man2/semop.2
>>> @@ -434,7 +434,7 @@ On Linux, this limit can be read and modified via the third field of
>>>   .IR /proc/sys/kernel/sem .
>>>   .\" This /proc file is not available in Linux 2.2 and earlier -- MTK
>>>   .IR Note :
>>> -this limit should not be raised above 1000,
>>> +this limit should not be raised above 1\[aq]000,
>>>   .\" See comment in Linux 3.19 source file include/uapi/linux/sem.h
>>>   because of the risk of that
>>>   .BR semop ()
>>> @@ -445,7 +445,7 @@ array.
>>>   .B SEMVMX
>>>   Maximum allowable value for
>>>   .IR semval :
>>> -implementation dependent (32767).
>>> +implementation dependent (32Ki-1).
>>>   .PP
>>>   The implementation has no intrinsic limits for
>>>   the adjust on exit maximum value
>>> diff --git a/man2/sendmmsg.2 b/man2/sendmmsg.2
>>> index 4e5475c45a09..3f355382ebf6 100644
>>> --- a/man2/sendmmsg.2
>>> +++ b/man2/sendmmsg.2
>>> @@ -139,7 +139,7 @@ The value specified in
>>>   .I vlen
>>>   is capped to
>>>   .B UIO_MAXIOV
>>> -(1024).
>>> +(1Ki).
>>>   .\" commit 98382f419f32d2c12d021943b87dea555677144b
>>>   .\"     net: Cap number of elements for sendmmsg
>>>   .\"
>>> diff --git a/man2/shmget.2 b/man2/shmget.2
>>> index c4d8df8ed619..5421fd4bf3e9 100644
>>> --- a/man2/shmget.2
>>> +++ b/man2/shmget.2
>>> @@ -360,7 +360,7 @@ Because it is not possible to map just part of a shared memory segment,
>>>   the amount of virtual memory places another limit on the maximum size of a
>>>   usable segment:
>>>   for example, on i386 the largest segments that can be mapped have a
>>> -size of around 2.8\ GB, and on x86-64 the limit is around 127 TB.
>>> +size of around 2.8\ GB, and on x86-64 the limit is around 127\ TB.
>>>   .TP
>>>   .B SHMMIN
>>>   Minimum size in bytes for a shared memory segment: implementation
>>> @@ -371,7 +371,7 @@ is the effective minimum size).
>>>   .B SHMMNI
>>>   System-wide limit on the number of shared memory segments.
>>>   In Linux 2.2, the default value for this limit was 128;
>>> -since Linux 2.4, the default value is 4096.
>>> +since Linux 2.4, the default value is 4Ki.
>>>   .IP
>>>   On Linux, this limit can be read and modified via
>>>   .IR /proc/sys/kernel/shmmni .
>>> diff --git a/man2/syslog.2 b/man2/syslog.2
>>> index 09c086f181e3..7d76e8cd9658 100644
>>> --- a/man2/syslog.2
>>> +++ b/man2/syslog.2
>>> @@ -54,9 +54,9 @@ in which messages given as arguments to the kernel function
>>>   are stored (regardless of their log level).
>>>   In early kernels,
>>>   .B LOG_BUF_LEN
>>> -had the value 4096;
>>> -from Linux 1.3.54, it was 8192;
>>> -from Linux 2.1.113, it was 16384;
>>> +had the value 4Ki;
>>> +from Linux 1.3.54, it was 8Ki;
>>> +from Linux 2.1.113, it was 16Ki;
>>>   since Linux 2.4.23/2.6, the value is a kernel configuration option
>>>   .RB ( CONFIG_LOG_BUF_SHIFT ,
>>>   default value dependent on the architecture).
>>> diff --git a/man2/vmsplice.2 b/man2/vmsplice.2
>>> index 01ac37b3584f..08ede47361ae 100644
>>> --- a/man2/vmsplice.2
>>> +++ b/man2/vmsplice.2
>>> @@ -149,7 +149,7 @@ as defined in
>>>   .IR <limits.h> .
>>>   Currently,
>>>   .\" UIO_MAXIOV in kernel source
>>> -this limit is 1024.
>>> +this limit is 1Ki.
>>>   .PP
>>>   .\" commit 6a14b90bb6bc7cd83e2a444bf457a2ea645cbfe7
>>>   .BR vmsplice ()
