Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 60E3A52712C
	for <lists+linux-man@lfdr.de>; Sat, 14 May 2022 15:15:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232437AbiENNPZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 14 May 2022 09:15:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232464AbiENNPY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 14 May 2022 09:15:24 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54BC43F32C
        for <linux-man@vger.kernel.org>; Sat, 14 May 2022 06:15:22 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id a5so10862679wrp.7
        for <linux-man@vger.kernel.org>; Sat, 14 May 2022 06:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=W0StUcORqgSIx6OtOvMir4fqBq2fU8PrBrN5D1UD16Y=;
        b=OFsF65x7pz/eNyOQrAvEL/q+8tK/Dm9EUfS9VUVQWq16JUHOh8kFyG7A6WhlBrIEjm
         ESVaO7DspLFhRBaGoYwu0hyKm6ezyhZ1AMYOAa+XVTrdgdQ1iZXz92iE7PyA7qa17X2r
         yKHd2ZxeWqF+/8Jktrtb9gn7x3NZZ4993bqajLsbYEimQRbrBjp+Ka2Tz7msW0pL49Qi
         EeHiu83z55JbrqiigF8rgV8w6vIPzQKsu6Bwy4Lz+BIP03EpOzRf8lipUq3ppN7wFeEN
         8h+3ZzEwcmKUA4NLFS4aqVxjw7+4vMjMW+4WX4jGvqzsw/JvgJz3hgFiseniuwmxJvY2
         U8PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=W0StUcORqgSIx6OtOvMir4fqBq2fU8PrBrN5D1UD16Y=;
        b=cpIyKy0aBmy3jid8NNtUwkZ7qn/uNV9PbIpxfqZRrJL1NYfBir8DbJM9UdJor0mv9I
         AzmtK9DpugKlJCNAedlWmtATwvxFiNdvO+ECAJ5vrlWwtBXE5IYxl8pSa8yayIPECks0
         H6e5+Y85vrO98Xfps1H2mjOQTpDVsXv+7mXHPtRaWr7kGw0gvKOxtfX/Egz8IB1x1MT1
         x1ndODQo+Fk05lhW2U9RZU/C11fKmLQiY/FOA0ThMttSqbk9p50vmViZOVZ6K8lTAVrd
         10cW34Msr+NprQ8rITfM8O5ChUiIpkP9aqBnFB/H/o6a38VgsBow3t/56QnOmEV7shB0
         dypA==
X-Gm-Message-State: AOAM530JqT5BsLbFv6IRpKrnEJ3bsifSAAFlg/JFAoo35SWdQ9OyTcBb
        lRsmqNrr1rFMJ2W1fuBBPAk=
X-Google-Smtp-Source: ABdhPJw/6HfiyKDUSXlEjnyV+iDJ2bqg2yt+89OPwZgIZA6E7+m6y2WGaMW+hU+nW6pKNG6WAwc2pA==
X-Received: by 2002:adf:fe07:0:b0:20c:ff45:8b9 with SMTP id n7-20020adffe07000000b0020cff4508b9mr1658530wrr.652.1652534120326;
        Sat, 14 May 2022 06:15:20 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id d16-20020adf9c90000000b0020c5253d8fasm4736635wre.70.2022.05.14.06.15.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 May 2022 06:15:19 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Matthew Bobrowski <repnop@google.com>
Cc:     linux-man@vger.kernel.org, jack@suse.cz, amir73il@gmail.com,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH v5] fanotify: Document FAN_REPORT_PIDFD Feature
Date:   Sat, 14 May 2022 15:13:47 +0200
Message-Id: <20220514131346.10171-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <1af583adb1f368c51f1976db7bf3a27530cdc06f.1650408011.git.repnop@google.com>
References: <1af583adb1f368c51f1976db7bf3a27530cdc06f.1650408011.git.repnop@google.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Matthew Bobrowski <repnop@google.com>

Update the fanotify API documentation to include details on the new
FAN_REPORT_PIDFD feature. This patch also includes a generic section
describing the concept of information records which are supported by
the fanotify API.

Signed-off-by: Matthew Bobrowski <repnop@google.com>
Reviewed-by: Jan Kara <jack@suse.cz>
Reviewed-by: Amir Goldstein <amir73il@gmail.com>
[alx: wsfix]
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

v5: [alx]
	further fix semantic newlines


 man2/fanotify_init.2 |  36 +++++++
 man7/fanotify.7      | 221 +++++++++++++++++++++++++++++++++++--------
 2 files changed, 219 insertions(+), 38 deletions(-)

diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
index 7f9a21a52..03d0b1711 100644
--- a/man2/fanotify_init.2
+++ b/man2/fanotify_init.2
@@ -283,6 +283,42 @@ for additional details.
 This is a synonym for
 .RB ( FAN_REPORT_DIR_FID | FAN_REPORT_NAME ).
 .PP
