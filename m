Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B5D44741801
	for <lists+linux-man@lfdr.de>; Wed, 28 Jun 2023 20:28:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229924AbjF1S2A (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jun 2023 14:28:00 -0400
Received: from out4-smtp.messagingengine.com ([66.111.4.28]:49959 "EHLO
        out4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231179AbjF1S17 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jun 2023 14:27:59 -0400
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
        by mailout.nyi.internal (Postfix) with ESMTP id F18FB5C01F6;
        Wed, 28 Jun 2023 14:27:58 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Wed, 28 Jun 2023 14:27:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        joshtriplett.org; h=cc:cc:content-type:content-type:date:date
        :from:from:in-reply-to:message-id:mime-version:reply-to:sender
        :subject:subject:to:to; s=fm1; t=1687976878; x=1688063278; bh=mL
        4K4F5ak/6nnQSg0DkWBC5I+jUl6YS1qtiEEJ14hb0=; b=ofkfE2bxu2eei3ph29
        XijPu5V+Dr+bvQvQlGP0vV+b98t4vL06L1aVPoeFYYYu5ppXO8joeg3I6hbm55/7
        eJo/xifAA+tCyzLHviFYvMpNm9xKtX2f6F8z4GpN1w/HgdjAPTk6RvL+IkBFGnuO
        /OnzL4q8Rzm8NfV5ZWq1BqVZAtjSSD/nz6ovQ6ciDpgUBcO/esGvQ4HNLojgcUjz
        mlUQAxFmqPaL4vYQLbAz0lax8aN/CovIJ6dNlVwqzSuNPwIgrkWE4JdEjXJ0Bwp4
        RuC1djs5M3j1mDt7P/Zc/s2jbG0HSDgMUcWpXn3b5oBfG86Isnma1OfQgvdtqhAX
        Wqhg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-type:content-type:date:date
        :feedback-id:feedback-id:from:from:in-reply-to:message-id
        :mime-version:reply-to:sender:subject:subject:to:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
        1687976878; x=1688063278; bh=mL4K4F5ak/6nnQSg0DkWBC5I+jUl6YS1qti
        EEJ14hb0=; b=PKtHC8BZkUlLzmb4hwqMUczR6nU4daAB3xuqYJh1mnwsDYGPT1J
        2v/Hq7Fv+9v4bHepK/yX2SSUZ6UJTJrG4OoPD6XTSl/6WL92ymS+8GVp74CYJmYc
        cMIlGXx+0KdRril9hRC71CIOJCMlurgnJ/TpXvkvhyEiOwK5BWcjcCogMhwPG+VS
        R0BhGwLDOIHdj+LMlNNA+p8slYeUgYpxPku/zJdsy3AfP2i0pXqwa3EuFYEQC/ky
        wC7nvOha8vvp2Eeu+WvmbSA/JXRaD5bKzoSTPGnYB8yzLkOqa7q7zgK54eXntQTH
        nnHc8SF9r89jPRoRBTf/P0MHNASxLXsfNXA==
X-ME-Sender: <xms:rnucZDXdtQApBp0Y_lp0a1N6SRh-3r4WM769YsOium6_45f8gKRS_A>
    <xme:rnucZLnp_ty-0PzNBD6ztpz0xbK7MG-YtwtHV7YdPXY7-R9t9ZrbHnJQO4-lPlBoS
    8D16naS5Y3MFhqxnjA>
X-ME-Received: <xmr:rnucZPYRcvq6-QR1YJZuQMsJgWBZnGVCRwDnHhnYhNw6f0TC63ti8BQP>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedviedrtddvgdduvdefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfggtggusehttdertd
    dttddvnecuhfhrohhmpeflohhshhcuvfhrihhplhgvthhtuceojhhoshhhsehjohhshhht
    rhhiphhlvghtthdrohhrgheqnecuggftrfgrthhtvghrnhepuddvleehtedtgfdvvdelge
    eufedugeduveffkeejgefffedvieekhedvheelkefhnecuvehluhhsthgvrhfuihiivgep
    tdenucfrrghrrghmpehmrghilhhfrhhomhepjhhoshhhsehjohhshhhtrhhiphhlvghtth
    drohhrgh
X-ME-Proxy: <xmx:rnucZOUVYEav2UL2uMk2ux0b3txiyLN54wJVPmXhG7HyIpQvzdLD3g>
    <xmx:rnucZNnU9EvtVl4a2dgLBkqtkQBW0p9jW3BOe5STWCMV4ZUSVe1Ojg>
    <xmx:rnucZLcybDWXyKaaas1W74cfaz65WypN8EUq96Qtt1mXfhcdp8DU6w>
    <xmx:rnucZMs3t6ypu7ifoOBNWxzLdskv9KfbLWh32tmlypTsB33S2CO8rQ>
Feedback-ID: i83e94755:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 28 Jun 2023 14:27:58 -0400 (EDT)
Date:   Wed, 28 Jun 2023 11:27:56 -0700
From:   Josh Triplett <josh@joshtriplett.org>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] prctl.2: Document PR_GET_AUXV
Message-ID: <8d09fad30b46a35efb743c99563835e2a560f1db.1687976799.git.josh@joshtriplett.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Josh Triplett <josh@joshtriplett.org>
---

I contributed this feature to the kernel, and it shipped in Linux 6.4.
Add documentation for it.

 man2/prctl.2 | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/man2/prctl.2 b/man2/prctl.2
index 09e9072fa..30211a9e2 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -2027,6 +2027,17 @@ system call on Tru64).
 for information on versions and architectures.)
 Return unaligned access control bits, in the location pointed to by
 .IR "(unsigned int\~*) arg2" .
+.\" prctl PR_GET_AUXV
+.TP
+.BR PR_GET_AUXV " (since Linux 6.4)"
+Get the auxilliary vector (auxv) into the buffer pointed to by
+.IR "(void\~*) arg2" ,
+whose length is given by \fIarg3\fP.
+If the buffer is not long enough for the full auxilliary vector,
+the copy will be truncated.
+Return (as the function result)
+the full length of the auxilliary vector.
+\fIarg4\fP and \fIarg5\fP must be 0.
 .SH RETURN VALUE
 On success,
 .BR PR_CAP_AMBIENT + PR_CAP_AMBIENT_IS_SET ,
@@ -2045,6 +2056,7 @@ On success,
 .BR PR_GET_THP_DISABLE ,
 .BR PR_GET_TIMING ,
 .BR PR_GET_TIMERSLACK ,
+.BR PR_GET_AUXV ,
 and (if it returns)
 .B PR_GET_SECCOMP
 return the nonnegative values described above.
-- 
2.40.1

