Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D94B043C66E
	for <lists+linux-man@lfdr.de>; Wed, 27 Oct 2021 11:28:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240107AbhJ0JbF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 27 Oct 2021 05:31:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230195AbhJ0JbE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 27 Oct 2021 05:31:04 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DAEC4C061570
        for <linux-man@vger.kernel.org>; Wed, 27 Oct 2021 02:28:39 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id oa4so1604896pjb.2
        for <linux-man@vger.kernel.org>; Wed, 27 Oct 2021 02:28:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=sOaBFDKLR1HxOw1jgwwcrqkQ0cW3jr7D8YIG7LO0NVs=;
        b=byVgSqV+rFTbEx0lApMgLsOvolzXsgBkU9BZhp+RN91sLfQTaj4ec8/pQWI8mzOasQ
         i3KC82Eq5ieVhYWaL9Aj/wGIScn5M+08j1h39lktJWgBZaWQnPafGTRfkKwK2JotOHes
         7eFknz4+cUi4dhVOVJuXzqFyKZzLaI7t8SqVWkBaeRZleQhiY+GIB4IutC7DAV6UUjFi
         2qBQJseGKSQKfH6TozlxpfcoZe8SOoymKOldr/RTi2wYEYq2qrUULt8exK0+cad98HeY
         7PyoXwZyz0HEXxamUJfrctktdcPJzZAqoEhHKg5/aiGTG2VgNBjvS4oF0WMXPSws2Zuj
         VeBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=sOaBFDKLR1HxOw1jgwwcrqkQ0cW3jr7D8YIG7LO0NVs=;
        b=BxiGRdNY+Xh2ZI6t1M4JD99k7cSZGXhkudwcLQ3GnuP9VXlWU5gtum8Cab9lydUF1K
         SVhCdkJKHlnGyNhLg5n+e+lOnmihlELdRgZ78jeWn2Y3FPMCNMA8nhRhUbnhAynpb6dk
         D5IFgqww/sfwvdYnLDauLJtfgNYUYftBQdX1KLYOIqTv2ljmuKTKeV6zGcOcyvq9WW4d
         o8AYr1tAWzU96g43R/Ldpk+gVk7CuiYRf9SPHdUI379SCxeOJiFVITsqgJeYScnMRHPp
         +MG/9mrDnfe7RtrStpWGxWZp7ytcKRvGYNgV7MfPyfvd5vJ/Ir1BAztNm6OCR+GgVnpv
         ldGA==
X-Gm-Message-State: AOAM5318uvkq60DwEOAIKaQJNdodoNTPXMyEFXJfzPyVeExdMuIlaSLE
        VrNVSQhBgWkUwWGhOZ33W9pdHdY6TluT8A==
X-Google-Smtp-Source: ABdhPJztI1ZTfxGZpAbzva/qXfU0QcgmB2IjdjnyZ9rJnD8d1Z1FXwD9dUpJUjhozLzTxX8pcQMF3Q==
X-Received: by 2002:a17:902:7e4b:b0:13d:c03f:5946 with SMTP id a11-20020a1709027e4b00b0013dc03f5946mr27175708pln.4.1635326919153;
        Wed, 27 Oct 2021 02:28:39 -0700 (PDT)
Received: from google.com ([2401:fa00:9:211:ac4c:4230:ca81:632e])
        by smtp.gmail.com with ESMTPSA id om13sm3841664pjb.12.2021.10.27.02.28.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Oct 2021 02:28:38 -0700 (PDT)
Date:   Wed, 27 Oct 2021 20:28:27 +1100
From:   Matthew Bobrowski <repnop@google.com>
To:     mtk.manpages@gmail.com, alx.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, jack@suse.cz, amir73il@gmail.com
Subject: [PATCH 1/1] Document the new fanotify initialization flag
 FAN_REPORT_PIDFD
Message-ID: <6ea10a58db3446aabc729b1082611bdadb1ce4ed.1635135968.git.repnop@google.com>
References: <cover.1635135968.git.repnop@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1635135968.git.repnop@google.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This provides an explanation on the kind of additional information that can
be returned alongside the generic struct fanotify_event_metadata and in
what form this additional contextual information is delievered to a
listening application.

Signed-off-by: Matthew Bobrowski <repnop@google.com>
---
 man2/fanotify_init.2 | 54 +++++++++++++++++++++++++
 man7/fanotify.7      | 95 +++++++++++++++++++++++++++++++++++++++++++-
 2 files changed, 147 insertions(+), 2 deletions(-)

diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
index 0d83e817f..f65b4fa10 100644
--- a/man2/fanotify_init.2
+++ b/man2/fanotify_init.2
@@ -298,6 +298,60 @@ for additional details.
 This is a synonym for
 .RB ( FAN_REPORT_DIR_FID | FAN_REPORT_NAME ).
 .PP
