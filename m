Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 369E0294492
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 23:31:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2409941AbgJTVb4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 17:31:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2409934AbgJTVb4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Oct 2020 17:31:56 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E461C0613CE
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 14:31:56 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id y12so4474720wrp.6
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 14:31:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Vx6KFeycH91N/4puf7JS4dZTFcKzQA5T9i2Qjnzua6g=;
        b=BbIfAnrIpMF9ytWtzqWA8h9U+nQY8kcY/JDqDCLAoIYxaxnNzy7jmIlg0O5fBG7IVe
         ShauPNLrAyVoyy7nPOMCR7fpff4rexnm3IfiOS8ARJ+uCQzMoJ7xA3mIHr+At8U5brHS
         nagop/+N0DBF+z4KK+nivUT96LG0U80URGycrvf2fQjsWyp0jqA13bKcckUuukFGYkx1
         RSHzYdG+a9ZB3aRTQ3P4uUO+1e/MYaOGob2At8P2ckgPPS6czs6eeD8sh6JRDKRmxX9X
         XjGpjWi7+yxiOCX7CEMjsX6ReLOHem/Eo7+APRJdcZ7w3MqDfQCm8h1uPZGROOSl4eWj
         rvaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Vx6KFeycH91N/4puf7JS4dZTFcKzQA5T9i2Qjnzua6g=;
        b=OjAEG1K7k8fbfh+/94hM8XSsl7+DA3ClcbsVgl9/fgUEe2YFu5GYd/CqnZe3FU2vP4
         ucqGslRfm9SlkJ1NkSGea8VxVALa/yX/BXo15wNc0GShWoFp0lBcBA1EKoeGQHex3MQi
         ywHo/4bVywqINhLwLMIu8v4QYG2zMJhK/l8TuPRaDI/pYWauBRudJ9jOGia/PsTk6PBu
         yfIPcUMdDP/qdeof4+eaw18LUnZYuYDur865nOXrCpMOtoUVtUTfXcgCX54buW+ybu6F
         CohgK+OC1Ggb6NoUMEk8NuKPRKF6kl5FnNw4Kxv0lY+Ym+5Pfxm5O8Tjbzcb1KupzcNs
         lV3Q==
X-Gm-Message-State: AOAM530QbIUe8yzvQqiS3yX6qZgkzJFErUFVzlBftoJlwtPIZidxEZx+
        axP1VCjxmE0n4ArdwiwGyTM=
X-Google-Smtp-Source: ABdhPJySOD6YzuTJVgv3gbmb/oQqds8jw9MIttz3BWSD5CfrBb2qmosEDygrQliBs5wWOI0RtXPjdw==
X-Received: by 2002:a1c:cc07:: with SMTP id h7mr116601wmb.55.1603229515102;
        Tue, 20 Oct 2020 14:31:55 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id y4sm35387wrp.74.2020.10.20.14.31.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 14:31:54 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Hans Petter Selasky <hps@selasky.org>
Subject: [PATCH v2 06/10] list.3: Copy and adapt code from queue.3
Date:   Tue, 20 Oct 2020 23:31:04 +0200
Message-Id: <20201020213107.83837-7-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201020142146.61837-23-colomar.6.4.3@gmail.com>
References: <20201020142146.61837-23-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

list.3: SYNOPSIS: Copy include from queue.3
list.3: DESCRIPTION: Copy description about naming of macros from queue.3
list.3: DESCRIPTION: Remove unrelated code to adapt to this page
list.3: DESCRIPTION: Remove lines pointing to the EXAMPLES
list.3: CONFORMING TO: Copy from queue.3
list.3: CONFORMING TO: Adapt to this page

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/list.3 | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/man3/list.3 b/man3/list.3
index 6252aaf6a..4c36b0846 100644
--- a/man3/list.3
+++ b/man3/list.3
@@ -49,6 +49,8 @@
 .Nm LIST_REMOVE ,
 .\" .Nm LIST_SWAP ,
 .SH SYNOPSIS
+.In sys/queue.h
+.\"
 .Fn LIST_EMPTY "LIST_HEAD *head"
 .Fn LIST_ENTRY "TYPE"
 .Fn LIST_FIRST "LIST_HEAD *head"
@@ -68,6 +70,18 @@
 .\" .Fn LIST_SWAP "LIST_HEAD *head1" "LIST_HEAD *head2" "TYPE" "LIST_ENTRY NAME"
 .\"
 .SH DESCRIPTION
+In the macro definitions,
+.Fa TYPE
+is the name of a user defined structure,
+that must contain a field of type
+.Li LIST_ENTRY ,
+named
+.Fa NAME .
+The argument
+.Fa HEADNAME
+is the name of a user defined structure that must be declared
+using the macro
+.Li LIST_HEAD .
 .Ss Lists
 A list is headed by a structure defined by the
 .Nm LIST_HEAD
@@ -215,10 +229,12 @@ from the list.
 .\" .Fa head1
 .\" and
 .\" .Fa head2 .
-.Pp
-See the EXAMPLES section below for an example program using a linked list.
 .SH RETURN VALUE
 .SH CONFORMING TO
+Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
+Present on the BSDs
+(LIST macros first appeared in
+.Bx 4.4 ).
 .SH BUGS
 .SH EXAMPLES
 .Ss List example
-- 
2.28.0

