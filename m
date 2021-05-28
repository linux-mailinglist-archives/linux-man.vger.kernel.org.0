Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C3173947FF
	for <lists+linux-man@lfdr.de>; Fri, 28 May 2021 22:36:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229492AbhE1UiN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 May 2021 16:38:13 -0400
Received: from mout.gmx.net ([212.227.17.21]:48507 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229482AbhE1UiN (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 28 May 2021 16:38:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1622234197;
        bh=eCUaW1If6ueVa3BJe4YgN8Y28HcXg6zXUf0A5plLKio=;
        h=X-UI-Sender-Class:Date:From:To:Subject;
        b=e5uKIxASF54ubS6RkKs36ei9o1shzvik8x0kM2g8tcndbiFZUvZhwO0hLMe5z9Mqy
         guTR3Q1K4nnS4a+7QSv/c2g8Fk4YqPXgxy6zZLjZRIgtpPdG8N8xRKE3T3MNeGEy0Y
         jKj5wTn4qd45p4AhDRJ8yv4bV4+fWVjigzROlqpQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from linux-ff1t ([109.42.2.28]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1N7R1J-1lL2xl3l1R-017kG8 for
 <linux-man@vger.kernel.org>; Fri, 28 May 2021 22:36:37 +0200
Date:   Fri, 28 May 2021 22:36:35 +0200
From:   Radisson97@gmx.de
To:     linux-man@vger.kernel.org
Subject: patch lgamma.3:Better explain the use signgam
Message-ID: <60b15453.qEgmtj2ngLDAHsrs%Radisson97@gmx.de>
User-Agent: Heirloom mailx 12.5 7/5/10
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Provags-ID: V03:K1:URXoShMyRM+9om8UB2/2DuzeMyg1sl41XldRuXH9GA3Cs+EzwA8
 kHL0oyz3MDEmEHAdG4fiu6USDDzqnRFxQrACpHUty4t+6Ohthg+s9ko4bpzVoMZa/nQzBNW
 qEqWbJewLMBEWZxfSLVY0C3NbXrXuMYwGy09R59vWC0ybpvN5qSSNO4UYJ9RbzkpVkT0MIU
 fNW/rnKX23UTe6ZMUzkQg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:syB4Ir10BhA=:zOX6nSxUcqUVNmhC4BRcK3
 Osd0p+mBIEpyNMiy02w/3ntpzTQPMf3UEH7gcpsSDEMOKSqq7zko3UrCWqL0kKRXjH0d9B8Om
 g8QfNADNZJj5bYAmB4Dgp1bAcLlVj5BjerLRrfiETNympNBqaJ8IPNe/6Xei0F/AH8t9304g5
 6kgdbwpFyXge1Jyk9lamDxCS0slGim6a9qZm0Y0Hjq9SyDoQZAg3gikmznhoAPTfm7MDe0/cT
 qKfSXlUp+NZ+UqU1P7d5BevsF1sOGGW6pFKXCgBv+qvBobDIoRihGG+5VOotdTfNkN1tWKjKF
 kavJiH//lTP2lcW/tgEoUvRIRKCJTnJctf7C/r7akpQLjhbU3F+3twvkJ4fcyAKP8Gs9apsL4
 dFB6CIIHcIqwtG5rkmk5KoenxNqCoMowhdGpdpkEDoyLgTyg63UE3iWav0lK0YfyuKlAYkcBi
 AARQJu+lZB66AJvs2NVqJ41Vw3hKltTALwwTxTa85dDThmEgRGPdNofKDZV/PoGNSjSvnFBhx
 mZlYAWwakw73UPweOlTZrbc/cXskkxpMJ+HpDkQ3R4PcCoZndnFRzuAXZjYJ0+8abweYPlRfq
 52cTGV+B21uA39lfYRrt4Aq9rH5/bAdj3h7AyuFanIfWl+OfFoGr34RkMt3tbjUIHOrCEcaeS
 LrI+FhOl9zKz2G11q4FvvrccrBRd8zvGr3TTz9KjsQZIDQFWVl3HhZXxl8dpo+Q4O+lM6ede+
 H68bhR0MHjZ9iD/fDpm23K9D91aDcjAWtdzyJbY6o7DOrn18zkPQA5qabE+STUCq5cCUDOhOc
 M0gyLAYcovBPwS1udpN98EJIbVzW1Z0yvZv8bkgFC2UzliN+0jOPOx/ssOc0yesBqw3dolvon
 84/5r13xmqr69uBRIPgKgb8Vy1FteSzeBKrd3Hxv+Iz4CSBNXIkWIMyJB+v+uD7BItb7clkKN
 d3T4X8ytNTkhclCFF2pISrL1wOTm8osSH3qimx+toKqBwvwl31lSKeAZ7vJEHonVNoh3A7wEi
 9sJNewJcyLwGBFAOTk+ip9anm7OWPwYGfYFicpzKJfrfBTm5++BJz0ASVS97bnIIozH8n2sTM
 Se0+9FWrsJmno45UFkgiKHNyrL9BiA1SST8U+ufcHZCYR7kXCGUH05imhCcUqZPowxnOEM7Pq
 ZpaSOAjGl7keXxxJ10Au45mcASr5W7rghdQ2AIiyRpfqDz1ygFS9D6nqEAB5k9dseqk+E=
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Better explain the use signgam

Signed-off-by: Harms <wharms@bfs.de>
---

diff --git a/man3/lgamma.3 b/man3/lgamma.3
index 81f530074..5820a62f5 100644
--- a/man3/lgamma.3
+++ b/man3/lgamma.3
@@ -24,16 +24,19 @@ lgamma, lgammaf, lgammal, lgamma_r, lgammaf_r, lgammal_r \- log gamma function
 .sp
 Compile with -std=c99; link with \-lm.
 .SH DESCRIPTION
-For the definition of the Gamma function, see
-.BR tgamma (3).
-.PP
 The \fBlgamma()\fP function returns the natural logarithm of
 the absolute value of the Gamma function.
 The sign of the Gamma function is returned in the
 external integer \fIsigngam\fP declared in
 .IR <math.h> .
-It is 1 when the Gamma function is positive or zero, \-1
-when it is negative.
+The real gamma function can be computed as:
+.PP
+.RS
+gam  = signgam * exp(gamma(x));
+.RE
+.PP
+For the definition of the Gamma function, see
+.BR tgamma (3).
 .PP
 Since using a constant location
 .I signgam