+.TP
+.BR FAN_REPORT_PIDFD " (since Linux 5.15)"
+.\" commit af579beb666aefb17e9a335c12c788c92932baf1
+Events for fanotify groups initialized with this flag will contain
+an additional information record alongside the generic
+.I fanotify_event_metadata
+structure.
+This information record will be of type
+.B FAN_EVENT_INFO_TYPE_PIDFD
+and will contain a pidfd for the process that
+was responsible for generating an event.
+A pidfd returned in this information record object is
+no different to the pidfd that is returned when calling
+.BR pidfd_open(2).
+Usage of this information record are for applications that
+may be interested in reliably determining whether
+the process responsible for generating an event
+has been recycled or terminated.
+The use of the
+.B FAN_REPORT_TID
+flag along with
+.B FAN_REPORT_PIDFD
+is currently not supported and
+attempting to do so will result in the error
+.B EINVAL
+being returned.
+This limitation is currently imposed by the pidfd API
+as it currently only supports
+the creation of pidfds for thread-group leaders.
+Creating pidfds for non-thread-group leaders
+may be supported at some point in the future,
+so this restriction may eventually be lifted.
+For more details on information records,
+see
+.BR fanotify(7).
+.PP
 The
 .I event_f_flags
 argument
diff --git a/man7/fanotify.7 b/man7/fanotify.7
index f8345b3f5..b436ca8db 100644
--- a/man7/fanotify.7
+++ b/man7/fanotify.7
@@ -118,16 +118,6 @@ until either a file event occurs or the call is interrupted by a signal
 (see
 .BR signal (7)).
 .PP
-The use of one of the flags
-.BR FAN_REPORT_FID ,
-.B FAN_REPORT_DIR_FID
-in
-.BR fanotify_init (2)
-influences what data structures are returned to the event listener for each
-event.
-Events reported to a group initialized with one of these flags will
-use file handles to identify filesystem objects instead of file descriptors.
-.PP
 After a successful
 .BR read (2),
 the read buffer contains one or more of the following structures:
