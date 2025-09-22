Return-Path: <linux-man+bounces-3941-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DD86EB8EE6F
	for <lists+linux-man@lfdr.de>; Mon, 22 Sep 2025 06:01:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DC6667AB4C5
	for <lists+linux-man@lfdr.de>; Mon, 22 Sep 2025 03:59:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 577151D514B;
	Mon, 22 Sep 2025 04:01:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=columbia.edu header.i=@columbia.edu header.b="dMpeX3CL"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0a-00364e01.pphosted.com (mx0a-00364e01.pphosted.com [148.163.135.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAF00192B75
	for <linux-man@vger.kernel.org>; Mon, 22 Sep 2025 04:01:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758513670; cv=none; b=qGTsNBowAAhUTLjEEGx4XyqbaBa73TSVUvXpd3dJt4wigGfNc+76BjeaBoxF0CBebHfpkKuY6hfDfvg75UKP4mM8jwvaeeyQHDBJxpxmstsB4Vw5n/OCWE5UpzssLoh7md37TIiBzS05ILI6nQJeJ+Bh/IEcGVoy+II0SD8OB4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758513670; c=relaxed/simple;
	bh=Zu2zC2RPYRYabkrXYnwDXyhjrYPwWmL5oxQw0bzD1i8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nm7sOtlWOtlcfGI7cSaCWmlkeYPDn56Pdku0uOgjw8PGXFpApi10+7HheL7Hu1hB2hpfnG+ic9w1hpH1N56VIrV+SXZte1yvn5LmrPspVY11UZu7l29FczSUJTUn6x4KDmIvCSkTOZxdbPCJSM73iHTib3VgJmNyDVlm4S5QixU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.columbia.edu; spf=pass smtp.mailfrom=columbia.edu; dkim=pass (2048-bit key) header.d=columbia.edu header.i=@columbia.edu header.b=dMpeX3CL; arc=none smtp.client-ip=148.163.135.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.columbia.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=columbia.edu
Received: from pps.filterd (m0167070.ppops.net [127.0.0.1])
	by mx0a-00364e01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M1tmOB017304
	for <linux-man@vger.kernel.org>; Mon, 22 Sep 2025 00:01:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=columbia.edu; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=pps01; bh=t3fCcl0LAeCFkJN
	l29sgongJkP4xqGT9bvt3G9otWEw=; b=dMpeX3CLIo8xwOd83+DvWBCm9Hvoxg3
	DKgvNcvH2j/MjwVnqU35jkUVmh1Ugv4C2BuekaYGM+AWGKIpqa4KfoaAs1o+5xHt
	74bXgVtwQe6jcBIuJ168o3SraUHaX/ka/u/5cP2PtPH/UKWxae9k4ycZDpSywN1+
	/5I4/gA9nD0UAjlgaNBiW3fzKtbAvyK+9GMuO1s5DF3i+l56DZJx49PiezDbeIdU
	OZIrS4VImqSp3G1bcC2rweokGjCwlFmWgQRa78HGVHxU8v03x7iSEv4qOm0nq1J5
	YjxDcE2Kq63cOUZmeo1txkgfQ85gpeuPCCP5UTzX3Bal5t0vQ+Xu/tA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-00364e01.pphosted.com (PPS) with ESMTPS id 49a9d5nghp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-man@vger.kernel.org>; Mon, 22 Sep 2025 00:01:02 -0400 (EDT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-81312a26ea3so915352285a.0
        for <linux-man@vger.kernel.org>; Sun, 21 Sep 2025 21:01:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758513661; x=1759118461;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t3fCcl0LAeCFkJNl29sgongJkP4xqGT9bvt3G9otWEw=;
        b=L1Kqd2XtdmmPUv0HHgZlb7n4+KEJ5wYF5AnWC+qMpmRHVsYN3JYQcpdqEnUbve8ehh
         IzBEtzHxLecX1PL52Dimjok3T1OwzobQCbWlT/Hv0AbUQ7Yh7EhW9WC3YF48uduhOVJa
         Xea1OkSo/GfPb9JsNcGh6CJFcWr2FoTWNw/ur7cW6OtRt1GLMPdFuvn+PviHA71M5Tfa
         FIQIR0izsVz2OU4EOcei1NyfTmjlIrD5jYEjsGg/TOL3ZZ2D6kR+2f1qbb00g2lvr8R1
         faw/O3glXR00apfYYaogL5nigF3cswtIhigkI2ZFJXd/A5z3SlHG1/2tUXwACj14OSzt
         wBjw==
X-Gm-Message-State: AOJu0Yzd33mQPpLSPDXuNkR8YVw7Al+GL5CB3t/9jrCmT3g44Genugp0
	TlSUIGnrhW6UGMB05u25OLFD2qknLPobU3RBPwznR7RuM7lFmeL0N8lv6PMY9YVrVXnzo/+sU4l
	VbwmiT3GNJMnqs7Gy20V9ZkKodbmdLnzqS1QwHlifkbAYNqVoo4ulwRS62g==
X-Gm-Gg: ASbGncs8klSP/n3BFD31fkfqqJftu1+5yTrUp4urPtZ8DU37YX+XcPMgzTsrcfNU8jQ
	ZQeFove6CBqHuzL7P4qkT9MVe4/aqFUG7PCbxt3AD1zmwopUZDwA0bXO8ZUrVZJEy8ljsv5hZvi
	gOSlmpAkUTqu5cgMHVmgntUqtVzmTiATSarHv3GqQTeIJ7ZIUZe1YHmCir1dBmYZK4R+TPDE6Xm
	O/3qD6cOzTmKweABfR1sXeBLz/GzwWG60qoDJmBbynWc+Ed0hnCAGTzc6KyXH6BlkK9Zn3ZdhIy
	WHOK+Ged04MCwVej7ctNcDuDmA0JA2q5WTvJ3GP77F/js3bIJu9/luXPjIgyNuHmjEB/TDydkQ=
	=
X-Received: by 2002:ad4:5be9:0:b0:782:1086:f659 with SMTP id 6a1803df08f44-79912a78486mr124061706d6.26.1758513661044;
        Sun, 21 Sep 2025 21:01:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGxrVUEBwjWyfk/1ZkZRZNEL6BreHzQ9FqtaiesrdgCjDuLItLc2Y7HSS0f/X/fPJmz0PlhPw==
X-Received: by 2002:ad4:5be9:0:b0:782:1086:f659 with SMTP id 6a1803df08f44-79912a78486mr124061526d6.26.1758513660699;
        Sun, 21 Sep 2025 21:01:00 -0700 (PDT)
Received: from rivalak.cs.columbia.edu (kele.cs.columbia.edu. [128.59.19.81])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-793469322f1sm67218036d6.20.2025.09.21.21.01.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Sep 2025 21:01:00 -0700 (PDT)
From: Kele Huang <kele@cs.columbia.edu>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org, Kele Huang <kele@cs.columbia.edu>
Subject: [PATCH 3/6] man/man2/unshare.2: grfix
Date: Sun, 21 Sep 2025 23:59:31 -0400
Message-ID: <20250922035934.446271-4-kele@cs.columbia.edu>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250922035934.446271-1-kele@cs.columbia.edu>
References: <20250922035934.446271-1-kele@cs.columbia.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIxMDAzMSBTYWx0ZWRfX84atv1cT/IjM
 XfFY+erAyVh5pB4XiravVnV/vsBChy6eHBcPBE0IBvWJbG8wsoOhCWxWQ19cNq4FzOWuPzBD47J
 v2lZFpQGNETsT3XxopwN3IuCPcKVEUaW830GDg82UOEbJkL3CEuozOTGJ5BTuLtaEIZ8Zh+j/xM
 OyiksoTBUag1mXCnEIEyevgeoQXtIy8zmUnGzRYXsBpM4p+BvS0nBZj41Ja0qTq1+HUGzl98O5w
 QwEQ4RGzpyTGqfmRDqrwJ4gFbzdPLDTFqpZwOSR4ATJAIRJWJNJt3crhaDYqA0eWgCmRiRB0Ewf
 /xyUItWjTOOODu7AH7e90OLCWJIRbTuR50H4s440JP38ejyxuZPyWF2yq40zVbGoiKVuP4ZLCaE
 u6Zdhwun
X-Proofpoint-GUID: BWB0_HwHyyiDPn2yr922sXgiyFoUmHcB
X-Authority-Analysis: v=2.4 cv=SJtCVPvH c=1 sm=1 tr=0 ts=68d0c9fe cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=3s50gvPmqPWyIM6FhyrXAw==:17
 a=yJojWOMRYYMA:10 a=qPDIba2egV4Hj5FxyY0A:9 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: BWB0_HwHyyiDPn2yr922sXgiyFoUmHcB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-21_10,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 spamscore=0 impostorscore=0 bulkscore=10
 clxscore=1011 priorityscore=1501 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509210031

Signed-off-by: Kele Huang <kele@cs.columbia.edu>
---
 man/man2/unshare.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/unshare.2 b/man/man2/unshare.2
index 59d94ad1e..eea59aa37 100644
--- a/man/man2/unshare.2
+++ b/man/man2/unshare.2
@@ -285,7 +285,7 @@ is specified as zero, then
 is a no-op;
 no changes are made to the calling process's execution context.
 .SH RETURN VALUE
-On success, zero returned.
+On success, zero is returned.
 On failure, \-1 is returned and
 .I errno
 is set to indicate the error.
-- 
2.51.0


