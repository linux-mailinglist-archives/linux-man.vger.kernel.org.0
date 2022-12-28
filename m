Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA289657210
	for <lists+linux-man@lfdr.de>; Wed, 28 Dec 2022 03:17:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232621AbiL1CRV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Dec 2022 21:17:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232755AbiL1CQ5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Dec 2022 21:16:57 -0500
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5180DDFB8;
        Tue, 27 Dec 2022 18:16:54 -0800 (PST)
Received: by mail-pj1-x102f.google.com with SMTP id o8-20020a17090a9f8800b00223de0364beso18787697pjp.4;
        Tue, 27 Dec 2022 18:16:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=bRUnBFCYKIq9Nf37NYn7ui1QbXSNlY0FNP0colANS/Q=;
        b=EmMZVV3+cfsOInpLbFVb83CARP9L2Tz5IAY0sktiS923+uVOB65Vr8vwiDvFqXUqma
         nIiLJeSQNeWEfDdc2LyZUzj9+uYjupuIhi1/XJI6LuzktN6npDTdMzVhG5fSf23v0jnT
         G36iVvG+4HQLAcpu2YFACfehwo0NXL4BjzgWIcZY3Wg4l1lNsmBViEgeoZ1aU+TyStdM
         a8RBDX0WEqNReFzqbmagB6SmYqXLemNRkffVoElZVaxtqz/SCtBIlBgzz8c3OC2efzYr
         Q9OW637mgGUdOFmwiR0YhQbQeW4/lUJ7r2sANIstTtHRy8G7WLLMcJJD5m4MZq3uuNzx
         xhDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:sender:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bRUnBFCYKIq9Nf37NYn7ui1QbXSNlY0FNP0colANS/Q=;
        b=qj7RJHdIgThd/9IHBv5ApnZp7kY3xbrhp8fAzqJOc1ORlA4+po+STPiVZOOFEilpBN
         wTI5J4htWCuv5JsbiOjpmouHpzZf+6DnDQ7q0RYC5LFAm8hX6j4cTZbXsZ5cMnw4E4+T
         2ubQ2Yvz5egUsfGKFuwGKDBa5yedoTky25MhweKdyop9ALX6/UILWv7tCvKFeavFFFkF
         x0dQbs5bRVIEZmYfAXEqoQLcAcYaJRaMOvCdtDFDW4wYHmDvGBTbrNfs3V3hCF3NGz/D
         KWNzIWi4KVKFO5mn48u2nweNDKUNbPRIDlSfO3HbPsenZXA5xUyOYWOMZ+diaw9JA//p
         cWJg==
X-Gm-Message-State: AFqh2kqTBauNZ/20MWksGjvsqWofjM2thHVyfws1oy/3WuGYHZB7imvg
        OzEtUMqs3GHypFCIijBDtmcTpGbp6pK6XA==
X-Google-Smtp-Source: AMrXdXsJSGhRCRMvy8p43GFfP6LTpCirSCPak/eaH3b+qMug4x0M1MlbM5RQelnWr05EiIXHJFDczA==
X-Received: by 2002:a05:6a20:13a6:b0:af:9c75:6699 with SMTP id w38-20020a056a2013a600b000af9c756699mr39107245pzh.1.1672193813526;
        Tue, 27 Dec 2022 18:16:53 -0800 (PST)
Received: from balhae.hsd1.ca.comcast.net ([2601:647:6780:ff0:aa2b:a2ae:a79c:da46])
        by smtp.gmail.com with ESMTPSA id y68-20020a623247000000b00577c70f00eesm9188075pfy.22.2022.12.27.18.16.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Dec 2022 18:16:53 -0800 (PST)
Sender: Namhyung Kim <namhyung@gmail.com>
From:   Namhyung Kim <namhyung@kernel.org>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
        Arnaldo Carvalho de Melo <acme@kernel.org>,
        Jiri Olsa <jolsa@kernel.org>,
        Alexei Starovoitov <ast@kernel.org>,
        Marco Elver <elver@google.com>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Kan Liang <kan.liang@linux.intel.com>,
        Stephane Eranian <eranian@google.com>,
        linux-perf-users@vger.kernel.org
Subject: [PATCH] perf_event_open.2: Update recent changes
Date:   Tue, 27 Dec 2022 18:16:51 -0800
Message-Id: <20221228021651.1027725-1-namhyung@kernel.org>
X-Mailer: git-send-email 2.39.0.314.g84b9a713c41-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Add missing perf_event_attr fields, new event codes and sample type.
Also add descriptions for PERF_FORMAT_LOST.

