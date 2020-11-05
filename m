Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 042A52A823A
	for <lists+linux-man@lfdr.de>; Thu,  5 Nov 2020 16:31:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730906AbgKEPbZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Nov 2020 10:31:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730871AbgKEPbZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Nov 2020 10:31:25 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB537C0613CF;
        Thu,  5 Nov 2020 07:31:24 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id g12so2237457wrp.10;
        Thu, 05 Nov 2020 07:31:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4fV0BdDK12dHwFksGdLm3r/EWSYhQVVyFiUoy05VctE=;
        b=Zp+AtN34X2p5J/d56+TN/idNI62NvAiOzUAz4VrYnowB9yhTrTzyIbLUSOYWMn0rpS
         uP8b08ZaZ2o6HfS4K/NJn5vNr9cM8MXESQ3RaseYZfG4vnONCeBCQneC+axYn6ouYu0n
         AJqVtovYhFpBIbKtdPBJkbW8QPWh0YMoJWfKX4VcLcqTothv5ysWpycDGeYaO5jm0IBL
         yzi5vKdJJL8hIoFuDy3cS0Aj6ktdiEu2Qpyo95/unvVoM67ZB/nc566Z8xscmKJIfU1p
         JxumMm0BKI1rEb1R2VoGIngb1xTlTWA8PEVDvHB0Fr8jYRjtfk4jGew9FzNib8tVms6T
         bKEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4fV0BdDK12dHwFksGdLm3r/EWSYhQVVyFiUoy05VctE=;
        b=qWeOyryphTxd6nUvHEs9nWBYgA9jFAXBZN0CbVA56TiDXy4QDsYddQLYLOvfwhH2Mm
         wko6sUcxWk2mSWSaNsMGU4Ez5XgZCpKzkK84Rm/i+fyBYi+8oUrCKahk84I2nYCWZmKL
         Ee6t1FoKz0BeLeqstd9VAONyoz4Z3x7egeiIYw9UGRfZWQdlaCn+uvdMX86yL4luaA+e
         ZNmyh+UmxIO10QcEH/tM+kqVq80eWaH5e2XiRXgxFuv5bGQm+zQbfHlnPDMD9XQdykp1
         q3OSVjLFLpQ4kONRFNfnYLDJw0hw9UNMtrhAbUaPhp/l8IDiBb78qk90SfUUDmIuq6DZ
         gX6A==
X-Gm-Message-State: AOAM533byqp72FuQhH5b/ffH5zkADzc/ESqZ1zRnWj9GVRUzmsHLbc+/
        GAtsxTqJdFGHMTq4SnwiLnI=
X-Google-Smtp-Source: ABdhPJzlpP5Y7KhXunZT6E+LzK2AwtCtt7L3va3Imir9hLg8Az5jbn+RLn8/R6+x01YAgBOb47LGuQ==
X-Received: by 2002:adf:ef45:: with SMTP id c5mr3868350wrp.117.1604590283653;
        Thu, 05 Nov 2020 07:31:23 -0800 (PST)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id l16sm2860456wrr.83.2020.11.05.07.31.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2020 07:31:22 -0800 (PST)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     namhyung@kernel.org, mtk.manpages@gmail.com
Cc:     Namhyung Kim <namhyung@gmail.com>, acme@kernel.org,
        adrian.hunter@intel.com, ak@linux.intel.com,
        alexander.shishkin@linux.intel.com, eranian@google.com,
        irogers@google.com, jolsa@redhat.com, kan.liang@linux.intel.com,
        linux-kernel@vger.kernel.org, linux-man@vger.kernel.org,
        linux-perf-users@vger.kernel.org, mark.rutland@arm.com,
        mingo@kernel.org, peterz@infradead.org, songliubraving@fb.com,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH v2] perf_event_open.2: Update man page with recent changes
Date:   Thu,  5 Nov 2020 16:30:10 +0100
Message-Id: <20201105153009.36415-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201105082837.271636-1-namhyung@kernel.org>
References: <20201105082837.271636-1-namhyung@kernel.org>
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
[colomar.6.4.3@gmail.com: ffix + tfix]
Co-developed-by : Alejandro Colomar <colomar.6.4.3@gmail.com>
Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

I wrapped a few lines, and did some formatting fixes to the patch.
However, there are some parts where
I found the text to be a bit unclear to me.
Maybe you could rephrase them:
- The paragraph right under 'write_backward'.
- Text right under 'text_poke': "there's a changes"

I would cheange
[[
    struct { u64 dev, inode } [nr_namespaces];
]]
to
[[
    struct {
        u64 dev;
        u64 inode;
    } [nr_namespaces];
]]
Woudln't you?

Thanks,

Alex

 man2/perf_event_open.2 | 265 ++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 263 insertions(+), 2 deletions(-)

diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
index 72afafb50..4adeccdde 100644
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
@@ -854,6 +863,20 @@ is set higher than zero then the register
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
 .IR "read_format"
@@ -1189,6 +1212,47 @@ information even with strict
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
+.IR auxevent " (since Linux 5.4)"
+.\" commit ab43762ef010967e4ccd53627f70a2eecbeafefb
+This allows normal (non-AUX) events to generate data for AUX events
+if the hardware supports it.
+.IR cgroup " (since Linux 5.7)"
+.\" commit 96aaab686505c449e24d76e76507290dcc30e008
+This enables the generation of
+.B PERF_RECORD_CGROUP
+records when a new cgroup is created (and activated).
+.TR
+.IR text_poke " (since Linux 5.8)"
+.\" commit e17d43b93e544f5016c0251d2074c15568d5d963
+This enables the generation of
+.B PERF_RECORD_TEXT_POKE
+records when there's a changes to the kernel text
+(i.e. self-modifying code).
+.TP
 .IR "wakeup_events" ", " "wakeup_watermark"
 This union sets how many samples
 .RI ( wakeup_events )
@@ -2101,7 +2165,7 @@ struct {
     u64    nr;          /* if PERF_SAMPLE_CALLCHAIN */
     u64    ips[nr];     /* if PERF_SAMPLE_CALLCHAIN */
     u32    size;        /* if PERF_SAMPLE_RAW */
-    char  data[size];   /* if PERF_SAMPLE_RAW */
+    char   data[size];  /* if PERF_SAMPLE_RAW */
     u64    bnr;         /* if PERF_SAMPLE_BRANCH_STACK */
     struct perf_branch_entry lbr[bnr];
                         /* if PERF_SAMPLE_BRANCH_STACK */
@@ -2118,6 +2182,8 @@ struct {
     u64    abi;         /* if PERF_SAMPLE_REGS_INTR */
     u64    regs[weight(mask)];
                         /* if PERF_SAMPLE_REGS_INTR */
+    u64    phys_addr;   /* if PERF_SAMPLE_PHYS_ADDR */
+    u64    cgroup;      /* if PERF_SAMPLE_CGROUP */
 };
 .EE
 .in
@@ -2744,6 +2810,201 @@ or next (if switching out) process on the CPU.
 The thread ID of the previous (if switching in)
 or next (if switching out) thread on the CPU.
 .RE
+.TP
+.BR PERF_RECORD_NAMESPACES " (since Linux 4.11)"
+.\" commit e422267322cd319e2695a535e47c5b1feeac45eb
+This record includes various namespace information of a process.
+.RS
+.PP
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
+This record indicates kernel symbol register/unregister events.
+.RS
+.PP
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
+.RS
+.PP
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
+.RS
+.PP
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
+.RS
+.PP
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

