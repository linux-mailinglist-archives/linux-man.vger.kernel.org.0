Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F3C2C6986C8
	for <lists+linux-man@lfdr.de>; Wed, 15 Feb 2023 22:01:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229954AbjBOVBv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Feb 2023 16:01:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230036AbjBOVBc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Feb 2023 16:01:32 -0500
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC097474E1
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 12:59:37 -0800 (PST)
Received: from shw-obgw-4002a.ext.cloudfilter.net ([10.228.9.250])
        by cmsmtp with ESMTP
        id SI7xp4bg2c9C4SOs6p0qOE; Wed, 15 Feb 2023 20:59:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1676494762; bh=El+UBLfo6cmD26XmOqGvxWvLtmmzNqF25SSFYPVy0bw=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=wIt3zmfZDAAyR+Yo8ndNsh5422TTSlrU0QzSDHn4CQcReo+8EdqzAKqUdFUJ/g1GE
         4uvGb6Qu43+9tUYiDupQEkJBxuCEE2k1v0spzg8VB32AGdyNtGzyacLSNiS4iEc7be
         1fBV5PWwogvDsgTJ6dalTbHnUuINBNkvGlihftvQ73wEmLjgR77NNx9EKxn9fXuyh9
         NaOfMfhbCBTOKz8bU77WN/j1YAD1HuhPW5uqIapYef1cuRo+dP5C/rmXDK3Kae2t1e
         QmdRpygcmC79zOtf5zl9ZPJXLYtd3LggiqB+jHLkvYEc62WLxBwF3MGhyEi7S4lPey
         KWRTbfiuFjCmw==
Received: from localhost.localdomain ([184.64.102.149])
        by cmsmtp with ESMTP
        id SOs5p0OmtyAOeSOs5pcAyj; Wed, 15 Feb 2023 20:59:22 +0000
X-Authority-Analysis: v=2.4 cv=e5oV9Il/ c=1 sm=1 tr=0 ts=63ed47aa
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=_EmJldGtWO4cNwseFGcA:9
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     "Linux Man Pages" <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH v3 4/6] man2/select.2: add C digit separators to clarify POSIX feature release dates or use IEC or ISO multiples to clarify long numeric digit strings
Date:   Wed, 15 Feb 2023 13:17:09 -0700
Message-Id: <d68db6e71264d679345c48de6cab33bd2ead7c99.1676489381.git.Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfLfLjiugx18NfgeGukWGU+70GSpQEBIp+KPcqssxtQjWNCTTjkPKrtAUCkiLEy3wbRIm8uyQKrEpVblTI/neYJ8UM9bUFfA1UbdirUakYV8YyeOhBqnq
 lhV/mOcWNX+d2zp40RL2tJxVAyGzGmAxiLYMrzffikMSBx5hCOuJW5Opah7IQeyM2uYTz0hD6TXG6N3zx5F+e0pz1ACjYjdLxdYoujGuTIdhCgo8B6e8Zy1t
 UW/nMzs03E6MZrnfUIXrjvwIWs8wjJjXPdvQC7PgE3MKLPps4ONSVk0mrl6QFypL
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

---
 man2/select.2 | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/man2/select.2 b/man2/select.2
index 7718b75067ab..bb7a252ade80 100644
--- a/man2/select.2
+++ b/man2/select.2
@@ -54,14 +54,14 @@ Feature Test Macro Requirements for glibc (see
 .PP
 .BR pselect ():
 .nf
-    _POSIX_C_SOURCE >= 200112L
+    _POSIX_C_SOURCE >= 2001\[aq]12L
 .fi
 .SH DESCRIPTION
 .BR "WARNING" :
 .BR select ()
 can monitor only file descriptors numbers that are less than
 .B FD_SETSIZE
-(1024)\[em]an unreasonably low limit for many modern applications\[em]and
+(1Ki)\[em]an unreasonably low limit for many modern applications\[em]and
 this limitation will not change.
 All modern applications should instead use
 .BR poll (2)
@@ -639,10 +639,10 @@ The Linux kernel imposes no fixed limit, but the glibc implementation makes
 .I fd_set
 a fixed-size type, with
 .B FD_SETSIZE
-defined as 1024, and the
+defined as 1Ki, and the
 .BR FD_* ()
 macros operating according to that limit.
-To monitor file descriptors greater than 1023, use
+To monitor file descriptors greater than 1Ki-1, use
 .BR poll (2)
 or
 .BR epoll (7)
-- 
2.39.0

