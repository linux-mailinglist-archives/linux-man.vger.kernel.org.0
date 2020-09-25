Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E78DC2785A8
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 13:19:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726255AbgIYLTo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 07:19:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727044AbgIYLTn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 07:19:43 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1A88C0613CE
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 04:19:42 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id d4so2636794wmd.5
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 04:19:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zdac5w91FlbnFp695jxyUtEriFdeg5nN9x9c64ox9VU=;
        b=qcKowvEjnJE0UaYWgRV18OsDcaSJnrJjSyzeoXNA0ybX99liRXUzAxeAo75C4Rbx/9
         TCGerGDBmt9tXU9X+wnLBnX15NKR0bVAiH+88JZYrRXkV6WbhfBKYg8IsLQWMw31j4O4
         /V+dxxBk77+Q/+BmKFQ+q+bfeXOFzdEMOIrLNVBXFOri2RosOyTCU4QYvkaX861dnV5Y
         llnhmsRhRVOo3vsLRtwRURll7w27ARf1Hi0XN5moUtcIjGT7fC+Ot8Lmh663p1Drdk4B
         e/ZZ+tvePWAI8BE2vBPQ4lCmctMSrnPp0jbieonvenwdT18+XQasaTEK0ETuhMFK2X2z
         qJDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zdac5w91FlbnFp695jxyUtEriFdeg5nN9x9c64ox9VU=;
        b=UfYg6oq5jCbkx3AdLb3RiF7hMDRWQ55osTvJgtuHBx3ngiIWpT/nEzXbJ+AIi117pe
         36bnfJh1dtvfHsw7h3o1G2o68Af7fwpkrxCBg5k+pjvxerlRV8WXk/Vl7Mqtv/rhRy96
         sIGQQUbOWuIkUavPJa4aDWjq5lJkt55Air1V97PKJtC4/YQ8htHmOmGr1KbF1v0CqRF6
         Pp3PEQdIa7Hkvv8kNAAMJDJacOlrtwS4wsDB72Eu6SiRezewfP0U4bnT2vyQeN7p1Qmb
         2H2/GEIc+KzcoA7oS6mcsnx4KeSoCArP5JHcN/SqtuY7Hf46LhnWwlTEZS2CseSTxFUA
         +ucA==
X-Gm-Message-State: AOAM531lmmww7mBh6CBYnrROtV/mOEOsNqJ2euov3H7Slcj+fOX/2aq0
        uF0lwSVtPSsLtjmBnjj5gQU=
X-Google-Smtp-Source: ABdhPJxrSYMZ1XFCNk0TMLuj0L68vTAKI0yi86EX0+OHw1kU6RGfYacGrErnYaQtkKkuNo+Ghs4hNA==
X-Received: by 2002:a05:600c:2146:: with SMTP id v6mr2524370wml.159.1601032781273;
        Fri, 25 Sep 2020 04:19:41 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id o15sm2451947wmh.29.2020.09.25.04.19.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Sep 2020 04:19:40 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH v2 04/10] system_data_types.7: Add float_t
Date:   Fri, 25 Sep 2020 13:19:23 +0200
Message-Id: <20200925111922.222149-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <94936b66-4d20-1168-546f-64ac63018845@gmail.com>
References: <94936b66-4d20-1168-546f-64ac63018845@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

Hi Michael,

On 2020-09-25 11:30, Michael Kerrisk (man-pages) wrote:
>> I removed the "intended" part to simplify it a bit. Do you prefer to
>> keep it?
> Well, as long as you are going to lift the detail about "most
> efficient" from the C standard, I'd be inclined to keep
> the word "intended" from the standard as well. But I do not feel
> strongly about it.
> 

Fair enough.


On 2020-09-25 11:30, Michael Kerrisk (man-pages) wrote:
>> BTW, I'll also add a note that FLT_EVAL_METHOD is defined in <float.h>
>> Would you add that to "Notes", or as part of the description?
> As part of the description I think. (And I don't mind if it's
> repeated in the double_t description.)

I think there was a misunderstanding; maybe I should have been clearer:

I meant to write about <float.h> in the "Notes" of the type,
and not in the "NOTES" of the entire page.

However, I decided to do it in the description of the type as you said,
because it was a bit simpler.

The other version would have resulted in this code, just for you to see:

[[
.TP
.I double_t
.RS
.PP
Include:
.IR <math.h> .
.PP
The implementation's most efficient floating type at least as wide as
.IR double .
Its type depends on the value of the macro
.BR FLT_EVAL_METHOD :
.TP
0
.I double_t
is
.IR double .
.TP
1
.I double_t
is
.IR double .
.TP
2
.I double_t
is
.IR "long double" .
.IP
For other values of
.BR FLT_EVAL_METHOD ,
the type of
.I double_t
is implementation-defined.
.PP
Conforming to: C99 and later; POSIX.1-2001 and later.
.PP
Notes: The macro
.B FLT_EVAL_METHOD
is defined in
.IR <float.h> .
.PP
See also the
.I float_t
type in this page.
.RE
]]


Cheers,

Alex

 man7/system_data_types.7 | 42 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index b04457bbf..aa5ab95e9 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -147,6 +147,48 @@ Conforming to: C99 and later; POSIX.1-2001 and later.
 .IP
 See also:
 .BR fenv (3)
+.\"------------------------------------- float_t ----------------------/
+.TP
+.I float_t
+.IP
+Include:
+.IR <math.h> .
+.IP
+The implementation's most efficient floating type at least as wide as
+.IR float .
+Its type depends on the value of the macro
+.BR FLT_EVAL_METHOD ,
+defined in
+.IR <float.h> :
+.RS
+.TP
+0
+.I float_t
+is
+.IR float .
+.TP
+1
+.I float_t
+is
+.IR double .
+.TP
+2
+.I float_t
+is
+.IR "long double" .
+.IP
+For other values of
+.BR FLT_EVAL_METHOD ,
+the type of
+.I float_t
+is implementation-defined.
+.RE
+.IP
+Conforming to: C99 and later; POSIX.1-2001 and later.
+.IP
+See also the
+.I double_t
+type in this page.
 .\"------------------------------------- gid_t ------------------------/
 .TP
 .I gid_t
-- 
2.28.0

