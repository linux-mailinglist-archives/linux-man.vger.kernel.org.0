Return-Path: <linux-man+bounces-3937-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DFAD8B8EE66
	for <lists+linux-man@lfdr.de>; Mon, 22 Sep 2025 06:01:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F0A46189D30D
	for <lists+linux-man@lfdr.de>; Mon, 22 Sep 2025 04:01:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 712A91CAA92;
	Mon, 22 Sep 2025 04:01:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=columbia.edu header.i=@columbia.edu header.b="DdH39Pd0"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0a-00364e01.pphosted.com (mx0a-00364e01.pphosted.com [148.163.135.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCE2BC148
	for <linux-man@vger.kernel.org>; Mon, 22 Sep 2025 04:01:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758513667; cv=none; b=XzfffM1BM9bW5Bp+d8zV7NCTdao/Jf8OjuYcEx1W00y19TH2mUVZ7d3gVASuvFoXl5jGRCdWbYmfRVVy5hBL4G0km6j5riYV21gNsGEX0xkBE1YezcxK2E7MZTD5jmKlORngRWgMoLxnr6Q+icXfWNG8qE8P8aO14M+cNpb+wSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758513667; c=relaxed/simple;
	bh=wIOfbvrXcK/HcLYYW2BpR/5a3t9FC37gvXCZVkPmxro=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RdfJVdKmq3E3JY+69o3oT7zKjbXp3dmAO/PQRVfn2VzECvXLxoJjdl1Oi/TEvtb2xRsnpwbzAii78w6I8J90+mwdhkkNtP1WH6+QwiNm7ozZbQqz5h+wgvE9i0W8s2v6j2m45QxgGMUACJz1Ov9oUgLHx4DuZoy+kux282ALYBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.columbia.edu; spf=pass smtp.mailfrom=columbia.edu; dkim=pass (2048-bit key) header.d=columbia.edu header.i=@columbia.edu header.b=DdH39Pd0; arc=none smtp.client-ip=148.163.135.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.columbia.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=columbia.edu
Received: from pps.filterd (m0167071.ppops.net [127.0.0.1])
	by mx0a-00364e01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M1MuAo015607
	for <linux-man@vger.kernel.org>; Mon, 22 Sep 2025 00:01:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=columbia.edu; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=pps01; bh=wi9SaRsdXNaH2tG
	maZcEKQy4zIAl9qBzEj6X3QxOWRQ=; b=DdH39Pd0R8/RoD0qfA6hiXLH44FSx19
	tbTGe5UCnrOHzUE3TcW1J4aQcEIrJG9c8f16YoftM7synFvan0YKQFI4zrWBqgHE
	Y4xH35LW5G7GS8bCfNkzLmR6yTOTG15+CzonunaeUiMWWWNZ+LtlKrz4clL+/aNO
	80KNxXBsGx4rOhJIFF2JT3A1FXJ78exPiL59vHBVlZl8LmPeCTnIasDU0Sq++rXo
	1pL8zcp2cDSAuqX86uQ+1oZOGQEwfLiSuOMVvvyjQTGRAH3T1n543nGzs71VDk1t
	ES0aiTGdnbcBXdC2URj47ncJd4ONq0XMfR4Mn2JE486BUwWmlnEJ6gQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-00364e01.pphosted.com (PPS) with ESMTPS id 49a956wj9c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-man@vger.kernel.org>; Mon, 22 Sep 2025 00:01:04 -0400 (EDT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-7bb414430c2so20720216d6.0
        for <linux-man@vger.kernel.org>; Sun, 21 Sep 2025 21:01:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758513663; x=1759118463;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wi9SaRsdXNaH2tGmaZcEKQy4zIAl9qBzEj6X3QxOWRQ=;
        b=pfkQBma7+vrHZpSFGaF2FQ6QxJGaJ9jsSaiqLF6oH+Bwcp5qMl0QsKrSyFjZSS8C/J
         R+ZmE8gn68ZxgSjARoqc6HOvw0gKZkrWNEJZawjt3CPhTqXQ2Q8S1TD9893C4MtuGuc9
         tOLTH0geFCKSfklHGWEcfb13KuxzfvSL1cDGh2i9nH0EOptc2l0DputeWq88hzAqU5bM
         Do+A44r05HB6lNc/JI7JSILw444OFqd6UdC2Im19zkgZi96t3UcfzHzM9dMSjs2UnfEi
         iJ0fH6Qu4PkgECN9ejR2bvBVl4vP5h1v/d/yBILhNg9cN1NQlwNhC6bVtv5XRurgg/ee
         3CcA==
X-Gm-Message-State: AOJu0YxFoB3K6kdCFG1AlRXN7MJ/qrLUbJeIiGcZgKZWjyEqV+Hjnmuq
	3dZZRdQtwa/IYPOCg1U0SEMZ7cG/FBPh7QYvlUPEm2nuISJeTb9W8GuWqFN0Pp16l8rtL/68sih
	iz+OnMg7ty+8jmpGPtr3pc9knaFRcTbJB5Bk2jbZPIzZjmhrqdb8QtY3Npw==
X-Gm-Gg: ASbGncs0KAT6uHPf44f9a7pdDJXm1icEjpomRseQOAZwYJFyIB7ZEB/ZoG4aKol9XYy
	4w8oNQA8e6+DG4Vq0iy8X9eskukzgn8eEvfnoE4ZOQkQtz803oCVmbBmpVjG4pcNoGb4wZijSR8
	QEemFozQwEkJ+JsPi5h9hespV6EjIsENuO66NZdumGCG7CNaPedUxVE+fGkr82WSM+ncsiGtHoK
	uftMtXqMUFfRK+x9T1murcmFkW7PUTvyLtnM1P0uONNZM96fJagZ/n3VjlduOsI2QrGAfpqweSn
	fCJlnxfaj+3CfeHZKlfPGQoVSUgikIA2KphZsjTHiIyTU1MnU/GPNprv2QkSM2sUwowIf1cUjQ=
	=
X-Received: by 2002:a05:6214:20a1:b0:775:6a7c:dbd5 with SMTP id 6a1803df08f44-798c72124afmr114262746d6.33.1758513663230;
        Sun, 21 Sep 2025 21:01:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFRgB8e7IBibv2IlOBHv3vEwsSBYwi9fCArhkdhsPLsSFz+3Nm8wvkwoMD+QIDkz5KSz8ifuw==
X-Received: by 2002:a05:6214:20a1:b0:775:6a7c:dbd5 with SMTP id 6a1803df08f44-798c72124afmr114262606d6.33.1758513662945;
        Sun, 21 Sep 2025 21:01:02 -0700 (PDT)
Received: from rivalak.cs.columbia.edu (kele.cs.columbia.edu. [128.59.19.81])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-793469322f1sm67218036d6.20.2025.09.21.21.01.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Sep 2025 21:01:02 -0700 (PDT)
From: Kele Huang <kele@cs.columbia.edu>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org, Kele Huang <kele@cs.columbia.edu>
Subject: [PATCH 4/6] man/man2/rt_sigqueueinfo.2: grfix
Date: Sun, 21 Sep 2025 23:59:32 -0400
Message-ID: <20250922035934.446271-5-kele@cs.columbia.edu>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIxMDAyOCBTYWx0ZWRfX11qAK7rwU/7Y
 AnMxuwR+Fx82po5C0b9qGf0pQ6wjiWGfziQ0ybDTNxu0vAGZGXDkDpiKUS8CSrLswdQhOWrVq0K
 IcUVqOaVnysl7/Tn+JCpOT96d/JS+E0rfTvi3ziFCn55UUaGnisKZa7oQP7+dv3zMY4+LilnSCU
 ysVTAqLrUIQyhFBTGJImwnVA+sg6GPdhhFPeRDzfBijIjupOwNuZr2YDi8OrVZgEV83BEx6BSaQ
 sc0nD4hQG36LAogIVFm+/HAkQA0rnfV5uPY/IpVdBAvOHlIMNHkJsIkkWIszYeQcNc4QubmOq1P
 yi7brRrZlIztoKbPVC0KErXZnly6dmi9D97vcPq46OZEm34II+HS1apUISuWod4F4d4RXQmo18g
 y7cgE/SB
X-Proofpoint-ORIG-GUID: Xi5TdJ4_WlhR7jAU-IIZGyZnxCYdmvXV
X-Authority-Analysis: v=2.4 cv=cIjgskeN c=1 sm=1 tr=0 ts=68d0ca00 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=3s50gvPmqPWyIM6FhyrXAw==:17
 a=yJojWOMRYYMA:10 a=RZtWSt38TsdYJtjMHBsA:9 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: Xi5TdJ4_WlhR7jAU-IIZGyZnxCYdmvXV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-21_10,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 malwarescore=0 bulkscore=10 priorityscore=1501
 impostorscore=0 spamscore=0 adultscore=0 clxscore=1015 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509210028

Signed-off-by: Kele Huang <kele@cs.columbia.edu>
---
 man/man2/rt_sigqueueinfo.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/rt_sigqueueinfo.2 b/man/man2/rt_sigqueueinfo.2
index 1f853d783..286de6ecf 100644
--- a/man/man2/rt_sigqueueinfo.2
+++ b/man/man2/rt_sigqueueinfo.2
@@ -131,7 +131,7 @@ is set to indicate the error.
 .SH ERRORS
 .TP
 .B EAGAIN
-The limit of signals which may be queued has been reached.
+The limit of signals that may be queued has been reached.
 (See
 .BR signal (7)
 for further information.)
-- 
2.51.0


