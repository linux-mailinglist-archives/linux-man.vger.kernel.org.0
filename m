Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9834E3169BF
	for <lists+linux-man@lfdr.de>; Wed, 10 Feb 2021 16:07:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231626AbhBJPG5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Feb 2021 10:06:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231559AbhBJPGz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Feb 2021 10:06:55 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACBA0C06174A
        for <linux-man@vger.kernel.org>; Wed, 10 Feb 2021 07:06:13 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id u14so2107513wmq.4
        for <linux-man@vger.kernel.org>; Wed, 10 Feb 2021 07:06:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=gavnWZIqOU4hpw97H0vEmGbhudm5T0Mx6Jt6MShYJEE=;
        b=bcYW1QoXOvdYHhfwGa8sC43RvvSCEqiY3UkyIQ3Ljaus3gch/CStTfmQP3P7cnF76D
         VqmnaKSdgIFTNVlMXpsYi44/FGZbkJZ9jv4rgp4ubSfqcWKk0iJiqsQ56scEQ8bJQove
         jBTMw+mIHAzZCM2zJesOBFNRx6izgvNAOAeR2vQ3MdkNVPJ61x8vIApzVht6+XKfAR7z
         i0AqTJyy0u+OHUumx8cnJW9vnWghIcJV7peYq64X3a1+PvT3518OcXS++m5VzrbCzuGa
         UaRjmRKDXosO0uxu4+a3NaFNwSc3o1jYLQAgphC/jfsRcs/yQ8l4GCAJgGFZbPg0Vc14
         l2Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=gavnWZIqOU4hpw97H0vEmGbhudm5T0Mx6Jt6MShYJEE=;
        b=REfTmsQJYq1JY0Xq0B2HIndByQSLGCB3WBIgoYiHcJVoJ9xL/gHfsWY0z2Q9j4XbEg
         QWIeYfnQaRJTAckHWBzh/gIQcrAjFSea8ioc/9hqfdd7aENaoiBve2++baXgE6bq3aVM
         gUMH0Wt/t0HgJTwZOwCiFuRqxhL+0XD+tDvQtQ12feY0e3Vuy/iZWjgSgct/Fs3o8Yd/
         /6t9P9b8iZq1f1OZdB+zBvk/LI9IKzi+MAhthVcAglOKgEaEER0qFW+OfAfWCz5fNL/J
         X5p7IASU0y59IfcZ3xu5HDovahHa5Ivcpzf2MdrRFh7jlt6RpwLaOWBZpjTkiTZhZa5R
         nw+g==
X-Gm-Message-State: AOAM533+xfq/vwQ6MuCZROK4TMp2aBNc3QvWDhDjdZP4IZvDetIXtQ8C
        7WyKPT4Cp/bAlYWCNOhbiPMuckNJDkU=
X-Google-Smtp-Source: ABdhPJxLEgkzFr096+Ve8WhXwaq6QxfWbRUjIr6UTigdB7sD/uQoHaiJb1MZhQTx5NuZM0fRKKZlrg==
X-Received: by 2002:a05:600c:c6:: with SMTP id u6mr3271382wmm.176.1612969572425;
        Wed, 10 Feb 2021 07:06:12 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id b13sm3353184wrt.31.2021.02.10.07.06.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Feb 2021 07:06:11 -0800 (PST)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: queue.7, stailq.3, (simpleq.3): Document SIMPLEQ
Message-ID: <f03cd3b3-8a47-3ec1-2d17-2760545c7b62@gmail.com>
Date:   Wed, 10 Feb 2021 16:06:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

When I refactored queue.3, I found out that there was no documentation
for SIMPLEQ.  I didn't do anything about it because I've never used it
and didn't understand what it was, and more importantly why.

Now I found out that it only exists because of historical reasons [1],
but it is identical to STAILQ (minus a missing SIMPLEQ equivalent for
STAILQ_CONCAT()).  So I'd add links simpleq.3, SIMPLEQ_*.3 -> STAILQ.3,
and add a paragraph to queue.7 and another one to stailq.3.

What do you think about the following?

Also I don't know if we should encourage one of them.  STAILQ seems to
be more complete.  What would you do about it?

Thanks,

Alex

[1]: <https://gitlab.freedesktop.org/libbsd/libbsd/-/issues/5>

---

$ git diff
diff --git a/man7/queue.7 b/man7/queue.7
index f92887a36..c3facafd0 100644
--- a/man7/queue.7
+++ b/man7/queue.7
@@ -138,6 +138,15 @@ Not in POSIX.1, POSIX.1-2001, or POSIX.1-2008.
 Present on the BSDs.
 .I <sys/queue.h>
 macros first appeared in 4.4BSD.
+.SH NOTES
+Some BSDs provide SIMPLEQ instead of STAILQ.
+The interfaces are identical, but for historical reasons
+they were named differently on different BSDs.
+STAILQ originated on FreeBSD, and SIMPLEQ originated on NetBSD.
+For compatibility, glibc provides both sets of macros.
 .SH SEE ALSO
 .BR circleq (3),
 .BR insque (3),

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