+.TP
+.B FAN_REPORT_PIDFD " (since Linux 5.15)"
+Events for fanotify groups initialized with this flag will contain an
+additional information record object alongside the generic fanotify
+event metadata structure.
+This additional information record will be of type
+.BR FAN_EVENT_INFO_TYPE_PIDFD
+and will contain a pidfd for the process that was responsible for
+generating an event.
+The returned pidfd within the information object is indistinguishable
+from a pidfd that is obtained via
+.BR pidfd_open(2).
+Usage of this additional information record object is for applications
+that are interested in reliably determining whether the process
+responsible for generating the event has either been recycled or
+terminated.
+In the instance that either
+.BR FAN_REPORT_FID
+or
+.BR FAN_REPORT_DFID_NAME
+are supplied along with
+.BR FAN_REPORT_PIDFD
+information record objects of type
+.BR FAN_EVENT_INFO_TYPE_FID,
+.BR FAN_EVENT_INFO_TYPE_DFID
+and
+.BR FAN_EVENT_INFO_TYPE_DFID_NAME
+will likely precede the information object of type
+.BR FAN_EVENT_INFO_TYPE_PIDFD
+for a single event within the read buffer.
+However, an event listener should never work with this information object
+ordering assumption and is encouraged to always check the information type
+set within the
+.IR fanotify_event_info_header
+of each information object.
+The use of the
+.BR FAN_REPORT_TID
+flag along with
+.BR FAN_REPORT_PIDFD
+is currently not supported and attempting to do so will result in the
+error
+.BR EINVAL
+being returned.
+This limitation is imposed by the pidfd API as it currently only
+supports the creation of pidfds for thread-group leaders.
+Creating pidfds for non-thread-group leaders may be supported at some
+point in the future, so this restriction may eventually be lifted.
+Additional pidfd specific error cases can be reported back to the
+listening application in an information record object of type
+.BR FAN_EVENT_INFO_TYPE_PIDFD.
+See
+.BR fanotify(7)
+for additional details.
+.PP
 The
 .I event_f_flags
 argument
diff --git a/man7/fanotify.7 b/man7/fanotify.7
index 455e3ed17..09fa4defb 100644
--- a/man7/fanotify.7
+++ b/man7/fanotify.7
@@ -141,12 +141,24 @@ until either a file event occurs or the call is interrupted by a signal
 The use of one of the flags
 .BR FAN_REPORT_FID ,
 .BR FAN_REPORT_DIR_FID
+or
+.BR FAN_REPORT_PIDFD
 in
 .BR fanotify_init (2)
 influences what data structures are returned to the event listener for each
 event.
-Events reported to a group initialized with one of these flags will
-use file handles to identify filesystem objects instead of file descriptors.
+Events reported to a group initialized with one of either
+.BR FAN_REPORT_FID
+or
+.BR FAN_REPORT_DIR_FID
+flags will use file handles to identify filesystem objects instead of
+file descriptors.
+Events reported to a group intialized with
+.BR FAN_REPORT_PIDFD
+will attempt to also create a process file descriptor, commonly
+referred to as a pidfd, for the process responsible for generating the
+event and provide that alongside the generic fanotify metadata event
+structure.
 .PP
 After a successful
 .BR read (2),
@@ -188,6 +200,27 @@ struct fanotify_event_info_fid {
 .EE
 .in
 .PP
+In the instance that the fanotify group has been initialized with
+.BR FAN_REPORT_PIDFD ,
+the listening application should expect to receive a single
+information record object as detailed below alongside the generic
+.I fanotify_event_metadata structure:
+.PP
+.in +4n
+.EX
+struct fanotify_event_info_header {
+    __u8 info_type;
+    __u8 pad;
+    __u16 len;
+};
+
+struct fanotify_event_info_pidfd {
+        struct fanotify_event_info_header hdr;
+        __s32 pidfd;
+};
+.EE
+.in
+.PP
 For performance reasons, it is recommended to use a large
 buffer size (for example, 4096 bytes),
 so that multiple events can be retrieved by a single
@@ -510,6 +543,64 @@ and the file handle is followed by a null terminated string that identifies the
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
+Exactly like the one that is provided in a
+.I fanotify_event_info_fid
+structure, it is a generic header that contains information used to
+describe an additional information record object that is attached to
+an event.
+In the instance that
+.BR FAN_REPORT_PIDFD
+is supplied during fanotify group initialization, a single information
+record object is expected to be attached alongside the generic
+metadata event with its
+.I info_type
+field set to the value of
+.BR FAN_EVENT_INFO_TYPE_PIDFD .
+The
+.I fanotify_event_info_header
+structure also contains a
+.I len
+field.
+The value of the
+.I len
+field is the total size of the
+.I fanotify_event_info_pidfd
+structure, which also includes
+.IR fanotify_event_info_header .
+.TP
+.I pidfd
+This is a file descriptor that refers to the process responsible for
+generating the event.
+This returned file descriptor is no different from one which could be
+obtained manually if
+.BR pidfd_open(2)
+were to be called on
+.IR fanotify_event_metadata.pid .
+In the instance that an error is encountered during pidfd creation for
+an event, one of two possible error types represented by a negative
+integer value may be returned in this
+.I pidfd
+field.
+In cases where the process responsible for generating the event has
+terminated prior to the event listener being able to read events from the
+notification queue a
+.BR FAN_NOPIDFD
+is returned.
+The pidfd allocation for an event is only performed at the time the events
+are read from the notification queue.
+All other possible pidfd creation failures are represented by
+.BR FAN_EPIDFD .
+Once the application has dealt with an event and the pidfd is no
+longer required, the pidfd should be closed via
+.BR close(2) .
+.PP
 The following macros are provided to iterate over a buffer containing
 fanotify event metadata returned by a
 .BR read (2)
-- 
2.33.0.1079.g6e70778dc9-goog

/M
