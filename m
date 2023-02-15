Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 900F169856C
	for <lists+linux-man@lfdr.de>; Wed, 15 Feb 2023 21:20:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229489AbjBOUUc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Feb 2023 15:20:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229460AbjBOUUc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Feb 2023 15:20:32 -0500
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E15E429143
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 12:20:30 -0800 (PST)
Received: from shw-obgw-4003a.ext.cloudfilter.net ([10.228.9.183])
        by cmsmtp with ESMTP
        id SJSnp4i1Gc9C4SOGUp0hEH; Wed, 15 Feb 2023 20:20:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1676492430; bh=zzbAH05//BO/zj+Kh49jJ2+p4GEDSASp77xAMijAzQc=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=rjkVqi175YsuESW2tzcxkNaUwcbBinm626KeYt8EtcVWadARhpu5CXcCxmB+9I2We
         GJF0qsHBA2xef4BBKA1S+JEjDlZFWjNxssde+Dc+ToUhQITrf5HMKGt7cH1GE3eztN
         0WthLiO3Cy3HRSl+xr4s/nzUsZVAdkXvEj619lyXfFDO6C/ujRll0q6s3zp/pxqVSy
         Y4vq+9AsYprWXJpvBHULW6tG89cY/ZGAYeD/NYJTpKyymFgio43Uy/qHRVDIgbjMki
         h3SxMFp+4Gaw3cyoGzK16TE7wds2uYuwQGdsCYoiUs8QUqxoer64SVKIYSHjsJNbaL
         Q4BhBP5W2lGwg==
Received: from localhost.localdomain ([184.64.102.149])
        by cmsmtp with ESMTP
        id SOGTp9Z5zcyvuSOGTp4Aqm; Wed, 15 Feb 2023 20:20:29 +0000
X-Authority-Analysis: v=2.4 cv=VbHkgXl9 c=1 sm=1 tr=0 ts=63ed3e8d
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=VBGmoOkFYDXuMpYmGpwA:9
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     "Linux Man Pages" <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH v3 2/6] man2/keyctl.2: use IEC or ISO multiples or add C digit separators to clarify long numeric digit strings
Date:   Wed, 15 Feb 2023 13:17:07 -0700
Message-Id: <6e300118fbef8499d4a8889c2e50863670bec0cf.1676489381.git.Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfG8ySHiu4oFeT6PVKDcvVUHhEj3Ix8TN0foaPOra5iqh+ElBm75GYex1hm7ZRTbhmhor1BEElrMqRIm3fL4yzIFMTe6dxV/gTETwOkxdzrMNEKmI7KCr
 otHaM9XvKVgSmFyuncIIEWX7EhVMQU9IuVm8zhk+MCrP3YtwLkU8FRWZnrw3YzJ7EXuGsqCK6iJwB4azWoPbcFNqH4kceDaVyh69HPIUI8YdCsd9ert0VnDU
 nQa6HNd+0YUHUpcs5kuWeZ71XRjVh0S6MW0qL3GgGlL0TnLJI431x7nKNVVPOlow
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
 man2/keyctl.2 | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/man2/keyctl.2 b/man2/keyctl.2
index 4ce87dcf31af..0c27aaa44d7f 100644
--- a/man2/keyctl.2
+++ b/man2/keyctl.2
@@ -729,7 +729,7 @@ including the terminating null byte), and
 (cast as
 .IR char\~* )
 contains the description of the key
-(a null-terminated character string up to 4096 bytes in size,
+(a null-terminated character string up to 4Ki bytes in size,
 including the terminating null byte).
 .IP
 The source keyring must grant
@@ -1742,7 +1742,7 @@ was
 .B KEYCTL_SEARCH
 and the size of the description in
 .I arg4
-(including the terminating null byte) exceeded 4096 bytes.
+(including the terminating null byte) exceeded 4Ki bytes.
 .TP
 .B EINVAL
 size of the string (including the terminating null byte) specified in
@@ -1751,7 +1751,7 @@ size of the string (including the terminating null byte) specified in
 or
 .I arg4
 (the key description)
-exceeded the limit (32 bytes and 4096 bytes respectively).
+exceeded the limit (32 bytes and 4Ki bytes respectively).
 .TP
 .BR EINVAL " (before Linux 4.12)"
 .I operation
@@ -1822,7 +1822,7 @@ was
 .B KEYCTL_DH_COMPUTE
 and the buffer length exceeds
 .B KEYCTL_KDF_MAX_OUTPUT_LEN
-(which is 1024 currently)
+(which is 1Ki currently)
 or the
 .I otherinfolen
 field of the
@@ -2047,7 +2047,7 @@ and
 the description of the authorization key,
 where we can see that the name of the authorization key matches
 the ID of the key that is to be instantiated
-.RI ( 20d035bf ).
+.RI ( 20d0\[aq]35bf ).
 .PP
 The example program in
 .BR request_key (2)
@@ -2056,12 +2056,12 @@ specified the destination keyring as
 By examining the contents of
 .IR /proc/keys ,
 we can see that this was translated to the ID of the destination keyring
-.RI ( 0256e6a6 )
+.RI ( 0256\[aq]e6a6 )
 shown in the log output above;
 we can also see the newly created key with the name
 .I mykey
 and ID
-.IR 20d035bf .
+.IR 20d0\[aq]35bf .
 .PP
 .in +4n
 .EX
-- 
2.39.0

