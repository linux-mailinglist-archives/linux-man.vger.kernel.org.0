Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B5AF6397537
	for <lists+linux-man@lfdr.de>; Tue,  1 Jun 2021 16:15:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233970AbhFAORi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 1 Jun 2021 10:17:38 -0400
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:59569 "EHLO
        out5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233797AbhFAORi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 1 Jun 2021 10:17:38 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.nyi.internal (Postfix) with ESMTP id 9A76A5C018B;
        Tue,  1 Jun 2021 10:15:56 -0400 (EDT)
Received: from imap38 ([10.202.2.88])
  by compute3.internal (MEProxy); Tue, 01 Jun 2021 10:15:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        williammanley.net; h=mime-version:message-id:date:from:reply-to
        :to:subject:content-type; s=fm3; bh=+vIs/QK7Aalvz+8XXtqeVtXLAORR
        fRPRlWcbROYT2yw=; b=PKDZ59Bs4CXUHuGrhMU8lEISOj19mxzx0dj0MNnUxQqw
        QWJRg87Vzmn8NKQMEO6aT5yS2v+6wlBhhv0QEaGdNS3091a+JDpIs7sQ+5OfL+/Z
        Q+ZOUSM4I+aYUClxrvxYEzNMq9p8HUBmJkUUP8uY2fqrK6tj8UslAbHUDa8CJW43
        fmPYAU33FN1gHcLNUIQJ3v3ZC+9bJNAh3DJ3Z8tZN0bVs9y3yQtVMKY+FUmYBhOO
        k5i37aUkD1OKxSFXY/H1vxkuzlZBfYNa8sBZq8n+oJKTD0AaSdhbwR86v5KxzQrW
        LM6lu9IHgxeWvoyMX3cAXFMLiAYC/zmscOpqYVBdWg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=content-type:date:from:message-id
        :mime-version:reply-to:subject:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=+vIs/QK7Aalvz+8XX
        tqeVtXLAORRfRPRlWcbROYT2yw=; b=l3IYdyJVaYL/BLZEpVo5HbRyGNZH1V86x
        463Oc3mdHBNRwcwDeWGb/+DgtMBNJ+cI/p/uF25GxRJGZY7AlTA3FHyKwh6qBP3j
        p6U0arpUFTQ9XkcrPVInJ/+qemkGu5GmZqzUVydbrZDGyBpXza7kR+lMCy/KRljq
        idblh7VzbQ4o511f8Z6A0tH+h6ltlkFdUuxjqbFh5GOSkK1GD7sEoqSnY4xkXmj7
        qOxoPaGmjUsdTE5kOV5SgSlzPcSPHCl3b3eqmR+x7rt4qlHyxlIquq8aoUNO3Idy
        rULByJd80dCfkKTxAiUfK3uVDcU0Fdkxhyf1WALM6q2uZmG3TxZcg==
X-ME-Sender: <xms:HEG2YPod8XFlujMQH7NlLVLMxC8J2Z2FIRQLyZ8awvvvZhEz7MgAlQ>
    <xme:HEG2YJp7Btt6DH8G6-Ty6HqxgQ-gEfiCjGt74_jyz2QdFXMkuPE_TOyZbnpfUl7QQ
    sGWdb-LFmuJtpNh>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdelhedgjeehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfffhfhrvffutgesthdtre
    dtreertdenucfhrhhomhepfdghihhllhcuofgrnhhlvgihfdcuoeifihhllhesfihilhhl
    ihgrmhhmrghnlhgvhidrnhgvtheqnecuggftrfgrthhtvghrnhepueehvefhffehjedvle
    eiuedttdegtddtieehffektdevgeeufeeutdeutdefgffgnecuffhomhgrihhnpehkvghr
    nhgvlhdrohhrghdpghhithhhuhgsrdgtohhmnecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepfihilhhlseifihhllhhirghmmhgrnhhlvgihrdhn
    vght
X-ME-Proxy: <xmx:HEG2YMNUJ4q9hDRSx0XvyRGw1j4wv22TTLCQJeZvvJ3qvRRtNSwfAQ>
    <xmx:HEG2YC61jaswPSj8ASUBVQcsX53aOw9PwnfvSdp5etuj2g8VaqpWSA>
    <xmx:HEG2YO48yYIs35AYeUvD3TaPbz71wue8152ZQD1FClQR_8QRDlfsWw>
    <xmx:HEG2YDgnM8LzOVVbntPYq_ZBFhLTS4hCxOWQH1ywpJT9fxDaTwFw-A>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
        id 1A456CA042B; Tue,  1 Jun 2021 10:15:56 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-519-g27a961944e-fm-20210531.001-g27a96194
Mime-Version: 1.0
Message-Id: <3f280647-143d-4c52-822a-79338a1b76f7@www.fastmail.com>
Date:   Tue, 01 Jun 2021 15:15:35 +0100
From:   "Will Manley" <will@williammanley.net>
Reply-To: will@williammanley.net
To:     linux-man@vger.kernel.org,
        "Alejandro Colomar" <alx.manpages@gmail.com>,
        "Michael Kerrisk" <mtk.manpages@gmail.com>
Subject: [PATCH] preadv2: Note preadv2(..., RWF_NOWAIT) bug in BUGS section
Content-Type: text/plain
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From 4116851719f068bd4117f5d37ead700e88219de4 Mon Sep 17 00:00:00 2001
From: William Manley <will@williammanley.net>
Date: Tue, 1 Jun 2021 15:10:22 +0100
Subject: [PATCH] preadv2: Note preadv2(..., RWF_NOWAIT) bug in BUGS section

To save the next person before they fall foul of it.  See
https://lore.kernel.org/linux-fsdevel/fea8b16d-5a69-40f9-b123-e84dcd6e8f2e@www.fastmail.com/T/#u
and https://github.com/tokio-rs/tokio/issues/3803 for more information.
---
 man2/readv.2 | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/man2/readv.2 b/man2/readv.2
index df42cf830..3355fa9d7 100644
--- a/man2/readv.2
+++ b/man2/readv.2
@@ -243,7 +243,9 @@ If some data was successfully read, it will return the number of bytes read.
 If no bytes were read, it will return \-1 and set
 .IR errno
 to
-.BR EAGAIN .
+.BR EAGAIN
+(but see
+.BR BUGS ")."
 Currently, this flag is meaningful only for
 .BR preadv2 ().
 .TP
@@ -425,6 +427,13 @@ iov[1].iov_len = strlen(str1);
 nwritten = writev(STDOUT_FILENO, iov, 2);
 .EE
 .in
+.SH BUGS
+Linux v5.9 and v5.10 have a bug where
+.BR preadv2()
+with the
+.BR RWF_NOWAIT
+flag may return 0 even when not at end of file.  See
+https://lore.kernel.org/linux-fsdevel/fea8b16d-5a69-40f9-b123-e84dcd6e8f2e@www.fastmail.com/T/#u
 .SH SEE ALSO
 .BR pread (2),
 .BR read (2),
-- 
2.17.1
