Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5BF7C290C0B
	for <lists+linux-man@lfdr.de>; Fri, 16 Oct 2020 21:03:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2408118AbgJPTDx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 16 Oct 2020 15:03:53 -0400
Received: from mout.gmx.net ([212.227.15.18]:56397 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2407907AbgJPTDx (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 16 Oct 2020 15:03:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1602875023;
        bh=JI73EihSd4qO1ogC2JhxF34J1tdPJy7vJHHFB444PFo=;
        h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
        b=LxSHFKVaOcFZAK3BI0i6xUQNJyTfHksSHqlbIhPhTz60pxYNb3B7SWOk44CvhnG+H
         2nvcoivwjirOGsamCXa8zurQvV0v4NbNisPWpVRVEA4Cfeo3z9tP/08segsRmCFLIf
         GgrvtI83IrSl4pcXPoTfUwb8P3BB9Dmw/PSUr87U=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from LT02.fritz.box ([178.202.41.107]) by mail.gmx.com (mrgmx005
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1M5fMe-1kWFu83sks-007GuN; Fri, 16
 Oct 2020 21:03:43 +0200
From:   Heinrich Schuchardt <xypron.glpk@gmx.de>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Matthew Garrett <mjg59@google.com>,
        Ard Biesheuvel <ardb@kernel.org>,
        David Howells <dhowells@redhat.com>,
        Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: [PATCH 1/1] kernel_lockdown.7: describe LSM activation
Date:   Fri, 16 Oct 2020 21:03:37 +0200
Message-Id: <20201016190337.5126-1-xypron.glpk@gmx.de>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:yO5LXnBR/CegYwLZ5jW6uce9hZL5+ygQBPFeTNe+R1jBJ+uk/E6
 QS0it/+GI5r8wn1Hf4zvPWRRP3nIUdcuEYvvGNOeyC3ZajqWM3fg2IyYuU9wD3wfAMEsqfX
 zNLBTkUB5We9L/FjYjkURVCYOCvrkjuNVrVTJJwfic+mXsUKsDrpO/URWbOP5BxiXfu5YGX
 cpVpKQ1U46RW/uQDlzA2w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:RBfTvEfk9w4=:4nkEL5iHDmIbSx+Pnpg6VP
 rN9R/hYw3XUIK1xlOnkTagwHkvLLbNDeW0pApSk5kTNYs/L1dcu1gZNJca+5wu1mXflZ8gMyZ
 cELKvQa1WwNcI4Bax8rkWfbR7hX4Ju0zcjHf/XdSYZNTVBtJXzRpQrmDeCY1fmJ28X0jCtEBI
 Fz70D4KgI97ndh1UPkqBMzHCIoArGFRgAgZc6rMtyo311pH3WOmsMzO6xp5MaUW9DeuXfhJ+P
 8zFKpsJ3imFDCuf9bhFbwbtIG2UaAxG3OdV0xgv2vX8rrVSEIQ7NmURU5+0A7mc5kSeBGOJRQ
 daCKbI98a+5WhYFsdnMq0iG2nHCIH7t808EujYYPGl5COlezvNrdwdBIEp7ItQzr0tQkTDKgJ
 kSaes6XHeKxLVox5QflUErbPku2zRIyGyD6GY28tJ4FDx5+/801FRTtUsc1Wj+Ld1jIlEsZZY
 Dp8S994UvwrzMUAu+ft7kk7s7PlGjz/oOYz/WzdtGru93yDNIPX5x2G0udhvCmghb5ouevhX0
 Ch8CcL907vcb8QTDT3EDR6Q4vGCn+sDwyWUd0kLLWBTYPpZiYGssdwWpExSHNRsynP+ifoCCB
 h6TfGHejDlnXhbn1ShKoRo09cipWqvLQQrYpepkmMXCqgZLg/Nd5yc3Zw7WYoed6fYIZWZVU8
 4iGPnqCgu8oixmboZUZ2LAnpwA1ghpgesyxcl04UOtf/KT1Gnz/d4/nAaKG+K/OG2iLrLU+9J
 4hFjVAnfTxZh8xL6s8RfF9ZfIn3MrefQc0xuliK0omqVuc6TQYKplQJ/ncUgd7f0HuFoLTe3h
 EF05TwJkIUqdiyv/9mosB1fChHR+di/84/o/FP0AoIj58d0c5cys8HylUWsg4LmYnZLK5ffzb
 DujhQYs3yg/ZVK8ngS+Q==
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Describe the activation of the Kernel Lockdown feature via Kconfig and the
command line.

Cf. Documentation/admin-guide/kernel-parameters.rst.

Signed-off-by: Heinrich Schuchardt <xypron.glpk@gmx.de>
=2D--
 man7/kernel_lockdown.7 | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/man7/kernel_lockdown.7 b/man7/kernel_lockdown.7
index 04de4d1fe..5aedd96e9 100644
=2D-- a/man7/kernel_lockdown.7
+++ b/man7/kernel_lockdown.7
@@ -104,4 +104,17 @@ whether or not they are specified on the command line=
,
 for both the built-in and custom policies in secure boot lockdown mode.
 .SH VERSIONS
 The Kernel Lockdown feature was added in Linux 5.4.
+.SH NOTES
+The Kernel Lockdown feature is enabled by CONFIG_SECURITY_LOCKDOWN_LSM.
+The
+.I lsm=3Dlsm1,...,lsmN
+command line parameter controls the sequence of the initialization of
+Linux Security Modules.
+It must contain the string
+.I lockdown
+to enable the Kernel Lockdown feature.
+If the command line parameter is not specified,
+the initialization falls back to the value of the deprecated
+.I security=3D
+command line parameter and further to the value of CONFIG_LSM.
 .\" commit 000d388ed3bbed745f366ce71b2bb7c2ee70f449
=2D-
2.28.0

