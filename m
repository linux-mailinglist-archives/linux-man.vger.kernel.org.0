Return-Path: <linux-man+bounces-3935-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ABB0B8EE5D
	for <lists+linux-man@lfdr.de>; Mon, 22 Sep 2025 06:00:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 75919188FF2F
	for <lists+linux-man@lfdr.de>; Mon, 22 Sep 2025 04:00:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD9F62ECD39;
	Mon, 22 Sep 2025 03:59:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=columbia.edu header.i=@columbia.edu header.b="ujinEqp4"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0b-00364e01.pphosted.com (mx0b-00364e01.pphosted.com [148.163.139.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76553C13B
	for <linux-man@vger.kernel.org>; Mon, 22 Sep 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.139.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758513595; cv=none; b=MQAO1uzblYZaKxcTNgD71xGDAR4Hs+UBpaN0hIOPEgZ7crQU2XecGAAS3g9CLqoEr2JD7iwtrDYZt1QL2b519VmUjD2bnt2DqihcCGcOcjZZ0RnZtRsskOppRIpvazLxzxa06eQ8fCD48sC6UyASfsj0IDVTcUabQdnaKWsRnec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758513595; c=relaxed/simple;
	bh=JiQj6u/Q4kCaTTwZL2ql1KENs99txneonj1GS4GlPKQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qe7qlNp1nvbdCoc3UxQjCncRvp72WDLsE/XGfZ8PsnO7eZgIGLl1A3qwlxgiqI2KALK+48tXsHmiIbIKIM5n/9c3GC0TAc132YrnfEvjw7yiFK9Co98Gtvo1MIk2dQ6HlVOUK4w9sz33N3l72GvHPl1jvgLMPZDMozsgjo08jTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.columbia.edu; spf=pass smtp.mailfrom=columbia.edu; dkim=pass (2048-bit key) header.d=columbia.edu header.i=@columbia.edu header.b=ujinEqp4; arc=none smtp.client-ip=148.163.139.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.columbia.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=columbia.edu
Received: from pps.filterd (m0167076.ppops.net [127.0.0.1])
	by mx0b-00364e01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M1O7FS003040
	for <linux-man@vger.kernel.org>; Sun, 21 Sep 2025 23:59:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=columbia.edu; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=pps01; bh=0PqrLLogxuWaCEGQhBTiRph2LFP6fESNmO9M0M/
	REmU=; b=ujinEqp4jS1ZJQyNGkC1GlBmV+cFuNc/oouifxhKFg/+dyU0pcJUy6T
	U3lrhKSOzPy2twKpZo8Aqn9Q16evs/f69bws965/82//Uxna9h2SWq6mgFK/fjhU
	p+O9L/x1TkZLF0n4AQdxe4s0IZQV4aFckOaXf07vBnDWUpCVjvIq9E8jSFnlS7q5
	15X2q0LvomzTuLkVr+NtVYSur5Nd9sCssrbHAe1yH2utKbsu5yXdh0ShZbyWCy2r
	HwNF8h0vQS8nWrLvAcDsrkxXAwoPdu3NO5nIIkDUWjeAeKMGlRRxRKwmgFbYZ6rf
	8WS1iDb+79vrRanx94YyxBJNY6corBA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0b-00364e01.pphosted.com (PPS) with ESMTPS id 49a9qxng8n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-man@vger.kernel.org>; Sun, 21 Sep 2025 23:59:52 -0400 (EDT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-78de70c9145so66177536d6.2
        for <linux-man@vger.kernel.org>; Sun, 21 Sep 2025 20:59:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758513591; x=1759118391;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0PqrLLogxuWaCEGQhBTiRph2LFP6fESNmO9M0M/REmU=;
        b=i0Kr/342POFd9vco9f2AOV26+aBKFw4Wvp9hr2f42HGPM9yA7vQNGkWFb3XJDngjUH
         ds+WxTNYNVVdgqIqwq8HHs7GrPXWnySHAHajEu0EmHGT2gFTNw1Blygc09d10Fr60XUW
         p33JIFh45BFDT7qeByGeRSl29xBAetuqCENtKILaMjQthnhpmneqcE0MrFr9FTwfGFVL
         ED/wxfzZq8IpqiTfEJJ4b0gfGrpXdexLpYYKF0bNIjhfwFynDqz7A5BkAEQqs9o4sAyG
         ZgqRzyJcW9WcP0rUeqkoczRuNNXF9FYhaUI3zI/XofNNsd+1puPj/DnGQl2oQnRJCw0z
         YA1w==
X-Gm-Message-State: AOJu0YxQR2lxknAMPCMpzdFnGltGn3JIcYKsNOQ6llOV2yRdcyieGivJ
	9tUQ5T5nM9QA8FI2knQLxFlcLOvXD/NEw93k7GB8kHS0DDlyroVxtUpZWLaeqasYw5iO53mdnWs
	Tqv0l5KtneIptdTrMKLhiWAMDdwAgu9TwihvCbYnZyMjUEK+8TyVC+DxTUZPkWVZ9Jg==
X-Gm-Gg: ASbGnculCeVE8CsVfkvWfQaH2fWXcoQWNQc/myPIrwoFJhPgD6zz/FMbK5/UqTvbXvp
	sHN6lUZ4u8JAGEj8/9DGCO1rMj8ZeazbNzPng04TUbnZfKdw+sNlfPQkktTjH1/tMgExghKGzex
	ttLuOHA8Gxks3RQbxXjBNcyAU+3JQmTE7OJIz9G+xUgdY5iDA5M28WDz7JpiKtKkNziSCoOywFB
	ZA9G8FfGg7LhZlZLFZBfBJJuG9tcuZayJrRxR9W2cSokKow1z7O+h/QMQKIRaTBCvGTwDLjCtyR
	Ed/gZTCxPk2lqB5KEkI6Cy5T5z2m/LAFnztMEWHP77OrlN90Mi2pmc2wTrcdhRbESOfNdsGUFg=
	=
X-Received: by 2002:a05:6214:5c04:b0:7d0:29c8:23e2 with SMTP id 6a1803df08f44-7d029c82545mr20812346d6.35.1758513591364;
        Sun, 21 Sep 2025 20:59:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHBv8lbl0sFxknTbzs+4ocLMoVENjHI4GUTsdMcNbDHGHZYueIZf/gxJaUupBrH6kFUFKlkiw==
X-Received: by 2002:a05:6214:5c04:b0:7d0:29c8:23e2 with SMTP id 6a1803df08f44-7d029c82545mr20812246d6.35.1758513591027;
        Sun, 21 Sep 2025 20:59:51 -0700 (PDT)
Received: from rivalak.cs.columbia.edu (kele.cs.columbia.edu. [128.59.19.81])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-793469322f1sm67218036d6.20.2025.09.21.20.59.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Sep 2025 20:59:50 -0700 (PDT)
From: Kele Huang <kele@cs.columbia.edu>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org, Kele Huang <kele@cs.columbia.edu>
Subject: [PATCH 0/6] This is a set of patches to fix grammar issues
Date: Sun, 21 Sep 2025 23:59:28 -0400
Message-ID: <20250922035934.446271-1-kele@cs.columbia.edu>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=RL6zH5i+ c=1 sm=1 tr=0 ts=68d0c9b8 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=3s50gvPmqPWyIM6FhyrXAw==:17
 a=861-jTDryjZ0CTSc:21 a=yJojWOMRYYMA:10 a=xp9X7BZeC5JDAYvzg6QA:9
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: 76SIQEzy_RMCuyNr13F9a7YSUADBLmpg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIxMDAzMyBTYWx0ZWRfX2mxDDpPd7zko
 ZwWVSGr63KTcrXfkFiIRWube38q6FGUMU02+ETcwk3/TR71YY7bF3gpaaK8vOO7lww0Rl7x2aAl
 yL2ms4DMETlUZcUua75uT6bcs92GRW9/wIeMAFIb+5/BLDBlXP8fFGWeOP9gmJqkiXUo43+ofW3
 IkZKA+8TpJc/hNvC39aSTe3n5dqoQx+x3Z1IDuM1rWdubZXtGaMbqexH3HAxGu+MCAOtoFLpmj7
 seP/5uXI2NyrH/vawgSDxSnsKru7H+PgKT7JUyLaO6lb/VZ79Zw/J2jEJD6mjBSIh9KCDDqEFZX
 BEP9PZ/ZwRk5f4hXIpJ/Nj5RSvDWPtJ5CElx65m45KpKYuEEHqhCCtwX0W/f8m3WZ0FpzJf7qpA
 YJR6DXkR
X-Proofpoint-ORIG-GUID: 76SIQEzy_RMCuyNr13F9a7YSUADBLmpg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-21_10,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 impostorscore=0 phishscore=0 clxscore=1011
 priorityscore=1501 bulkscore=10 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509210033

- Patch 1: Fix grammar in man/man2/getitimer.2
- Patch 2: Fix grammar in man/man2/setns.2
- Patch 3: Fix grammar in man/man2/unshare.2
- Patch 4: Fix grammar in man/man2/rt_sigqueueinfo.2
- Patch 5: Fix grammar in man/man2/msgop.2
- Patch 6: Fix grammar in man/man2/fanotify_mark.2

*** BLURB HERE ***

Kele Huang (6):
  man/man2/getitimer.2: grfix
  man/man2/setns.2: grfix
  man/man2/unshare.2: grfix
  man/man2/rt_sigqueueinfo.2: grfix
  man/man2/msgop.2: grfix
  man/man2/fanotify_mark.2: grfix

 man/man2/fanotify_mark.2   | 14 +++++++-------
 man/man2/getitimer.2       |  2 +-
 man/man2/msgop.2           |  2 +-
 man/man2/rt_sigqueueinfo.2 |  2 +-
 man/man2/setns.2           |  2 +-
 man/man2/unshare.2         |  2 +-
 6 files changed, 12 insertions(+), 12 deletions(-)

-- 
2.51.0


