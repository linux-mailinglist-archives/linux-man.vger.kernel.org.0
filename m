Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4B5952B2777
	for <lists+linux-man@lfdr.de>; Fri, 13 Nov 2020 22:50:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726072AbgKMVup (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Nov 2020 16:50:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725885AbgKMVuo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Nov 2020 16:50:44 -0500
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47E90C0613D1
        for <linux-man@vger.kernel.org>; Fri, 13 Nov 2020 13:50:43 -0800 (PST)
Received: by mail-wr1-x444.google.com with SMTP id o15so11732964wru.6
        for <linux-man@vger.kernel.org>; Fri, 13 Nov 2020 13:50:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=fDFVcxxD8i2Yeo3wt29F6dBhPrBbdNyq6z/lNVlibxc=;
        b=We1lRpSr34BX2fGvaU7Nurmw2cyBgmtHNUdGksw4o13FwpwpW+fBo3PKT1sfpimVFO
         9aOS29vOQ/QpaYGV5/9m5tQSq9KhdXNXSFKZc9tcXDoYKuJb9kW1NAWpXEYO/m81QH0Y
         etPthtdn/0zTAq+sFqn60eIKHdL4ytwSF5gi1z//8sGohJnpUb3fwAPalEazQHlhPl3o
         mOHtSPMctiAFbCZIBnn5SI6Bnb86ad15Pzk9+9AndPDD+yxnSOHN8ppol2dLoYX5huOj
         MAZwAXNtRCl+joErhA+PLH89yBYbbIluLp9N8UxAkBsVn/8zvGY8Chn7P/uR1mLg7ObK
         Iutg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=fDFVcxxD8i2Yeo3wt29F6dBhPrBbdNyq6z/lNVlibxc=;
        b=Amst0PWHCWapltGFvdwLjznTsfSAf8eqN4U2vkI37101b1aGOaat0TTyXoSwN/OJAP
         d+Rh+DziO70pOznPspke3Nbp9+kRDAocfJDLojH3XKi7EdBnA5M0NL4T5TfGHMIRJWWj
         Wl3YT5TdPRXWQuGNYTDla4pO5jVzQiIFaCR06ZJzNVxdgEox6DQjbj/7bMZtWe6NENyT
         ERo1/oI3Q+EmgJABxp6SWg1N639Z2aqVoKjg34qg7jaG9yp3J0uuu/CSrS3es5T6NDTd
         ySxPK++PEf5PpJfXGI8f+e6u+o+MahqzBEUO8wUqvJol2SUK3lmJylDatIjn9z33zu/i
         btDg==
X-Gm-Message-State: AOAM531qlSbvdz9T+80Ph22Jtr0x4oHog1WPsh7mX8Q3WOXI+gxGGs5n
        XNskJug5NhG/vRY1tuqYwm0U94WC7pEtHg==
X-Google-Smtp-Source: ABdhPJxhfHFHMNLH+QPJ4BehV/KXndVfptBc51PlAlYGJeX9onFdt4zTKWV8mufaVVosiRmLX8oD0g==
X-Received: by 2002:adf:db85:: with SMTP id u5mr6019150wri.155.1605304241342;
        Fri, 13 Nov 2020 13:50:41 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id q16sm12390350wrn.13.2020.11.13.13.50.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 13:50:40 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] perf_event_open.2: srcfix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20201113203455.2956-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <43d7ffca-4b41-2558-3ba2-950d4d105ce6@gmail.com>
Date:   Fri, 13 Nov 2020 22:50:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201113203455.2956-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 11/13/20 9:34 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
> 
> Hi Michael,
> 
> Here are a few srcfixes I found.
> And an unnecessary parentheses removal in an example.

Thanks. Applied.

Cheers,

Michael

