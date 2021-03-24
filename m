Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E612D347A30
	for <lists+linux-man@lfdr.de>; Wed, 24 Mar 2021 15:05:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235932AbhCXOFZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Mar 2021 10:05:25 -0400
Received: from wout1-smtp.messagingengine.com ([64.147.123.24]:48473 "EHLO
        wout1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S235945AbhCXOFU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Mar 2021 10:05:20 -0400
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailout.west.internal (Postfix) with ESMTP id ADB1DFE9;
        Wed, 24 Mar 2021 10:05:19 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Wed, 24 Mar 2021 10:05:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alyssa.is; h=
        from:to:cc:subject:date:message-id:mime-version
        :content-transfer-encoding; s=fm2; bh=aHtssf5ed3gikcewL2Am+1PwF/
        o5Ko3bIIT4SRyBp6I=; b=p4Grs1vR14Nlgqn70zChaFZkq8Pnuu9HvhMQVkJ25X
        rfcuqWOePHx18xFdnetc82n7pXLUDqv+P7BggwdHMJq0fOMXL7OzdSrdQCyH83r9
        0aRedtpkCscUHmasQ7/PdJyq97wmR0/0znx9SS8TMehY9spPkITJk9eY0mOyi64H
        Ei3kr83ToYt9znqrTdHgJp6tVSGRnP8m6L/acfSnNqMU4XaRht+6T2I6bIH5e6ZZ
        rWS1WbNTg7bZw8GuKdy3u5N9WzVeiB+j3u+qgBiM9XGuEbbODkUGnRYChz6Ig4iA
        qXxylGZOKD0+s6jESk0tOw9QRhmTnyV0SBqpkp7nj0qw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=aHtssf5ed3gikcewL
        2Am+1PwF/o5Ko3bIIT4SRyBp6I=; b=UBiAfhXt9bVO2TTypZtd/6pYjTu7Ul3uh
        tekDBESK0P4V4sCeF0LKrW7lxCRfd2OteuxnmPfejxzxMmFXTby8eXLmEFTeHrkJ
        E6fet6YHwR6tvXdQojuSEo7b9u2Y7FNp5n4QpinmNoBb0Ws7rY0g8dnCyDBfGo0W
        vSc+Mmq/LjVj+fNYLd0udTg7qQ9KiOGmrwClByKeet/gHhyKFOcwhnPdITgyQurF
        leEXs1Gq3tyP6M7Afp7MGmJas/fbn4SU8a23rxaktFZJ3WjO906RnTfeDAhNs5Hc
        FRvvaOxNOOf04oyfaWadeIC0l2LIQgmKQPp0laCAs+NrUTAeJCOUA==
X-ME-Sender: <xms:HkdbYOdwXurMRcLUQTIMY-M5z_9RQ5LGhyLGig8GvB5syRr8pp_4WQ>
    <xme:HkdbYIO4j1K3gw7_jDPUU9Xv390PGvFUWLCyUnPA8TFV33a1jCp4Mjafm2iIDO2uK
    hFx2NNjPLfpN-64Gg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudegkedgheelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffoggfgsedtkeertdertddtnecuhfhrohhmpeetlhihshhsrgcu
    tfhoshhsuceohhhisegrlhihshhsrgdrihhsqeenucggtffrrghtthgvrhhnpedtleejje
    duteeitdfgteeihfeiieekgffggedvffejudehleffleejffeijeehfeenucffohhmrghi
    nhepthhhvgdrihhrnecukfhppeekgedrudekgedrvddvkedrudeknecuvehluhhsthgvrh
    fuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepqhihlhhishhsseigvddvtddr
    qhihlhhishhsrdhnvght
X-ME-Proxy: <xmx:HkdbYPiZG_F9cxmGeSueciv8nC7snB4O4_HGs52O6gJ7tulE-1UKbQ>
    <xmx:HkdbYL_KmLrbjbHg3qPwT4aa0T56XfbylA6G1UCJg6JN9ihGc240IA>
    <xmx:HkdbYKuxjX_zMC_gg9AxCW46qA0DiO4rTxwF7NNuzCWt0bKS7zzg_w>
    <xmx:H0dbYA3-VKqMtqGq82ecbF9gZ5AH_Gpvt1072rIMnE4gM4R6HuNblg>
Received: from x220.qyliss.net (p54b8e412.dip0.t-ipconnect.de [84.184.228.18])
        by mail.messagingengine.com (Postfix) with ESMTPA id CE4D31080064;
        Wed, 24 Mar 2021 10:05:18 -0400 (EDT)
Received: by x220.qyliss.net (Postfix, from userid 1000)
        id D86B224D0; Wed, 24 Mar 2021 14:05:17 +0000 (UTC)
From:   Alyssa Ross <hi@alyssa.is>
To:     linux-man@vger.kernel.org
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Alyssa Ross <hi@alyssa.is>
Subject: [PATCH] vsock.7: ioctls are on /dev/vsock, not sockets
Date:   Wed, 24 Mar 2021 14:05:03 +0000
Message-Id: <20210324140503.27580-1-hi@alyssa.is>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

---
When I discovered /dev/vsock, I had a look for a vsock(4), but there's
no such page.  I suppose there isn't really anything to document there
that isn't already covered there.

 man7/vsock.7 | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/man7/vsock.7 b/man7/vsock.7
index eae1d4ee7..7aa572d4b 100644
--- a/man7/vsock.7
+++ b/man7/vsock.7
@@ -148,6 +148,9 @@ The local CID may change across live migration if the old CID is
 not available on the new host.
 Bound sockets are automatically updated to the new CID.
 .SS Ioctls
+The following ioctls are available on the
+.IR /dev/vsock
+device.
 .TP
 .B IOCTL_VM_SOCKETS_GET_LOCAL_CID
 Get the CID of the local machine.
@@ -156,7 +159,7 @@ The argument is a pointer to an
 .IP
 .in +4n
 .EX
-ioctl(socket, IOCTL_VM_SOCKETS_GET_LOCAL_CID, &cid);
+ioctl(fd, IOCTL_VM_SOCKETS_GET_LOCAL_CID, &cid);
 .EE
 .in
 .IP
-- 
2.30.0

