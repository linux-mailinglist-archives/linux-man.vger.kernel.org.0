Return-Path: <linux-man+bounces-3938-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 75FBAB8EE6D
	for <lists+linux-man@lfdr.de>; Mon, 22 Sep 2025 06:01:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7D9E67AB2A8
	for <lists+linux-man@lfdr.de>; Mon, 22 Sep 2025 03:59:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 665C3246BB7;
	Mon, 22 Sep 2025 04:01:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=columbia.edu header.i=@columbia.edu header.b="oxYWnFFO"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0a-00364e01.pphosted.com (mx0a-00364e01.pphosted.com [148.163.135.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C1F2192B75
	for <linux-man@vger.kernel.org>; Mon, 22 Sep 2025 04:01:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758513668; cv=none; b=LRpWeT0BdgnxZ1GHPxlS1e8Wn+N+ebttO/0zWEBrETqGlaX47Oo7M8hbZXGBJHqNCtDRDPxzG8HntQV5C83bJW71HeJzrMHd9i1Aq50IViRBqox8wsJJEqVNwPwKnuADE7oOQCb4YTOsyyO58itfuz0PYzdVpjGAsJ3QQsb9lK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758513668; c=relaxed/simple;
	bh=mfGJIt4RfqHV11eDm6IUQDlLXUy4jpDDjNOTCVRBpKw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lFDXN1X/FEfRtopQgwUL6zP1vo1D7JUPiMC/rndYwS3416N5AqAPfyZzdykcDZNLGZJOGBuax7Cw2LPkwxN67HlHxK9zG6zOiOKXVOMGTCDtsahaFsRUDHTYyEvdp4lj8zEaWEaAzloFA/LmHBkpOVwicXEGzf/zR0a0aI8BV5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.columbia.edu; spf=pass smtp.mailfrom=columbia.edu; dkim=pass (2048-bit key) header.d=columbia.edu header.i=@columbia.edu header.b=oxYWnFFO; arc=none smtp.client-ip=148.163.135.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.columbia.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=columbia.edu
Received: from pps.filterd (m0167072.ppops.net [127.0.0.1])
	by mx0a-00364e01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M1MUgL020171
	for <linux-man@vger.kernel.org>; Mon, 22 Sep 2025 00:01:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=columbia.edu; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=pps01; bh=hEfztsm2PSnBIL+
	GS0X0ZcDTGW6TZi4fLcvpRgRgm60=; b=oxYWnFFO8sPcd7loOy6u2RAvuvY4QsH
	r+RMcwUBTnJ0mKjmYf+kKNSuc9AB7yvPi7WcK0Y8O+crkyt1T/+ap1P4fNUhC07S
	S3c4J1aBnEf+UTC+v7UAFA2GF01o9GiVfs4K3kNDpv/B0aPUoV7BE+qRLVOHsOxd
	yzTpIfoHeZfoZ2PwFS6H6YkA9y1PiFr8+PZC+htwnSb2nLUGWocdVrw0JsNtzSb+
	6EojOjYX/sH0mProINQ38Ob38DxQ4KPzpTXvFIXx80b6NUebFgqRl9ZbJJ+Eevrb
	2srzCpf4WzjA/uwjxpLg1srSeQAOB7ey6uVTbo9dT4698NuBJzH6Vww==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-00364e01.pphosted.com (PPS) with ESMTPS id 49a9bbnfye-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-man@vger.kernel.org>; Mon, 22 Sep 2025 00:01:00 -0400 (EDT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-79538b281cdso61076886d6.0
        for <linux-man@vger.kernel.org>; Sun, 21 Sep 2025 21:01:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758513659; x=1759118459;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hEfztsm2PSnBIL+GS0X0ZcDTGW6TZi4fLcvpRgRgm60=;
        b=cSQylmyEyHRsmnBUt4LggeTcVTW/jN1C3pSWWGBxgBTWixBbevjhcoZSZYw5Ar6eXm
         qYfX+IgwK83Ytu87LKl7nvaf2XjoUfX6q8ahBfOkHNqiGR8eVj1YQwlRdHCjzKha4mGY
         yLaKaMGWDybJEnEEmry7+vQIARL9EPPzlzEY0nX/+ICWEA+frazfFvPHUEXCwhKW8TDb
         BZkRNtaBKRD9+G4smetJEQLpU/n872iqFbNG4U0dvCrAEXEwkjJngw7/CBgFNbh9v/T/
         tXBPNR30lzIH/ci9mLxG20w0WGL/WljiYj2o0OGoKSw/EaDX0EGOc+GaOoXktcQsCTbr
         z7kw==
X-Gm-Message-State: AOJu0YyYc74ynIeJQ5S8x0xHgYzDr8G4YkrLMiLaRX5y0Crmyhcqpg2p
	Xx9eEtDfNrk7efso8iHHT//AhhUsl/yKMY2bIgYF7wSmpOYDGaPZZ3tWPTyZR5OejEyDAaDp1/o
	cETpqCLX4VlwEQiXGtE4GbOpAsTWJizJMZN8/VWbeCojWb2ozCxiJxsDVqA==
X-Gm-Gg: ASbGncsd/QXKaiMqZiZiKo01RzbGAqyvCvSg2u5VzNXyktOF+7ZN2O1ZDwAad6dq9JE
	Dio9ALz3cSPrBLohwfQxFCCsH2NR+6eHj7bRoa7FEaU6V/+6sLPEmxLgQJornigXN6W7GCnabZr
	PLWf5UEGzpPKN/CT5e+3+vYyDipgCzLF4oLf4ud+NYtG8sLK+U2VtLXCL3wBizaHc8yDGQS4+KN
	Oc/ctPOfiG8SKAk1cTNQ/hxDnHNCCaIYc7vZQhWPapVTraBxFgAQ8zFBnctSBPNmJdlbGmW5vnb
	tJfIG6gU0RRnNOUXxEtnTI5FEB88NT92R5uVuYzbIcQ+J7K5S7K/GgJ2RJ7G4YCPk3qqTuofuw=
	=
X-Received: by 2002:ad4:5bef:0:b0:788:c040:be2c with SMTP id 6a1803df08f44-798bb857c78mr111251956d6.9.1758513658881;
        Sun, 21 Sep 2025 21:00:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IExoC60cfbpYT5wxvxIRKV7Q74rm7yIUfCsJhpf7ilTxwGQy5QdL1CedPYGJ5R2nqk65VoWHQ==
X-Received: by 2002:ad4:5bef:0:b0:788:c040:be2c with SMTP id 6a1803df08f44-798bb857c78mr111251796d6.9.1758513658494;
        Sun, 21 Sep 2025 21:00:58 -0700 (PDT)
Received: from rivalak.cs.columbia.edu (kele.cs.columbia.edu. [128.59.19.81])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-793469322f1sm67218036d6.20.2025.09.21.21.00.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Sep 2025 21:00:58 -0700 (PDT)
From: Kele Huang <kele@cs.columbia.edu>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org, Kele Huang <kele@cs.columbia.edu>
Subject: [PATCH 2/6] man/man2/setns.2: grfix
Date: Sun, 21 Sep 2025 23:59:30 -0400
Message-ID: <20250922035934.446271-3-kele@cs.columbia.edu>
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
X-Authority-Analysis: v=2.4 cv=K6siHzWI c=1 sm=1 tr=0 ts=68d0c9fc cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=3s50gvPmqPWyIM6FhyrXAw==:17
 a=yJojWOMRYYMA:10 a=SRy8GWN3eUmfKNcPM8MA:9 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: IixyNXDX1lDGUA9wbp1SXOwzcPJDCsqS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIxMDAyOSBTYWx0ZWRfX+6Mgk1YdaxDq
 XaL8l2cD9No5D7v6ZZEB4oCtiPdASr5S7S3AefB9jy4GNZKrDxuDpdXhVi8YWJ9aRhAFBlRz4ee
 V4GIO26u+5NmCEw/DZyb7wgc9qgjE92/LYBUoAIcOB28AX0fXTkFcmonnh99JN0RgM5UJO/OfvQ
 H8qgvkSRZMkKuXVzijkJfbgwBaPwcTvjqlAzUd8rDue5wF0d2xqppr30xsDqjkwNvcYwcD0BEz8
 7t/D2nuQ2d39fhMyLZKOOqpkyqN5RxDeKHkA2owmSUoUSKUOkSae++Dp63vKXX3wQzICMxkODXE
 CbW+bm0MljQ+/Eh6280sqWwQlxbrVu8mjEYye04YB3rKdKc2T82od3SPt1mzBnLSGJl40WKZsS4
 Xzl1hBSS
X-Proofpoint-GUID: IixyNXDX1lDGUA9wbp1SXOwzcPJDCsqS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-21_10,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=10 suspectscore=0 adultscore=0
 spamscore=0 impostorscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509210029

Signed-off-by: Kele Huang <kele@cs.columbia.edu>
---
 man/man2/setns.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/setns.2 b/man/man2/setns.2
index 299dc57b1..ea6a9c054 100644
--- a/man/man2/setns.2
+++ b/man/man2/setns.2
@@ -271,7 +271,7 @@ refers to a namespace whose type does not match that specified in
 .IR nstype .
 .TP
 .B EINVAL
-There is problem with reassociating
+There is a problem with reassociating
 the thread with the specified namespace.
 .TP
 .\" See kernel/pid_namespace.c::pidns_install() [kernel 3.18 sources]
-- 
2.51.0