>  man2/perf_event_open.2 | 215 +++++++++++++++++++++++------------------
>  1 file changed, 122 insertions(+), 93 deletions(-)
> 
> diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
> index eb7ab29ea..e7b0aa132 100644
> --- a/man2/perf_event_open.2
> +++ b/man2/perf_event_open.2
> @@ -126,7 +126,7 @@ The leader is created first, with
>  The rest of the group members are created with subsequent
>  .BR perf_event_open ()
>  calls with
> -.IR group_fd
> +.I group_fd
>  being set to the file descriptor of the group leader.
>  (A single event on its own is created with
>  .IR group_fd " = \-1"
> @@ -162,7 +162,7 @@ then
>  .TP
>  .BR PERF_FLAG_FD_NO_GROUP
>  This flag tells the event to ignore the
> -.IR group_fd
> +.I group_fd
>  parameter except for the purpose of setting up output redirection
>  using the
>  .B PERF_FLAG_FD_OUTPUT
> @@ -352,7 +352,11 @@ These two dynamic PMUs create a kprobe/uprobe and attach it to the
>  file descriptor generated by perf_event_open.
>  The kprobe/uprobe will be destroyed on the destruction of the file descriptor.
>  See fields
> -.IR kprobe_func ", " uprobe_path ", " kprobe_addr ", and " probe_offset
> +.IR kprobe_func ,
> +.IR uprobe_path ,
> +.IR kprobe_addr ,
> +and
> +.I probe_offset
>  for more details.
>  .RE
>  .TP
> @@ -401,7 +405,9 @@ the
>  .I type
>  field.
>  The
> -.IR config1 " and " config2
> +.I config1
> +and
> +.I config2
>  fields are also taken into account in cases where 64 bits is not
>  enough to fully specify the event.
>  The encoding of these fields are event dependent.
> @@ -558,15 +564,15 @@ then we are measuring a hardware CPU cache event.
>  To calculate the appropriate
>  .I config
>  value use the following equation:
> -.PP
> -.RS 4
>  .RS 4
> +.PP
> +.in +4n
>  .EX
>  config = (perf_hw_cache_id) |
>           (perf_hw_cache_op_id << 8) |
>           (perf_hw_cache_op_result_id << 16);
>  .EE
> -.RE
> +.in
>  .PP
>  where
>  .I perf_hw_cache_id
> @@ -652,24 +658,28 @@ Its parameters are set in other places.
>  If
>  .I type
>  is
> -.BR kprobe
> +.B kprobe
>  or
>  .BR uprobe ,
>  set
> -.IR retprobe
> +.I retprobe
>  (bit 0 of
>  .IR config ,
>  see
>  .IR /sys/bus/event_source/devices/[k,u]probe/format/retprobe )
>  for kretprobe/uretprobe.
>  See fields
> -.IR kprobe_func ", " uprobe_path ", " kprobe_addr ", and " probe_offset
> +.IR kprobe_func ,
> +.IR uprobe_path ,
> +.IR kprobe_addr ,
> +and
> +.I probe_offset
>  for more details.
>  .RE
>  .TP
>  .IR kprobe_func ", " uprobe_path ", " kprobe_addr ", and " probe_offset
>  These fields describe the kprobe/uprobe for dynamic PMUs
> -.BR kprobe
> +.B kprobe
>  and
>  .BR uprobe .
>  For
> @@ -712,7 +722,7 @@ to try and achieve the desired rate.
>  The rate of adjustment is a
>  timer tick.
>  .TP
> -.I "sample_type"
> +.I sample_type
>  The various bits in this field specify which values to include
>  in the sample.
>  They will be recorded in a ring-buffer,
> @@ -859,7 +869,7 @@ hardware at the time of the sampled
>  instruction's retirement.
>  .RE
>  .TP
> -.IR "read_format"
> +.I read_format
>  This field specifies the format of the data returned by
>  .BR read (2)
>  on a
> @@ -888,7 +898,7 @@ Adds a 64-bit unique value that corresponds to the event group.
>  Allows all counter values in an event group to be read with one read.
>  .RE
>  .TP
> -.IR "disabled"
> +.I disabled
>  The
>  .I disabled
>  bit specifies whether the counter starts out disabled or enabled.
> @@ -909,7 +919,7 @@ Despite
>  being 0, the child events will not start until the group leader
>  is enabled.
>  .TP
> -.IR "inherit"
> +.I inherit
>  The
>  .I inherit
>  bit specifies that this counter should count events of child
> @@ -923,7 +933,7 @@ Inherit does not work for some combinations of
>  values, such as
>  .BR PERF_FORMAT_GROUP .
>  .TP
> -.IR "pinned"
> +.I pinned
>  The
>  .I pinned
>  bit specifies that the counter should always be on the CPU if at all
> @@ -936,7 +946,7 @@ return end-of-file (i.e.,
>  .BR read (2)
>  returns 0) until the counter is subsequently enabled or disabled.
>  .TP
> -.IR "exclusive"
> +.I exclusive
>  The
>  .I exclusive
>  bit specifies that when this counter's group is on the CPU,
> @@ -952,13 +962,13 @@ This includes any users running a system-wide
>  measurement as well as any kernel use of the performance counters
>  (including the commonly enabled NMI Watchdog Timer interface).
>  .TP
> -.IR "exclude_user"
> +.I exclude_user
>  If this bit is set, the count excludes events that happen in user space.
>  .TP
> -.IR "exclude_kernel"
> +.I exclude_kernel
>  If this bit is set, the count excludes events that happen in kernel space.
>  .TP
> -.IR "exclude_hv"
> +.I exclude_hv
>  If this bit is set, the count excludes events that happen in the
>  hypervisor.
>  This is mainly for PMUs that have built-in support for handling this
> @@ -966,12 +976,12 @@ This is mainly for PMUs that have built-in support for handling this
>  Extra support is needed for handling hypervisor measurements on most
>  machines.
>  .TP
> -.IR "exclude_idle"
> +.I exclude_idle
>  If set, don't count when the CPU is running the idle task.
>  While you can currently enable this for any event type, it is ignored
>  for all but software events.
>  .TP
> -.IR "mmap"
> +.I mmap
>  The
>  .I mmap
>  bit enables generation of
> @@ -985,7 +995,7 @@ This allows tools to notice new executable code being mapped into
>  a program (dynamic shared libraries for example)
>  so that addresses can be mapped back to the original code.
>  .TP
> -.IR "comm"
> +.I comm
>  The
>  .I comm
>  bit enables tracking of process command name as modified by the
> @@ -1004,30 +1014,30 @@ can be used to differentiate the
>  .BR exec (2)
>  case from the others.
>  .TP
> -.IR "freq"
> +.I freq
>  If this bit is set, then
>  .I sample_frequency
>  not
>  .I sample_period
>  is used when setting up the sampling interval.
>  .TP
> -.IR "inherit_stat"
> +.I inherit_stat
>  This bit enables saving of event counts on context switch for
>  inherited tasks.
>  This is meaningful only if the
>  .I inherit
>  field is set.
>  .TP
> -.IR "enable_on_exec"
> +.I enable_on_exec
>  If this bit is set, a counter is automatically
>  enabled after a call to
>  .BR exec (2).
>  .TP
> -.IR "task"
> +.I task
>  If this bit is set, then
>  fork/exit notifications are included in the ring buffer.
>  .TP
> -.IR "watermark"
> +.I watermark
>  If set, have an overflow notification happen when we cross the
>  .I wakeup_watermark
>  boundary.
> @@ -1035,7 +1045,7 @@ Otherwise, overflow notifications happen after
>  .I wakeup_events
>  samples.
>  .TP
> -.IR "precise_ip" " (since Linux 2.6.35)"
> +.IR precise_ip " (since Linux 2.6.35)"
>  .\" commit ab608344bcbde4f55ec4cd911b686b0ce3eae076
>  This controls the amount of skid.
>  Skid is how many instructions
> @@ -1064,7 +1074,7 @@ See also the description of
>  .BR PERF_RECORD_MISC_EXACT_IP .
>  .RE
>  .TP
> -.IR "mmap_data" " (since Linux 2.6.36)"
> +.IR mmap_data " (since Linux 2.6.36)"
>  .\" commit 3af9e859281bda7eb7c20b51879cf43aa788ac2e
>  This is the counterpart of the
>  .I mmap
> @@ -1077,7 +1087,7 @@ calls that do not have
>  .B PROT_EXEC
>  set (for example data and SysV shared memory).
>  .TP
> -.IR "sample_id_all" " (since Linux 2.6.38)"
> +.IR sample_id_all " (since Linux 2.6.38)"
>  .\" commit c980d1091810df13f21aabbce545fd98f545bbf7
>  If set, then TID, TIME, ID, STREAM_ID, and CPU can
>  additionally be included in
> @@ -1109,7 +1119,7 @@ struct sample_id {
>  .EE
>  .in
>  .TP
> -.IR "exclude_host" " (since Linux 3.2)"
> +.IR exclude_host " (since Linux 3.2)"
>  .\" commit a240f76165e6255384d4bdb8139895fac7988799
>  When conducting measurements that include processes running
>  VM instances (i.e., have executed a
> @@ -1120,7 +1130,7 @@ This is only meaningful outside the guests; this setting does
>  not change counts gathered inside of a guest.
>  Currently, this functionality is x86 only.
>  .TP
> -.IR "exclude_guest" " (since Linux 3.2)"
> +.IR exclude_guest " (since Linux 3.2)"
>  .\" commit a240f76165e6255384d4bdb8139895fac7988799
>  When conducting measurements that include processes running
>  VM instances (i.e., have executed a
> @@ -1131,15 +1141,15 @@ This is only meaningful outside the guests; this setting does
>  not change counts gathered inside of a guest.
>  Currently, this functionality is x86 only.
>  .TP
> -.IR "exclude_callchain_kernel" " (since Linux 3.7)"
> +.IR exclude_callchain_kernel " (since Linux 3.7)"
>  .\" commit d077526485d5c9b12fe85d0b2b3b7041e6bc5f91
>  Do not include kernel callchains.
>  .TP
> -.IR "exclude_callchain_user" " (since Linux 3.7)"
> +.IR exclude_callchain_user " (since Linux 3.7)"
>  .\" commit d077526485d5c9b12fe85d0b2b3b7041e6bc5f91
>  Do not include user callchains.
>  .TP
> -.IR "mmap2" " (since Linux 3.16)"
> +.IR mmap2 " (since Linux 3.16)"
>  .\" commit 13d7a2410fa637f450a29ecb515ac318ee40c741
>  .\" This is tricky; was committed during 3.12 development
>  .\" but right before release was disabled.
> @@ -1152,7 +1162,7 @@ The
>  .I mmap
>  flag must also be set for this to work.
>  .TP
> -.IR "comm_exec" " (since Linux 3.16)"
> +.IR comm_exec " (since Linux 3.16)"
>  .\" commit 82b897782d10fcc4930c9d4a15b175348fdd2871
>  This is purely a feature-detection flag, it does not change
>  kernel behavior.
> @@ -1168,7 +1178,7 @@ reported was caused by a call to
>  This allows tools to distinguish between the various
>  types of process renaming.
>  .TP
> -.IR "use_clockid" " (since Linux 4.1)"
> +.IR use_clockid " (since Linux 4.1)"
>  .\" commit 34f439278cef7b1177f8ce24f9fc81dfc6221d3b
>  This allows selecting which internal Linux clock to use
>  when generating timestamps via the
> @@ -1177,7 +1187,7 @@ field.
>  This can make it easier to correlate perf sample times with
>  timestamps generated by other tools.
>  .TP
> -.IR "context_switch" " (since Linux 4.3)"
> +.IR context_switch " (since Linux 4.3)"
>  .\" commit 45ac1403f564f411c6a383a2448688ba8dd705a4
>  This enables the generation of
>  .B PERF_RECORD_SWITCH
> @@ -1192,7 +1202,7 @@ information even with strict
>  .I perf_event_paranoid
>  settings.
>  .TP
> -.IR "wakeup_events" ", " "wakeup_watermark"
> +.IR wakeup_events ", " wakeup_watermark
>  This union sets how many samples
>  .RI ( wakeup_events )
>  or bytes
> @@ -1218,25 +1228,25 @@ Prior to Linux 3.0, setting
>  to 0 resulted in no overflow notifications;
>  more recent kernels treat 0 the same as 1.
>  .TP
> -.IR "bp_type" " (since Linux 2.6.33)"
> +.IR bp_type " (since Linux 2.6.33)"
>  .\" commit 24f1e32c60c45c89a997c73395b69c8af6f0a84e
>  This chooses the breakpoint type.
>  It is one of:
>  .RS
>  .TP
> -.BR HW_BREAKPOINT_EMPTY
> +.B HW_BREAKPOINT_EMPTY
>  No breakpoint.
>  .TP
> -.BR HW_BREAKPOINT_R
> +.B HW_BREAKPOINT_R
>  Count when we read the memory location.
>  .TP
> -.BR HW_BREAKPOINT_W
> +.B HW_BREAKPOINT_W
>  Count when we write the memory location.
>  .TP
> -.BR HW_BREAKPOINT_RW
> +.B HW_BREAKPOINT_RW
>  Count when we read or write the memory location.
>  .TP
> -.BR HW_BREAKPOINT_X
> +.B HW_BREAKPOINT_X
>  Count when we execute code at the memory location.
>  .PP
>  The values can be combined via a bitwise or, but the
> @@ -1249,14 +1259,14 @@ with
>  is not allowed.
>  .RE
>  .TP
> -.IR "bp_addr" " (since Linux 2.6.33)"
> +.IR bp_addr " (since Linux 2.6.33)"
>  .\" commit 24f1e32c60c45c89a997c73395b69c8af6f0a84e
>  This is the address of the breakpoint.
>  For execution breakpoints, this is the memory address of the instruction
>  of interest; for read and write breakpoints, it is the memory address
>  of the memory location of interest.
>  .TP
> -.IR "config1" " (since Linux 2.6.39)"
> +.IR config1 " (since Linux 2.6.39)"
>  .\" commit a7e3ed1e470116c9d12c2f778431a481a6be8ab6
>  .I config1
>  is used for setting events that need an extra register or otherwise
> @@ -1264,7 +1274,7 @@ do not fit in the regular config field.
>  Raw OFFCORE_EVENTS on Nehalem/Westmere/SandyBridge use this field
>  on Linux 3.3 and later kernels.
>  .TP
> -.IR "bp_len" " (since Linux 2.6.33)"
> +.IR bp_len " (since Linux 2.6.33)"
>  .\" commit 24f1e32c60c45c89a997c73395b69c8af6f0a84e
>  .I bp_len
>  is the length of the breakpoint being measured if
> @@ -1280,14 +1290,14 @@ and
>  For an execution breakpoint, set this to
>  .IR sizeof(long) .
>  .TP
> -.IR "config2" " (since Linux 2.6.39)"
> +.IR config2 " (since Linux 2.6.39)"
>  .\" commit a7e3ed1e470116c9d12c2f778431a481a6be8ab6
>  .I config2
>  is a further extension of the
>  .I config1
>  field.
>  .TP
> -.IR "branch_sample_type" " (since Linux 3.4)"
> +.IR branch_sample_type " (since Linux 3.4)"
>  .\" commit bce38cd53e5ddba9cb6d708c4ef3d04a4016ec7e
>  If
>  .B PERF_SAMPLE_BRANCH_STACK
> @@ -1358,20 +1368,20 @@ This requires hardware support, currently only found
>  on Intel x86 Haswell or newer.
>  .RE
>  .TP
> -.IR "sample_regs_user" " (since Linux 3.7)"
> +.IR sample_regs_user " (since Linux 3.7)"
>  .\" commit 4018994f3d8785275ef0e7391b75c3462c029e56
>  This bit mask defines the set of user CPU registers to dump on samples.
>  The layout of the register mask is architecture-specific and
>  is described in the kernel header file
>  .IR arch/ARCH/include/uapi/asm/perf_regs.h .
>  .TP
> -.IR "sample_stack_user" " (since Linux 3.7)"
> +.IR sample_stack_user " (since Linux 3.7)"
>  .\" commit c5ebcedb566ef17bda7b02686e0d658a7bb42ee7
>  This defines the size of the user stack to dump if
>  .B PERF_SAMPLE_STACK_USER
>  is specified.
>  .TP
> -.IR "clockid" " (since Linux 4.1)"
> +.IR clockid " (since Linux 4.1)"
>  .\" commit 34f439278cef7b1177f8ce24f9fc81dfc6221d3b
>  If
>  .I use_clockid
> @@ -1388,13 +1398,13 @@ and
>  .B CLOCK_TAI
>  currently supported.
>  .TP
> -.IR "aux_watermark" " (since Linux 4.1)"
> +.IR aux_watermark " (since Linux 4.1)"
>  .\" commit 1a5941312414c71dece6717da9a0fa1303127afa
>  This specifies how much data is required to trigger a
>  .B PERF_RECORD_AUX
>  sample.
>  .TP
> -.IR "sample_max_stack" " (since Linux 4.8)"
> +.IR sample_max_stack " (since Linux 4.8)"
>  .\" commit 97c79a38cd454602645f0470ffb444b3b75ce574
>  When
>  .I sample_type
> @@ -1682,34 +1692,39 @@ delta since
>  .I time_enabled
>  (in nanoseconds) using rdtsc or similar.
>  .IP
> -.nf
> -    u64 quot, rem;
> -    u64 delta;
> -    quot = (cyc >> time_shift);
> -    rem = cyc & (((u64)1 << time_shift) \- 1);
> -    delta = time_offset + quot * time_mult +
> -            ((rem * time_mult) >> time_shift);
> -.fi
> +.in +4n
> +.EX
> +u64 quot, rem;
> +u64 delta;
> +
> +quot  = cyc >> time_shift;
> +rem   = cyc & (((u64)1 << time_shift) \- 1);
> +delta = time_offset + quot * time_mult +
> +        ((rem * time_mult) >> time_shift);
> +.EE
> +.in
>  .IP
>  Where
>  .IR time_offset ,
>  .IR time_mult ,
>  .IR time_shift ,
>  and
> -.IR cyc
> +.I cyc
>  are read in the
>  seqcount loop described above.
>  This delta can then be added to
>  enabled and possible running (if idx), improving the scaling:
>  .IP
> -.nf
> -    enabled += delta;
> -    if (idx)
> -        running += delta;
> -    quot = count / running;
> -    rem  = count % running;
> -    count = quot * enabled + (rem * enabled) / running;
> -.fi
> +.in +4n
> +.EX
> +enabled += delta;
> +if (idx)
> +    running += delta;
> +quot  = count / running;
> +rem   = count % running;
> +count = quot * enabled + (rem * enabled) / running;
> +.EE
> +.in
>  .TP
>  .IR time_zero " (since Linux 3.12)"
>  .\" commit fa7315871046b9a4c48627905691dbde57e51033
> @@ -1718,23 +1733,31 @@ If
>  .I cap_usr_time_zero
>  is set, then the hardware clock (the TSC timestamp counter on x86)
>  can be calculated from the
> -.IR time_zero ", " time_mult ", and " time_shift " values:"
> +.IR time_zero ,
> +.IR time_mult ,
> +and
> +.I time_shift
> +values:
>  .IP
> -.nf
> -    time = timestamp - time_zero;
> -    quot = time / time_mult;
> -    rem  = time % time_mult;
> -    cyc = (quot << time_shift) + (rem << time_shift) / time_mult;
> -.fi
> +.in +4n
> +.EX
> +time = timestamp - time_zero;
> +quot = time / time_mult;
> +rem  = time % time_mult;
> +cyc  = (quot << time_shift) + (rem << time_shift) / time_mult;
> +.EE
> +.in
>  .IP
>  And vice versa:
>  .IP
> -.nf
> -    quot = cyc >> time_shift;
> -    rem  = cyc & (((u64)1 << time_shift) - 1);
> -    timestamp = time_zero + quot * time_mult +
> -        ((rem * time_mult) >> time_shift);
> -.fi
> +.in +4n
> +.EX
> +quot = cyc >> time_shift;
> +rem  = cyc & (((u64)1 << time_shift) - 1);
> +timestamp = time_zero + quot * time_mult +
> +            ((rem * time_mult) >> time_shift);
> +.EE
> +.in
>  .TP
>  .I data_head
>  This points to the head of the data section.
> @@ -1785,7 +1808,7 @@ The desired offset and size must be page aligned, and the size
>  must be a power of two.
>  These values are then passed to mmap in order to map the AUX buffer.
>  Pages in the AUX buffer are included as part of the
> -.BR RLIMIT_MEMLOCK
> +.B RLIMIT_MEMLOCK
>  resource limit (see
>  .BR setrlimit (2)),
>  and also as part of the
> @@ -1802,10 +1825,14 @@ new data began, and it is the consumer's job to disable
>  measurement while reading to avoid possible data races.
>  .IP
>  The
> -.IR aux_head " and " aux_tail
> +.I aux_head
> +and
> +.I aux_tail
>  ring buffer pointers have the same behavior and ordering
>  rules as the previous described
> -.IR data_head " and " data_tail .
> +.I data_head
> +and
> +.IR data_tail .
>  .PP
>  The following 2^n ring-buffer pages have the layout described below.
>  .PP
> @@ -1897,9 +1924,9 @@ system call.
>  .BR PERF_RECORD_MISC_SWITCH_OUT " (since Linux 4.3)"
>  .\" commit 45ac1403f564f411c6a383a2448688ba8dd705a4
>  When a
> -.BR PERF_RECORD_SWITCH
> +.B PERF_RECORD_SWITCH
>  or
> -.BR PERF_RECORD_SWITCH_CPU_WIDE
> +.B PERF_RECORD_SWITCH_CPU_WIDE
>  record is generated, this bit indicates that the
>  context switch is away from the current process
>  (instead of into the current process).
> @@ -2267,7 +2294,7 @@ Support for
>  .IR mispred ,
>  .IR predicted ,
>  and
> -.IR cycles
> +.I cycles
>  is optional; if not supported, those
>  values will be 0.
>  .PP
> @@ -2284,7 +2311,9 @@ is enabled, then the user CPU registers are recorded.
>  The
>  .I abi
>  field is one of
> -.BR PERF_SAMPLE_REGS_ABI_NONE ", " PERF_SAMPLE_REGS_ABI_32 " or"
> +.BR PERF_SAMPLE_REGS_ABI_NONE ,
> +.BR PERF_SAMPLE_REGS_ABI_32 ,
> +or
>  .BR PERF_SAMPLE_REGS_ABI_64 .
>  .IP
>  The
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
