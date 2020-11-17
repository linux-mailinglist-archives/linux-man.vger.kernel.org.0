Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CA80F2B5A61
	for <lists+linux-man@lfdr.de>; Tue, 17 Nov 2020 08:40:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726792AbgKQHiO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 17 Nov 2020 02:38:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725771AbgKQHiO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 17 Nov 2020 02:38:14 -0500
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08C3BC0613CF;
        Mon, 16 Nov 2020 23:38:14 -0800 (PST)
Received: by mail-pf1-x434.google.com with SMTP id 131so6205422pfb.9;
        Mon, 16 Nov 2020 23:38:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=l76dlHaWHc7Dq0KUHTpkImuQmVGCHAejP3hYRowTn7Y=;
        b=pcCWfSZIES4jLntu5jyJnjl1l8gXPzlA6OJZVcO8jEjaBRqLf8dbv9S9GYigT3qTUC
         5HMANmvj7pnDRFsOsdcPblDJ6Vg8ZbXpwDbyilda4SlqTLtzJxz7MPBqMV2l3WN0tbw4
         mQ6W4rhJ5ee41wah7vHUiIZnTgr9jdWZAWD2YmaTWetNHd1u1Qh2b1JaiKw00uIKLbxs
         +cFg3WEbMNks63lAWAeki0Ilk5bO/pS3CL+m1XaXpvXWzYcOVZz3hJ3/nZdHtMc2UqG+
         WIgJFeEleo+gWaWXZgV9mUvE/p+DPUyvBThSlDcPbcgJxSyKjnpNEOpwOpUbuFtFNiWe
         SLgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=l76dlHaWHc7Dq0KUHTpkImuQmVGCHAejP3hYRowTn7Y=;
        b=tfb59xz3gw3et3IsMQZ0ijxeEvxKQimPcaL098Czc18xYSWRvQKUxwNt+fojxaFLo0
         3UoePlozKgoOqgREMBbun38fRk3iYPfM2+35pWclBveOv/THsWqWUr8fQqdh9Iv6BBoA
         xnHsSc4be2ynrQC9xu/WUzhmMdGIxwmjpKgo3limCLsTNiDVCGMroKqJqsG08k7bQgKq
         bTnbyM5hf4EvH1/FllotMvgBNP+RCbroufMDkZ7Ia4Apa3PZ+bZI2s9ZH4fNGQ1HtQIr
         iNA/9HqXHZtX+h9dRDmlZ+Z1H/4KETeUxJkzhu2jylt6m33ep6X8CIM9zSitj+vGKjjQ
         PIZA==
X-Gm-Message-State: AOAM533C9LDn6GJEOnNIRV8rKHiOL+KwASB8ShzMWBFAaok5Xp1WHxAO
        5BJDnTH1vF+yjGj59hN2V/Y=
X-Google-Smtp-Source: ABdhPJze0yLJJu4frrXj1/BPOqjGHWn0knEzuolWnJ5xKdRRuYuzamTe/+Szg3/ZKmjvQyZpy2LwXQ==
X-Received: by 2002:a63:db18:: with SMTP id e24mr2441696pgg.155.1605598693408;
        Mon, 16 Nov 2020 23:38:13 -0800 (PST)
Received: from balhae.roam.corp.google.com ([101.235.31.111])
        by smtp.gmail.com with ESMTPSA id q200sm20547029pfq.95.2020.11.16.23.38.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2020 23:38:12 -0800 (PST)
Sender: Namhyung Kim <namhyung@gmail.com>
From:   Namhyung Kim <namhyung@kernel.org>
To:     Arnaldo Carvalho de Melo <acme@kernel.org>,
        Jiri Olsa <jolsa@redhat.com>, mtk.manpages@gmail.com,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Ingo Molnar <mingo@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        LKML <linux-kernel@vger.kernel.org>,
        Stephane Eranian <eranian@google.com>,
        Ian Rogers <irogers@google.com>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Song Liu <songliubraving@fb.com>,
        Kan Liang <kan.liang@linux.intel.com>,
        Andi Kleen <ak@linux.intel.com>,
        Vince Weaver <vincent.weaver@maine.edu>,
        linux-perf-users@vger.kernel.org, linux-man@vger.kernel.org,
        Namhyung Kim <namhyung@gmail.com>
Subject: [PATCH v5] perf_event_open.2: Update man page with recent changes
Date:   Tue, 17 Nov 2020 16:37:58 +0900
Message-Id: <20201117073758.346744-1-namhyung@kernel.org>
X-Mailer: git-send-email 2.29.2.299.gdc1121823c-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Namhyung Kim <namhyung@gmail.com>

There are lots of changes as usual.  I've tried to fill some missing
bits in the man page but it'd be nice if you could take a look and put
more info there.

Signed-off-by: Namhyung Kim <namhyung@gmail.com>
[alx: ffix + tfix]
Cowritten-by : Alejandro Colomar <alx.manpages@gmail.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
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
2.29.2.299.gdc1121823c-goog

