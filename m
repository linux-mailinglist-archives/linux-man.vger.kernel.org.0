Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5EC59507CB3
	for <lists+linux-man@lfdr.de>; Wed, 20 Apr 2022 00:43:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1358272AbiDSWqj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Apr 2022 18:46:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347902AbiDSWqj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Apr 2022 18:46:39 -0400
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD17A1EEF4
        for <linux-man@vger.kernel.org>; Tue, 19 Apr 2022 15:43:54 -0700 (PDT)
Received: by mail-pj1-x1029.google.com with SMTP id n33-20020a17090a5aa400b001d28f5ee3f9so164850pji.4
        for <linux-man@vger.kernel.org>; Tue, 19 Apr 2022 15:43:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=sgwTdVQfwsvyi7t9SX6EgYXfwKHx58V9WFAzTvpBjPc=;
        b=kqWoIWY9THYhpKtCPE76aDB8EWpC5+/LxeLckIHiYQRl9bSfQzD7eoHSNjoINew33H
         yrp+sK+lmPISlahirqWMIFrpgWjEJzXClJdgFWZdCKMKp/XQGnShEZnRM+Gt3yWeIUwE
         zh4RXGAVITAQ36g1yTicWma2O66DhpYQVXuoABhLU8+cBOk0MZGiCFOk2B6j+4ll8n7g
         TAg1HS4iFrgp0r/sCiX8HMKWSqgUXjnXnj1sIG7DU90d66TPbeoadz0cxL00fTcTl+s8
         lDvvATbRwIRSAOovkoTOMp1EMvlwJm1lAZpFf9BtHvQvr7mOCQg7BHCgg35iYVuZCjOj
         l/iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=sgwTdVQfwsvyi7t9SX6EgYXfwKHx58V9WFAzTvpBjPc=;
        b=deL24dNpMThZ2nzEYkv2fFYr2jwP80DEYwihSwS7aeUX+2KH1D4VBspBY9devB0t+X
         jQ+Tthx8tAlveD8OlUOiiJUGZEt9EsD5yTMm2Susyx5G/TD0RLM8BLCwEV38xc4g5Wrq
         K2ZVgs6wXNPHmOu7l8lKMwf+SvjJ134KJdnupuIdZgo0XVUzIF1ouzOe3qMp2jGgdMbk
         WSUvDmtYL4EfLlm8xcI8d+eQdR/Eq233TJ4viI7I6uLAquhxVi9wpLOvyAcIKqoPczb5
         21I0QEOmojRJmQkGyuTznUPKcD8RvKXzQugFNazu9sPDt+tOT/zsYE8yNxl/xVznJfCv
         smYw==
X-Gm-Message-State: AOAM533XzllVwaUBsHLQzBr2FxJceTOkLHe6CPLYLG2KIEFe0yhCRvrH
        OvcPPeQRfbKDXVnK2BcCvlDV8g==
X-Google-Smtp-Source: ABdhPJwoYwmLmSmWRn9IKbpqzsjQePDBIzjGN3aRThAVT5yj5QmPG2VFQs2rdCjtcs5IepRY0hU8zQ==
X-Received: by 2002:a17:902:c7cb:b0:158:3ea4:48b4 with SMTP id r11-20020a170902c7cb00b001583ea448b4mr18038608pla.90.1650408234016;
        Tue, 19 Apr 2022 15:43:54 -0700 (PDT)
Received: from google.com ([2401:fa00:9:211:b252:2efe:7b10:a46b])
        by smtp.gmail.com with ESMTPSA id s14-20020a63dc0e000000b0039cc76bda79sm17322172pgg.40.2022.04.19.15.43.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Apr 2022 15:43:53 -0700 (PDT)
Date:   Wed, 20 Apr 2022 08:43:42 +1000
From:   Matthew Bobrowski <repnop@google.com>
To:     mtk.manpages@gmail.com, alx.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, jack@suse.cz, amir73il@gmail.com
Subject: [PATCH v4] fanotify: Document FAN_REPORT_PIDFD Feature
Message-ID: <1af583adb1f368c51f1976db7bf3a27530cdc06f.1650408011.git.repnop@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Update the fanotify API documentation to include details on the new
FAN_REPORT_PIDFD feature. This patch also includes a generic section
describing the concept of information records which are supported by
the fanotify API.

Signed-off-by: Matthew Bobrowski <repnop@google.com>
Reviewed-by: Jan Kara <jack@suse.cz>
Reviewed-by: Amir Goldstein <amir73il@gmail.com>
---

Changes in v4:

* Applied style and grammatical suggestions by Alejandro Colomar
  [0]. This includes the use of Oxford-style commas and semantic
  newlines.

[0] https://lore.kernel.org/linux-man/f40ff271-a18e-9833-f858-9abf3bb19cd2@gmail.com/

 man2/fanotify_init.2 |  34 +++++++
 man7/fanotify.7      | 213 +++++++++++++++++++++++++++++++++++--------
 2 files changed, 209 insertions(+), 38 deletions(-)

diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
index 7f9a21a52..3dc17c5c7 100644
--- a/man2/fanotify_init.2
+++ b/man2/fanotify_init.2
@@ -283,6 +283,40 @@ for additional details.
 This is a synonym for
 .RB ( FAN_REPORT_DIR_FID | FAN_REPORT_NAME ).
 .PP
