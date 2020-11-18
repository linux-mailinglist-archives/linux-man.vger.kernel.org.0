Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BA4BA2B7D8F
	for <lists+linux-man@lfdr.de>; Wed, 18 Nov 2020 13:24:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726740AbgKRMYC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 18 Nov 2020 07:24:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726714AbgKRMYC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 18 Nov 2020 07:24:02 -0500
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AABDAC0613D4
        for <linux-man@vger.kernel.org>; Wed, 18 Nov 2020 04:24:01 -0800 (PST)
Received: by mail-wm1-x341.google.com with SMTP id a186so36046wme.1
        for <linux-man@vger.kernel.org>; Wed, 18 Nov 2020 04:24:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=eH1kt7QmkLnJ+1gVLchyYFH2BVtbc/A3eloZT87gaCI=;
        b=GvPXD8NGouF6owp1AeWztWLQavK7ODaTuoxeTopIqqkTX3ZGpFUkyvIrdo9EJTZ1qA
         JjlI8jCvp09T+Qv9yu+M58coZS29f9HAFntD16HVN5NTibqGdg9NtdxnyvYC5sR+z0oH
         lyiUkdzEXLwYP2aJBcPhyJmVgVsC5BPb2A3y0AyPkAdubSt352AJHcajz6tUTquQj6oS
         voxYNppDzd51ruafnomCM+0/LguyszMnvMkMg4PBlcUVhbq8/ZEtEj1nEPeujEZH67Up
         bw17aHLi63jRVuG1z6qfnWFn9sCgdEg1yI+a30dcYgiV7BiNgzM/pE/st2mA3rXiGAzp
         3TmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=eH1kt7QmkLnJ+1gVLchyYFH2BVtbc/A3eloZT87gaCI=;
        b=d5bHE0PL5pRVu7m2HjNY1V9iOoH6R+VevVCMKBnKEzZqCt2TV47q/d2qxrSL0vtPkU
         6/Dlqa968uVdCaUY9NBWSI9qffy9nhSlKC6tgLf543JFeneiaC4BwDjkexP2AWF/qvBY
         FdzqvTJ3eNPqvZaCiDDPVZ32iEtdmPC5Igy9mXSJG53bIGUX0TbUcw0VbYogrzCUZ+LO
         oevaVyBpGVDK/8nKU6SPMV5eY5gOtbalHbvJmJRqeicC4NY0VNENWraonXKGrTUJWzfP
         RuG6F52JSe14sJNxMngzjLgCDeRV1fuR5Y8wHBDZHPI79w+hI5nEUrcSUNEXzBnkh6Of
         P/bw==
X-Gm-Message-State: AOAM532wqpTmZra2jH+hSMPOOKKGtjx8fSCVdS3j0HpndsWwQKuvQG/i
        mfQ71LqHt6T78kdYXL2qKPQ=
X-Google-Smtp-Source: ABdhPJyS338cpHeFMHeImNjmScBLz7nQ+QItbQOB69mg5i/DIkh1mNp9k+idYkBo5EGbylbHM8WNZA==
X-Received: by 2002:a1c:103:: with SMTP id 3mr4058683wmb.81.1605702240404;
        Wed, 18 Nov 2020 04:24:00 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id e3sm16696861wro.90.2020.11.18.04.23.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Nov 2020 04:23:59 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Namhyung Kim <namhyung@gmail.com>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Arnaldo Carvalho de Melo <acme@kernel.org>,
        Jiri Olsa <jolsa@redhat.com>, Ingo Molnar <mingo@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Stephane Eranian <eranian@google.com>,
        Ian Rogers <irogers@google.com>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Song Liu <songliubraving@fb.com>,
        Kan Liang <kan.liang@linux.intel.com>,
        Andi Kleen <ak@linux.intel.com>,
        Vince Weaver <vincent.weaver@maine.edu>
Subject: [PATCH] perf_event_open.2: Update man page with recent kernel changes
Date:   Wed, 18 Nov 2020 13:22:38 +0100
Message-Id: <20201118122238.67356-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Namhyung Kim <namhyung@gmail.com>

