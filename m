Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 309A1428BD0
	for <lists+linux-man@lfdr.de>; Mon, 11 Oct 2021 13:14:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236136AbhJKLQD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 11 Oct 2021 07:16:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55598 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235970AbhJKLQC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 11 Oct 2021 07:16:02 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB3B5C061570
        for <linux-man@vger.kernel.org>; Mon, 11 Oct 2021 04:14:02 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id o20so54876939wro.3
        for <linux-man@vger.kernel.org>; Mon, 11 Oct 2021 04:14:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FavOfjqhpgqKuDJNPO3xb2CZQhpGYoxtLCiCHCkGnfk=;
        b=Ws8POxtlf7LelnoCexhyyj43W8t+7Eonysyd2wnMsPiuzvU0sUbVuqX+ypNNfL9Rhs
         ue9fNroto6EAXjTYmv0uwOZvX48bjtFNKBf84QliGtM8SjUBmDCFslJya4RnNpqCSCjM
         FYW6YizypmPbzKS56440IcwhXJtQs/e47ta3LUVe0hH59NzfsE8aQERisEmyN1w+k3Tx
         L1SzuWJa/IxkmKashY4kL86JACC4zKMVgyLfxqo/7Oqem5Lb68jPXYR2+ToBtnpvXfBf
         3z56DCoraQ32TdKwIRw3jYW0s2CZcnBJDKJoX+h8HrX1l2EjjuQGbnHJbwrz6DlimSqS
         ciOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FavOfjqhpgqKuDJNPO3xb2CZQhpGYoxtLCiCHCkGnfk=;
        b=k1wU8TKO6lY4fr/t5cWD4/wZkHC6O3VCYVC2eAdxxPY6XNfsDRL7etEKwBy5b3RluF
         AAzavjpQvQzosHv2C3McpX924f8DigKJKYD8qGuif9VHu68lYTcu/jW69vmK2b5A1kWA
         +AnsEjVmvtqwVPbRwAVe6ZZSOKmM8kozPDs16/4N9IFu9gGN2frgnHXmTvEG/97Jsp4y
         78av3eIyGdlrouUoC02o9Btl2c5Rip6oydkI8iPz9LE6ygPiX1y0pxmetigxQC8jrMKg
         6lD0etKJFQkmkfwJGfUrz3a4Hrj+BZY2OoUDg2VqgomJ80i0KEwn9SbPUokX0vayxwo0
         wUkg==
X-Gm-Message-State: AOAM531y5H/qTJnj/SjZP7IhEWeMJWsncEm+1dFpT3anJnNz2wx9up+X
        r+pKlG3St0S74lxizGxMlMs=
X-Google-Smtp-Source: ABdhPJxoqSPCnxx8sziYRzpTQLlrMfXCtKkrMsvUWtQt22WiDoo1salDUr5YWHMZjSTJVOD8L6yOiQ==
X-Received: by 2002:adf:bbc8:: with SMTP id z8mr24436143wrg.281.1633950841182;
        Mon, 11 Oct 2021 04:14:01 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id p17sm1215746wrx.33.2021.10.11.04.13.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Oct 2021 04:14:00 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        libc-alpha@sourceware.org, Paul Eggert <eggert@cs.ucla.edu>
Subject: [PATCH v2 1/2] ctime.3: mktime() may modify tm_hour due to tm_isdst
Date:   Mon, 11 Oct 2021 13:12:37 +0200
Message-Id: <20211011111237.9414-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <a8e09a03-3eb2-d6c0-c662-e3db800fe2fc@gmail.com>
References: <a8e09a03-3eb2-d6c0-c662-e3db800fe2fc@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

If the input DST value is the opposite of the one that mktime()
uses, which comes from the current system timezone (see tzset(3)),
mktime() will modify the hour (and if it's in a day limit, it may
carry up to modify other fields) to normalize the time to the
correct DST.

If a user wants to avoid this, the user probably wants to use UTC
time.  mktime(3) uses local time, so it's not suitable for that
(by default).  Consider the following solutions:

For that, the recommended solution is to use timegm(3), which
sadly is non-portable (it is present in Linux and the BSDs, but
not in POSIX).

A portable solution (untested) might be to implement your own
timegm(3):
	time_t portable_timegm(struct tm *tm)
	{
		tm->tm_isdst = 0;
		return mktime(tm) - timezone;
	}
and assuming no other thread will change the current timezone
during this call.

Another portable solution would involve setting the timezone
explicitly to UTC+0 with setenv() (see tzset(3)).  But this forces
all of the program to use UTC time, which might not be desirable.

Cc: Paul Eggert <eggert@cs.ucla.edu>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/ctime.3 | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/man3/ctime.3 b/man3/ctime.3
index 0e2068a09..7a5714be8 100644
--- a/man3/ctime.3
+++ b/man3/ctime.3
@@ -260,6 +260,13 @@ normalized (so that, for example, 40 October is changed into 9 November);
 is set (regardless of its initial value)
 to a positive value or to 0, respectively,
 to indicate whether DST is or is not in effect at the specified time.
+If the initial value of
+.I tm_isdst
+is inconsistent with the one set by
+.BR mktime (),
+.I tm_hour
+(and possibly other fields)
+will be modified to normalize the time to the correct DST.
 Calling
 .BR mktime ()
 also sets the external variable \fItzname\fP with
-- 
2.33.0

