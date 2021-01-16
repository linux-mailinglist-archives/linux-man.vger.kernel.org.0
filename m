Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D7A4A2F8D66
	for <lists+linux-man@lfdr.de>; Sat, 16 Jan 2021 13:54:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726862AbhAPMxr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 16 Jan 2021 07:53:47 -0500
Received: from out1-smtp.messagingengine.com ([66.111.4.25]:40569 "EHLO
        out1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726754AbhAPMxq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 16 Jan 2021 07:53:46 -0500
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.nyi.internal (Postfix) with ESMTP id A62235C00E5;
        Sat, 16 Jan 2021 07:53:04 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Sat, 16 Jan 2021 07:53:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alyssa.is; h=
        from:to:cc:subject:date:message-id:mime-version
        :content-transfer-encoding; s=fm2; bh=A4+B/3ByjE3ggDgdGO1+YwbDke
        jQUZpenvdH9mVtOhE=; b=Qje30maEUqShHtMxbL4DcfA7m0GR0UV4toqIaJBavT
        dZfMri4nqMjk8Z9yA6tH26TddhyNrJo3S7a7L+eE/MGsF9ECVosSUKcczNuyMNK/
        3QoPwNQZJ0BBzJtpc2aPkrPbOgN+ciHpGeKh97xLPeOpuegnbQpW6owfOSDVFbXg
        zoQ8V0Q6GMiinKm7TwI67PaiQX83M9Do1ebi/moBploJbcu0Lq0zZz0eR+lxqLRd
        7uI+5rYFSnSdTEwsey/UA53vXVuqcoW9DXdAXgBailpRSure8UzBDQTEXMsDenvk
        ueu5mjuzOLCXLRL2H2GwFiXL3et0u1tQFTmwnjowkRwA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=A4+B/3ByjE3ggDgdG
        O1+YwbDkejQUZpenvdH9mVtOhE=; b=OaWGa+L0RTHfzIAaBRYQpP/ifpn/NEH9a
        ORSP1l7y8KsXH18adIaMdw9NTSWb4PzIIObNxOAfFH9MfpfrwgnqUlzGlGk3Rdbo
        Xf7mGYDH73GibMZlIWsohOuuoo0LX1Mb8md2MrKQEltIpus9gJZIT5gT8v+YylSG
        tgjyJ+AKYrzFLQoASEugVdL8HGQyp8F/QSKyUQhcnOyfyCDXig80YkdysbJ6wEm+
        qBH2OJPbKLtweui+f9CiT+ZJn3skxpyOVSIixHMgQOr3qO9ZBnMAUEUNgJV1vrP+
        CAN1sGOhbS3rxtroiwPlUYzQLkps4/lZzwWHf3fvETZbdig7x+C3g==
X-ME-Sender: <xms:sOECYPuX9TzeQIaNssHMebFyP-hl6B3hjnLlweNgLV1JnauVYk8kAQ>
    <xme:sOECYAdUd6jhuZhjWgWcB4vigGAKngzYPRtEZ-GKJ1RGTytx67zgk6gLnt041c6Om
    f8TdrbsFL12Qt4XKA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrtdeggdegiecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
    dtnecuhfhrohhmpeetlhihshhsrgcutfhoshhsuceohhhisegrlhihshhsrgdrihhsqeen
    ucggtffrrghtthgvrhhnpeehvdffgffhteeijefgteeftdfghfdvheeuhedvjedugfeggf
    eljefgleefvefgfeenucfkphepkeegrddukedurddvgeehrdegjeenucevlhhushhtvghr
    ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehqhihlihhsshesvghvvgdrqh
    ihlhhishhsrdhnvght
X-ME-Proxy: <xmx:sOECYCxpIXDo3ml-sAnDYPNDOyVmrFP_mDPBuUIxncKC5_T2gSkC-w>
    <xmx:sOECYOO7KiTH3CuuD3JssylwpZwk-9ZW6efpqxokEGvr2Nkz5d4YYw>
    <xmx:sOECYP-1hxaiaxRcr8JJvzpuBCSg4q3CdsYJx0syRPV3LckI6zrb5w>
    <xmx:sOECYMH_SeScgou_icLMekqKvFzo9NB1fCvNR-B6rRW36YvJ2paySw>
Received: from eve.qyliss.net (p54b5f52f.dip0.t-ipconnect.de [84.181.245.47])
        by mail.messagingengine.com (Postfix) with ESMTPA id 4D68724005E;
        Sat, 16 Jan 2021 07:53:04 -0500 (EST)
Received: by eve.qyliss.net (Postfix, from userid 1000)
        id 46310163E; Sat, 16 Jan 2021 12:53:01 +0000 (UTC)
From:   Alyssa Ross <hi@alyssa.is>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>, mtk.manpages@gmail.com,
        Alyssa Ross <hi@alyssa.is>
Subject: [PATCH] ulimit.3: wfix
Date:   Sat, 16 Jan 2021 12:51:55 +0000
Message-Id: <20210116125155.23815-1-hi@alyssa.is>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The parentheses here make it look like a function rather than a
command.

Signed-off-by: Alyssa Ross <hi@alyssa.is>
---
 man3/ulimit.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/ulimit.3 b/man3/ulimit.3
index b6d0b3250..eb028f97c 100644
--- a/man3/ulimit.3
+++ b/man3/ulimit.3
@@ -42,7 +42,7 @@ and
 .BR sysconf (3)
 instead.
 For the shell command
-.BR ulimit (),
+.BR ulimit,
 see
 .BR bash (1).
 .PP
-- 
2.29.2