Signed-off-by: Namhyung Kim <namhyung@gmail.com>
[alx: ffix + tfix]
Cowritten-by:  Alejandro Colomar <alx.manpages@gmail.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Cc: Arnaldo Carvalho de Melo <acme@kernel.org>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Ingo Molnar <mingo@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Stephane Eranian <eranian@google.com>
Cc: Ian Rogers <irogers@google.com>
Cc: Adrian Hunter <adrian.hunter@intel.com>
Cc: Song Liu <songliubraving@fb.com>
Cc: Kan Liang <kan.liang@linux.intel.com>
Cc: Andi Kleen <ak@linux.intel.com>
Cc: Vince Weaver <vincent.weaver@maine.edu>

Acked-by:      Alejandro Colomar <alx.manpages@gmail.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

Hi Michael,

I applied this patch yesterday.
Please, apply it to your tree.

lore:
https://lore.kernel.org/linux-man/eea51ae5-d7d1-7dbc-04c1-8ae72b2c0754@gmail.com/T/#t

Thanks,

Alex

 man2/perf_event_open.2 | 280 ++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 278 insertions(+), 2 deletions(-)

diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
index e7b0aa132..62731bbac 100644
--- a/man2/perf_event_open.2
+++ b/man2/perf_event_open.2
@@ -247,8 +247,17 @@ struct perf_event_attr {
                                    due to exec */
           use_clockid    :  1,  /* use clockid for time fields */
           context_switch :  1,  /* context switch data */
+          write_backward :  1,  /* Write ring buffer from end
+                                   to beginning */
+          namespaces     :  1,  /* include namespaces data */
+          ksymbol        :  1,  /* include ksymbol events */
+          bpf_event      :  1,  /* include bpf events */
+          aux_output     :  1,  /* generate AUX records
+                                   instead of events */
+          cgroup         :  1,  /* include cgroup events */
+          text_poke      :  1,  /* include text poke events */
 
-          __reserved_1   : 37;
+          __reserved_1   : 30;
 
     union {
         __u32 wakeup_events;    /* wakeup every n events */
@@ -867,6 +876,20 @@ is set higher than zero then the register
 values returned are those captured by
 hardware at the time of the sampled
 instruction's retirement.
+.TP
+.BR PERF_SAMPLE_PHYS_ADDR " (since Linux 4.13)"
+.\" commit fc7ce9c74c3ad232b084d80148654f926d01ece7
+Records physical address of data like in
+.B PERF_SAMPLE_ADDR .
+.TP
+.BR PERF_SAMPLE_CGROUP " (since Linux 5.7)"
+.\" commit 96aaab686505c449e24d76e76507290dcc30e008
+Records (perf_event) cgroup id of the process.
+This corresponds to the
+.I id
+field in the
+.B PERF_RECORD_CGROUP
+event.
 .RE
 .TP
 .I read_format
@@ -1202,6 +1225,49 @@ information even with strict
 .I perf_event_paranoid
 settings.
 .TP
+.IR write_backward " (since Linux 4.6)"
+.\" commit 9ecda41acb971ebd07c8fb35faf24005c0baea12
+This makes the ring buffer is written from end to beginning.
+This is to support reading from overwritable ring buffer.
+.TP
+.IR namespaces " (since Linux 4.11)"
+.\" commit e422267322cd319e2695a535e47c5b1feeac45eb
+This enables the generation of
+.B PERF_RECORD_NAMESPACES
+records when a task is entering to a new namespace.
+Each namespace has a combination of device and inode numbers.
+.TP
+.IR ksymbol " (since Linux 5.0)"
+.\" commit 76193a94522f1d4edf2447a536f3f796ce56343b
+This enables the generation of
+.B PERF_RECORD_KSYMBOL
+records when a new kernel symbols are registered or unregistered.
+This is analyzing dynamic kernel functions like eBPF.
+.TP
+.IR bpf_event " (since Linux 5.0)"
+.\" commit 6ee52e2a3fe4ea35520720736e6791df1fb67106
+This enables the generation of
+.B PERF_RECORD_BPF_EVENT
+records when a eBPF program is loaded or unloaded.
+.TP
+.IR auxevent " (since Linux 5.4)"
+.\" commit ab43762ef010967e4ccd53627f70a2eecbeafefb
+This allows normal (non-AUX) events to generate data for AUX events
+if the hardware supports it.
+.TP
+.IR cgroup " (since Linux 5.7)"
+.\" commit 96aaab686505c449e24d76e76507290dcc30e008
+This enables the generation of
+.B PERF_RECORD_CGROUP
+records when a new cgroup is created (and activated).
+.TP
+.IR text_poke " (since Linux 5.8)"
+.\" commit e17d43b93e544f5016c0251d2074c15568d5d963
+This enables the generation of
+.B PERF_RECORD_TEXT_POKE
+records when there's a changes to the kernel text
+(i.e. self-modifying code).
+.TP
 .IR wakeup_events ", " wakeup_watermark
 This union sets how many samples
 .RI ( wakeup_events )
@@ -2131,7 +2197,7 @@ struct {
     u64    nr;          /* if PERF_SAMPLE_CALLCHAIN */
     u64    ips[nr];     /* if PERF_SAMPLE_CALLCHAIN */
     u32    size;        /* if PERF_SAMPLE_RAW */
-    char  data[size];   /* if PERF_SAMPLE_RAW */
+    char   data[size];  /* if PERF_SAMPLE_RAW */
     u64    bnr;         /* if PERF_SAMPLE_BRANCH_STACK */
     struct perf_branch_entry lbr[bnr];
                         /* if PERF_SAMPLE_BRANCH_STACK */
@@ -2148,6 +2214,8 @@ struct {
     u64    abi;         /* if PERF_SAMPLE_REGS_INTR */
     u64    regs[weight(mask)];
                         /* if PERF_SAMPLE_REGS_INTR */
+    u64    phys_addr;   /* if PERF_SAMPLE_PHYS_ADDR */
+    u64    cgroup;      /* if PERF_SAMPLE_CGROUP */
 };
 .EE
 .in
@@ -2570,6 +2638,18 @@ attr field.
 The number of values is the number of bits set in the
 .I sample_regs_intr
 bit mask.
+.TP
+.I phys_addr
+If the
+.B PERF_SAMPLE_PHYS_ADDR
+flag is set, then 64-bit physical address is recorded.
+.TP
+.I cgroup
+If the
+.B PERF_SAMPLE_CGROUP
+flag is set, then 64-bit cgroup id (for the perf_event subsystem) is recorded.
+To get the pathname of the cgroup, the id should match to one in a
+.B PERF_RECORD_CGROUP .
 .RE
 .TP
 .B PERF_RECORD_MMAP2
@@ -2776,6 +2856,202 @@ or next (if switching out) process on the CPU.
 The thread ID of the previous (if switching in)
 or next (if switching out) thread on the CPU.
 .RE
+.TP
+.BR PERF_RECORD_NAMESPACES " (since Linux 4.11)"
+.\" commit e422267322cd319e2695a535e47c5b1feeac45eb
+This record includes various namespace information of a process.
+.IP
+.in +4n
+.EX
+struct {
+    struct perf_event_header header;
+    u32 pid;
+    u32 tid;
+    u64 nr_namespaces;
+    struct { u64 dev, inode } [nr_namespaces];
+    struct sample_id sample_id;
+};
+.EE
+.in
+.RS
+.TP
+.I pid
+is the process ID
+.TP
+.I tid
+is the thread ID
+.TP
+.I nr_namespace
+is the number of namespaces in this record
+.RE
+.IP
+Each namespace has
+.I dev
+and
+.I inode
+fields and is recorded in the
+fixed position like below:
+.RS
+.TP
+.BR NET_NS_INDEX = 0
+Network namespace
+.TP
+.BR UTS_NS_INDEX = 1
+UTS namespace
+.TP
+.BR IPC_NS_INDEX = 2
+IPC namespace
+.TP
+.BR PID_NS_INDEX = 3
+PID namespace
+.TP
+.BR USER_NS_INDEX = 4
+User namespace
+.TP
+.BR MNT_NS_INDEX = 5
+Mount namespace
+.TP
+.BR CGROUP_NS_INDEX = 6
+Cgroup namespace
+.RE
+.TP
+.BR PERF_RECORD_KSYMBOL " (since Linux 5.0)"
+.\" commit 76193a94522f1d4edf2447a536f3f796ce56343b
+This record indicates kernel symbol register/unregister events.
+.IP
+.in +4n
+.EX
+struct {
+    struct perf_event_header header;
+    u64 addr;
+    u32 len;
+    u16 ksym_type;
+    u16 flags;
+    char name[];
+    struct sample_id sample_id;
+};
+.EE
+.in
+.RS
+.TP
+.I addr
+is the address of the kernel symbol
+.TP
+.I len
+is the length of the kernel symbol
+.TP
+.I ksym_type
+is the type of the kernel symbol.
+Currently following types are available:
+.RS
+.TP
+.B PERF_RECORD_KSYMBOL_TYPE_BPF
+The kernel symbols is a BPF function.
+.RE
+.TP
+.I flags
+If the
+.B PERF_RECORD_KSYMBOL_FLAGS_UNREGISTER
+is set, then this event is for unregistering the kernel symbol.
+.RE
+.TP
+.BR PERF_RECORD_BPF_EVENT " (since Linux 5.0)"
+.\" commit 6ee52e2a3fe4ea35520720736e6791df1fb67106
+This record indicates BPF program is loaded or unloaded.
+.IP
+.in +4n
+.EX
+struct {
+    struct perf_event_header header;
+    u16 type;
+    u16 flags;
+    u32 id;
+    u8 tag[BPF_TAG_SIZE];
+    struct sample_id sample_id;
+};
+.EE
+.in
+.RS
+.TP
+.I type
+is one of the following values:
+.RS
+.TP
+.B PERF_BPF_EVENT_PROG_LOAD
+A BPF program is loaded
+.TP
+.B PERF_BPF_EVENT_PROG_UNLOAD
+A BPF program is unloaded
+.RE
+.TP
+.I id
+is the id of the BPF program.
+.TP
+.I tag
+is the tag of the BPF program.
+Currently,
+.B BPF_TAG_SIZE
+is defined as 8.
+.RE
+.TP
+.BR PERF_RECORD_CGROUP " (since Linux 5.7)"
+.\" commit 96aaab686505c449e24d76e76507290dcc30e008
+This record indicates a new cgroup is created and activated.
+.IP
+.in +4n
+.EX
+struct {
+    struct perf_event_header header;
+    u64 id;
+    char path[];
+    struct sample_id sample_id;
+};
+.EE
+.in
+.RS
+.TP
+.I id
+is the cgroup identifier.
+This can be also retreived by
+.BR name_to_handle_at (2)
+on the cgroup path (as a file handle).
+.TP
+.I path
+is the path of the cgroup from the root.
+.RE
+.TP
+.BR PERF_RECORD_TEXT_POKE " (since Linux 5.8)"
+.\" commit e17d43b93e544f5016c0251d2074c15568d5d963
+This record indicates a change in the kernel text.
+This includes addition and removal of the text
+and the corresponding length is zero in this case.
+.IP
+.in +4n
+.EX
+struct {
+    struct perf_event_header header;
+    u64 addr;
+    u16 old_len;
+    u16 new_len;
+    u8 bytes[];
+    struct sample_id sample_id;
+};
+.EE
+.in
+.RS
+.TP
+.I addr
+is the address of the change
+.TP
+.I old_len
+is the old length
+.TP
+.I new_len
+is the new length
+.TP
+.I bytes
+contains old bytes immediately followed by new bytes.
+.RE
 .RE
 .SS Overflow handling
 Events can be set to notify when a threshold is crossed,
-- 
2.29.2

