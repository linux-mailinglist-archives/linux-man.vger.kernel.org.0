Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D96732411F
	for <lists+linux-man@lfdr.de>; Wed, 24 Feb 2021 17:05:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235469AbhBXPmD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Feb 2021 10:42:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237215AbhBXOs5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Feb 2021 09:48:57 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99CE7C061224
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:43:59 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id w11so2119318wrr.10
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:43:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+LVqM39z5Vi/Hm5Z1pvnNB7gBSOEqh55CdFfDua3Q/Q=;
        b=cUNQ8afsLAtJmmPnrf4qNIiQzjCNAm03K1XfI7+eil9gSCaG5nEaWpJRQA/OweLvkx
         exjIJ4uu0X2CybRfpsT3Lejon2iQVbI0f8fmz7YEJ/uGGvs+g8I0Qj37Cb5U3JMTIwd6
         jnAmaMKiCrdcWqMqDkmGoWFfPdBeE89Pg6rvrrz1fgWk8SBYwo4ZbC0bvq1YdpIXwlUB
         ALB+F0rvH32cpK1GXfUGZK2hYhG1HEP3DEdJk3bWzJ8z70JEOStwHZZVooQI/OuBq7Ah
         rPK5Ns/qMx8G/WubFrvt7Pcg33Gr3UR52xMt4q3pJ9MqyydMLZsk6o6cBbu72wDaD+Ru
         jkTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+LVqM39z5Vi/Hm5Z1pvnNB7gBSOEqh55CdFfDua3Q/Q=;
        b=ioxF4/V97MMgHTBmtLlBfvgsw8YUPnDn/YtEq86PwbgM906sLlc23gaH6Xh5tbto5B
         1GgtzpQDfHopTSzRtW5ctSMEPR27nHu/zYnMmM0P8DkWRUDHGjbgL0HZQHru2+n8xWmM
         hA+9s4p1ZFIzn9UYgoVjtTOyZjku1F2h7chzBhQF1bkMp0s5Vg0FX3V0FePghpt6N45/
         xQpNY8xWBV6koWJ7j+B4YfvhSlmBOENdW0uLsi+vStUuMJlVglHZpv7tuOVWqujpSb0A
         OSifoc/X9j1eJTukKMhLP3Z2B9T8LbRFtAPeosl1/qxmiscy6y+ovo94Np0koM6iH8J8
         b0ng==
X-Gm-Message-State: AOAM533XY5vdrOM910wSPhng0Th0Hn5biIywJqO3Qj+e2DFcYEnDcL1b
        egdnO7sm+EDrs+m9s5w+Yxv7CsSpAao5cQ==
X-Google-Smtp-Source: ABdhPJwYc7BUqFjTqB3kSYopZYYo7jTCvCRs+G1dSFiucUIyk7/N9pN5N1jMBLrxeSqiI8BB4aU/tw==
X-Received: by 2002:a5d:660b:: with SMTP id n11mr16883114wru.280.1614177838484;
        Wed, 24 Feb 2021 06:43:58 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id a5sm3990676wrs.35.2021.02.24.06.43.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Feb 2021 06:43:58 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 04/20] memcpy.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 24 Feb 2021 15:42:55 +0100
Message-Id: <20210224144310.140649-5-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210224144310.140649-1-alx.manpages@gmail.com>
References: <20210224144310.140649-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

POSIX specifies that the parameters of memcpy()
shall be 'restrict'.  Glibc uses 'restrict' too.
Let's use it here too.

It's especially important in memcpy(),
as it's been a historical source of bugs.

......

.../glibc$ grep_glibc_prototype memcpy
posix/regex_internal.h:746:
{
  memcpy (dest, src, sizeof (bitset_t));
string/string.h:43:
extern void *memcpy (void *__restrict __dest, const void *__restrict __src,
		     size_t __n) __THROW __nonnull ((1, 2));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/memcpy.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/memcpy.3 b/man3/memcpy.3
index 523465ae8..369f9f9d0 100644
--- a/man3/memcpy.3
+++ b/man3/memcpy.3
@@ -35,7 +35,8 @@ memcpy \- copy memory area
 .nf
 .B #include <string.h>
 .PP
-.BI "void *memcpy(void *" dest ", const void *" src ", size_t " n );
+.BI "void *memcpy(void *restrict " dest ", const void *restrict " src \
+", size_t " n );
 .fi
 .SH DESCRIPTION
 The
-- 
2.30.1.721.g45526154a5

