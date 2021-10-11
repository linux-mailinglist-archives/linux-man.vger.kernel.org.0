Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8AAD3428C69
	for <lists+linux-man@lfdr.de>; Mon, 11 Oct 2021 13:57:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233144AbhJKL7B (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 11 Oct 2021 07:59:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231240AbhJKL7A (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 11 Oct 2021 07:59:00 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB891C061570
        for <linux-man@vger.kernel.org>; Mon, 11 Oct 2021 04:57:00 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id o20so55272657wro.3
        for <linux-man@vger.kernel.org>; Mon, 11 Oct 2021 04:57:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=N3gu0RB7Rgjr5d1iPqDwnj2FGRpd1mTxBZqZ6Pf2K9A=;
        b=F07d/NHueKXuBTu5OeRpmwbu4/ZIJupgkCbdOH6CRcOtD+nN033huS8w4p4eUewMbe
         jjgGSb6RLCWlvkZBKes52kmL7ANHWRBXj7Nq1cdS25IRHnTAgclvn4YKMyyI+IQStHWJ
         wZ1IKkdK07Aj2gc4cz/3nrOuWVpNIdqxO5vd8fIq7Me/VvsF+RsGlh1YhVQ+6tBmJ6bx
         Zff3vQCGmaO+cEoymb9tYK2wXnQwGaJEjXnG9bmOFjlzms2VutOZag+6TckdL8KNZ3ID
         r1ajN02bFjObu3dj+rgIQU0hn4nJNt9I7Ou+5iPP6XRiEnldkFCuDAXzRg4oa+XIAsOj
         x6hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=N3gu0RB7Rgjr5d1iPqDwnj2FGRpd1mTxBZqZ6Pf2K9A=;
        b=YtCozA2qU7y+Qtc+DCx2mB+KMy2ujg15uUbNxXEJscMaCV5OnV/p/gqoyzsPyY3PoU
         VNnGN+myB8rj/3UhFL4219eQo/HZLOSd05JY9JqExm54RJ5cwaMQlUb9eY3Mu+GnMZKQ
         ktibw45sGGdP5F+q1fScQU7eS5Bv9AKSMuz9vqbdI2kwgQUbbihGX5mF6ENdsN7Ajy07
         /0Sc16oi9hL2DoUKmsjiwwKtc6dvjjvvOflThcZH8mUX+i1J6sNZs9PrFmeRLc2gFWjH
         uYN8aMODkA/28YlUifAHSTFsYTNSeTs49pd0L8rym6fWJYUGgqlKFz4uAsrOfXZ9sM3V
         YWrA==
X-Gm-Message-State: AOAM532HmkaDsvZqiEf2O/KvO+7cFkM0NoTZYZ1DdzmwO6uq2QElNtzu
        bod6R6I7hQ+kyqyylb0XUkE=
X-Google-Smtp-Source: ABdhPJyKeOwH87qvSSib1gISD3SmlzHTBMh2JLzhcp1+3a59j2A7Pz0MfFNcEfFe4gNkx4pqW2PmDw==
X-Received: by 2002:a05:600c:4fcd:: with SMTP id o13mr2199939wmq.158.1633953419476;
        Mon, 11 Oct 2021 04:56:59 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id l16sm7912490wmj.33.2021.10.11.04.56.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Oct 2021 04:56:59 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        libc-alpha@sourceware.org, Paul Eggert <eggert@cs.ucla.edu>
Subject: [PATCH v3 2/2] timegm.3: Remove recommendation against their use
Date:   Mon, 11 Oct 2021 13:54:08 +0200
Message-Id: <20211011115406.11430-2-alx.manpages@gmail.com>
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
to mktime() being identical and in the POSIX standard (it is also
in C99), so this note would also add nothing in that sense.

So the only uses not covered by those other notes are non-portable
uses of timegm(3).  In that scenario, it is an excellent function.

When porting to other systems, it is trivial to port timegm(3)
using only standard C (I didn't test it; use on your own):

// timegm.c
 #include <time.h>

time_t timegm(struct tm *tm)
{
	tm->tm_isdst = 0;
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

