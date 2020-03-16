Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 071481863A3
	for <lists+linux-man@lfdr.de>; Mon, 16 Mar 2020 04:21:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729460AbgCPDVb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 15 Mar 2020 23:21:31 -0400
Received: from mail-qv1-f65.google.com ([209.85.219.65]:36500 "EHLO
        mail-qv1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729445AbgCPDVb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 15 Mar 2020 23:21:31 -0400
Received: by mail-qv1-f65.google.com with SMTP id z13so1912644qvw.3
        for <linux-man@vger.kernel.org>; Sun, 15 Mar 2020 20:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=juliacomputing-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=I+BLAfYIhBmNgxEs4k9s4nlBkQHKxlQD3OMgPVIdB+0=;
        b=kXSlHajiu3Qr3wHrdKYw9mNO8Bl4hPaJVCvQZWN4vkHU2fLKBL88Ewh2lWWJpFx+dl
         BeB6owjw6pp/YXW8BkCCbBkqJNnWhS+c0mxHVRpjmAf4gfTW495MWT/ln5kUw392eKN8
         3tYCaFOCvT9ozMi1J1no9fOkMRzDV7sloFuGGgZHlQTRSlcIkbfEh2jr0eO6ldgrUzAV
         1xMw6WdY15rimxcfijKUn1DvMvnafvnHsLFbQ/c1KJPPoBX0nhcsIqg6KuK1uNsj5b+T
         pG2vhl7EwoJY9UejXnYJ8dTVDLJIh3hnDIjZYxz6bYRx0YJRUr1IcLsRUqzOYJFH8rsP
         PcfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=I+BLAfYIhBmNgxEs4k9s4nlBkQHKxlQD3OMgPVIdB+0=;
        b=mXvI3+2tXo/FIdq8SNeKttCxGYko7BdAzbtSrpMT8oL+mdZSBx4DxTdXjEhmT2ZE4/
         Otuu4Aai/1Wab3Kh4u86VZH8KWxa+dwvlBig5xKcLpsSHSzszFl0uPIEMxPaA9L9sf0P
         t8ZG21lqioSOKWzZrWW1Deh+QfJbxbZJ/TysQC5V7DSrAaRHWo5tz9dDMLZWlszd+Zrb
         t1Bm9IvsY6dQiv69bLzLZw3DaGDNeli4ZfAzdVvlhTrRc/xEU9dEUriJ27DrsWHyKZe/
         CR5EAxEN9eVfkG5h9VDn6IdvyhplSQpDsEa+USsFZnsMKKcxU/6U0GrT+ImZEKKQ3g0W
         4P9g==
X-Gm-Message-State: ANhLgQ3MBm/yzTUf5eK7C6ksF5hlL5wDg2wRf1SgmdilQntI0RCpvx8e
        +7AepgeBCYxAj2P3zxGMaKZU/A==
X-Google-Smtp-Source: ADFU+vvPSfUlOwUjezC+Jps/O0mMk+rm+oYaDkhgJFfD9EBxxHmIZc5lVZecGgpapus1NLPgao5eHA==
X-Received: by 2002:ad4:42ce:: with SMTP id f14mr22179255qvr.115.1584328889762;
        Sun, 15 Mar 2020 20:21:29 -0700 (PDT)
Received: from juliacomputing.com (c-76-24-28-244.hsd1.ma.comcast.net. [76.24.28.244])
        by smtp.gmail.com with ESMTPSA id p9sm8591273qtu.3.2020.03.15.20.21.29
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2020 20:21:29 -0700 (PDT)
Date:   Sun, 15 Mar 2020 23:21:27 -0400
From:   Keno Fischer <keno@juliacomputing.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] arch_prctl.2: Add ARCH_SET_CPUID subcommand
Message-ID: <20200316032127.GA4619@juliacomputing.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This subcommand was added a few years ago to support cpuid emulation
on x86 targets, but no changes to the man page appear to have been
made at the time. This commit adds a description for it and the
corresponding getter.

Signed-off-by: Keno Fischer <keno@juliacomputing.com>
---
 man2/arch_prctl.2 | 43 ++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 42 insertions(+), 1 deletion(-)

diff --git a/man2/arch_prctl.2 b/man2/arch_prctl.2
index c49f4e0..e40d6bb 100644
--- a/man2/arch_prctl.2
+++ b/man2/arch_prctl.2
@@ -48,7 +48,44 @@ for the "set" operations, or as an
 .IR "unsigned long\ *" ,
 for the "get" operations.
 .PP
-Subfunctions for x86-64 are:
+Subfunctions for both x86 and x86-64 are:
+.TP
+.BR ARCH_SET_CPUID " (since Linux 4.12)"
+Enable (
+.I addr != 0
+) or disable (
+.I addr == 0
+) the
+.I cpuid
+instruction for the current thread. The instruction
+is enabled by default. If disabled,
+any execution of a
+.I cpuid
+instruction will instead generate a
+.B SIGSEGV
+signal. This feature can be used to emulate
+.I cpuid
+results that differ from what the underlying
+hardware would have produced (e.g. in a paravirtualization setting).
+This setting is preserved across
+.BR fork (2)
+and
+.BR clone (2)
+but reset to default (i.e.
+.I cpuid
+enabled) on
+.BR execve (2)
+.
+.TP
+.BR ARCH_GET_CPUID " (since Linux 4.12)"
+Return the setting of the flag manipulated by
+.B ARCH_SET_CPUID
+as the result of the system call (1 for enabled, 0 for disabled).
+.I addr
+is ignored.
+
+.TP
+Subfunctions for x86-64 only are:
 .TP
 .B ARCH_SET_FS
 Set the 64-bit base for the
@@ -96,6 +133,10 @@ is not a valid subcommand.
 .B EPERM
 .I addr
 is outside the process address space.
+.TP
+.B ENODEV
+.B ARCH_SET_CPUID
+was requested, but the underlying hardware does not support CPUID faulting.
 .\" .SH AUTHOR
 .\" Man page written by Andi Kleen.
 .SH CONFORMING TO
-- 
2.8.1

