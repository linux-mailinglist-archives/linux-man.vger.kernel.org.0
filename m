Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B440C29BB94
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 17:30:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1808739AbgJ0QVb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 12:21:31 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:41440 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1808744AbgJ0QV2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Oct 2020 12:21:28 -0400
Received: by mail-wr1-f68.google.com with SMTP id s9so2582423wro.8
        for <linux-man@vger.kernel.org>; Tue, 27 Oct 2020 09:21:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ahyxzVHXR5j+vb6nlC9Unps1KgpeWzHNWUFO+DDc9J8=;
        b=Ab+DfoboOKLZKqPcC/JMU7tvhGjuD0O4oynfbhZzH9PO9RUzoIUICfRwC9DTLbj2WG
         5eRIBHkQNGWL+L+2N6i/71JldyRfPp6n3y1Z/rFJ+Els+LsTPbqmqBATXQHQMnueePqu
         TlTMTGbXA+iHdhCXDG1vZB6oKg9sUBYrU5D/5l7JEf33S9whTJOJgbk62C5Kc5MGwUZC
         oXSatFBnYmwTpBAGccYfFHZT94JvBZ9f9eXCrkHBzkvDUWU9Abp4bSWrGPxy6rfnmU47
         e9TtcUVVAdmJT5MTL5G3CymVVzgRicWA80Z189UEmefYDq/P0sBk7SKOEQB2/jwt4sOi
         gx6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ahyxzVHXR5j+vb6nlC9Unps1KgpeWzHNWUFO+DDc9J8=;
        b=buTUoUDpJk4GpL0fld3Te7co9RjZ3cFvHb4DWucM4nutVnlE5hoaTVCtcd98saK61r
         SYRVqYSjuyOM8tvUpEfMnsN4KmHbY6wXTGaoptad1S7DLLqerN6kIDEsqc33QhNakO9/
         QAgD2cjTw9x0DD4mod5cv7yimt69wN1PjZJ35uy2dU2bmtOfHJUKb1tjSrnap8w6gg+s
         ZQsOrmG7/FXDmGzTLf/gVdcC45P4GhXkze6FLK94ERnYxGBBuOnslA/BTuqN/OwWSCyo
         k67ukYYALc0vfEObN7/WEL1nf5LEnbtzET175q5SBTzq+nZhLoNz3qBTe2U5HmHqRh60
         edfQ==
X-Gm-Message-State: AOAM531Gx3yiJoPiRouNe8SD4OYG7DOk0zkXIViW8ldQ0aQRj9DBs0JX
        tQ8xi5cSFc0KvAWhLoSljRc=
X-Google-Smtp-Source: ABdhPJyAV4GN13Um83H0Sm2lGb89fg/XXU0vnmxbZGo3SGorsAN8FVFhkTY8Q96Xgjz2Em5QtmHOag==
X-Received: by 2002:adf:e5cf:: with SMTP id a15mr3641378wrn.186.1603815685885;
        Tue, 27 Oct 2020 09:21:25 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id u5sm3108839wru.63.2020.10.27.09.21.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2020 09:21:25 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 3/6] system_data_types.7: Add 'loff_t'
Date:   Tue, 27 Oct 2020 17:21:11 +0100
Message-Id: <20201027162114.47521-4-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201027162114.47521-1-colomar.6.4.3@gmail.com>
References: <20201027162114.47521-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index e846de68b..313cf059e 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -726,6 +726,31 @@ C99 and later; POSIX.1-2001 and later.
 .IR "See also" :
 .BR lldiv (3)
 .RE
+.\"------------------------------------- loff_t -----------------------/
+.TP
+.I loff_t
+.RS
+.IR Include :
+.IR <sys/types.h> .
+.PP
+Used for file sizes.
+It is a 64-bit signed integer type.
+.PP
+.IR "Conforming to" :
+Present in glibc.
+It is not standardized by the C language standard nor POSIX.
+.PP
+.IR "See also" :
+.BR copy_file_range (2),
+.BR llseek (2),
+.BR splice (2)
+.PP
+See also the
+.I off64_t
+and
+.I off_t
+types in this page.
+.RE
 .\"------------------------------------- off_t ------------------------/
 .TP
 .I off_t
-- 
2.28.0

