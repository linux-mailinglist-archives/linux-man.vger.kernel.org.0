Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0461D428BD3
	for <lists+linux-man@lfdr.de>; Mon, 11 Oct 2021 13:15:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236143AbhJKLRn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 11 Oct 2021 07:17:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235970AbhJKLRn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 11 Oct 2021 07:17:43 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 564A1C061570
        for <linux-man@vger.kernel.org>; Mon, 11 Oct 2021 04:15:43 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id e12so55002425wra.4
        for <linux-man@vger.kernel.org>; Mon, 11 Oct 2021 04:15:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VoGUuaLKP6nSUCSXd+TdR0iGu3vR93KZ6ekICR1otZg=;
        b=idKE1TqvDsQFiTOKdLt3EpIoqt8OR28BmP0MSjn5sr9Q2mYIyJA7lb8Yp69P3nL4zL
         nIO3UYIRlgWo3caB0dnIHIH/xLp9Cy1lQIPZgpYoJYBQKU07s0CTyQOmrukujCGd1Ylh
         asu46YAZU/Mt7J8vUrSOe8CcnRRtvUh/uErNCr95OQvwvPEHGJnuDBvCvnKN1DUthM7d
         /MiV8q+RG+zqKOSLw8gbLF8TB7f7JO1GGTe91Af7Ivl/SH3ByH8edx+uQnk4zj7EVFqu
         iW4oltFl+gbnJj7wuMQ08wdGwJJKi7XfPKbBBXWqYPoaNxi6XLXm7dLNEaAlZUEVME7E
         B8Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VoGUuaLKP6nSUCSXd+TdR0iGu3vR93KZ6ekICR1otZg=;
        b=sNgKkYPYPO08choRIYm42sW7csvOhHzkufH3XGyLUf1hl3RS1PO+9VlgWZVgwA4fN5
         a8WGVAOuAl4/CT3lh5Jxq1AnPRQI9yk78JU/wcXSZqZD/nXbXs8TRPVXozhmlEddlpk1
         9ddl/mFbnkc6dzCtL7/nezTm77Rm5viOB96nnpGVVvUAMff3upxswanvBBv7OoEuGkvg
         sNqnRKXsdatFHoc8XIXYFPjO0b0bINb3KYop/BoNXG1HBxkv0tAsiW1MWFSHAPFUyRu+
         KvEEuKOjJlRJLTKNhIlEqYrIb/xczbrLVcuuakcTLO/Ol0aQk1KebTKAobVCiTz0Nxgx
         CVOg==
X-Gm-Message-State: AOAM5319vDlbRDPnYfSZd4s61lM7RlSUna2ENJM2it5XhFko/8eUTqDi
        7LP+pBdm2gdo9JHYwb3fABw=
X-Google-Smtp-Source: ABdhPJy+thS3Kp6AzgoTQwqIrx4TdJOaJPHxVqz+0//heeSeESqIAfZZJ9nDgFk5WuM0DnW8WYR54A==
X-Received: by 2002:adf:de0e:: with SMTP id b14mr16791412wrm.271.1633950941945;
        Mon, 11 Oct 2021 04:15:41 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id p17sm1215746wrx.33.2021.10.11.04.15.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Oct 2021 04:15:41 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        libc-alpha@sourceware.org, Paul Eggert <eggert@cs.ucla.edu>
Subject: [PATCH v2 2/2] timegm.3: Remove recommendation against use of timegm()
Date:   Mon, 11 Oct 2021 13:12:39 +0200
Message-Id: <20211011111237.9414-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <a8e09a03-3eb2-d6c0-c662-e3db800fe2fc@gmail.com>
References: <a8e09a03-3eb2-d6c0-c662-e3db800fe2fc@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

It was straight after a note that they are nonstandard functions,
which already tells the user that if portability is in mind, they
shouldn't be used, so this recommendation adds nothing in that
sense.

Also, there's a note that timelocal() should _never_ be used, due
to mktime(3) being identical and in the POSIX standard (it is also
in C99), so this note would also add nothing in that sense.

So the only uses not covered by those other notes are non-portable
uses of timegm().  In that scenario, it is an excellent function,
since it avoids races, which a home-made timegm(3) implementation
by means of standard functions would have.

A trivial implementation of timegm(3) using only standard C could
be (I didn't test it; use on your own):

// portable_timegm.c
 #include <time.h>

time_t portable_timegm(struct tm *tm)
{
	tm->tm_isdst = 0;
	/*
	 * If another thread modifies the timezone during the
	 * execution of the line below, it will produce undefined
	 * behavior.
	 */
	return mktime(tm) - timezone;
}

Cc: Paul Eggert <eggert@cs.ucla.edu>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/timegm.3 | 1 -
 1 file changed, 1 deletion(-)

diff --git a/man3/timegm.3 b/man3/timegm.3
index b848e83e1..0e8528b26 100644
--- a/man3/timegm.3
+++ b/man3/timegm.3
@@ -97,7 +97,6 @@ T}	Thread safety	MT-Safe env locale
 .SH CONFORMING TO
 These functions are nonstandard GNU extensions
 that are also present on the BSDs.
-Avoid their use.
 .SH NOTES
 The
 .BR timelocal ()
-- 
2.33.0

