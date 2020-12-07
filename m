Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 16AD12D15B6
	for <lists+linux-man@lfdr.de>; Mon,  7 Dec 2020 17:14:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726000AbgLGQLu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Dec 2020 11:11:50 -0500
Received: from wout3-smtp.messagingengine.com ([64.147.123.19]:56587 "EHLO
        wout3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725994AbgLGQLu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Dec 2020 11:11:50 -0500
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
        by mailout.west.internal (Postfix) with ESMTP id 7CA5DE1B;
        Mon,  7 Dec 2020 11:11:04 -0500 (EST)
Received: from imap36 ([10.202.2.86])
  by compute7.internal (MEProxy); Mon, 07 Dec 2020 11:11:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dimebar.com; h=
        mime-version:message-id:date:from:to:cc:subject:content-type; s=
        fm1; bh=rWIMeoTpewZD4+Ibt6EX23pb3vvdLASq+mTy8CfLaS8=; b=UIRqWK0X
        kCkgtdxXfx6f6d99YUQumkvEeuIxwjMueHnC6pf4x/5ooYxb+zmJ+oQGKarYe5mC
        12ztBYvKvdK/vk3TPSno89vg7Hmo1yb+5asm9ps8pdLfcYm+qxfp9XQklzgq8P5M
        +djXQD4lgwRGV/OHS5LhTTKr7dsbcIZKZfMidgi2M9Urw0eVR4MzW0gphgH53eZW
        7jQ+0L0Ci1XlE651Ets2Fb0eNam8D0p7Li7+kJP52iaKPPlxhruAEMWQ67lWjwV4
        QIVnG40XVs74+LCWUd7PGRMM3SEiw1XvszQbgSU4gU1+9T65ie2tql2GsDJEh0nl
        kDqc2R9Gouiy0g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:message-id
        :mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
        :x-me-sender:x-sasl-enc; s=fm1; bh=rWIMeoTpewZD4+Ibt6EX23pb3vvdL
        ASq+mTy8CfLaS8=; b=fsaqaQ7rNQaD8NVxzFpqY7euA10YE4KdB42IaLx034m8F
        E+Mye7XFmr+l5994LwDdlyxRAucF00TidF/+KijU5f4sgHB9W0evVdB9YlcFLSwd
        3DxdvrD1XKo/rRu3hFByK9l6gsahuEkeM2GeW01jhGObtzJIuTMOsIul7eI6oiPT
        WzRDfodeXbYFvgsxz1AVscYNibKX/fTo8a2Aoc3SlC/60PvSEQUoJr0uuwrYaFxK
        YBN6vz7cXSlqni4SKOVrZqzV5WlpDe4WwWN7PLeK1aLbRbkYxgYtQO3HQwnovuxn
        FgULZCJUY37fE8u77bJVHaPxwZZXE7S7tP9Lkm6iQ==
X-ME-Sender: <xms:F1TOX4Rd9gExXZQPtsxFubHRTFohGITAdSuzBjSCKJyBgWHCPwMsog>
    <xme:F1TOX1yFkCMaj5WdfDHQXDHpGHyUhsSUt0G74M7lx2msRR1pRtm9BQTDVzb-iWX4I
    cWsszZghRSciSyH>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudejgedgkeegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfffhffvufgtsehttdertd
    erredtnecuhfhrohhmpedfrfhhihhlihhpucftohiflhgrnhgushdfuceolhhinhhugidq
    khgvrhhnvghlseguihhmvggsrghrrdgtohhmqeenucggtffrrghtthgvrhhnpeffheeiue
    duvefhleeuvdffledvgeegjeehjeejheegfefhffetgfehleetfeejgeenucffohhmrghi
    nhepsghoohhtlhhinhdrtghomhenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
    epmhgrihhlfhhrohhmpehlihhnuhigqdhkvghrnhgvlhesughimhgvsggrrhdrtghomh
X-ME-Proxy: <xmx:F1TOX13Iiazg4DFTlOdYxfccZqCrmrEwPB5ZdQE8WcWwPNWj4tRi_Q>
    <xmx:F1TOX8BJTeGdGP00O4QE41uHMxyK9l-t3KfYW5G1Lz9pnUccBG3Wrw>
    <xmx:F1TOXxirbhdCU17owP5qHA_Dyx4e193UtbgYwW2hnii4hVPke9mvXQ>
    <xmx:GFTOX7eHhTLS2PRDtn9Ujrj1hBEuKRKVqyFPmZUH2WkqdDVXvpjVjA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
        id C29231880078; Mon,  7 Dec 2020 11:11:03 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.3.0-622-g4a97c0b-fm-20201115.001-g4a97c0b3
Mime-Version: 1.0
Message-Id: <e2eacb90-222f-455f-97e2-8784360d7f5f@www.fastmail.com>
Date:   Mon, 07 Dec 2020 16:10:38 +0000
From:   "Philip Rowlands" <linux-kernel@dimebar.com>
To:     "Michael Kerrisk" <mtk.manpages@gmail.com>,
        "Alejandro Colomar" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Missing value for tcp_syncookies sysctl
Content-Type: text/plain
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Under man7/tcp.7 please mention the "2" value for tcp_syncookies, which is no longer a boolean, default "1".

First mentioned in kernel 3.12
https://elixir.bootlin.com/linux/v3.12/source/Documentation/networking/ip-sysctl.txt#L443

The kernel documentation is rather ungrammatical, so suggest instead:

> Set to 2 to send syncookies unconditionally, which can be useful for network testing (since Linux 3.12).



Thanks,
Phil
