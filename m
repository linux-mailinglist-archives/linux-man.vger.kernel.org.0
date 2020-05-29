Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE2841E7961
	for <lists+linux-man@lfdr.de>; Fri, 29 May 2020 11:25:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725971AbgE2JZo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 May 2020 05:25:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725306AbgE2JZn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 May 2020 05:25:43 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63B8FC03E969
        for <linux-man@vger.kernel.org>; Fri, 29 May 2020 02:25:43 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id x13so2710843wrv.4
        for <linux-man@vger.kernel.org>; Fri, 29 May 2020 02:25:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=B1YxFUTtyYO8sjtBdbbYbuPh5qfobz8K0KGzgRxub5c=;
        b=au9z6KEbl95kZse6/4IIBhZA2cAbHvFjvY6chmTB2S1fm6e+mnFhE1ftQWtj/NyGvr
         mhFdRioQP2jt9j6ce2dNx9j0GkHoLSXzADO2zEckJQPzrpzqAiT3JnjAOXnMm2dnZGTq
         V7EQsWA0Gul7fsIRtnOOaBw3rU6kH4csgMf1sr6IntPyJZK8fIu/nbIXzVulf0CzsNPd
         XeJHB/ufV4N5SS3uem/i4i60Bfe4I/C38ITFvcLJZJdSM0ardW6QBUuzMi+tEkkRhxdL
         5qOaMDKA0tx1IhPYRA/TB+/7artzE4dl6jd8Yw3+eVUG+RgXMVPXXIp0QwUcm3+fe7KA
         rnBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=B1YxFUTtyYO8sjtBdbbYbuPh5qfobz8K0KGzgRxub5c=;
        b=bKyOyDSnmALL6TZWEU1jmy9J0dYiP+ctIcI9s0ZXPD2oWYFa9hujPyN7PqgPwooogD
         PR5J98YXVXd17b3eA6Gi8/rz81Kq8jVrK0/kKztNA9e4qO3Ku3wVbaKjQ+FI2YbgP4gY
         l+aWQ0kPqMruYc3p8DtpO8KOfd0mvtdTLAOeKwe6TFQZkCqONOs0RJRd7ut7wDcJ+IA5
         luccZvqfNEj+63P0ey92LtitPoEMS+VLd1iavgFh5KA5vyMNRdgRaSiKrDmIuhDKeHxN
         PpFCtazRoj44p4VHgF38pC8kc6VwRfdpOM8PZd/5kpF0TbBt+J0nJR05LqUTZf8gcA4O
         7PYA==
X-Gm-Message-State: AOAM532uOPzqDBGzMatqvUCC3L2i3OY4E8bvkG6O3y/yKb+A6KKNS1D3
        2Agzi/RBQpDliRyY4EwmdNw=
X-Google-Smtp-Source: ABdhPJzzxlUwliZyVB4xG6ScAyLx70iJpH3ShfdlhJAtsCNXx5ll4ovyochQdYTuUShwTriPBeizLA==
X-Received: by 2002:adf:c651:: with SMTP id u17mr8097389wrg.416.1590744342123;
        Fri, 29 May 2020 02:25:42 -0700 (PDT)
Received: from localhost.localdomain ([141.226.12.123])
        by smtp.gmail.com with ESMTPSA id 10sm10645817wmw.26.2020.05.29.02.25.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2020 02:25:41 -0700 (PDT)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org
Subject: [PATCH 3/3] fanotify.7, fanotify_mark.2: Clarify FAN_ONDIR in output mask
Date:   Fri, 29 May 2020 12:25:30 +0300
Message-Id: <20200529092530.25207-4-amir73il@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200529092530.25207-1-amir73il@gmail.com>
References: <20200529092530.25207-1-amir73il@gmail.com>
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

FAN_ONDIR has been an input only flag before introduing FAN_REPORT_FID.
With FAN_REPORT_FID it can also be in output mask.

Move the text describing its role in output mask to fanotify.7 where the
other output mask bits are documented.

Signed-off-by: Amir Goldstein <amir73il@gmail.com>
---
 man2/fanotify_mark.2 | 17 +++--------------
 man7/fanotify.7      | 18 ++++++++++++++++++
 2 files changed, 21 insertions(+), 14 deletions(-)

diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
index f3ebb0208..b6c6c34c4 100644
--- a/man2/fanotify_mark.2
+++ b/man2/fanotify_mark.2
@@ -278,30 +278,19 @@ Create events for directories\(emfor example, when
 (but see BUGS), and
 .BR closedir (3)
 are called.
-Without this flag, only are created only for files.
-.IP
-The
-.BR FAN_ONDIR
-flag is reported in an event mask only if the
-.I fanotify_fd
-file descriptor has been initialized with the flag
-.BR FAN_REPORT_FID .
+Without this flag, events are created only for files.
 In the context of directory entry events, such as
 .BR FAN_CREATE ,
 .BR FAN_DELETE ,
 .BR FAN_MOVED_FROM ,
 and
-.BR FAN_MOVED_TO
-for example, specifying the flag
+.BR FAN_MOVED_TO ,
+specifying the flag
 .BR FAN_ONDIR
 is required in order to create events when subdirectory entries are
 modified (i.e.,
 .BR mkdir (2)/
 .BR rmdir (2)).
-Subdirectory entry modification events will never be merged with
-nonsubdirectory entry modification events.
-This flag is never reported individually within an event and is always
-supplied in conjunction with another event type.
 .TP
 .B FAN_EVENT_ON_CHILD
 Events for the immediate children of marked directories shall be created.
diff --git a/man7/fanotify.7 b/man7/fanotify.7
index 3c49d67a9..100ec3ebd 100644
--- a/man7/fanotify.7
+++ b/man7/fanotify.7
@@ -381,6 +381,24 @@ This is a synonym for:
 .IP
     FAN_MOVED_FROM | FAN_MOVED_TO
 .PP
+The following bits may appear in
+.I mask
+only in conjunction with other event type bits:
+.TP
+.B FAN_ONDIR
+The events described in the
+.I mask
+have occurred on a directory object.
+Reporting events on directories requires setting this flag in the mark mask.
+See
+.BR fanotify_mark (2)
+for additional details.
+The
+.BR FAN_ONDIR
+flag is reported in an event mask only if the fanotify group has been
+initialized with the flag
+.BR FAN_REPORT_FID .
+.PP
 The fields of the
 .I fanotify_event_info_fid
 structure are as follows:
-- 
2.17.1

