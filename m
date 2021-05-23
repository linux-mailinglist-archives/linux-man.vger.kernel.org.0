Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BCA6E38DD95
	for <lists+linux-man@lfdr.de>; Mon, 24 May 2021 00:42:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231976AbhEWWoH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 May 2021 18:44:07 -0400
Received: from mo4-p00-ob.smtp.rzone.de ([85.215.255.25]:26149 "EHLO
        mo4-p00-ob.smtp.rzone.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231967AbhEWWoH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 May 2021 18:44:07 -0400
X-Greylist: delayed 356 seconds by postgrey-1.27 at vger.kernel.org; Sun, 23 May 2021 18:44:07 EDT
ARC-Seal: i=1; a=rsa-sha256; t=1621809399; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=QHlOY6ZKGPhxCUTR/n5IT6qADTpT4Uw0i+0VImOUXhRuvYuWItP3bU7WWVAloxHw5f
    HsArQfp0YL1immQTjkvESWBeHiQUGJuMdm6rGtaulurS6qU+WWCDqKfJeJloKItt49ac
    nCii2s6JwL/2rjL9IMlIDYI/I2Q9n2MiceW/OomoVdpWbRkwe8MKVgkFe9/PNCq466BL
    ijuszqdfjDthRHuMYiCaYxskaPPb5b8iPsGrSUKWA2qLtQ0jr5Ktvn0D3Txfz3GE72Dc
    Sg1xo8oj09sTaskYXeSKdld5NNBy4nC56FDKREc84AZrAklkcZOt+rmiIEk+u+SD9rF2
    nGsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1621809399;
    s=strato-dkim-0002; d=strato.com;
    h=Message-ID:Date:Subject:To:From:Cc:Date:From:Subject:Sender;
    bh=SvElhZVWeYDTlOUXApGTKC3c7fiIc5NR4UdV81pq9II=;
    b=YEqwhg3iyljmP68MGbKu2OoavhbtMZ+ZekZGACCNMZxvYYM93vPEbrjBwSEuSpVn2h
    XsBNRciNB4QUim0VgGmd7Uiqhh3j0aNXEy958A9jcBICsesTZ65s8CiQ+WQk2ktHOJhk
    xsGZst0fpTnNjjnRP4deazA1mZ9GDwX78eURjv/u7CyxmUcpiVPmjg+B1dm5/9OO8nai
    cbRSN0qpWI1fGIRk9JyfegGFkaJE9afyM+ODG7bCe17QEQEX+sfoW8cz6ggqlLmDEjhR
    rE3Ldi3fdzVAQ7TVO+hR87k8EVcS05P8mujpXSFKnlrZv2sp/vCa6llyCLteCIa+DzyU
    b8rA==
ARC-Authentication-Results: i=1; strato.com;
    dkim=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1621809399;
    s=strato-dkim-0002; d=clisp.org;
    h=Message-ID:Date:Subject:To:From:Cc:Date:From:Subject:Sender;
    bh=SvElhZVWeYDTlOUXApGTKC3c7fiIc5NR4UdV81pq9II=;
    b=fqUuOx9Ldr9jtu5xYyA6Q0q10wykzAmoSY8lUFJbcBORkA+sdtQ5JsTGfHu6/n8n/0
    nIgGVEicf5PU3zECQZDiJfPcU2Mn3HCvmRaATiq7eeTT0HkQudkhF5EIurT6FqENiXbN
    vxMjUav6ksI5n9DP/ICxb4q8GBGcIwOfwogch6PCMPzGsvrDDrwgAdF70mzumveI2HDH
    fmR4OwYXn+jvZRTG2uehmnwky3uQiZNZQ7lgWTq2o3pW7PuIVOOGjUZ+7/TwlitkqyNW
    u1VS6nVSq7oFFHRgDgaT3u1J96zhi5faprFncnbDZOrjw3KWgC63JyeBqoscMpySPDde
    uFxg==
Authentication-Results: strato.com;
    dkim=none
X-RZG-AUTH: ":Ln4Re0+Ic/6oZXR1YgKryK8brlshOcZlIWs+iCP5vnk6shH+AHjwLuWOHqf3z5NW"
X-RZG-CLASS-ID: mo00
Received: from bruno.haible.de
    by smtp.strato.de (RZmta 47.26.1 DYNA|AUTH)
    with ESMTPSA id Z0bd4cx4NMad6h0
        (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve X9_62_prime256v1 with 256 ECDH bits, eq. 3072 bits RSA))
        (Client did not present a certificate);
    Mon, 24 May 2021 00:36:39 +0200 (CEST)
From:   Bruno Haible <bruno@clisp.org>
To:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: [patch] getrlimit.2: RLIMIT_STACK
Date:   Sun, 23 May 2021 23:44:03 +0200
Message-ID: <2409395.251dEh2nii@omega>
User-Agent: KMail/5.1.3 (Linux/4.4.0-210-generic; KDE/5.18.0; x86_64; ; )
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="nextPart2159812.5nxgHG3bFv"
Content-Transfer-Encoding: 7Bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.

--nextPart2159812.5nxgHG3bFv
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi,

The getrlimit(2) page says the RLIMIT_STACK applies to "the process stack".
However, in a multithreaded app, each thread has a stack. And RLIMIT_STACK
determines the size of the thread's stack (unless overridden by the
program).

I verified this through a test program on Linux/i386 and Linux/x86_64.

The code which implements this is in
  - glibc/nptl/nptl-init.c for Linux,
  - glibc/htl/pt-create.c for the Hurd.

Patch attached.

--nextPart2159812.5nxgHG3bFv
Content-Disposition: attachment; filename="0001-getrlimit.2-RLIMIT_STACK-applies-to-each-thread-s-st.patch"
Content-Transfer-Encoding: 7Bit
Content-Type: text/x-patch; charset="UTF-8"; name="0001-getrlimit.2-RLIMIT_STACK-applies-to-each-thread-s-st.patch"

From 563e660d8cb46b566ea716d250cca4136a0ba88e Mon Sep 17 00:00:00 2001
From: Bruno Haible <bruno@clisp.org>
Date: Sun, 23 May 2021 23:37:12 +0200
Subject: [PATCH] getrlimit.2: RLIMIT_STACK applies to each thread's stack.

---
 man2/getrlimit.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/getrlimit.2 b/man2/getrlimit.2
index 648fd3c..e8a123a 100644
--- a/man2/getrlimit.2
+++ b/man2/getrlimit.2
@@ -61,7 +61,7 @@
 .\" 2008-05-07, mtk / Peter Zijlstra, Added description of RLIMIT_RTTIME
 .\" 2010-11-06, mtk: Added documentation of prlimit()
 .\"
-.TH GETRLIMIT 2 2021-03-22 "Linux" "Linux Programmer's Manual"
+.TH GETRLIMIT 2 2021-05-23 "Linux" "Linux Programmer's Manual"
 .SH NAME
 getrlimit, setrlimit, prlimit \- get/set resource limits
 .SH SYNOPSIS
@@ -427,7 +427,7 @@ queued to the process.
 .\" that was present in kernels <= 2.6.7.  MTK Dec 04
 .TP
 .B RLIMIT_STACK
-This is the maximum size of the process stack, in bytes.
+This is the maximum size of the stack of each thread, in bytes.
 Upon reaching this limit, a
 .B SIGSEGV
 signal is generated.
-- 
2.7.4


--nextPart2159812.5nxgHG3bFv--

