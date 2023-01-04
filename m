Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9944B65CCDE
	for <lists+linux-man@lfdr.de>; Wed,  4 Jan 2023 07:17:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229667AbjADGRX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Jan 2023 01:17:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40810 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229469AbjADGRV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Jan 2023 01:17:21 -0500
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 169771401C;
        Tue,  3 Jan 2023 22:17:20 -0800 (PST)
Received: by mail-pj1-x102e.google.com with SMTP id z9-20020a17090a468900b00226b6e7aeeaso512420pjf.1;
        Tue, 03 Jan 2023 22:17:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=GNg/EyekAtrpfmzJ/8lLaTs2Q8jBbw5mQxf7ka+Q3No=;
        b=QMAdkH0ozlp+PzxTbFafJvNPmWmfgW4EWYJKSlaLpq1/DSQte/Jr/Ygg8s96WqBeJZ
         jkEwl/aw4EYrzr4Kj47Y/IMbUPEyt+TefhfRGm/8F0SYIwMpadFbwfuteLW6bLhYisaX
         oN9RtKBV8fXQ68gqvXjSKYD9ZkLVJM1eEWcHiiPOVPgHJ/jhlZcMb1AANa+Ght3ki318
         KB0U044/P1StFAIFccqVb4gGVl/u9OnZgVKOV91pd3mUiUF7rGSFEzNclpGTCvOvPwcN
         aV8Q27oVNLU78dJ8QMANDoZxg/yNApoM+6T5w4WnyQ0QVW8jBikaanl8EcKOcuwHiusk
         gLpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:sender:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GNg/EyekAtrpfmzJ/8lLaTs2Q8jBbw5mQxf7ka+Q3No=;
        b=4n0G/fPJGbzXC0xz27qpUkB2wDp9mKJfdOko5A00UwOcJbPVsykI+jzncFaaV2EGwf
         4UB1M5cbDjlvxgeCiw9yJdVkRITIIzHExcpLT2CNqG5r4hRLXzZj8wYaQiZwbuqwugue
         kFBWqJ/Ggy0tF8L1lv9Z2v1xMQbuZOkJMaEW07VTavf8wa6rCKU7N7bcp1SPl7HkfKz/
         +915um7Cqr3Bo2XZytj3y3SRLuGyzhvtDEYrnSTZ9uGoV3a/2MbtiHZ47bc5d3JEJMcK
         Xsx6ndGwR+ILVpzSwAyp1RsaUu9mAPpLp1y4GZeReO+Gg4AWg0Ws7raZzj5VDrI22I4A
         aKvQ==
X-Gm-Message-State: AFqh2kqDy1BGrt0pIQaAM+iTrZtgbpwqVukkL/iikzHmwM6cUXyUpxPx
        UM20cCd7FDRhdznftlOALos=
X-Google-Smtp-Source: AMrXdXv5DbE2TmbctM4+WmTI4P8wPVDYuus4WOqT6S+mOx3Ca4mzp9wO/gACO1Rj9xnt49dTbx/YHg==
X-Received: by 2002:a17:902:b609:b0:192:4ed2:7509 with SMTP id b9-20020a170902b60900b001924ed27509mr49429847pls.15.1672813039296;
        Tue, 03 Jan 2023 22:17:19 -0800 (PST)
Received: from balhae.hsd1.ca.comcast.net ([2601:647:6780:ff0:2b36:6936:a09e:bbdb])
        by smtp.gmail.com with ESMTPSA id q9-20020a170902bd8900b00186ad73e2d5sm23249277pls.208.2023.01.03.22.17.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jan 2023 22:17:18 -0800 (PST)
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
Subject: [PATCH v2] perf_event_open.2: Update recent changes
Date:   Tue,  3 Jan 2023 22:17:15 -0800
Message-Id: <20230104061715.1412340-1-namhyung@kernel.org>
X-Mailer: git-send-email 2.39.0.314.g84b9a713c41-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
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
 man2/perf_event_open.2 | 200 ++++++++++++++++++++++++++++++++++++++---
 1 file changed, 190 insertions(+), 10 deletions(-)

diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
index 8e94fb4ac..2cf673f3d 100644
--- a/man2/perf_event_open.2
+++ b/man2/perf_event_open.2
@@ -245,8 +245,15 @@ struct perf_event_attr {
                                    instead of events */
           cgroup         :  1,  /* include cgroup events */
           text_poke      :  1,  /* include text poke events */
+          build_id       :  1,  /* use build id in mmap2 events */
+          inherit_thread :  1,  /* children only inherit */
+                                /* if cloned with CLONE_THREAD */
+          remove_on_exec :  1,  /* event is removed from task
+                                   on exec */
+          sigtrap        :  1,  /* send synchronous SIGTRAP
+                                   on event */
 
-          __reserved_1   : 30;
+          __reserved_1   : 26;
 
     union {
         __u32 wakeup_events;    /* wakeup every n events */
@@ -277,6 +284,9 @@ struct perf_event_attr {
     __u32 aux_watermark;        /* aux bytes before wakeup */
     __u16 sample_max_stack;     /* max frames in callchain */
     __u16 __reserved_2;         /* align to u64 */
+    __u32 aux_sample_size;      /* max aux sample size */
+    __u32 __reserved_3;         /* align to u64 */
+    __u64 sig_data;             /* user data for sigtrap */
 
 };
 .EE
@@ -538,6 +548,19 @@ Informational sample record types such as mmap or comm
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
+In other words, if the next task is in the same cgroup,
+it won't count the switch.
 .RE
 .PP
 .RS
@@ -879,6 +902,41 @@ This corresponds to the
 field in the
 .B PERF_RECORD_CGROUP
 event.
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
+    struct {             /* PERF_SAMPLE_WEIGHT_STRUCT */
+        u32    var1_dw;
+        u16    var2_w;
+        u16    var3_w;
+    };
+};
+.EE
+.in
 .RE
 .TP
 .I read_format
@@ -908,6 +966,15 @@ Adds a 64-bit unique value that corresponds to the event group.
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
@@ -1243,7 +1310,7 @@ This enables the generation of
 .B PERF_RECORD_BPF_EVENT
 records when an eBPF program is loaded or unloaded.
 .TP
-.IR auxevent " (since Linux 5.4)"
+.IR aux_output " (since Linux 5.4)"
 .\" commit ab43762ef010967e4ccd53627f70a2eecbeafefb
 This allows normal (non-AUX) events to generate data for AUX events
 if the hardware supports it.
@@ -1261,6 +1328,31 @@ This enables the generation of
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
+.BR CLONE_THREAD )
+will inherit the event.
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
@@ -1471,6 +1563,21 @@ includes
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
+in the
+.IR siginfo_t )
+to disambiguate which event triggered the signal.
 .SS Reading results
 Once a
 .BR perf_event_open ()
@@ -1502,6 +1609,7 @@ struct read_format {
     struct {
         u64 value;     /* The value of the event */
         u64 id;        /* if PERF_FORMAT_ID */
+        u64 lost;      /* if PERF_FORMAT_LOST */
     } values[nr];
 };
 .EE
@@ -1520,6 +1628,7 @@ struct read_format {
     u64 time_enabled;  /* if PERF_FORMAT_TOTAL_TIME_ENABLED */
     u64 time_running;  /* if PERF_FORMAT_TOTAL_TIME_RUNNING */
     u64 id;            /* if PERF_FORMAT_ID */
+    u64 lost;          /* if PERF_FORMAT_LOST */
 };
 .EE
 .in
@@ -1551,6 +1660,12 @@ A globally unique value for this particular event; only present if
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
@@ -2002,6 +2117,22 @@ to the actual instruction that triggered the event.
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
@@ -2201,7 +2332,9 @@ struct {
     char   data[size];  /* if PERF_SAMPLE_STACK_USER */
     u64    dyn_size;    /* if PERF_SAMPLE_STACK_USER &&
                            size != 0 */
-    u64    weight;      /* if PERF_SAMPLE_WEIGHT */
+    union perf_sample_weight;
+                        /* if PERF_SAMPLE_WEIGHT */
+                        /* || PERF_SAMPLE_WEIGHT_STRUCT */
     u64    data_src;    /* if PERF_SAMPLE_DATA_SRC */
     u64    transaction; /* if PERF_SAMPLE_TRANSACTION */
     u64    abi;         /* if PERF_SAMPLE_REGS_INTR */
@@ -2209,6 +2342,12 @@ struct {
                         /* if PERF_SAMPLE_REGS_INTR */
     u64    phys_addr;   /* if PERF_SAMPLE_PHYS_ADDR */
     u64    cgroup;      /* if PERF_SAMPLE_CGROUP */
+    u64    data_page_size;
+                      /* if PERF_SAMPLE_DATA_PAGE_SIZE */
+    u64    code_page_size;
+                      /* if PERF_SAMPLE_CODE_PAGE_SIZE */
+    u64    size;        /* if PERF_SAMPLE_AUX */
+    char   data[size];  /* if PERF_SAMPLE_AUX */
 };
 .EE
 .in
@@ -2410,7 +2549,7 @@ is 0.
 .TP
 .I weight
 If
-.B PERF_SAMPLE_WEIGHT
+.B PERF_SAMPLE_WEIGHT "or" PERF_SAMPLE_WEIGHT_STRUCT
 is enabled, then a 64-bit value provided by the hardware
 is recorded that indicates how costly the event was.
 This allows expensive events to stand out more clearly
@@ -2643,7 +2782,28 @@ If the
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
@@ -2653,7 +2813,9 @@ calls returning executable mappings.
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
@@ -2664,10 +2826,20 @@ struct {
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
@@ -2704,6 +2876,14 @@ is the inode number.
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

