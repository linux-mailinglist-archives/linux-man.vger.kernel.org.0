Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D5A2407390
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 00:47:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233231AbhIJWsp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Sep 2021 18:48:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233405AbhIJWsn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Sep 2021 18:48:43 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6281AC061756
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:47:31 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id u19-20020a7bc053000000b002f8d045b2caso2358697wmc.1
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:47:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dRRZaUg21FtgVavv2sBOQvfY0tVJo005e5RuzBfJ+tc=;
        b=MN6a4yu2H3kHCbGLMxqM+qzZ6gVky4cj9AFYD/teeewIDbJcscx+regujbJ+tmmNvB
         SMzQpxCqvTj3KSa/EqBudgttSAZVIQbnpu8xp22k84W00XdpsF12biH5hj26+i95KfQS
         H1mROOI1wtdZO/OPNOASQcJOQEXSpCVgAkrBh4KBt55bQSBE8J5Zhyeyf/5EdkwWtW3j
         MYiqSn/m+ZOX9RCSEOIjrUyIH1f4NLgLTTclX0U0i8oQZVrWYaOn8FRYnWFgClc1B7uJ
         lhw3HxeWCajbwQsszkgVElhA2QWE+oI++vT2d67mKaNvE5OZM5DnoVoI1iTEnKbk4sOA
         E72Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dRRZaUg21FtgVavv2sBOQvfY0tVJo005e5RuzBfJ+tc=;
        b=vhTUB0IGKsMaomAKONTpT8IIwtltx34WZZ6zqalGBg0WmILa8RYpZxIyCP6kXj/pfu
         JoZioiigfu1xk7OSZQrmEfZ5zbVvKDca+bWZMzznlp3vRJ1F2PE7erj+KrsAEtg9GWnO
         qUcalwn/7yAtL98Q3ZIT3vWczCuXpL+L8b/2LF9pe2+8JNGHT332Psq8yr1XM4MvQtE4
         6n9LN6JpH1egSO9JodTQ4uIZWp3EfZOSzdFLnTVSIO70GYkc13jKE7khiq8zZuI3xT3e
         3uI8SJIMf6Ya0QHKDbBqNxkS/Wk1Rzln7ZNDrfFB97VbHG7lyPuvonXl21XyyX81oZ7Q
         y1Zw==
X-Gm-Message-State: AOAM53298YUnkelWEohFkfWADQWQZkP1XJH/M7hN5og9ifqYECnrZ+hr
        9SzFWjghMP7jXXdCo+rYuM8=
X-Google-Smtp-Source: ABdhPJzMhtjtwvdYiY9NgfabDAVYVcovKtiEuGyRWnFHFzNf2QC8CgtrMgYwHr8u1tRLEfeF6GgAKA==
X-Received: by 2002:a05:600c:4109:: with SMTP id j9mr34779wmi.88.1631314049978;
        Fri, 10 Sep 2021 15:47:29 -0700 (PDT)
Received: from sqli.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id k18sm15520wmi.25.2021.09.10.15.47.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Sep 2021 15:47:29 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Greg Banks <gbanks@linkedin.com>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 13/15] nscd.conf.5: describe reloading, clarifications
Date:   Sat, 11 Sep 2021 00:47:14 +0200
Message-Id: <20210910224717.499502-14-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210910224717.499502-1-alx.manpages@gmail.com>
References: <20210910224717.499502-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Greg Banks <gbanks@linkedin.com>

- Added a subsection of NOTES describing nscd's reloading behavior
  and providing advice on how to configure it.
- Clarifications for the threads, reload-count, positive-time-to-live,
  check-files, and shared attributes.

Derived by reading the nscd, libresolv and glibc source and some
painful experience.

Signed-off-by: Greg Banks <gbanks@linkedin.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man5/nscd.conf.5 | 115 +++++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 112 insertions(+), 3 deletions(-)

diff --git a/man5/nscd.conf.5 b/man5/nscd.conf.5
index 7356bf7c2..25ee4901b 100644
--- a/man5/nscd.conf.5
+++ b/man5/nscd.conf.5
@@ -1,5 +1,6 @@
 .\" Copyright (c) 1999, 2000 SuSE GmbH Nuernberg, Germany
 .\" Author: Thorsten Kukuk <kukuk@suse.de>
+.\" Updates: Greg Banks <gbanks@linkedin.com> Copyright (c) 2021 Microsoft Corp.
 .\"
 .\" %%%LICENSE_START(GPLv2+_SW_3_PARA)
 .\" This program is free software; you can redistribute it and/or
@@ -53,9 +54,13 @@ The default is 0.
 .B threads
 .I number
 .RS