Signed-off-by: Namhyung Kim <namhyung@kernel.org>
---
 man2/perf_event_open.2 | 196 ++++++++++++++++++++++++++++++++++++++---
 1 file changed, 185 insertions(+), 11 deletions(-)

diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
index 8e94fb4ac..6bddf6857 100644
--- a/man2/perf_event_open.2
+++ b/man2/perf_event_open.2
@@ -245,8 +245,12 @@ struct perf_event_attr {
                                    instead of events */
           cgroup         :  1,  /* include cgroup events */
           text_poke      :  1,  /* include text poke events */
+          build_id       :  1,  /* use build id in mmap2 events */
+          inherit_thread :  1,  /* children only inherit if cloned with CLONE_THREAD */
+          remove_on_exec :  1,  /* event is removed from task on exec */
+          sigtrap        :  1,  /* send synchronous SIGTRAP on event */
 
-          __reserved_1   : 30;
+          __reserved_1   : 26;
 
     union {
         __u32 wakeup_events;    /* wakeup every n events */
@@ -277,6 +281,9 @@ struct perf_event_attr {
     __u32 aux_watermark;        /* aux bytes before wakeup */
     __u16 sample_max_stack;     /* max frames in callchain */
     __u16 __reserved_2;         /* align to u64 */
+    __u32 aux_sample_size;      /* max aux sample size */
+    __u32 __reserved_3;         /* align to u64 */
+    __u64 sig_data;             /* user data for sigtrap */
 
 };
 .EE
@@ -538,6 +545,19 @@ Informational sample record types such as mmap or comm
 must be associated with an active event.
 This dummy event allows gathering such records without requiring
 a counting event.
+.TP
+.BR PERF_COUNT_SW_BPF_OUTPUT " (since Linux 4.4)"
+.\" commit a43eec304259a6c637f4014a6d4767159b6a3aa3
+This is used to generate raw sample data from BPF.
+BPF programs can write to this event using
+.B bpf_perf_event_output
+helper.
+.TP
+.BR PERF_COUNT_SW_CGROUP_SWITCHES " (since Linux 5.13)"
+.\" commit d0d1dd628527c77db2391ce0293c1ed344b2365f
+This counts context switches to a task in a different cgroup.
+In other words, if the next task is in the same cgroup, it won't
+count the switch.
 .RE
 .PP
 .RS
@@ -879,7 +899,42 @@ This corresponds to the
 field in the
 .B PERF_RECORD_CGROUP
 event.
-.RE
+.TP
+.BR PERF_SAMPLE_DATA_PAGE_SIZE " (since Linux 5.11)"
+.\" commit 8d97e71811aaafe4abf611dc24822fd6e73df1a1
+Records page size of data like in
+.BR PERF_SAMPLE_ADDR .
+.TP
+.BR PERF_SAMPLE_CODE_PAGE_SIZE " (since Linux 5.11)"
+.\" commit 995f088efebe1eba0282a6ffa12411b37f8990c2
+Records page size of ip like in
+.BR PERF_SAMPLE_IP .
+.TP
+.BR PERF_SAMPLE_WEIGHT_STRUCT " (since Linux 5.12)"
+.\" commit 2a6c6b7d7ad346f0679d0963cb19b3f0ea7ef32c
+Records hardware provided weight values like in
+.BR PERF_SAMPLE_WEIGHT ,
+but it can represent multiple values in a struct.
+This shares the same space as the
+.BR PERF_SAMPLE_WEIGHT ,
+so users can apply either of those, not the both.
+When used, it would have the following format and
+the meaning of each fields is dependent to the
+hardware implementation.
+.PP
+.in +4n
+.EX
+union perf_sample_weight {
+    u64    full;         /* PERF_SAMPLE_WEIGHT */
+    struct {
+        u32    var1_dw;  /* PERF_SAMPLE_WEIGHT_STRUCT */
+        u16    var2_w;
+        u16    var3_w;
+    };
+};
+.EE
+.in
+.PP
 .TP
 .I read_format
 This field specifies the format of the data returned by
@@ -908,6 +963,15 @@ Adds a 64-bit unique value that corresponds to the event group.
 .TP
 .B PERF_FORMAT_GROUP
 Allows all counter values in an event group to be read with one read.
+.TP
+.B PERF_FORMAT_LOST " (since Linux 6.0)"
+.\" commit 119a784c81270eb88e573174ed2209225d646656
+Adds a 64-bit value that is the number of lost samples for this event.
+This would be only meaningful when
+.I sample_period
+or
+.I sample_freq
+is set.
 .RE
 .TP
 .I disabled
@@ -1243,7 +1307,7 @@ This enables the generation of
 .B PERF_RECORD_BPF_EVENT
 records when an eBPF program is loaded or unloaded.
 .TP
-.IR auxevent " (since Linux 5.4)"
+.IR aux_output " (since Linux 5.4)"
 .\" commit ab43762ef010967e4ccd53627f70a2eecbeafefb
 This allows normal (non-AUX) events to generate data for AUX events
 if the hardware supports it.
@@ -1261,6 +1325,31 @@ This enables the generation of
 records when there's a change to the kernel text
 (i.e., self-modifying code).
 .TP
+.IR build_id " (since Linux 5.12)"
+.\" commit 88a16a1309333e43d328621ece3e9fa37027e8eb
+This changes the contents in the
+.B PERF_RECORD_MMAP2
+to have a build-id instead of device and inode numbers.
+.TP
+.IR inherit_thread " (since Linux 5.13)"
+.\" commit 2b26f0aa004995f49f7b6f4100dd0e4c39a9ed5f
+This disables the inheritance of the event to a child process.
+Only new threads in the same process (which is cloned with
+.B CLONE_THREAD
+) will inherit the event.
+.TP
+.IR remove_on_exec " (since Linux 5.13)"
+.\" commit 2e498d0a74e5b88a6689ae1b811f247f91ff188e
+This closes the event when it starts a new process image by
+.BR execve (2)
+system call.
+.TP
+.IR sigtrap " (since Linux 5.13)"
+.\" commit 97ba62b278674293762c3d91f724f1bb922f04e0
+This enables synchronous signal delivery of
+.B SIGTRAP
+on event overflow.
+.TP
 .IR wakeup_events ", " wakeup_watermark
 This union sets how many samples
 .RI ( wakeup_events )
@@ -1471,6 +1560,19 @@ includes
 .BR PERF_SAMPLE_CALLCHAIN ,
 this field specifies how many stack frames to report when
 generating the callchain.
+.TP
+.IR aux_sample_size " (since Linux 5.5)"
+.\" commit a4faf00d994c40e64f656805ac375c65e324eefb
+When
+.B PERF_SAMPLE_AUX
+flag is set, specify the desired size of AUX data.
+Note that it can get smaller data than the specified size.
+.TP
+.IR sig_data " (since Linux 5.13)"
+.\" commit 97ba62b278674293762c3d91f724f1bb922f04e0
+This data will be copied to user's signal handler (through
+.I si_perf
+in the siginfo_t) to disambiguate which event triggered the signal.
 .SS Reading results
 Once a
 .BR perf_event_open ()
@@ -1502,6 +1604,7 @@ struct read_format {
     struct {
         u64 value;     /* The value of the event */
         u64 id;        /* if PERF_FORMAT_ID */
+        u64 lost;      /* if PERF_FORMAT_LOST */
     } values[nr];
 };
 .EE
@@ -1520,6 +1623,7 @@ struct read_format {
     u64 time_enabled;  /* if PERF_FORMAT_TOTAL_TIME_ENABLED */
     u64 time_running;  /* if PERF_FORMAT_TOTAL_TIME_RUNNING */
     u64 id;            /* if PERF_FORMAT_ID */
+    u64 lost;          /* if PERF_FORMAT_LOST */
 };
 .EE
 .in
@@ -1551,6 +1655,12 @@ A globally unique value for this particular event; only present if
 .B PERF_FORMAT_ID
 was specified in
 .IR read_format .
+.TP
+.I lost
+The number of lost samples of this event; only present if
+.B PERF_FORMAT_LOST
+was specified in
+.IR read_format .
 .SS MMAP layout
 When using
 .BR perf_event_open ()
@@ -2002,6 +2112,22 @@ to the actual instruction that triggered the event.
 See also
 .IR perf_event_attr.precise_ip .
 .TP
+.BR PERF_RECORD_MISC_SWITCH_OUT_PREEMPT " (since Linux 4.17)"
+.\" commit 101592b4904ecf6b8ed2a4784d41d180319d95a1
+When a
+.B PERF_RECORD_SWITCH
+or
+.B PERF_RECORD_SWITCH_CPU_WIDE
+record is generated, this indicates the context switch
+was a preemption.
+.TP
+.BR PERF_RECORD_MISC_MMAP_BUILD_ID " (since Linux 5.12)"
+.\" commit 88a16a1309333e43d328621ece3e9fa37027e8eb
+This indicates that the content of
+.B PERF_SAMPLE_MMAP2
+contains build-ID data instead of device major and minor numbers
+as well as the inode number.
+.TP
 .BR PERF_RECORD_MISC_EXT_RESERVED " (since Linux 2.6.35)"
 .\" commit 1676b8a077c352085d52578fb4f29350b58b6e74
 This indicates there is extended data available (currently not used).
@@ -2201,7 +2327,8 @@ struct {
     char   data[size];  /* if PERF_SAMPLE_STACK_USER */
     u64    dyn_size;    /* if PERF_SAMPLE_STACK_USER &&
                            size != 0 */
-    u64    weight;      /* if PERF_SAMPLE_WEIGHT */
+    union perf_sample_weight;
+                        /* if PERF_SAMPLE_WEIGHT || PERF_SAMPLE_WEIGHT_STRUCT */
     u64    data_src;    /* if PERF_SAMPLE_DATA_SRC */
     u64    transaction; /* if PERF_SAMPLE_TRANSACTION */
     u64    abi;         /* if PERF_SAMPLE_REGS_INTR */
@@ -2209,6 +2336,12 @@ struct {
                         /* if PERF_SAMPLE_REGS_INTR */
     u64    phys_addr;   /* if PERF_SAMPLE_PHYS_ADDR */
     u64    cgroup;      /* if PERF_SAMPLE_CGROUP */
+    u64    data_page_size;
+                        /* if PERF_SAMPLE_DATA_PAGE_SIZE */
+    u64    code_page_size;
+                        /* if PERF_SAMPLE_CODE_PAGE_SIZE */
+    u64    size;        /* if PERF_SAMPLE_AUX */
+    char   data[size];  /* if PERF_SAMPLE_AUX */
 };
 .EE
 .in
@@ -2410,7 +2543,7 @@ is 0.
 .TP
 .I weight
 If
-.B PERF_SAMPLE_WEIGHT
+.B PERF_SAMPLE_WEIGHT "or" PERF_SAMPLE_WEIGHT_STRUCT
 is enabled, then a 64-bit value provided by the hardware
 is recorded that indicates how costly the event was.
 This allows expensive events to stand out more clearly
@@ -2643,7 +2776,28 @@ If the
 flag is set,
 then the 64-bit cgroup ID (for the perf_event subsystem) is recorded.
 To get the pathname of the cgroup, the ID should match to one in a
-.B PERF_RECORD_CGROUP .
+.BR PERF_RECORD_CGROUP .
+.TP
+.I data_page_size
+If the
+.B PERF_SAMPLE_DATA_PAGE_SIZE
+flag is set,
+then the 64-bit page size value of the
+.B data
+address is recorded.
+.TP
+.I code_page_size
+If the
+.B PERF_SAMPLE_CODE_PAGE_SIZE
+flag is set,
+then the 64-bit page size value of the
+.B ip
+address is recorded.
+.TP
+.IR size ", " data[size]
+If
+.B PERF_SAMPLE_AUX
+is enabled, then a snapshot of the aux buffer is recorded.
 .RE
 .TP
 .B PERF_RECORD_MMAP2
@@ -2653,7 +2807,9 @@ calls returning executable mappings.
 The format is similar to that of the
 .B PERF_RECORD_MMAP
 record, but includes extra values that allow uniquely identifying
-shared mappings.
+shared mappings.  Depending on the
+.B PERF_RECORD_MISC_MMAP_BUILD_ID
+bit in the header, the extra values have different layout and meanings.
 .IP
 .in +4n
 .EX
@@ -2664,10 +2820,20 @@ struct {
     u64    addr;
     u64    len;
     u64    pgoff;
-    u32    maj;
-    u32    min;
-    u64    ino;
-    u64    ino_generation;
+    union {
+        struct {
+            u32    maj;
+            u32    min;
+            u64    ino;
+            u64    ino_generation;
+        };
+        struct {   /* if PERF_RECORD_MISC_MMAP_BUILD_ID */
+            u8     build_id_size;
+            u8     __reserved_1;
+            u16    __reserved_2;
+            u8     build_id[20];
+        };
+    };
     u32    prot;
     u32    flags;
     char   filename[];
@@ -2704,6 +2870,14 @@ is the inode number.
 .I ino_generation
 is the inode generation.
 .TP
+.I build_id_size
+is the actual size of
+.I build_id
+field (up to 20).
+.TP
+.I build_id
+is a raw data to identify a binary.
+.TP
 .I prot
 is the protection information.
 .TP
-- 
2.39.0.314.g84b9a713c41-goog

