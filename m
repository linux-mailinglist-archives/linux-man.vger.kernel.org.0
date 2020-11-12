Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B71FA2B02C0
	for <lists+linux-man@lfdr.de>; Thu, 12 Nov 2020 11:32:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726969AbgKLKc5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 12 Nov 2020 05:32:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726107AbgKLKc4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 12 Nov 2020 05:32:56 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A555C0613D1;
        Thu, 12 Nov 2020 02:32:55 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id j7so5450990wrp.3;
        Thu, 12 Nov 2020 02:32:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7h/u4n67Pk1Od+FXA7tmOWMwsiwSyfELVupkxhJ5W3k=;
        b=Te70HltEyibQOrSxZvRFIZFVobBk6bWHoGDd3glDcGDGGmykl11FrDdGes1M0lr3IO
         qGPbujJV+UG8JYz436wBQa0Wy8h9+JYgg73zP6P62/9uGaggJXd9zFaEAQ96ELwYBgYp
         luPuMQyABlxUsKEmeDos1UQWMLeGarEM1Me8FyyGZerJxQZ7ld84nhcjd3sm3bUaKvJB
         h+NZ6a/qU4nBNoNumEQC1aJMRjw8Y2zO6eFOXUr3vXEAmPw/2KgUydfoENNprYkE+INH
         TsUDO0aoRFRpTZ6eoBegW4Zgw7GAKiFiOzVfAxEu9XBLL+wRYMyBhUwXG20Dh2jDsbTB
         ReEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7h/u4n67Pk1Od+FXA7tmOWMwsiwSyfELVupkxhJ5W3k=;
        b=UFvH7z+5DFciajETOM5QI3TGypchWDbqZnfwywDTxgydfc3lIxJY3KepfRSRXhrw7m
         RElgotMKRNmbDwVN8up/Rgb0p1QvTLFWv3J+fCRB+O6pTfKGJddhpO1WHw1/QTtQMWvv
         kw7HFzbQTtk/c+ScGLV9mWIUAyx94RbBTxvN5NLVaZWV5MfZ5J2B80TGQh/p9xvX8QWh
         3/M8PYd/PA1wG4oMyJ9zAEVypu602wfWA+WNOy3xK188j8DUPSdhIzmWka3NHmGs2lFA
         fVfUukzl1aFjhIurlvXuKbNWS29RA+J2GMlMm9GnVyaR1hmEbCuEC+gKsRaUgJdMB9IC
         NyHQ==
X-Gm-Message-State: AOAM533B3a3rbmsgxvQ+5lbrlA/CFTq617Tr+FL1SVlYiNpq2o+/fNqI
        Hbc6NxXVn/H6JZEPRFFD6/0=
X-Google-Smtp-Source: ABdhPJyFYBuNFKIr5NBYxAL7Xx4N+EClcBkdiDGX6X6QPvUBXYI8ZIQibrSz5xpGrfcOf2OMmTZZqQ==
X-Received: by 2002:a5d:5450:: with SMTP id w16mr8835129wrv.425.1605177173803;
        Thu, 12 Nov 2020 02:32:53 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id d63sm5989575wmd.12.2020.11.12.02.32.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2020 02:32:53 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Michael Kerrisk-manpages <mtk.manpages@gmail.com>,
        Namhyung Kim <namhyung@kernel.org>
Cc:     Namhyung Kim <namhyung@gmail.com>,
        Arnaldo Carvalho de Melo <acme@kernel.org>,
        Alejandro Colomar <colomar.6.4.3@gmail.com>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Andi Kleen <ak@linux.intel.com>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Stephane Eranian <eranian@google.com>,
        Ian Rogers <irogers@google.com>, Jiri Olsa <jolsa@redhat.com>,
        Kan Liang <kan.liang@linux.intel.com>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        linux-man@vger.kernel.org,
        linux-perf-users <linux-perf-users@vger.kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Ingo Molnar <mingo@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>,
        Song Liu <songliubraving@fb.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH v3] perf_event_open.2: Update man page with recent changes
