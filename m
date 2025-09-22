Return-Path: <linux-man+bounces-3939-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 66FCFB8EE69
	for <lists+linux-man@lfdr.de>; Mon, 22 Sep 2025 06:01:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 60280189D311
	for <lists+linux-man@lfdr.de>; Mon, 22 Sep 2025 04:01:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4623A2D94A2;
	Mon, 22 Sep 2025 04:01:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=columbia.edu header.i=@columbia.edu header.b="P67X6atu"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0a-00364e01.pphosted.com (mx0a-00364e01.pphosted.com [148.163.135.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E5B0C148
	for <linux-man@vger.kernel.org>; Mon, 22 Sep 2025 04:01:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758513669; cv=none; b=Q9NCP+47oCZwHXrZtK92DJsP0yMDnJTPA5jlXiTCr+Pkwj8DtfH8PyFebOdZIwIRWNZJ0Hi8Oli/kfd08Rp8wYcNHfUUPZ7nEiXNdHlaERx4nxnCQOfS66SJrDuQ9mMk0sTgaDiBxny7obTog9mGHl4o0l4dDFPNjtvg79Hz/jI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758513669; c=relaxed/simple;
	bh=rGOMzxk1Xo8NFAooTt3dx38H6f6R+xz/UGDrxPy8Yb8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=I6dJdky58HOKMgBABcJaoRm++R9PlGcAe9JdCNRG1ASuoCxwAOoc1IkONmYZjhAeo2jhuIgYenCfthprDlHy8+KFj27zQ5OX66rT2dklZSyFoP506lsU7lQwcp4d/kQG7zp8+T+r4Ot9ywAo7tALjtEULH1XHvlYkIozc1FIlXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.columbia.edu; spf=pass smtp.mailfrom=columbia.edu; dkim=pass (2048-bit key) header.d=columbia.edu header.i=@columbia.edu header.b=P67X6atu; arc=none smtp.client-ip=148.163.135.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.columbia.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=columbia.edu
Received: from pps.filterd (m0167070.ppops.net [127.0.0.1])
	by mx0a-00364e01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M1MUBH008929
	for <linux-man@vger.kernel.org>; Mon, 22 Sep 2025 00:01:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=columbia.edu; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=pps01; bh=l5zJeuwYFzZ3eAT
	RUS72aNOeEteT7TMZYT+C0m0tGJ4=; b=P67X6atudKBSPXeNT+jbgIGtzUN1kiZ
	DlLTdDPCLy3LZIIp97935g8pSXZ2FIvRF8NkcAZdfxBz1ioIJivlXsz5ejiGTZ7I
	xkvfbF3g51PNJhAH5ENMST+5auI1/+gEngEX8xZPlalu686dqz+gJzxUeP/eXz+w
	N5csPMW/vQB0BhckF+I9Wa0+pI+9lqGMBTrXTl7pULTevywhzKBMpfABXLRA9L/C
	tIx2pBqmDTL5LFH1tjjEJPULneGbbfgS2NOTq2ZuT6KfCY2zG65AQYZtRQdrul7m
	DMo7FcLFnUh7GnQZU+8McoQR7Nw8BIFyc8cob0gzZ43VCK/SSIpgjLg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-00364e01.pphosted.com (PPS) with ESMTPS id 49a9d5ngj4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-man@vger.kernel.org>; Mon, 22 Sep 2025 00:01:06 -0400 (EDT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b7ad72bc9fso87976071cf.0
        for <linux-man@vger.kernel.org>; Sun, 21 Sep 2025 21:01:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758513665; x=1759118465;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l5zJeuwYFzZ3eATRUS72aNOeEteT7TMZYT+C0m0tGJ4=;
        b=nIB9cVJbQW9GmmPKCxto3K52Ezrmu7pBhJ+wt5cyTTar9Ps+6JKcRimqMnNBBrmzIs
         MEL0kbIBPj65Z45LUe7M5xDmThsbuz+bo+dZLp6OMkC7niLrRfTqpRgQ0OcCtkUAFcSG
         A2R27LIIGYilCCI90tRlUGJxcYdlQ+vHpf7Dpaf6uhmg1rJLtOOE8StMX6/slSY7D+xf
         fAfI7T3S3xhFPjkvFtAmhTrVeYm3g1vu5pZIgB42k0IrgzoiZow6vM/wkNHSo3/5dD62
         3uwu0QDA9m7R2V+HiuWWsWuGwXK+pRfJSC4xCyg75Yc8jvPn6Z5ssMvL9bBWz9F564au
         +MQQ==
X-Gm-Message-State: AOJu0YzqTpAYeXPKdyfZmoR2kyrTmao0HaGQf8l4y2lPP/1vjvWFQR0Q
	HSJl6PL9NCG4vY+GIMlLetfQrviruuAxHb9ff88dXKW65NbobJSf5Ld4/amia0SlIUV+rEI/SR+
	plCevZV41boMN0QQi950fSDUq1kdzcsPgF6COETTPKlI7efL/c2grZbxlJyh2wipxwg==
X-Gm-Gg: ASbGncvmnd/2+HVcdmAxpjKP9E+gAY7gLiwr4xgmIF76WT4AEOhPMMMvx02TuDc4Uwm
	4O2cZ4bY3aJsr+lvhYjamuo7ybpiXsy4f9JbkxS/mLQbkBag1xWEKITiH/N3f0cnGNjGS5tD4dn
	VhjhSUtDPBRp4wSzIl7JWbWUWP51na4YIh7nNagYA6KNGnCYcfb6gg4wopF/Uh64ZDtVR+QtjCG
	Gm7aoBwT5XffA1XsPdLoQM2hrjDxDuq2BOg2prSiQ/OiHFF32bU2476gS6Du4Z2xnzK/blhNRm+
	TpNPzjBiWt9rqIf3FKDHw5BGGeR2NP8P0moIbULEEjmaisr7EB/5Nr6HNgHu1+gmrWrqKbQ3+g=
	=
X-Received: by 2002:a05:6214:29ec:b0:794:5578:6a with SMTP id 6a1803df08f44-7991164d54emr139882806d6.10.1758513665174;
        Sun, 21 Sep 2025 21:01:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF+OEKryrEfbpzTXOt2uAc8Hdy635pUGI3nQVxry6AftMz+2qvZwjCUu6/6ql2e8wJi/zgmLw==
X-Received: by 2002:a05:6214:29ec:b0:794:5578:6a with SMTP id 6a1803df08f44-7991164d54emr139882506d6.10.1758513664698;
        Sun, 21 Sep 2025 21:01:04 -0700 (PDT)
Received: from rivalak.cs.columbia.edu (kele.cs.columbia.edu. [128.59.19.81])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-793469322f1sm67218036d6.20.2025.09.21.21.01.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Sep 2025 21:01:04 -0700 (PDT)
From: Kele Huang <kele@cs.columbia.edu>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org, Kele Huang <kele@cs.columbia.edu>
Subject: [PATCH 5/6] man/man2/msgop.2: grfix
Date: Sun, 21 Sep 2025 23:59:33 -0400
Message-ID: <20250922035934.446271-6-kele@cs.columbia.edu>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIxMDAzMSBTYWx0ZWRfXy9FijMLVE3dZ
 V829sjv+jg36uHiYz/L9kDuoc78YJRrlrgqCm6dwPMLd2CcM2M7EEiK69bXzl6RMXZY7eJoUC/0
 1bXU9iYjdylUxXx6DqxadCv1rqF0HO1aPyR3Mt5HND5BCDUUbPTgVrdlYoThGv1Z7dxAjMm5qSA
 qhhZuXCZ906QDqZemYn21J7GpQVpHnkMjvekFp8nE+jYmj2pgpGwI0rgZNQX5gKXR7/7T9hw6HP
 C3LZkVdFzXYDTvRL/LvZLx3+cwgQcVjJLu0pXeWzwK4vUToRk6XhSqzsT87XyP9c6LLR3uAN99p
 RYaurzaj4hNGMjh1e9znSua3HP6C7zhgdA00dsbN9r9H6u+Cb6TBCIsHG9tbZxX/R6b8KQ8goCD
 RwolmsSc
X-Proofpoint-GUID: ichmGqRlaexGGiStGbe25BHEo_5dVcqw
X-Authority-Analysis: v=2.4 cv=SJtCVPvH c=1 sm=1 tr=0 ts=68d0ca02 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=3s50gvPmqPWyIM6FhyrXAw==:17
 a=yJojWOMRYYMA:10 a=iANV43zEvuVOkMeiVMgA:9 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: ichmGqRlaexGGiStGbe25BHEo_5dVcqw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-21_10,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 spamscore=0 impostorscore=0 bulkscore=10
 clxscore=1015 priorityscore=1501 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509210031

Signed-off-by: Kele Huang <kele@cs.columbia.edu>
---
 man/man2/msgop.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/msgop.2 b/man/man2/msgop.2
index 5d21df067..5d34b1785 100644
--- a/man/man2/msgop.2
+++ b/man/man2/msgop.2
@@ -426,7 +426,7 @@ and
 .B MSG_COPY
 were specified in
 .I msgflg
-and the queue contains less than
+and the queue contains fewer than
 .I msgtyp
 messages.
 .TP
-- 
2.51.0