+.TP
+.BR FAN_REPORT_PIDFD " (since Linux 5.15)"
+.\" commit af579beb666aefb17e9a335c12c788c92932baf1
+Events for fanotify groups initialized with this flag will contain an
+additional information record alongside the generic
+.I fanotify_event_metadata
+structure.
+This information record will be of type
+.B FAN_EVENT_INFO_TYPE_PIDFD
+and will contain a pidfd for the process that was responsible for
+generating an event.
+A pidfd returned in this information record object is no different
+to the pidfd that is returned when calling
+.BR pidfd_open(2).
+Usage of this information record are for applications that may be
+interested in reliably determining whether the process responsible for
+generating an event has been recycled or terminated.
+The use of the
+.B FAN_REPORT_TID
+flag along with
+.B FAN_REPORT_PIDFD
+is currently not supported and attempting to do so will result in the
+error
+.B EINVAL
+being returned.
+This limitation is currently imposed by the pidfd API as it currently
+only supports the creation of pidfds for thread-group leaders.
+Creating pidfds for non-thread-group leaders may be supported at some
+point in the future,
+so this restriction may eventually be lifted.
+For more details on information records,
+see
+.BR fanotify(7).
+.PP
 The
 .I event_f_flags
 argument
diff --git a/man7/fanotify.7 b/man7/fanotify.7
index f8345b3f5..bf648782c 100644
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
@@ -146,20 +136,69 @@ struct fanotify_event_metadata {
 .EE
 .in
 .PP
-In case of an fanotify group that identifies filesystem objects by file
-handles, you should also expect to receive one or more additional information
-records of the structure detailed below following the generic
+Information records are supplemental pieces of information that may be
+provided alongside the generic
+.I fanotify_event_metadata
+structure.
+The
+.I flags
+passed to
+.BR fanotify_init (2)
+have influence over the type of information records that may be returned
+for an event.
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
+whereby file handles are used to identify filesystem objects rather
+than file descriptors.
+Information records may also be stacked,
+meaning that using the various
+.B FAN_REPORT_*
+flags in conjunction with one another is supported.
+In such cases,
+multiple information records can be returned for an event alongside
+the generic
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
+fanotify provides no guarantee around the ordering of information
+records when a notification group is intialized with a stacked based
+configuration.
+Each information record has a nested structure of type
+.IR fanotify_event_info_header .
+It is imperative for event listeners to inspect the
+.I info_type
+field of this structure in order to determine the type of information
+record that had been received for a given event.
+.PP
+In cases where an fanotify group identifies filesystem objects by file
+handles,
+event listeners should also expect to receive one or more of the below
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
@@ -168,6 +207,40 @@ struct fanotify_event_info_fid {
 .EE
 .in
 .PP
+In cases where an fanotify group is initialized with
+.BR FAN_REPORT_PIDFD ,
+event listeners should expect to receive the below information record
+object alongside the generic
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
@@ -385,6 +458,46 @@ The
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
+A unique integer value representing the type of information record
+object received for an event.
+The value of this field can be set to one of the following:
+.BR FAN_EVENT_INFO_TYPE_FID ,
+.BR FAN_EVENT_INFO_TYPE_DFID ,
+.BR FAN_EVENT_INFO_TYPE_DFID_NAME ,
+or
+.BR FAN_EVENT_INFO_TYPE_PIDFD .
+The value set for this field is dependent on the flags that have been
+supplied to
+.BR fanotify_init (2).
+Refer to the field details of each information record object type
+below to understand the different cases in which the
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
+is set to the size of the information record object, including the
+.IR fanotify_event_info_header .
+The total size of all additional information records is not expected
+to be larger than
+.RI ( event_len
+\-
+.IR metadata_len ).
+.PP
 The fields of the
 .I fanotify_event_info_fid
 structure are as follows:
@@ -392,8 +505,6 @@ structure are as follows:
 .I hdr
 This is a structure of type
 .IR fanotify_event_info_header .
-It is a generic header that contains information used to describe an
-additional information record attached to the event.
 For example, when an fanotify file descriptor is created using
 .BR FAN_REPORT_FID ,
 a single information record is expected to be attached to the event with
@@ -414,23 +525,6 @@ identifying a parent directory object, and one with
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
@@ -498,6 +592,49 @@ and the file handle is followed by a null terminated string that identifies the
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
+This is a process file descriptor that refers to the process
+responsible for generating the event.
+The returned process file descriptor is no different from one which
+could be obtained manually if
+.BR pidfd_open (2)
+were to be called on
+.IR fanotify_event_metadata.pid .
+In the instance that an error is encountered during pidfd creation for
+one of two possible error types represented by a negative integer
+value may be returned in this
+.I pidfd
+field.
+In cases where the process responsible for generating the event has
+terminated prior to the event listener being able to read events from the
+notification queue,
+.B FAN_NOPIDFD
+is returned.
+The pidfd creation for an event is only performed at the time the
+events are read from the notification queue.
+All other possible pidfd creation failures are represented by
+.BR FAN_EPIDFD.
+Once the event listener has dealt with an event and the pidfd is no
+longer required,
+the pidfd should be closed via
+.BR close(2).
+.PP
 The following macros are provided to iterate over a buffer containing
 fanotify event metadata returned by a
 .BR read (2)
-- 
2.36.0.rc0.470.gd361397f0d-goog

/M
