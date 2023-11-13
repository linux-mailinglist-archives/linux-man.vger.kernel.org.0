Return-Path: <linux-man+bounces-65-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A02DA7E9DBE
	for <lists+linux-man@lfdr.de>; Mon, 13 Nov 2023 14:49:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CE7E91C208B2
	for <lists+linux-man@lfdr.de>; Mon, 13 Nov 2023 13:49:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70EC0200BF;
	Mon, 13 Nov 2023 13:49:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fastmail.com header.i=@fastmail.com header.b="aihI//7d";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="u6gaqxVf"
X-Original-To: linux-man@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F8A41CAB9
	for <linux-man@vger.kernel.org>; Mon, 13 Nov 2023 13:49:08 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com [66.111.4.28])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1ABEED4D
	for <linux-man@vger.kernel.org>; Mon, 13 Nov 2023 05:49:07 -0800 (PST)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id 904995C0190;
	Mon, 13 Nov 2023 08:49:03 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Mon, 13 Nov 2023 08:49:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to; s=fm3; t=1699883343; x=1699969743; bh=tu0NNkMf5R
	Nm/1UoJYlXzkwsZlCS+sS5v3Sljgdeu4U=; b=aihI//7dQc18oR59Q4koGe4L9o
	OT2nj6x501AIhSLOkDxPDd2Tnn4bkOreZnIMhVeh50RfF924ZXVjZs58nQbtl/qI
	8PqTCHxgymXPUgilADcgNvQaTP8pzilSj5fvWKJPSOitl09ip3SGNRHOtFB9emjp
	d9joFd33QSX9w77feWaxBDMaAri+DaxCV0h0+wCs1kXVd7F6cp3jf7P2FpVnvTT4
	4vVAbBRcUh2YFyBOxqRocXrT5+IQhWfiXyVLEUzgR5Twa5d/hfZgpASrJQbH2pcQ
	Uao8CUi897nr9EvxN6LKbHufffKwoxMfUaG+Io8HVuacNG3QEqKLxik5dd/Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; t=1699883343; x=1699969743; bh=tu0NNkMf5RNm/
	1UoJYlXzkwsZlCS+sS5v3Sljgdeu4U=; b=u6gaqxVfQ1Q5OuXb1pnqXWZxMg4Qv
	HfYqgNe5XX3lnnZEP4Z2TTEv+8w6KXV1CGbe4jaTtOZZPnmA5BI8kshggP8mH4+4
	8gNy5latmjsU5vsY9hI41drJoJp7jODyh4jYlqB9c6FWHqvs1lioxzGelWWeZ4P2
	eZC1Bj/ISVgJjThIg1DX5Dg78ZOAckOpIPHB/8+/ez9Ro4vmvN8Hcgvh8uYPT4bi
	LHv78qAXsPhOmfFioZat0Rk/XI+nz+tMh4CReFHXoDf9ZCWCNZ/JBJlQNv4/nZd/
	WbhMmBKt9E5qU1nTHhYvWeD2yvgvGwyymfj+6yXIa7HmDxA0RtgNquhZA==
X-ME-Sender: <xms:TylSZQX2oEFatO2Y2wKoGvNot5cPbYpRTK668ZjRoGzv5pEFvDxenQ>
    <xme:TylSZUlaI_mULDqkSN-Wa9oDNq8mbiXcBde_e7rrrGgyzjc0747bc-8XhWderSyeF
    sV5mKOW3rvTZfno7g>
X-ME-Received: <xmr:TylSZUZf11ebC4cjaxGGVOWZx8-vEF4-CcOuJqE-1Ah0RAB0tUB4O_jWs87hXTRV>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeftddgheegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertd
    ertddtnecuhfhrohhmpeetnhgurhhihicufghtkhhinhcuoegrnhgurhhihigpuhhtkhhi
    nhesfhgrshhtmhgrihhlrdgtohhmqeenucggtffrrghtthgvrhhnpeeileefffeuueeutd
    fggedvfedtgeeitddtfeegffehtdduhfehhedtveehgeekhfenucevlhhushhtvghrufhi
    iigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhhihigpuhhtkhhinhesfh
    grshhtmhgrihhlrdgtohhm
X-ME-Proxy: <xmx:TylSZfXgt7O4WazEF5fxaQ6HAqepcT9hgSztYoeKZ0JgstNgvCQoCg>
    <xmx:TylSZamqhs2lJfZxl11QzulocDP3-ml0MRoQPUTQNPFmAxaExeoj3w>
    <xmx:TylSZUccXeItwjXjzYhosIBoY7o6Ch9IxUMMuqbv6fqG3x28AwZV6A>
    <xmx:TylSZes1LCmvDNS419N7ohLy3GwSL-t0GvmViAlI2iHf8hiezooghg>
Feedback-ID: if391498a:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 13 Nov 2023 08:49:02 -0500 (EST)
From: Andriy Utkin <andriy_utkin@fastmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Andriy Utkin <andriy_utkin@fastmail.com>
Subject: [PATCH] mbsrtowcs.3: add a note for conversion completion
Date: Mon, 13 Nov 2023 13:48:57 +0000
Message-ID: <20231113134857.1639387-1-andriy_utkin@fastmail.com>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This adds a note to resolve a confusion I had.
Maintainers are most welcome to improve my wording.

I aimed for this function to work in such a manner so that
it would convert the entire string. So I allocated a destination buffer
to accommodate the string length in wide charaters and the terminating
null. The function was called with len equal to the length of the string
in wide characters, as returned by mbsrtowcs(NULL, ...).

This resulted in *src being updated to point at the trailing null
character, rather than NULL which I expected.

Here is an example which illustrates the point:

Code:

    #include <wchar.h>
    #include <stdio.h>
    int main(void) {
        const char *src = "Hello", *s1 = src, *s2 = src;
        wchar_t dest[6];
        int ret;
        printf("src is %p\n", src);
        ret = mbsrtowcs(NULL, &src, 0, NULL);
        printf("mbsrtowcs(src=NULL) returned %d\n", ret);
        ret = mbsrtowcs(dest, &s1, 5, NULL);
        printf("mbsrtowcs(len=5) returned %d, updated src is %p\n", ret, s1);
        ret = mbsrtowcs(dest, &s2, 6, NULL);
        printf("mbsrtowcs(len=6) returned %d, updated src is %p\n", ret, s2);
        return 0;
    }

Output:

    src is 0x402010
    mbsrtowcs(src=NULL) returned 5
    mbsrtowcs(len=5) returned 5, updated src is 0x402015
    mbsrtowcs(len=6) returned 5, updated src is (nil)
---
 man3/mbsrtowcs.3 | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/man3/mbsrtowcs.3 b/man3/mbsrtowcs.3
index 11741d187..4718b335d 100644
--- a/man3/mbsrtowcs.3
+++ b/man3/mbsrtowcs.3
@@ -155,6 +155,15 @@ current locale.
 Passing NULL as
 .I ps
 is not multithread safe.
+.P
+Calling this function with
+.I len
+set to the value returned from
+.I mbsrtowcs(NULL, ...)
+behaves according to scenario #2 described above:
+.I *src
+is set to the address of the terminating null wide character, rather than to NULL.
+Add 1 to that value for it to work according to scenario #3 (complete conversion).
 .SH SEE ALSO
 .BR iconv (3),
 .BR mbrtowc (3),
-- 
2.41.0


