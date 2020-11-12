Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B43D42B1244
	for <lists+linux-man@lfdr.de>; Thu, 12 Nov 2020 23:57:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726255AbgKLW5Z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 12 Nov 2020 17:57:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725971AbgKLW5Y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 12 Nov 2020 17:57:24 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8DA7C0613D4
        for <linux-man@vger.kernel.org>; Thu, 12 Nov 2020 14:57:23 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id o15so7709301wru.6
        for <linux-man@vger.kernel.org>; Thu, 12 Nov 2020 14:57:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gNQt/R1zgpkrTZOHKWBxjUFg3oGqYihiApl6bKoceHo=;
        b=iz/MK2EKJ4587Q35X2Gs1g+Zp6H4RffLJ+KO/wCFEidPQKqC8Wh/6olnHL13XeiLob
         C8L1UpTRmeC3Oi/UqGS/7960IiofiUANLUS894pgootfvUMy64RlpoykHtKPwCDuHGO/
         wvu0XjHrEFhQN5wrFGWlef4Zi/Q5zaXQCQAGP10I5bscAYqxZJ9rGLaSkCasc4/9tp66
         Ehe1cNgfOj4uzYUTCkRGHFszme0IQ1kKAmq9rDtWg29hCkNkL91kVCOsw5dmloU0t4xH
         eEuTJZdbZ126jk8sCOef9Fnb5nYuzard2bLQLj7njkU7qkOGBhSMiy66CCpJ54QLG296
         6gAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gNQt/R1zgpkrTZOHKWBxjUFg3oGqYihiApl6bKoceHo=;
        b=YNov6yXcgqaWwW/1OZQXKcEVKUfoHv7n0EgqgYgdXTDqISsfqifrqxqQO3DkgXI9Fp
         oNh87E6RnSA7A4PUn0wRWCfD8HXJkEf6rg1gMYVSJiRkDy1Cl5QjR71it6bu15vQ0n9R
         xSQE6a/QokvwBfhrMXlA/6ZKu4U6ToFY0a2vYKmviGCs5UB3NFb1GBwIFo9nB+NHEJB4
         nMB9lPciyUKNl4iXykaa4ZCHfa/l3hg4KvxRgX3qn0qnDIlx+CDAaOGkdC7ZZmG6GHfl
         tLFKV/xeAGUaMpErynOtXF6TDujt96ORBKMhE/QBg1Sd9MFFE3EmF23NNXXFQP/Flit2
         txCw==
X-Gm-Message-State: AOAM5329lS8vwnR+e1lk6J7RJfsRDzjMurOti5gpmGzn4gMTwJwsAX+o
        tedGSWe1BJZJu2W0BsMXZzI=
X-Google-Smtp-Source: ABdhPJy4Pfg2vtMxw99uZf3IaQ3kJkPr1qzsFRxJtBBQydO/1d7BdxvtGsm+6Gv6mRv+Bf2KpmVpnA==
X-Received: by 2002:adf:d4c6:: with SMTP id w6mr2245556wrk.71.1605221841360;
        Thu, 12 Nov 2020 14:57:21 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id c8sm8095541wrv.26.2020.11.12.14.57.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2020 14:57:20 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org, colomar.6.4.3@gmail.com
Subject: [RFC v1] perf_event_open.2: srcfix + ffix
Date:   Thu, 12 Nov 2020 23:55:29 +0100
Message-Id: <20201112225528.99397-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <fb71a481-45a1-7511-97cf-bd2017562a16@gmail.com>
References: <fb71a481-45a1-7511-97cf-bd2017562a16@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Changes:

- Use .RS/.RE combined with .PP, instead of .IP.
	This adds markup lines,
	but allows for more generic constructs that don't depend
	on the context.
	In case of .TP, add .RS right after the paragraph tag.
	Exception: Single-paragraph .TP entries don't use .RS/.RE
- Separate .B or .I entries on separate lines for each.
- Fix .BR or .IR where 'R' is not needed.
- Use the following markup for code between paragraphs:
	.PP	((unless .IP is _really_ needed))
	.in +4n
	.EX
	//code
	.EE
	.in

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

Hi Michael,

This is a sample of how I would change the code for indenting.
I also added some srcfixes that probably don't deserve a separate patch,
such as splitting lines or removing unnecessary "" or [.IR] -> [.I].

There are 29 net line additions due to splitting lines
and indenting code with markup instead of hardcoding.

So it means the remaining 44 net additions are due to [.RS/.RE].
Not too many considering the ~2800 lines involved.

Still between 1% and 2% of net additions.

I've compared side to side the man page from release 5.09,
and the page after this patch,
and the changes are minor
(just a forced new line for .TP entries with multiple paragraphs,
due to [.RS], as expected).

What do you think about these changes?

Cheers,

Alex


 man2/perf_event_open.2 | 463 ++++++++++++++++++++++++-----------------
 1 file changed, 268 insertions(+), 195 deletions(-)

diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
index eb7ab29ea..b99c9e30d 100644
--- a/man2/perf_event_open.2
+++ b/man2/perf_event_open.2
@@ -126,7 +126,7 @@ The leader is created first, with
 The rest of the group members are created with subsequent
 .BR perf_event_open ()
 calls with