-This is the number of threads that are started to wait for
+This is the initial number of threads that are started to wait for
 requests.
 At least five threads will always be created.
+The number of threads may increase dynamically up to
+.B max\-threads
+in response to demand from clients,
+but never decreases.
 .RE
 .PP
 .B max\-threads
@@ -83,9 +88,20 @@ Specifies the user who is allowed to request statistics.
 unlimited |
 .I number
 .RS
-Limit on the number of times a cached entry gets reloaded without being used
+Sets a limit on the number of times a cached entry
+gets reloaded without being used
 before it gets removed.
-The default is 5.
+The limit can take values ranging from 0 to 254;
+values 255 or higher behave the same as
+.BR unlimited .
+Limit values can be specified in either decimal
+or hexadecimal with a "0x" prefix.
+The special value
+.B unlimited
+is case-insensitive.
+The default limit is 5.
+A limit of 0 turns off the reloading feature.
+See NOTES below for further discussion of reloading.
 .RE
 .PP
 .B paranoia
@@ -128,6 +144,9 @@ in the specified cache for
 is in seconds.
 Larger values increase cache hit rates and reduce mean
 response times, but increase problems with cache coherence.
+Note that for some name services (including specifically DNS)
+the TTL returned from the name service is used and
+this attribute is ignored.
 .RE
 .PP
 .B negative\-time\-to\-live
@@ -166,6 +185,7 @@ The files are
 .IR /etc/passwd ,
 .IR /etc/group ,
 .IR /etc/hosts ,
+.IR /etc/resolv.conf ,
 .IR /etc/services ,
 and
 .IR /etc/netgroup .
@@ -194,6 +214,8 @@ is shared with the clients so
 that they can directly search in them instead of having to ask the
 daemon over the socket each time a lookup is performed.
 The default is no.
+Note that a cache miss will still result in
+asking the daemon over the socket.
 .RE
 .PP
 .B max\-db\-size
@@ -236,6 +258,93 @@ from the source code of
 and are used if not overridden in the configuration file.
 The default values used in the configuration file of
 your distribution might differ.
+.SS Reloading
+.BR nscd (8)
+has a feature called reloading,
+whose behavior can be surprising.
+.PP
+Reloading is enabled when the
+.B reload-count
+attribute has a non-zero value.
+The default value in the source code enables reloading,
+although your distribution may differ.
+.PP
+When reloading is enabled,
+positive cached entries (the results of successful queries)
+do not simply expire when their TTL is up.
+Instead, at the expiry time,
+.B nscd
+will "reload",
+i.e.,
+re-issue to the name service the same query that created the cached entry,
+to get a new value to cache.
+Depending on
+.I /etc/nsswitch.conf
+this may mean that a DNS, LDAP, or NIS request is made.
+If the new query is successful,
+reloading will repeat when the new value would expire,
+until
+.B reload-count
+reloads have happened for the entry,
+and only then will it actually be removed from the cache.
+A request from a client which hits the entry will
+reset the reload counter on the entry.
+Purging the cache using
+.I nscd\~-i
+overrides the reload logic and removes the entry.
+.PP
+Reloading has the effect of extending cache entry TTLs
+without compromising on cache coherency,
+at the cost of additional load on the backing name service.
+Whether this is a good idea on your system depends on
+details of your applications' behavior,
+your name service,
+and the effective TTL values of your cache entries.
+Note that for some name services
+(for example, DNS),
+the effective TTL is the value returned from the name service and
+.I not
+the value of the
+.B positive\-time\-to\-live
+attribute.
+.PP
+Please consider the following advice carefully:
+.IP \(bu
+If your application will make a second request for the same name,
+after more than 1 TTL but before
+.B reload\-count
+TTLs,
+and is sensitive to the latency of a cache miss,
+then reloading may be a good idea for you.
+.IP \(bu
+If your name service is configured to return very short TTLs,
+and your applications only make requests rarely under normal circumstances,
+then reloading may result in additional load on your backing name service
+without any benefit to applications,
+which is probably a bad idea for you.
+.IP \(bu
+If your name service capacity is limited,
+reloading may have the surprising effect of
+increasing load on your name service instead of reducing it,
+and may be a bad idea for you.
+.IP \(bu
+Setting
+.B reload\-count
+to
+.B unlimited
+is almost never a good idea,
+as it will result in a cache that never expires entries
+and puts never-ending additional load on the backing name service.
+.PP
+Some distributions have an init script for
+.BR nscd (8)
+with a
+.I reload
+command which uses
+.I nscd\~-i
+to purge the cache.
+That use of the word "reload" is entirely different
+from the "reloading" described here.
 .SH SEE ALSO
 .BR nscd (8)
 .\" .SH AUTHOR
-- 
2.33.0