Date:   Thu, 12 Nov 2020 11:32:41 +0100
Message-Id: <20201112103240.18363-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <CAM9d7cgO78XbErZU8VVSOHyf8_L+O1FVXcwD=H4z-9AptyPEJg@mail.gmail.com>
References: <CAM9d7cgO78XbErZU8VVSOHyf8_L+O1FVXcwD=H4z-9AptyPEJg@mail.gmail.com>
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

Hi Namhyung,

I fixed a few more typos,
and changed a bit the formatting.

Cheers,

Alex

 man2/perf_event_open.2 | 266 ++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 264 insertions(+), 2 deletions(-)

diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
index 4d93a0be2..9a3e37bf6 100644
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
@@ -875,6 +884,20 @@ is set higher than zero then the register
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
@@ -1218,6 +1241,48 @@ information even with strict
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
 .RS
 This union sets how many samples
@@ -2132,7 +2197,7 @@ struct {
     u64    nr;          /* if PERF_SAMPLE_CALLCHAIN */
     u64    ips[nr];     /* if PERF_SAMPLE_CALLCHAIN */
     u32    size;        /* if PERF_SAMPLE_RAW */
-    char  data[size];   /* if PERF_SAMPLE_RAW */
+    char   data[size];  /* if PERF_SAMPLE_RAW */
     u64    bnr;         /* if PERF_SAMPLE_BRANCH_STACK */
     struct perf_branch_entry lbr[bnr];
                         /* if PERF_SAMPLE_BRANCH_STACK */
@@ -2149,6 +2214,8 @@ struct {
     u64    abi;         /* if PERF_SAMPLE_REGS_INTR */
     u64    regs[weight(mask)];
                         /* if PERF_SAMPLE_REGS_INTR */
+    u64    phys_addr;   /* if PERF_SAMPLE_PHYS_ADDR */
+    u64    cgroup;      /* if PERF_SAMPLE_CGROUP */
 };
 .EE
 .in
@@ -2775,6 +2842,201 @@ or next (if switching out) process on the CPU.
 The thread ID of the previous (if switching in)
 or next (if switching out) thread on the CPU.
 .RE
+.TP
+.BR PERF_RECORD_NAMESPACES " (since Linux 4.11)"
+.\" commit e422267322cd319e2695a535e47c5b1feeac45eb
+.RS
+This record includes various namespace information of a process.
+.PP
+.RS 4
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
+.RE
+.TP
+.I pid
+is the process ID
+.TP
+.I tid
+is the thread ID
+.TP
+.I nr_namespace
+is the number of namespaces in this record
+.PP
+Each namespace has
+.I dev
+and
+.I inode
+fields and is recorded in the
+fixed position like below:
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
+.PP
+.RE
+.TP
+.BR PERF_RECORD_KSYMBOL " (since Linux 5.0)"
+.\" commit 76193a94522f1d4edf2447a536f3f796ce56343b
+.RS
+This record indicates kernel symbol register/unregister events.
+.PP
+.RS 4
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
+.RE
+.TP
+.I addr
+is the address of the kernel symbol
+.TP
+.I len
+is the length of the kernel symbol
+.TP
+.I ksym_type
+.RS
+is the type of the kernel symbol.
+Currently following types are available:
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
+.RS
+This record indicates BPF program is loaded or unloaded.
+.PP
+.RS 4
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
+.RE
+.TP
+.I type
+.RS
+is one of the following values:
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
+.RS
+This record indicates a new cgroup is created and activated.
+.PP
+.RS 4
+.EX
+struct {
+    struct perf_event_header header;
+    u64 id;
+    char path[];
+    struct sample_id sample_id;
+};
+.EE
+.RE
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
+.RS
+This record indicates a change in the kernel text.
+This includes addition and removal of the text
+and the corresponding length is zero in this case.
+.PP
+.RS 4
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
+.RE
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
2.28.0