@@ -146,20 +136,74 @@ struct fanotify_event_metadata {
 .EE
 .in
 .PP
-In case of an fanotify group that identifies filesystem objects by file
-handles, you should also expect to receive one or more additional information
-records of the structure detailed below following the generic
+Information records are
+supplemental pieces of information that
+may be provided alongside the generic
+.I fanotify_event_metadata
+structure.
+The
+.I flags
+passed to
+.BR fanotify_init (2)
+have influence over the type of information records that
+may be returned for an event.
+For example,
+if a notification group is initialized with
+.B FAN_REPORT_FID
+or
+.BR FAN_REPORT_DIR_FID ,
+then event listeners should also expect to receive a
+.I fanotify_event_info_fid
+structure alongside the
+.I fanotify_event_metadata
+structure,
+whereby file handles are used to
+identify filesystem objects
+rather than file descriptors.
+Information records may also be stacked,
+meaning that using the various
+.B FAN_REPORT_*
+flags in conjunction with one another is supported.
+In such cases,
+multiple information records can be returned for an event
+alongside the generic
+.I fanotify_event_metadata
+structure.
+For example,
+if a notification group is initialized with
+.B FAN_REPORT_FID
+and
+.BR FAN_REPORT_PIDFD ,
+then an event listener should also expect to receive both
+.I fanotify_event_info_fid
+and
+.I fanotify_event_info_pidfd
+structures alongside the generic
+.I fanotify_event_metadata
+structure.
+Importantly,
+fanotify provides no guarantee around
+the ordering of information records
+when a notification group is intialized with a
+stacked based configuration.
+Each information record has a nested structure of type
+.IR fanotify_event_info_header .
+It is imperative for event listeners to inspect the
+.I info_type
+field of this structure in order to
+determine the type of information record that
+had been received for a given event.
+.PP
+In cases where an fanotify group
+identifies filesystem objects by file handles,
+event listeners should also expect to
+receive one or more of the below
+information record objects alongside the generic
 .I fanotify_event_metadata
 structure within the read buffer:
 .PP
 .in +4n
 .EX
-struct fanotify_event_info_header {
-    __u8 info_type;
-    __u8 pad;
-    __u16 len;
-};
-
 struct fanotify_event_info_fid {
     struct fanotify_event_info_header hdr;
     __kernel_fsid_t fsid;
@@ -168,6 +212,40 @@ struct fanotify_event_info_fid {
 .EE
 .in
 .PP
+In cases where an fanotify group is initialized with
+.BR FAN_REPORT_PIDFD ,
+event listeners should expect to receive the below
+information record object alongside the generic
+.I fanotify_event_metadata
+structure within the read buffer:
+.PP
+.in +4n
+.EX
+struct fanotify_event_info_pidfd {
+        struct fanotify_event_info_header hdr;
+        __s32 pidfd;
+};
+.EE
+.in
+.PP
+All information records contain a nested structure of type
+.IR fanotify_event_info_header .
+This structure holds meta-information about the information record
+that may have been returned alongside the generic
+.I fanotify_event_metadata
+structure.
+This structure is defined as follows:
+.PP
+.in +4n
+.EX
+struct fanotify_event_info_header {
+	__u8 info_type;
+	__u8 pad;
+	__u16 len;
+};
+.EE
+.in
+.PP
 For performance reasons, it is recommended to use a large
 buffer size (for example, 4096 bytes),
 so that multiple events can be retrieved by a single
@@ -385,6 +463,47 @@ The
 flag is reported in an event mask only if the fanotify group identifies
 filesystem objects by file handles.
 .PP
+Information records that are supplied alongside the generic
+.I fanotify_event_metadata
+structure will always contain a nested structure of type
+.IR fanotify_event_info_header .
+The fields of the
+.I fanotify_event_info_header
+are as follows:
+.TP
+.I info_type
+A unique integer value representing
+the type of information record object received for an event.
+The value of this field can be set to one of the following:
+.BR FAN_EVENT_INFO_TYPE_FID ,
+.BR FAN_EVENT_INFO_TYPE_DFID ,
+.BR FAN_EVENT_INFO_TYPE_DFID_NAME ,
+or
+.BR FAN_EVENT_INFO_TYPE_PIDFD .
+The value set for this field
+is dependent on the flags that have been supplied to
+.BR fanotify_init (2).
+Refer to the field details of each information record object type below
+to understand the different cases in which the
+.I info_type
+values can be set.
+.TP
+.I pad
+This field is currently not used by any information record object type
+and therefore is set to zero.
+.TP
+.I len
+The value of
+.I len
+is set to the size of the information record object,
+including the
+.IR fanotify_event_info_header .
+The total size of all additional information records
+is not expected to be larger than
+.RI ( event_len
+\-
+.IR metadata_len ).
+.PP
 The fields of the
 .I fanotify_event_info_fid
 structure are as follows:
@@ -392,8 +511,6 @@ structure are as follows:
 .I hdr
 This is a structure of type
 .IR fanotify_event_info_header .
-It is a generic header that contains information used to describe an
-additional information record attached to the event.
 For example, when an fanotify file descriptor is created using
 .BR FAN_REPORT_FID ,
 a single information record is expected to be attached to the event with
@@ -414,23 +531,6 @@ identifying a parent directory object, and one with
 field value of
 .BR FAN_EVENT_INFO_TYPE_FID ,
 identifying a non-directory object.
-The
-.I fanotify_event_info_header
-contains a
-.I len
-field.
-The value of
-.I len
-is the size of the additional information record including the
-.I fanotify_event_info_header
-itself.
-The total size of all additional information records is not expected
-to be bigger than
-(
-.I event_len
-\-
-.I metadata_len
-).
 .TP
 .I fsid
 This is a unique identifier of the filesystem containing the object
@@ -498,6 +598,51 @@ and the file handle is followed by a null terminated string that identifies the
 name of a directory entry in that directory, or '.' to identify the directory
 object itself.
 .PP
+The fields of the
+.I fanotify_event_info_pidfd
+structure are as follows:
+.TP
+.I hdr
+This is a structure of type
+.IR fanotify_event_info_header .
+When an fanotify group is initialized using
+.BR FAN_REPORT_PIDFD ,
+the
+.I info_type
+field value of the
+.I fanotify_event_info_header
+is set to
+.BR FAN_EVENT_INFO_TYPE_PIDFD .
+.TP
+.I pidfd
+This is a process file descriptor that refers to
+the process responsible for generating the event.
+The returned process file descriptor is no different from
+one which could be obtained manually if
+.BR pidfd_open (2)
+were to be called on
+.IR fanotify_event_metadata.pid .
+In the instance that an error is encountered during pidfd creation for
+one of two possible error types represented by a negative integer
+value may be returned in this
+.I pidfd
+field.
+In cases where
+the process responsible for generating the event
+has terminated prior to
+the event listener being able to
+read events from the notification queue,
+.B FAN_NOPIDFD
+is returned.
+The pidfd creation for an event is only performed at the time the
+events are read from the notification queue.
+All other possible pidfd creation failures are represented by
+.BR FAN_EPIDFD.
+Once the event listener has dealt with an event
+and the pidfd is no longer required,
+the pidfd should be closed via
+.BR close(2).
+.PP
 The following macros are provided to iterate over a buffer containing
 fanotify event metadata returned by a
 .BR read (2)
-- 
2.36.0

