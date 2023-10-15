Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 282BF7C976E
	for <lists+linux-man@lfdr.de>; Sun, 15 Oct 2023 02:50:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229733AbjJOAue (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 14 Oct 2023 20:50:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229555AbjJOAue (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 14 Oct 2023 20:50:34 -0400
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com [IPv6:2607:f8b0:4864:20::b2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4822CC
        for <linux-man@vger.kernel.org>; Sat, 14 Oct 2023 17:50:32 -0700 (PDT)
Received: by mail-yb1-xb2b.google.com with SMTP id 3f1490d57ef6-d9a7a3e17d1so3792803276.2
        for <linux-man@vger.kernel.org>; Sat, 14 Oct 2023 17:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697331032; x=1697935832; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KcqDWvgw4bWv7O9UToJbp/pw5OI4+z4AUaYe8xLVoNg=;
        b=LgsUQagjyn7zHpZs7jrb3pSLbmQTbjaV4TdjG6Wz5jl/S0lleUky+aVTw8KKUMGG1y
         nfMaccqH20AoWbZ3eiu48/Gv3TbJSuWLyE1s8sosa/jnRVJlqUZtScqBg974M1XyRgK+
         hteuu2dwzEW6A6DPVnCvyWa8S130dnq9eleRoa65e+J8RtV8nVFcjnWb6yLc/qDSV6hu
         evYNrr6qF52tQVgEwrJd1yg+6y+FRClyWw5oy0yVIH7YYcleFaYLrM8BrR8TgT0g9g9h
         /4DkXd0AiXY9YlIgiNYNxNxprUGqjpo5WmbHKa5X70FI7wSkzHjnVxdQa0zylfin3J3z
         g4Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697331032; x=1697935832;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KcqDWvgw4bWv7O9UToJbp/pw5OI4+z4AUaYe8xLVoNg=;
        b=M2LZ7wrkeqNDZXwv7kxrlrDfROtcAheKLkqC7NMlkeve98D66uGoC05LQOQ23mCNqR
         bLbCHP8uEsAMyAqtC+HAJUXjlhhucJOD0UOYjZfDv5VRi0gku4UGZ+fJ5Lyz3Bq2F8O9
         Wq28J1Tmzs7pu1Q3ZkRc3Cy9aTJJW4hg2Xg3X9Nx22fd79ZzvQIlGvf9pBeGMxGi4yUW
         U9jdJdwf6QHrUClepO6cqbUFokwll+GwoWZ5M1HZepeYqWzVjdhfhnt63ztgXzf1+XTO
         catSnH2R7Kurgm2TpSyaEmnXgX9wRqpYak9Ixv7nTtWp3pKPxhSpnruKaclAi9IPS5R1
         TFBQ==
X-Gm-Message-State: AOJu0Yy3Uz4pwQma9gc2Ln6SAnPh+iB29VLbx2mSJisd61umyD5oEZk6
        3VE80+G1/ny4jD9Xb0eJmAnZGlK5M+I=
X-Google-Smtp-Source: AGHT+IGKiwYiKNocy31YjcRZ5MLt+VzlY4leQC5Rte6GMNrVXMFQsfeXudt3ladVub6+RbL4LM1s9A==
X-Received: by 2002:a25:abb2:0:b0:d9a:d170:1b0f with SMTP id v47-20020a25abb2000000b00d9ad1701b0fmr8458215ybi.12.1697331031887;
        Sat, 14 Oct 2023 17:50:31 -0700 (PDT)
Received: from firmament.. ([89.187.171.244])
        by smtp.gmail.com with ESMTPSA id 20-20020a250214000000b00d7f06aa25c5sm1573738ybc.58.2023.10.14.17.50.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Oct 2023 17:50:31 -0700 (PDT)
From:   Matthew House <mattlloydhouse@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] fanotify.7: Fix field name in struct fanotify_event_info_fid
Date:   Sat, 14 Oct 2023 20:50:27 -0400
Message-ID: <20231015005029.962889-1-mattlloydhouse@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The final field of this struct as defined in include/uapi/linux/fanotify.h
(and as used in the example program) is called handle, not file_handle.
Fix this, and also replace the zero-length array with a flexible array
member to match the definition in the header.

Fixes: 0a4db6dc742d ("fanotify.7, fanotify_init.2, fanotify_mark.2: Documen=
t FAN_REPORT_FID and directory modification events")
Signed-off-by: Matthew House <mattlloydhouse@gmail.com>
---
 man7/fanotify.7 | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/man7/fanotify.7 b/man7/fanotify.7
index 7c72a2996..1dea4c13c 100644
--- a/man7/fanotify.7
+++ b/man7/fanotify.7
@@ -207,7 +207,7 @@ structure within the read buffer:
 struct fanotify_event_info_fid {
     struct fanotify_event_info_header hdr;
     __kernel_fsid_t fsid;
-    unsigned char file_handle[0];
+    unsigned char handle[];
 };
 .EE
 .in
@@ -576,8 +576,9 @@ and contains the same value as
 when calling
 .BR statfs (2).
 .TP
-.I file_handle
-This is a variable length structure of type struct file_handle.
+.I handle
+This field contains a variable-length structure of type
+.IR "struct file_handle" .
 It is an opaque handle that corresponds to a specified object on a
 filesystem as returned by
 .BR name_to_handle_at (2).
@@ -601,14 +602,14 @@ if the value of
 field is
 .BR FAN_EVENT_INFO_TYPE_FID ,
 the
-.I file_handle
+.I handle
 identifies the object correlated to the event.
 If the value of
 .I info_type
 field is
 .BR FAN_EVENT_INFO_TYPE_DFID ,
 the
-.I file_handle
+.I handle
 identifies the directory object correlated to the event or the parent dire=
ctory
 of a non-directory object correlated to the event.
 If the value of
@@ -616,7 +617,7 @@ If the value of
 field is
 .BR FAN_EVENT_INFO_TYPE_DFID_NAME ,
 the
-.I file_handle
+.I handle
 identifies the same directory object that would be reported with
 .B FAN_EVENT_INFO_TYPE_DFID
 and the file handle is followed by a null terminated string that identifie=
s the
@@ -796,9 +797,9 @@ but not all kinds of error types are reported by all fi=
lesystems.
 .PP
 Errors not directly related to a file (i.e. super block corruption)
 are reported with an invalid
-.IR file_handle .
+.IR handle .
 For these errors, the
-.I file_handle
+.I handle
 will have the field
 .I handle_type
 set to
--=20
2.42.0

