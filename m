Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 15B50754AC9
	for <lists+linux-man@lfdr.de>; Sat, 15 Jul 2023 20:41:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229830AbjGOSla (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 14:41:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229490AbjGOSla (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 14:41:30 -0400
Received: from xry111.site (xry111.site [89.208.246.23])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3BFA3128
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 11:41:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xry111.site;
        s=default; t=1689446488;
        bh=Zq86nbB9uOl1irEpdC+sUSmkKxZzHpaVXp9lsSdFNXA=;
        h=From:To:Cc:Subject:Date:From;
        b=l6TTcajnxc45J7Vw4G8e7E20HpvDbC55V1DAbgnEv9jAlUJh8fENog7og3FPiBL5D
         d9CeioE6ABI7nXbzc9jAVGySOywYSM55RahAkFIFUPQOn0kGwdT/gfxrtauXfo8azX
         tJmhmfrdR9vrxkPBSA5dZuaHc3PCSJCiQu7hHEz4=
Received: from stargazer.. (unknown [IPv6:240e:358:1143:400:dc73:854d:832e:4])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-384) server-digest SHA384)
        (Client did not present a certificate)
        (Authenticated sender: xry111@xry111.site)
        by xry111.site (Postfix) with ESMTPSA id 2B4FB65B0F;
        Sat, 15 Jul 2023 14:41:25 -0400 (EDT)
From:   Xi Ruoyao <xry111@xry111.site>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Xi Ruoyao <xry111@xry111.site>
Subject: [PATCH] crypt.3: The library is "libcrypt", not "libcrypto"
Date:   Sun, 16 Jul 2023 02:41:18 +0800
Message-ID: <20230715184118.1580451-1-xry111@xry111.site>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

libcrypt is the password hashing library, and libcrypto is a completely
different library (OpenSSL cryptography library).

Signed-off-by: Xi Ruoyao <xry111@xry111.site>
---
 man3/crypt.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/crypt.3 b/man3/crypt.3
index 1f3e4792e..ad14cb4f7 100644
--- a/man3/crypt.3
+++ b/man3/crypt.3
@@ -20,7 +20,7 @@
 crypt, crypt_r \- password and data encryption
 .SH LIBRARY
 Encryption and decryption library
-.RI ( libcrypto ", " \-lcrypto )
+.RI ( libcrypt ", " \-lcrypt )
 .SH SYNOPSIS
 .nf
 .B #include <unistd.h>
-- 
2.41.0