-.IR group_fd
+.I group_fd
 being set to the file descriptor of the group leader.
 (A single event on its own is created with
 .IR group_fd " = \-1"
@@ -162,7 +162,7 @@ then
 .TP
 .BR PERF_FLAG_FD_NO_GROUP
 This flag tells the event to ignore the
-.IR group_fd
+.I group_fd
 parameter except for the purpose of setting up output redirection
 using the
 .B PERF_FLAG_FD_OUTPUT
@@ -289,9 +289,9 @@ The fields of the
 structure are described in more detail below:
 .TP
 .I type
+.RS
 This field specifies the overall event type.
 It has one of the following values:
-.RS
 .TP
 .B PERF_TYPE_HARDWARE
 This indicates one of the "generalized" hardware events provided
@@ -352,11 +352,16 @@ These two dynamic PMUs create a kprobe/uprobe and attach it to the
 file descriptor generated by perf_event_open.
 The kprobe/uprobe will be destroyed on the destruction of the file descriptor.
 See fields
-.IR kprobe_func ", " uprobe_path ", " kprobe_addr ", and " probe_offset
+.IR kprobe_func ,
+.IR uprobe_path ,
+.IR kprobe_addr ,
+and
+.I probe_offset
 for more details.
 .RE
 .TP
 .I "size"
+.RS
 The size of the
 .I perf_event_attr
 structure for forward/backward compatibility.
@@ -364,7 +369,7 @@ Set this using
 .I sizeof(struct perf_event_attr)
 to allow the kernel to see
 the struct size at the time of compilation.
-.IP
+.PP
 The related define
 .B PERF_ATTR_SIZE_VER0
 is set to 64; this was the size of the first published struct.
@@ -394,18 +399,22 @@ is 112 corresponding to the addition of
 .I aux_watermark
 in Linux 4.1.
 .\" commit 1a5941312414c71dece6717da9a0fa1303127afa
+.RE
 .TP
 .I "config"
+.RS
 This specifies which event you want, in conjunction with
 the
 .I type
 field.
 The
-.IR config1 " and " config2
+.I config1
+and
+.I config2
 fields are also taken into account in cases where 64 bits is not
 enough to fully specify the event.
 The encoding of these fields are event dependent.
-.IP
+.PP
 There are various ways to set the
 .I config
 field that are dependent on the value of the previously
@@ -416,7 +425,7 @@ What follows are various possible settings for
 .I config
 separated out by
 .IR type .
-.IP
+.PP
 If
 .I type
 is
@@ -426,7 +435,7 @@ Not all of these are available on all platforms.
 Set
 .I config
 to one of the following:
-.RS 12
+.RS 4
 .TP
 .B PERF_COUNT_HW_CPU_CYCLES
 Total cycles.
@@ -475,7 +484,7 @@ Stalled cycles during retirement.
 .\" commit c37e17497e01fc0f5d2d6feb5723b210b3ab8890
 Total cycles; not affected by CPU frequency scaling.
 .RE
-.IP
+.PP
 If
 .I type
 is
@@ -484,7 +493,7 @@ we are measuring software events provided by the kernel.
 Set
 .I config
 to one of the following:
-.RS 12
+.RS 4
 .TP
 .B PERF_COUNT_SW_CPU_CLOCK
 This reports the CPU clock, a high-resolution per-CPU timer.
@@ -536,7 +545,6 @@ This dummy event allows gathering such records without requiring
 a counting event.
 .RE
 .PP
-.RS
 If
 .I type
 is
@@ -547,9 +555,7 @@ The value to use in
 can be obtained from under debugfs
 .I tracing/events/*/*/id
 if ftrace is enabled in the kernel.
-.RE
 .PP
-.RS
 If
 .I type
 is
@@ -558,15 +564,15 @@ then we are measuring a hardware CPU cache event.
 To calculate the appropriate
 .I config
 value use the following equation:
-.PP
-.RS 4
 .RS 4
+.PP
+.in +4n
 .EX
 config = (perf_hw_cache_id) |
          (perf_hw_cache_op_id << 8) |
          (perf_hw_cache_op_result_id << 16);
 .EE
-.RE
+.in
 .PP
 where
 .I perf_hw_cache_id
@@ -652,24 +658,28 @@ Its parameters are set in other places.
 If
 .I type
 is
-.BR kprobe
+.B kprobe
 or
 .BR uprobe ,
 set
-.IR retprobe
+.I retprobe
 (bit 0 of
 .IR config ,
 see
 .IR /sys/bus/event_source/devices/[k,u]probe/format/retprobe )
 for kretprobe/uretprobe.
 See fields
-.IR kprobe_func ", " uprobe_path ", " kprobe_addr ", and " probe_offset
+.IR kprobe_func ,
+.IR uprobe_path ,
+.IR kprobe_addr ,
+and
+.I probe_offset
 for more details.
 .RE
 .TP
 .IR kprobe_func ", " uprobe_path ", " kprobe_addr ", and " probe_offset
 These fields describe the kprobe/uprobe for dynamic PMUs
-.BR kprobe
+.B kprobe
 and
 .BR uprobe .
 For
@@ -691,6 +701,7 @@ and
 .IR probe_offset .
 .TP
 .IR sample_period ", " sample_freq
+.RS
 A "sampling" event is one that generates an overflow notification
 every N events, where N is given by
 .IR sample_period .
@@ -701,7 +712,7 @@ in the mmap buffer.
 The
 .I sample_type
 field controls what data is recorded on each overflow.
-.IP
+.PP
 .I sample_freq
 can be used if you wish to use frequency rather than period.
 In this case, you set the
@@ -711,8 +722,10 @@ The kernel will adjust the sampling period
 to try and achieve the desired rate.
 The rate of adjustment is a
 timer tick.
+.RE
 .TP
-.I "sample_type"
+.I sample_type
+.RS
 The various bits in this field specify which values to include
 in the sample.
 They will be recorded in a ring-buffer,
@@ -723,7 +736,6 @@ sample are documented in the MMAP Layout subsection below;
 it is not the
 .I "enum perf_event_sample_format"
 order.
-.RS
 .TP
 .B PERF_SAMPLE_IP
 Records instruction pointer.
@@ -766,13 +778,15 @@ Usually returned by tracepoint events.
 .TP
 .BR PERF_SAMPLE_BRANCH_STACK " (since Linux 3.4)"
 .\" commit bce38cd53e5ddba9cb6d708c4ef3d04a4016ec7e
+.RS
 This provides a record of recent branches, as provided
 by CPU branch sampling hardware (such as Intel Last Branch Record).
 Not all hardware supports this feature.
-.IP
+.PP
 See the
 .I branch_sample_type
 field for how to filter which branches are reported.
+.RE
 .TP
 .BR PERF_SAMPLE_REGS_USER " (since Linux 3.7)"
 .\" commit 4018994f3d8785275ef0e7391b75c3462c029e56
@@ -799,12 +813,13 @@ supports this feature.
 .TP
 .BR PERF_SAMPLE_IDENTIFIER " (since Linux 3.12)"
 .\" commit ff3d527cebc1fa3707c617bfe9e74f53fcfb0955
+.RS
 Places the
 .B SAMPLE_ID
 value in a fixed position in the record,
 either at the beginning (for sample events) or at the end
 (if a non-sample event).
-.IP
+.PP
 This was necessary because a sample stream may have
 records from various different event sources with different
 .I sample_type
@@ -816,7 +831,7 @@ but
 the format could not be found without knowing what
 event the sample belonged to (causing a circular
 dependency).
-.IP
+.PP
 The
 .B PERF_SAMPLE_IDENTIFIER
 setting makes the event stream always parsable
@@ -826,12 +841,14 @@ in a fixed location, even though
 it means having duplicate
 .B SAMPLE_ID
 values in records.
+.RE
 .TP
 .BR PERF_SAMPLE_TRANSACTION " (since Linux 3.13)"
 .\" commit fdfbbd07e91f8fe387140776f3fd94605f0c89e5
+.RS
 Records reasons for transactional memory abort events
 (for example, from Intel TSX transactional memory support).
-.IP
+.PP
 The
 .I precise_ip
 setting must be greater than 0 and a transactional memory abort
@@ -839,6 +856,7 @@ event must be measured or no values will be recorded.
 Also note that some perf_event measurements, such as sampled
 cycle counting, may cause extraneous aborts (by causing an
 interrupt during a transaction).
+.RE
 .TP
 .BR PERF_SAMPLE_REGS_INTR " (since Linux 3.19)"
 .\" commit 60e2364e60e86e81bc6377f49779779e6120977f
@@ -859,13 +877,13 @@ hardware at the time of the sampled
 instruction's retirement.
 .RE
 .TP
-.IR "read_format"
+.I read_format
+.RS
 This field specifies the format of the data returned by
 .BR read (2)
 on a
 .BR perf_event_open ()
 file descriptor.
-.RS
 .TP
 .B PERF_FORMAT_TOTAL_TIME_ENABLED
 Adds the 64-bit
@@ -888,7 +906,8 @@ Adds a 64-bit unique value that corresponds to the event group.
 Allows all counter values in an event group to be read with one read.
 .RE
 .TP
-.IR "disabled"
+.I disabled
+.RS
 The
 .I disabled
 bit specifies whether the counter starts out disabled or enabled.
@@ -897,7 +916,7 @@ If disabled, the event can later be enabled by
 .BR prctl (2),
 or
 .IR enable_on_exec .
-.IP
+.PP
 When creating an event group, typically the group leader is initialized
 with
 .I disabled
@@ -908,8 +927,10 @@ Despite
 .I disabled
 being 0, the child events will not start until the group leader
 is enabled.
+.RE
 .TP
-.IR "inherit"
+.I inherit
+.RS
 The
 .I inherit
 bit specifies that this counter should count events of child
@@ -917,13 +938,14 @@ tasks as well as the task specified.
 This applies only to new children, not to any existing children at
 the time the counter is created (nor to any new children of
 existing children).
-.IP
+.PP
 Inherit does not work for some combinations of
 .IR read_format
 values, such as
 .BR PERF_FORMAT_GROUP .
+.RE
 .TP
-.IR "pinned"
+.I pinned
 The
 .I pinned
 bit specifies that the counter should always be on the CPU if at all
@@ -936,7 +958,8 @@ return end-of-file (i.e.,
 .BR read (2)
 returns 0) until the counter is subsequently enabled or disabled.
 .TP
-.IR "exclusive"
+.I exclusive
+.RS
 The
 .I exclusive
 bit specifies that when this counter's group is on the CPU,
@@ -944,21 +967,22 @@ it should be the only group using the CPU's counters.
 In the future this may allow monitoring programs to
 support PMU features that need to run alone so that they do not
 disrupt other hardware counters.
-.IP
+.PP
 Note that many unexpected situations may prevent events with the
 .I exclusive
 bit set from ever running.
 This includes any users running a system-wide
 measurement as well as any kernel use of the performance counters
 (including the commonly enabled NMI Watchdog Timer interface).
+.RE
 .TP
-.IR "exclude_user"
+.I exclude_user
 If this bit is set, the count excludes events that happen in user space.
 .TP
-.IR "exclude_kernel"
+.I exclude_kernel
 If this bit is set, the count excludes events that happen in kernel space.
 .TP
-.IR "exclude_hv"
+.I exclude_hv
 If this bit is set, the count excludes events that happen in the
 hypervisor.
 This is mainly for PMUs that have built-in support for handling this
@@ -966,12 +990,12 @@ This is mainly for PMUs that have built-in support for handling this
 Extra support is needed for handling hypervisor measurements on most
 machines.
 .TP
-.IR "exclude_idle"
+.I exclude_idle
 If set, don't count when the CPU is running the idle task.
 While you can currently enable this for any event type, it is ignored
 for all but software events.
 .TP
-.IR "mmap"
+.I mmap
 The
 .I mmap
 bit enables generation of
@@ -985,7 +1009,7 @@ This allows tools to notice new executable code being mapped into
 a program (dynamic shared libraries for example)
 so that addresses can be mapped back to the original code.
 .TP
-.IR "comm"
+.I comm
 The
 .I comm
 bit enables tracking of process command name as modified by the
@@ -1004,30 +1028,30 @@ can be used to differentiate the
 .BR exec (2)
 case from the others.
 .TP
-.IR "freq"
+.I freq
 If this bit is set, then
 .I sample_frequency
 not
 .I sample_period
 is used when setting up the sampling interval.
 .TP
-.IR "inherit_stat"
+.I inherit_stat
 This bit enables saving of event counts on context switch for
 inherited tasks.
 This is meaningful only if the
 .I inherit
 field is set.
 .TP
-.IR "enable_on_exec"
+.I enable_on_exec
 If this bit is set, a counter is automatically
 enabled after a call to
 .BR exec (2).
 .TP
-.IR "task"
+.I task
 If this bit is set, then
 fork/exit notifications are included in the ring buffer.
 .TP
-.IR "watermark"
+.I watermark
 If set, have an overflow notification happen when we cross the
 .I wakeup_watermark
 boundary.
@@ -1035,8 +1059,9 @@ Otherwise, overflow notifications happen after
 .I wakeup_events
 samples.
 .TP
-.IR "precise_ip" " (since Linux 2.6.35)"
+.IR precise_ip " (since Linux 2.6.35)"
 .\" commit ab608344bcbde4f55ec4cd911b686b0ce3eae076
+.RS
 This controls the amount of skid.
 Skid is how many instructions
 execute between an event of interest happening and the kernel
@@ -1045,9 +1070,8 @@ Smaller skid is
 better and allows more accurate reporting of which events
 correspond to which instructions, but hardware is often limited
 with how small this can be.
-.IP
+.PP
 The possible values of this field are the following:
-.RS
 .IP 0 3
 .B SAMPLE_IP
 can have arbitrary skid.
@@ -1064,7 +1088,7 @@ See also the description of
 .BR PERF_RECORD_MISC_EXACT_IP .
 .RE
 .TP
-.IR "mmap_data" " (since Linux 2.6.36)"
+.IR mmap_data " (since Linux 2.6.36)"
 .\" commit 3af9e859281bda7eb7c20b51879cf43aa788ac2e
 This is the counterpart of the
 .I mmap
@@ -1077,15 +1101,16 @@ calls that do not have
 .B PROT_EXEC
 set (for example data and SysV shared memory).
 .TP
-.IR "sample_id_all" " (since Linux 2.6.38)"
+.IR sample_id_all " (since Linux 2.6.38)"
 .\" commit c980d1091810df13f21aabbce545fd98f545bbf7
+.RS
 If set, then TID, TIME, ID, STREAM_ID, and CPU can
 additionally be included in
 .RB non- PERF_RECORD_SAMPLE s
 if the corresponding
 .I sample_type
 is selected.
-.IP
+.PP
 If
 .B PERF_SAMPLE_IDENTIFIER
 is specified, then an additional ID value is included
@@ -1093,9 +1118,9 @@ as the last value to ease parsing the record stream.
 This may lead to the
 .I id
 value appearing twice.
-.IP
+.PP
 The layout is described by this pseudo-structure:
-.IP
+.PP
 .in +4n
 .EX
 struct sample_id {
@@ -1108,8 +1133,9 @@ struct sample_id {
 };
 .EE
 .in
+.RE
 .TP
-.IR "exclude_host" " (since Linux 3.2)"
+.IR exclude_host " (since Linux 3.2)"
 .\" commit a240f76165e6255384d4bdb8139895fac7988799
 When conducting measurements that include processes running
 VM instances (i.e., have executed a
@@ -1120,7 +1146,7 @@ This is only meaningful outside the guests; this setting does
 not change counts gathered inside of a guest.
 Currently, this functionality is x86 only.
 .TP
-.IR "exclude_guest" " (since Linux 3.2)"
+.IR exclude_guest " (since Linux 3.2)"
 .\" commit a240f76165e6255384d4bdb8139895fac7988799
 When conducting measurements that include processes running
 VM instances (i.e., have executed a
@@ -1131,15 +1157,15 @@ This is only meaningful outside the guests; this setting does
 not change counts gathered inside of a guest.
 Currently, this functionality is x86 only.
 .TP
-.IR "exclude_callchain_kernel" " (since Linux 3.7)"
+.IR exclude_callchain_kernel " (since Linux 3.7)"
 .\" commit d077526485d5c9b12fe85d0b2b3b7041e6bc5f91
 Do not include kernel callchains.
 .TP
-.IR "exclude_callchain_user" " (since Linux 3.7)"
+.IR exclude_callchain_user " (since Linux 3.7)"
 .\" commit d077526485d5c9b12fe85d0b2b3b7041e6bc5f91
 Do not include user callchains.
 .TP
-.IR "mmap2" " (since Linux 3.16)"
+.IR mmap2 " (since Linux 3.16)"
 .\" commit 13d7a2410fa637f450a29ecb515ac318ee40c741
 .\" This is tricky; was committed during 3.12 development
 .\" but right before release was disabled.
@@ -1152,7 +1178,7 @@ The
 .I mmap
 flag must also be set for this to work.
 .TP
-.IR "comm_exec" " (since Linux 3.16)"
+.IR comm_exec " (since Linux 3.16)"
 .\" commit 82b897782d10fcc4930c9d4a15b175348fdd2871
 This is purely a feature-detection flag, it does not change
 kernel behavior.
@@ -1168,7 +1194,7 @@ reported was caused by a call to
 This allows tools to distinguish between the various
 types of process renaming.
 .TP
-.IR "use_clockid" " (since Linux 4.1)"
+.IR use_clockid " (since Linux 4.1)"
 .\" commit 34f439278cef7b1177f8ce24f9fc81dfc6221d3b
 This allows selecting which internal Linux clock to use
 when generating timestamps via the
@@ -1177,7 +1203,7 @@ field.
 This can make it easier to correlate perf sample times with
 timestamps generated by other tools.
 .TP
-.IR "context_switch" " (since Linux 4.3)"
+.IR context_switch " (since Linux 4.3)"
 .\" commit 45ac1403f564f411c6a383a2448688ba8dd705a4
 This enables the generation of
 .B PERF_RECORD_SWITCH
@@ -1192,7 +1218,8 @@ information even with strict
 .I perf_event_paranoid
 settings.
 .TP
-.IR "wakeup_events" ", " "wakeup_watermark"
+.IR wakeup_events ", " wakeup_watermark
+.RS
 This union sets how many samples
 .RI ( wakeup_events )
 or bytes
@@ -1201,7 +1228,7 @@ happen before an overflow notification happens.
 Which one is used is selected by the
 .I watermark
 bit flag.
-.IP
+.PP
 .I wakeup_events
 counts only
 .B PERF_RECORD_SAMPLE
@@ -1211,32 +1238,33 @@ To receive overflow notification for all
 types choose watermark and set
 .I wakeup_watermark
 to 1.
-.IP
+.PP
 Prior to Linux 3.0, setting
 .\" commit f506b3dc0ec454a16d40cab9ee5d75435b39dc50
 .I wakeup_events
 to 0 resulted in no overflow notifications;
 more recent kernels treat 0 the same as 1.
+.RE
 .TP
-.IR "bp_type" " (since Linux 2.6.33)"
+.IR bp_type " (since Linux 2.6.33)"
 .\" commit 24f1e32c60c45c89a997c73395b69c8af6f0a84e
+.RS
 This chooses the breakpoint type.
 It is one of:
-.RS
 .TP
-.BR HW_BREAKPOINT_EMPTY
+.B HW_BREAKPOINT_EMPTY
 No breakpoint.
 .TP
-.BR HW_BREAKPOINT_R
+.B HW_BREAKPOINT_R
 Count when we read the memory location.
 .TP
-.BR HW_BREAKPOINT_W
+.B HW_BREAKPOINT_W
 Count when we write the memory location.
 .TP
-.BR HW_BREAKPOINT_RW
+.B HW_BREAKPOINT_RW
 Count when we read or write the memory location.
 .TP
-.BR HW_BREAKPOINT_X
+.B HW_BREAKPOINT_X
 Count when we execute code at the memory location.
 .PP
 The values can be combined via a bitwise or, but the
@@ -1249,14 +1277,14 @@ with
 is not allowed.
 .RE
 .TP
-.IR "bp_addr" " (since Linux 2.6.33)"
+.IR bp_addr " (since Linux 2.6.33)"
 .\" commit 24f1e32c60c45c89a997c73395b69c8af6f0a84e
 This is the address of the breakpoint.
 For execution breakpoints, this is the memory address of the instruction
 of interest; for read and write breakpoints, it is the memory address
 of the memory location of interest.
 .TP
-.IR "config1" " (since Linux 2.6.39)"
+.IR config1 " (since Linux 2.6.39)"
 .\" commit a7e3ed1e470116c9d12c2f778431a481a6be8ab6
 .I config1
 is used for setting events that need an extra register or otherwise
@@ -1264,7 +1292,7 @@ do not fit in the regular config field.
 Raw OFFCORE_EVENTS on Nehalem/Westmere/SandyBridge use this field
 on Linux 3.3 and later kernels.
 .TP
-.IR "bp_len" " (since Linux 2.6.33)"
+.IR bp_len " (since Linux 2.6.33)"
 .\" commit 24f1e32c60c45c89a997c73395b69c8af6f0a84e
 .I bp_len
 is the length of the breakpoint being measured if
@@ -1280,26 +1308,26 @@ and
 For an execution breakpoint, set this to
 .IR sizeof(long) .
 .TP
-.IR "config2" " (since Linux 2.6.39)"
+.IR config2 " (since Linux 2.6.39)"
 .\" commit a7e3ed1e470116c9d12c2f778431a481a6be8ab6
 .I config2
 is a further extension of the
 .I config1
 field.
 .TP
-.IR "branch_sample_type" " (since Linux 3.4)"
+.IR branch_sample_type " (since Linux 3.4)"
 .\" commit bce38cd53e5ddba9cb6d708c4ef3d04a4016ec7e
+.RS
 If
 .B PERF_SAMPLE_BRANCH_STACK
 is enabled, then this specifies what branches to include
 in the branch record.
-.IP
+.PP
 The first part of the value is the privilege level, which
 is a combination of one of the values listed below.
 If the user does not set privilege level explicitly, the kernel
 will use the event's privilege level.
 Event and branch privilege levels do not have to match.
-.RS
 .TP
 .B PERF_SAMPLE_BRANCH_USER
 Branch target is in user space.
@@ -1358,20 +1386,20 @@ This requires hardware support, currently only found
 on Intel x86 Haswell or newer.
 .RE
 .TP
-.IR "sample_regs_user" " (since Linux 3.7)"
+.IR sample_regs_user " (since Linux 3.7)"
 .\" commit 4018994f3d8785275ef0e7391b75c3462c029e56
 This bit mask defines the set of user CPU registers to dump on samples.
 The layout of the register mask is architecture-specific and
 is described in the kernel header file
 .IR arch/ARCH/include/uapi/asm/perf_regs.h .
 .TP
-.IR "sample_stack_user" " (since Linux 3.7)"
+.IR sample_stack_user " (since Linux 3.7)"
 .\" commit c5ebcedb566ef17bda7b02686e0d658a7bb42ee7
 This defines the size of the user stack to dump if
 .B PERF_SAMPLE_STACK_USER
 is specified.
 .TP
-.IR "clockid" " (since Linux 4.1)"
+.IR clockid " (since Linux 4.1)"
 .\" commit 34f439278cef7b1177f8ce24f9fc81dfc6221d3b
 If
 .I use_clockid
@@ -1388,13 +1416,13 @@ and
 .B CLOCK_TAI
 currently supported.
 .TP
-.IR "aux_watermark" " (since Linux 4.1)"
+.IR aux_watermark " (since Linux 4.1)"
 .\" commit 1a5941312414c71dece6717da9a0fa1303127afa
 This specifies how much data is required to trigger a
 .B PERF_RECORD_AUX
 sample.
 .TP
-.IR "sample_max_stack" " (since Linux 4.8)"
+.IR sample_max_stack " (since Linux 4.8)"
 .\" commit 97c79a38cd454602645f0470ffb444b3b75ce574
 When
 .I sample_type
@@ -1571,6 +1599,7 @@ Time the event was running.
 .TP
 .IR cap_usr_time " / " cap_usr_rdpmc " / " cap_bit0 " (since Linux 3.4)"
 .\" commit c7206205d00ab375839bd6c7ddb247d600693c09
+.RS
 There was a bug in the definition of
 .I cap_usr_time
 and
@@ -1582,7 +1611,7 @@ impossible to know if
 or
 .I cap_usr_rdpmc
 were actually set.
-.IP
+.PP
 Starting with Linux 3.12, these are renamed to
 .\" commit fa7315871046b9a4c48627905691dbde57e51033
 .I cap_bit0
@@ -1591,29 +1620,33 @@ and you should use the
 and
 .I cap_user_rdpmc
 fields instead.
+.RE
 .TP
 .IR cap_bit0_is_deprecated " (since Linux 3.12)"
 .\" commit fa7315871046b9a4c48627905691dbde57e51033
+.RS
 If set, this bit indicates that the kernel supports
 the properly separated
 .I cap_user_time
 and
 .I cap_user_rdpmc
 bits.
-.IP
+.PP
 If not-set, it indicates an older kernel where
 .I cap_usr_time
 and
 .I cap_usr_rdpmc
 map to the same bit and thus both features should
 be used with caution.
+.RE
 .TP
 .IR cap_user_rdpmc " (since Linux 3.12)"
 .\" commit fa7315871046b9a4c48627905691dbde57e51033
+.RS
 If the hardware supports user-space read of performance counters
 without syscall (this is the "rdpmc" instruction on x86), then
 the following code can be used to do a read:
-.IP
+.PP
 .in +4n
 .EX
 u32 seq, time_mult, time_shift, idx, width;
@@ -1645,6 +1678,7 @@ do {
 } while (pc\->lock != seq);
 .EE
 .in
+.RE
 .TP
 .IR cap_user_time " (since Linux 3.12)"
 .\" commit fa7315871046b9a4c48627905691dbde57e51033
@@ -1659,12 +1693,13 @@ which allows mapping timestamp values to
 the hardware clock.
 .TP
 .I pmc_width
+.RS
 If
 .IR cap_usr_rdpmc ,
 this field provides the bit-width of the value
 read using the rdpmc or equivalent instruction.
 This can be used to sign extend the result like:
-.IP
+.PP
 .in +4n
 .EX
 pmc <<= 64 \- pmc_width;
@@ -1672,80 +1707,98 @@ pmc >>= 64 \- pmc_width; // signed shift right
 count += pmc;
 .EE
 .in
+.RE
 .TP
 .IR time_shift ", " time_mult ", " time_offset
-.IP
+.RS
 If
 .IR cap_usr_time ,
 these fields can be used to compute the time
 delta since
 .I time_enabled
 (in nanoseconds) using rdtsc or similar.
-.IP
-.nf
-    u64 quot, rem;
-    u64 delta;
-    quot = (cyc >> time_shift);
-    rem = cyc & (((u64)1 << time_shift) \- 1);
-    delta = time_offset + quot * time_mult +
+.PP
+.in +4n
+.EX
+u64 quot, rem;
+u64 delta;
+
+quot  = (cyc >> time_shift);
+rem   = cyc & (((u64)1 << time_shift) \- 1);
+delta = time_offset + quot * time_mult +
             ((rem * time_mult) >> time_shift);
-.fi
-.IP
+.EE
+.in
+.PP
 Where
 .IR time_offset ,
 .IR time_mult ,
 .IR time_shift ,
 and
-.IR cyc
+.I cyc
 are read in the
 seqcount loop described above.
 This delta can then be added to
 enabled and possible running (if idx), improving the scaling:
-.IP
-.nf
-    enabled += delta;
-    if (idx)
-        running += delta;
-    quot = count / running;
-    rem  = count % running;
-    count = quot * enabled + (rem * enabled) / running;
-.fi
+.PP
+.in +4n
+.EX
+enabled += delta;
+if (idx)
+    running += delta;
+quot  = count / running;
+rem   = count % running;
+count = quot * enabled + (rem * enabled) / running;
+.EE
+.in
+.RE
 .TP
 .IR time_zero " (since Linux 3.12)"
 .\" commit fa7315871046b9a4c48627905691dbde57e51033
-.IP
+.RS
 If
 .I cap_usr_time_zero
 is set, then the hardware clock (the TSC timestamp counter on x86)
 can be calculated from the
-.IR time_zero ", " time_mult ", and " time_shift " values:"
-.IP
-.nf
-    time = timestamp - time_zero;
-    quot = time / time_mult;
-    rem  = time % time_mult;
-    cyc = (quot << time_shift) + (rem << time_shift) / time_mult;
-.fi
-.IP
+.IR time_zero ,
+.IR time_mult ,
+and
+.I time_shift
+values:
+.PP
+.in +4n
+.EX
+time = timestamp - time_zero;
+quot = time / time_mult;
+rem  = time % time_mult;
+cyc  = (quot << time_shift) + (rem << time_shift) / time_mult;
+.EE
+.in
+.PP
 And vice versa:
-.IP
-.nf
-    quot = cyc >> time_shift;
-    rem  = cyc & (((u64)1 << time_shift) - 1);
-    timestamp = time_zero + quot * time_mult +
-        ((rem * time_mult) >> time_shift);
-.fi
+.PP
+.in +4n
+.EX
+quot = cyc >> time_shift;
+rem  = cyc & (((u64)1 << time_shift) - 1);
+timestamp = time_zero + quot * time_mult +
+            ((rem * time_mult) >> time_shift);
+.EE
+.in
+.RE
 .TP
 .I data_head
+.RS
 This points to the head of the data section.
 The value continuously increases, it does not wrap.
 The value needs to be manually wrapped by the size of the mmap buffer
 before accessing the samples.
-.IP
+.PP
 On SMP-capable platforms, after reading the
 .I data_head
 value,
 user space should issue an rmb().
+.RE
 .TP
 .I data_tail
 When the mapping is
@@ -1767,13 +1820,14 @@ the mmap buffer.
 .TP
 .IR aux_head ", " aux_tail ", " aux_offset ", " aux_size " (since Linux 4.1)"
 .\" commit 45bfb2e50471abbbfd83d40d28c986078b0d24ff
+.RS
 The AUX region allows
 .BR mmap (2)-ing
 a separate sample buffer for
 high-bandwidth data streams (separate from the main perf sample buffer).
 An example of a high-bandwidth stream is instruction tracing support,
 as is found in newer Intel processors.
-.IP
+.PP
 To set up an AUX area, first
 .I aux_offset
 needs to be set with an offset greater than
@@ -1785,13 +1839,13 @@ The desired offset and size must be page aligned, and the size
 must be a power of two.
 These values are then passed to mmap in order to map the AUX buffer.
 Pages in the AUX buffer are included as part of the
-.BR RLIMIT_MEMLOCK
+.B RLIMIT_MEMLOCK
 resource limit (see
 .BR setrlimit (2)),
 and also as part of the
 .I perf_event_mlock_kb
 allowance.
-.IP
+.PP
 By default, the AUX buffer will be truncated if it will not fit
 in the available space in the ring buffer.
 If the AUX buffer is mapped as a read only buffer, then it will
@@ -1800,12 +1854,17 @@ by new.
 In overwrite mode, it might not be possible to infer where the
 new data began, and it is the consumer's job to disable
 measurement while reading to avoid possible data races.
-.IP
+.PP
 The
-.IR aux_head " and " aux_tail
+.I aux_head
+and
+.I aux_tail
 ring buffer pointers have the same behavior and ordering
 rules as the previous described
-.IR data_head " and " data_tail .
+.I data_head
+and
+.IR data_tail .
+.RE
 .PP
 The following 2^n ring-buffer pages have the layout described below.
 .PP
@@ -1845,15 +1904,15 @@ the fields with shorter descriptions are presented first.
 This indicates the size of the record.
 .TP
 .I misc
+.RS
 The
 .I misc
 field contains additional information about the sample.
-.IP
+.PP
 The CPU mode can be determined from this value by masking with
 .B PERF_RECORD_MISC_CPUMODE_MASK
 and looking for one of the following (note these are not
 bit masks, only one can be set at a time):
-.RS
 .TP
 .B PERF_RECORD_MISC_CPUMODE_UNKNOWN
 Unknown CPU mode.
@@ -1874,9 +1933,7 @@ Sample happened in the guest kernel.
 .B PERF_RECORD_MISC_GUEST_USER " (since Linux 2.6.35)"
 .\" commit 39447b386c846bbf1c56f6403c5282837486200f
 Sample happened in guest user code.
-.RE
 .PP
-.RS
 Since the following three statuses are generated by
 different record types, they alias to the same bit:
 .TP
@@ -1897,15 +1954,13 @@ system call.
 .BR PERF_RECORD_MISC_SWITCH_OUT " (since Linux 4.3)"
 .\" commit 45ac1403f564f411c6a383a2448688ba8dd705a4
 When a
-.BR PERF_RECORD_SWITCH
+.B PERF_RECORD_SWITCH
 or
-.BR PERF_RECORD_SWITCH_CPU_WIDE
+.B PERF_RECORD_SWITCH_CPU_WIDE
 record is generated, this bit indicates that the
 context switch is away from the current process
 (instead of into the current process).
-.RE
 .PP
-.RS
 In addition, the following bits can be set:
 .TP
 .B PERF_RECORD_MISC_EXACT_IP
@@ -1930,6 +1985,7 @@ records may be truncated.
 .RE
 .TP
 .I type
+.RS
 The
 .I type
 value is one of the below.
@@ -1937,15 +1993,15 @@ The values in the corresponding record (that follows the header)
 depend on the
 .I type
 selected as shown.
-.RS
 .TP 4
 .B PERF_RECORD_MMAP
+.RS
 The MMAP events record the
 .B PROT_EXEC
 mappings so that we can correlate
 user-space IPs to code.
 They have the following structure:
-.IP
+.PP
 .in +4n
 .EX
 struct {
@@ -1958,7 +2014,6 @@ struct {
 };
 .EE
 .in
-.RS
 .TP
 .I pid
 is the process ID.
@@ -1977,8 +2032,9 @@ is a string describing the backing of the allocated memory.
 .RE
 .TP
 .B PERF_RECORD_LOST
+.RS
 This record indicates when events are lost.
-.IP
+.PP
 .in +4n
 .EX
 struct {
@@ -1989,7 +2045,6 @@ struct {
 };
 .EE
 .in
-.RS
 .TP
 .I id
 is the unique event ID for the samples that were lost.
@@ -1999,8 +2054,9 @@ is the number of events that were lost.
 .RE
 .TP
 .B PERF_RECORD_COMM
+.RS
 This record indicates a change in the process name.
-.IP
+.PP
 .in +4n
 .EX
 struct {
@@ -2012,7 +2068,6 @@ struct {
 };
 .EE
 .in
-.RS
 .TP
 .I pid
 is the process ID.
@@ -2025,8 +2080,9 @@ is a string containing the new name of the process.
 .RE
 .TP
 .B PERF_RECORD_EXIT
+.RS
 This record indicates a process exit event.
-.IP
+.PP
 .in +4n
 .EX
 struct {
@@ -2038,10 +2094,12 @@ struct {
 };
 .EE
 .in
+.RE
 .TP
 .BR PERF_RECORD_THROTTLE ", " PERF_RECORD_UNTHROTTLE
+.RS
 This record indicates a throttle/unthrottle event.
-.IP
+.PP
 .in +4n
 .EX
 struct {
@@ -2053,10 +2111,12 @@ struct {
 };
 .EE
 .in
+.RE
 .TP
 .B PERF_RECORD_FORK
+.RS
 This record indicates a fork event.
-.IP
+.PP
 .in +4n
 .EX
 struct {
@@ -2068,10 +2128,12 @@ struct {
 };
 .EE
 .in
+.RE
 .TP
 .B PERF_RECORD_READ
+.RS
 This record indicates a read event.
-.IP
+.PP
 .in +4n
 .EX
 struct {
@@ -2082,10 +2144,12 @@ struct {
 };
 .EE
 .in
+.RE
 .TP
 .B PERF_RECORD_SAMPLE
+.RS
 This record indicates a sample.
-.IP
+.PP
 .in +4n
 .EX
 struct {
@@ -2124,7 +2188,6 @@ struct {
 };
 .EE
 .in
-.RS 4
 .TP 4
 .I sample_id
 If
@@ -2214,18 +2277,21 @@ follow.
 This is the current callchain.
 .TP
 .IR size ", " data[size]
+.RS
 If
 .B PERF_SAMPLE_RAW
 is enabled, then a 32-bit value indicating size
 is included followed by an array of 8-bit values of length size.
 The values are padded with 0 to have 64-bit alignment.
-.IP
+.PP
 This RAW record data is opaque with respect to the ABI.
 The ABI doesn't make any promises with respect to the stability
 of its content, it may vary depending
 on event, hardware, and kernel version.
+.RE
 .TP
 .IR bnr ", " lbr[bnr]
+.RS
 If
 .B PERF_SAMPLE_BRANCH_STACK
 is enabled, then a 64-bit value indicating
@@ -2233,7 +2299,6 @@ the number of records is included, followed by
 .I bnr
 .I perf_branch_entry
 structures which each include the fields:
-.RS
 .TP
 .I from
 This indicates the source instruction (may not be a branch).
@@ -2267,7 +2332,7 @@ Support for
 .IR mispred ,
 .IR predicted ,
 and
-.IR cycles
+.I cycles
 is optional; if not supported, those
 values will be 0.
 .PP
@@ -2277,16 +2342,19 @@ field.
 .RE
 .TP
 .IR abi ", " regs[weight(mask)]
+.RS
 If
 .B PERF_SAMPLE_REGS_USER
 is enabled, then the user CPU registers are recorded.
-.IP
+.PP
 The
 .I abi
 field is one of
-.BR PERF_SAMPLE_REGS_ABI_NONE ", " PERF_SAMPLE_REGS_ABI_32 " or"
+.BR PERF_SAMPLE_REGS_ABI_NONE ,
+.BR PERF_SAMPLE_REGS_ABI_32 ,
+or
 .BR PERF_SAMPLE_REGS_ABI_64 .
-.IP
+.PP
 The
 .I regs
 field is an array of the CPU registers that were specified by
@@ -2296,6 +2364,7 @@ attr field.
 The number of values is the number of bits set in the
 .I sample_regs_user
 bit mask.
+.RE
 .TP
 .IR size ", " data[size] ", " dyn_size
 If
@@ -2327,17 +2396,17 @@ This allows expensive events to stand out more clearly
 in profiles.
 .TP
 .I data_src
+.RS
 If
 .B PERF_SAMPLE_DATA_SRC
 is enabled, then a 64-bit value is recorded that is made up of
 the following fields:
-.RS
 .TP 4
 .I mem_op
+.RS
 Type of opcode, a bitwise combination of:
-.IP
+.PP
 .PD 0
-.RS
 .TP 24
 .B PERF_MEM_OP_NA
 Not available
@@ -2353,16 +2422,16 @@ Prefetch
 .TP
 .B PERF_MEM_OP_EXEC
 Executable code
-.RE
 .PD
+.RE
 .TP
 .I mem_lvl
+.RS
 Memory hierarchy level hit or miss, a bitwise combination of
 the following, shifted left by
 .BR PERF_MEM_LVL_SHIFT :
-.IP
+.PP
 .PD 0
-.RS
 .TP 24
 .B PERF_MEM_LVL_NA
 Not available
@@ -2405,15 +2474,15 @@ I/O memory
 .TP
 .B PERF_MEM_LVL_UNC
 Uncached memory
-.RE
 .PD
+.RE
 .TP
 .I mem_snoop
+.RS
 Snoop mode, a bitwise combination of the following, shifted left by
 .BR PERF_MEM_SNOOP_SHIFT :
-.IP
+.PP
 .PD 0
-.RS
 .TP 24
 .B PERF_MEM_SNOOP_NA
 Not available
@@ -2429,31 +2498,31 @@ Snoop miss
 .TP
 .B PERF_MEM_SNOOP_HITM
 Snoop hit modified
-.RE
 .PD
+.RE
 .TP
 .I mem_lock
+.RS
 Lock instruction, a bitwise combination of the following, shifted left by
 .BR PERF_MEM_LOCK_SHIFT :
-.IP
+.PP
 .PD 0
-.RS
 .TP 24
 .B PERF_MEM_LOCK_NA
 Not available
 .TP
 .B PERF_MEM_LOCK_LOCKED
 Locked transaction
-.RE
 .PD
+.RE
 .TP
 .I mem_dtlb
+.RS
 TLB access hit or miss, a bitwise combination of the following, shifted
 left by
 .BR PERF_MEM_TLB_SHIFT :
-.IP
+.PP
 .PD 0
-.RS
 .TP 24
 .B PERF_MEM_TLB_NA
 Not available
@@ -2475,18 +2544,18 @@ Hardware walker
 .TP
 .B PERF_MEM_TLB_OS
 OS fault handler
-.RE
 .PD
 .RE
+.RE
 .TP
 .I transaction
+.RS
 If the
 .B PERF_SAMPLE_TRANSACTION
 flag is set, then a 64-bit field is recorded describing
 the sources of any transactional memory aborts.
-.IP
+.PP
 The field is a bitwise combination of the following values:
-.RS
 .TP
 .B PERF_TXN_ELISION
 Abort from an elision type transaction (Intel-CPU-specific).
@@ -2511,19 +2580,20 @@ Abort due to write capacity overflow.
 .TP
 .B PERF_TXN_CAPACITY_READ
 Abort due to read capacity overflow.
-.RE
-.IP
+.PP
 In addition, a user-specified abort code can be obtained from
 the high 32 bits of the field by shifting right by
 .B PERF_TXN_ABORT_SHIFT
 and masking with the value
 .BR PERF_TXN_ABORT_MASK .
+.RE
 .TP
 .IR abi ", " regs[weight(mask)]
+.RS
 If
 .B PERF_SAMPLE_REGS_INTR
 is enabled, then the user CPU registers are recorded.
-.IP
+.PP
 The
 .I abi
 field is one of
@@ -2531,7 +2601,7 @@ field is one of
 .BR PERF_SAMPLE_REGS_ABI_32 ,
 or
 .BR PERF_SAMPLE_REGS_ABI_64 .
-.IP
+.PP
 The
 .I regs
 field is an array of the CPU registers that were specified by
@@ -2542,8 +2612,10 @@ The number of values is the number of bits set in the
 .I sample_regs_intr
 bit mask.
 .RE
+.RE
 .TP
 .B PERF_RECORD_MMAP2
+.RS
 This record includes extended information on
 .BR mmap (2)
 calls returning executable mappings.
@@ -2551,7 +2623,7 @@ The format is similar to that of the
 .B PERF_RECORD_MMAP
 record, but includes extra values that allow uniquely identifying
 shared mappings.
-.IP
+.PP
 .in +4n
 .EX
 struct {
@@ -2572,7 +2644,6 @@ struct {
 };
 .EE
 .in
-.RS
 .TP
 .I pid
 is the process ID.
@@ -2613,9 +2684,10 @@ is a string describing the backing of the allocated memory.
 .TP
 .BR PERF_RECORD_AUX " (since Linux 4.1)"
 .\" commit 68db7e98c3a6ebe7284b6cf14906ed7c55f3f7f0
+.RS
 This record reports that new data is available in the separate
 AUX buffer region.
-.IP
+.PP
 .in +4n
 .EX
 struct {
@@ -2627,7 +2699,6 @@ struct {
 };
 .EE
 .in
-.RS
 .TP
 .I aux_offset
 offset in the AUX mmap region where the new data begins.
@@ -2636,8 +2707,8 @@ offset in the AUX mmap region where the new data begins.
 size of the data made available.
 .TP
 .I flags
-describes the AUX update.
 .RS
+describes the AUX update.
 .TP
 .B PERF_AUX_FLAG_TRUNCATED
 if set, then the data returned was truncated to fit the available
@@ -2651,10 +2722,11 @@ if set, then the data returned has overwritten previous data.
 .TP
 .BR PERF_RECORD_ITRACE_START " (since Linux 4.1)"
 .\" ec0d7729bbaed4b9d2d3fada693278e13a3d1368
+.RS
 This record indicates which process has initiated an instruction
 trace event, allowing tools to properly correlate the instruction
 addresses in the AUX buffer with the proper executable.
-.IP
+.PP
 .in +4n
 .EX
 struct {
@@ -2664,7 +2736,6 @@ struct {
 };
 .EE
 .in
-.RS
 .TP
 .I pid
 process ID of the thread starting an instruction trace.
@@ -2675,9 +2746,10 @@ thread ID of the thread starting an instruction trace.
 .TP
 .BR PERF_RECORD_LOST_SAMPLES " (since Linux 4.2)"
 .\" f38b0dbb491a6987e198aa6b428db8692a6480f8
+.RS
 When using hardware sampling (such as Intel PEBS) this record
 indicates some number of samples that may have been lost.
-.IP
+.PP
 .in +4n
 .EX
 struct {
@@ -2687,7 +2759,6 @@ struct {
 };
 .EE
 .in
-.RS
 .TP
 .I lost
 the number of potentially lost samples.
@@ -2695,6 +2766,7 @@ the number of potentially lost samples.
 .TP
 .BR PERF_RECORD_SWITCH " (since Linux 4.3)"
 .\" commit 45ac1403f564f411c6a383a2448688ba8dd705a4
+.RS
 This record indicates a context switch has happened.
 The
 .B PERF_RECORD_MISC_SWITCH_OUT
@@ -2702,7 +2774,7 @@ bit in the
 .I misc
 field indicates whether it was a context switch into
 or away from the current process.
-.IP
+.PP
 .in +4n
 .EX
 struct {
@@ -2711,9 +2783,11 @@ struct {
 };
 .EE
 .in
+.RE
 .TP
 .BR PERF_RECORD_SWITCH_CPU_WIDE " (since Linux 4.3)"
 .\" commit 45ac1403f564f411c6a383a2448688ba8dd705a4
+.RS
 As with
 .B PERF_RECORD_SWITCH
 this record indicates a context switch has happened,
@@ -2726,7 +2800,7 @@ bit in the
 .I misc
 field indicates whether it was a context switch into
 or away from the current process.
-.IP
+.PP
 .in +4n
 .EX
 struct {
@@ -2737,7 +2811,6 @@ struct {
 };
 .EE
 .in
-.RS
 .TP
 .I next_prev_pid
 The process ID of the previous (if switching in)
-- 
2.28.0

