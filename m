Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF47966D78E
	for <lists+linux-man@lfdr.de>; Tue, 17 Jan 2023 09:08:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235972AbjAQIIx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 17 Jan 2023 03:08:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235942AbjAQIIv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 17 Jan 2023 03:08:51 -0500
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B7399EE7;
        Tue, 17 Jan 2023 00:08:49 -0800 (PST)
Received: by mail-pl1-x635.google.com with SMTP id g23so17152475plq.12;
        Tue, 17 Jan 2023 00:08:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Cji+UTBPs50J5pprYnZf8VV2tZ6dNTKxF2LaNCwmPQM=;
        b=ErGNGhjJFV9bRnh+P2Cgwo8VYw15/j0m7c1KuJjYkPPBzA9pWh+fRjFKLGWAL1AYyU
         R5PDf9LyYZpNCREOFHq392HZ+k5M3TcSnNQPZhkHIQj52GJEhNaDFqhHFws6sQ9mLE/9
         yWTYRzH7LhN/pxLUCxz3zqmPAo3835Q+KFfoqKVQ6MVX2DN4N2GTOSWSrSHko97ViJXi
         ICtObaq0GLsvtzN0J+YSpjDDKsKKLaz5piseDOJVgLwsgi3pwYN+j8ftrdST5sUoi6SP
         +jY2P1H/mw+MlkTzUpLFpEf8qkZ7711NKHa+K+TJVkG2rse3qMF10o2wdK/A6jr2tNX4
         6DEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Cji+UTBPs50J5pprYnZf8VV2tZ6dNTKxF2LaNCwmPQM=;
        b=vwhmM2cXOna3IQzAbwTteoqHpIT3o3JeVXJuvgMSrRGbThLNKimYENqoowo2caILfI
         bZW2s5P1L4rvofwwe9moV6CHHbU4moKDOVIa478NmaIIeFnag3ns9PrM6Zuz0IleOo8z
         1V2QBcyJbZZYoVyYvOVhfpSGsdi7S6ciYsttwWlUbfhfBanOxQinz0U1LdWQCjKQKgfL
         Vcgi0CAFv1bhCmww9ed8F7PuITG8jIQeye6H/dnmiGqVH5NWDfuibnybVs39+OGFcOo2
         fMnRyTDkNTpY9Nc9QlWuALv4XYY9hHv8JkalboNcIVFAH/jJPpeVZjF5hMJLYXWVcER+
         MMbg==
X-Gm-Message-State: AFqh2kr89IrETUjQOlJgqBk3SfQ3jPI/zALP1PX9Wnpf5Vydm6kt9oVn
        jX9IlSsmyfs0H7UannVhqhqHx54zuHo=
X-Google-Smtp-Source: AMrXdXsJVsDWtKGjTlbukd1NF1R5TEAoG0t1l1TrVw42/fNAC8Y9UnFSptJe5pQHbHPm93eJUmUjHg==
X-Received: by 2002:a17:90a:ad02:b0:226:b783:674 with SMTP id r2-20020a17090aad0200b00226b7830674mr2151267pjq.37.1673942928846;
        Tue, 17 Jan 2023 00:08:48 -0800 (PST)
Received: from balhae.hsd1.ca.comcast.net ([2601:647:6780:ff0:c222:6c5b:fa46:8f0e])
        by smtp.gmail.com with ESMTPSA id m12-20020a634c4c000000b0047063eb4098sm16509744pgl.37.2023.01.17.00.08.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 00:08:48 -0800 (PST)
From:   Namhyung Kim <namhyung@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
        Arnaldo Carvalho de Melo <acme@kernel.org>,
        Jiri Olsa <jolsa@kernel.org>,
        Alexei Starovoitov <ast@kernel.org>,
        Marco Elver <elver@google.com>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Kan Liang <kan.liang@linux.intel.com>,
        Stephane Eranian <eranian@google.com>,
        linux-perf-users@vger.kernel.org,
        Namhyung Kim <namhyung@kernel.org>
Subject: [PATCH v3] perf_event_open.2: Update recent changes
Date:   Tue, 17 Jan 2023 00:08:46 -0800
Message-Id: <20230117080846.588289-1-namhyung@gmail.com>
X-Mailer: git-send-email 2.39.0.314.g84b9a713c41-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Namhyung Kim <namhyung@kernel.org>

Add missing perf_event_attr fields, new event codes and sample type.
Also add descriptions for PERF_FORMAT_LOST.

Signed-off-by: Namhyung Kim <namhyung@kernel.org>
---
 man2/perf_event_open.2 | 201 +++++++++++++++++++++++++++++++++++++++--
 1 file changed, 193 insertions(+), 8 deletions(-)

diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
index 8e94fb4ac..05f06cf68 100644
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
@@ -2411,6 +2550,8 @@ is 0.
 .I weight
 If
 .B PERF_SAMPLE_WEIGHT
+or
+.B PERF_SAMPLE_WEIGHT_STRUCT
 is enabled, then a 64-bit value provided by the hardware
 is recorded that indicates how costly the event was.
 This allows expensive events to stand out more clearly
@@ -2643,7 +2784,30 @@ If the
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
+.I size
+.TQ
+.IR data [size]
+If
+.B PERF_SAMPLE_AUX
+is enabled, then a snapshot of the aux buffer is recorded.
 .RE
 .TP
 .B PERF_RECORD_MMAP2
@@ -2654,6 +2818,9 @@ The format is similar to that of the
 .B PERF_RECORD_MMAP
 record, but includes extra values that allow uniquely identifying
 shared mappings.
+Depending on the
+.B PERF_RECORD_MISC_MMAP_BUILD_ID
+bit in the header, the extra values have different layout and meanings.
 .IP
 .in +4n
 .EX
@@ -2664,10 +2831,20 @@ struct {
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
@@ -2704,6 +2881,14 @@ is the inode number.
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

