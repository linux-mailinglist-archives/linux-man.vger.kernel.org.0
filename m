Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 32A4E754D16
	for <lists+linux-man@lfdr.de>; Sun, 16 Jul 2023 03:54:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229621AbjGPBys (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 21:54:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229460AbjGPByr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 21:54:47 -0400
Received: from xry111.site (xry111.site [89.208.246.23])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C539326BC
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 18:54:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xry111.site;
        s=default; t=1689472486;
        bh=Y5ROkC8sEUyqc0vpcYDCOA16Undc2WrAlkyeOw6iRVo=;
        h=From:To:Cc:Subject:Date:From;
        b=cCOalffRm7UNzzoV1OYtFoLhUfiAdbRZXLWwT2zNpPZVBwYEG52Ifj9US3o+lBq5s
         9kXny8MJz2//eQfZ3NvZvD0lyxEi1qntGcU0xthGGNN4JTYaQKHZKKzdzCiveHRXpV
         fCaU6JI2BjxVKyjyM6w93x7l6m/AabpyPriukGhE=
Received: from stargazer.. (unknown [IPv6:240e:358:1143:400:dc73:854d:832e:4])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-384) server-digest SHA384)
        (Client did not present a certificate)
        (Authenticated sender: xry111@xry111.site)
        by xry111.site (Postfix) with ESMTPSA id C487B65BFA;
        Sat, 15 Jul 2023 21:54:44 -0400 (EDT)
From:   Xi Ruoyao <xry111@xry111.site>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Xi Ruoyao <xry111@xry111.site>
Subject: [PATCH v2] crypt.3, encrypt.3: Fix library name and description
Date:   Sun, 16 Jul 2023 09:51:25 +0800
Message-ID: <20230716015125.1811944-1-xry111@xry111.site>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

libcrypt is the password hashing library, and libcrypto is a completely
different library (OpenSSL cryptography library).  While the encrypt()
function can "encrypt" things, it uses a broken algorithm so let's not
call libcrypt an "encryption" library at all.  In crypt.3, also replace
"encrypt" with "hash" except several places where it really means
"encrypt".

Signed-off-by: Xi Ruoyao <xry111@xry111.site>
---
 man3/crypt.3   | 30 +++++++++++++++---------------
 man3/encrypt.3 |  4 ++--
 2 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/man3/crypt.3 b/man3/crypt.3
index 1f3e4792e..57027ed5d 100644
--- a/man3/crypt.3
+++ b/man3/crypt.3
@@ -17,10 +17,10 @@
 .\"
 .TH crypt 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-crypt, crypt_r \- password and data encryption
+crypt, crypt_r \- password hashing
 .SH LIBRARY
-Encryption and decryption library
-.RI ( libcrypto ", " \-lcrypto )
+Password hashing library
+.RI ( libcrypt ", " \-lcrypt )
 .SH SYNOPSIS
 .nf
 .B #include <unistd.h>
@@ -52,7 +52,7 @@ Feature Test Macro Requirements for glibc (see
 .fi
 .SH DESCRIPTION
 .BR crypt ()
-is the password encryption function.
+is the password hashing function.
 It is based on the Data Encryption
 Standard algorithm with variations intended (among other things) to
 discourage use of hardware implementations of a key search.
@@ -72,7 +72,7 @@ a 56-bit key is obtained.
 This 56-bit key is used to encrypt repeatedly a
 constant string (usually a string consisting of all zeros).
 The returned
-value points to the encrypted password, a series of 13 printable ASCII
+value points to the hashed password, a series of 13 printable ASCII
 characters (the first two characters represent the salt itself).
 The return value points to static data whose content is
 overwritten by each call.
@@ -115,7 +115,7 @@ the only thing that the caller should do with this structure is to set
 to zero before the first call to
 .BR crypt_r ().
 .SH RETURN VALUE
-On success, a pointer to the encrypted password is returned.
+On success, a pointer to the hashed password is returned.
 On error, NULL is returned.
 .SH ERRORS
 .TP
@@ -165,7 +165,7 @@ function was not implemented, probably because of U.S.A. export restrictions.
 .B EPERM
 .I /proc/sys/crypto/fips_enabled
 has a nonzero value,
-and an attempt was made to use a weak encryption type, such as DES.
+and an attempt was made to use a weak hashing type, such as DES.
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
@@ -225,7 +225,7 @@ is an ABI-compatible drop-in replacement.
 .SH NOTES
 .SS Features in glibc
 The glibc version of this function supports additional
-encryption algorithms.
+hashing algorithms.
 .PP
 If
 .I salt
@@ -234,11 +234,11 @@ followed by a string optionally terminated by "$",
 then the result has the form:
 .RS
 .PP
-$\fIid\fP$\fIsalt\fP$\fIencrypted\fP
+$\fIid\fP$\fIsalt\fP$\fIhashed\fP
 .RE
 .PP
 .I id
-identifies the encryption method used instead of DES and this
+identifies the hashing method used instead of DES and this
 then determines how the rest of the password string is interpreted.
 The following values of
 .I id
@@ -265,13 +265,13 @@ T}
 .TE
 .RE
 .PP
-Thus, $5$\fIsalt\fP$\fIencrypted\fP and $6$\fIsalt\fP$\fIencrypted\fP
-contain the password encrypted with, respectively, functions
+Thus, $5$\fIsalt\fP$\fIhashed\fP and $6$\fIsalt\fP$\fIhashed\fP
+contain the password hashed with, respectively, functions
 based on SHA-256 and SHA-512.
 .PP
 "\fIsalt\fP" stands for the up to 16 characters
 following "$\fIid\fP$" in the salt.
-The "\fIencrypted\fP"
+The "\fIhashed\fP"
 part of the password string is the actual computed password.
 The size of this string is fixed:
 .RS
@@ -283,7 +283,7 @@ SHA-512	86 characters
 .TE
 .RE
 .PP
-The characters in "\fIsalt\fP" and "\fIencrypted\fP" are drawn from the set
+The characters in "\fIsalt\fP" and "\fIhashed\fP" are drawn from the set
 [\fBa\-zA\-Z0\-9./\fP].
 In the MD5 and SHA implementations the entire
 .I key
@@ -299,7 +299,7 @@ followed by "rounds=\fIxxx\fP$", where \fIxxx\fP is an integer, then the
 result has the form
 .RS
 .PP
-$\fIid\fP$\fIrounds=yyy\fP$\fIsalt\fP$\fIencrypted\fP
+$\fIid\fP$\fIrounds=yyy\fP$\fIsalt\fP$\fIhashed\fP
 .RE
 .PP
 where \fIyyy\fP is the number of hashing rounds actually used.
diff --git a/man3/encrypt.3 b/man3/encrypt.3
index 9f7ea9627..49549a28f 100644
--- a/man3/encrypt.3
+++ b/man3/encrypt.3
@@ -13,8 +13,8 @@
 .SH NAME
 encrypt, setkey, encrypt_r, setkey_r \- encrypt 64-bit messages
 .SH LIBRARY
-Encryption and decryption library
-.RI ( libcrypto ", " \-lcrypto )
+Password hashing library
+.RI ( libcrypt ", " \-lcrypt )
 .SH SYNOPSIS
 .nf
 .BR "#define _XOPEN_SOURCE" "       /* See feature_test_macros(7) */"
-- 
2.41.0

