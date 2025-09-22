Return-Path: <linux-man+bounces-3940-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C69B8EE6C
	for <lists+linux-man@lfdr.de>; Mon, 22 Sep 2025 06:01:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9AD7317D2A7
	for <lists+linux-man@lfdr.de>; Mon, 22 Sep 2025 04:01:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4E6D19A288;
	Mon, 22 Sep 2025 04:01:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=columbia.edu header.i=@columbia.edu header.b="D+Rdl3GC"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0b-00364e01.pphosted.com (mx0b-00364e01.pphosted.com [148.163.139.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321E41D514B
	for <linux-man@vger.kernel.org>; Mon, 22 Sep 2025 04:01:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.139.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758513669; cv=none; b=IAqSSGb3obBnZsR4KIWP39ymE9ygU7LBqnnm/1tjIr4AKDfIIBXN4SXfz/odcsgd5Cxnoj24+vxpVKhaIr6Zi+LKy28rxJHeb4TsJRJWCtXZk5a2xZumlvcItzFjwXnT1wZ6EL2SLCnjBRht8sCNl0qJ3LBR6JLqmK65dTSe7gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758513669; c=relaxed/simple;
	bh=JiQj6u/Q4kCaTTwZL2ql1KENs99txneonj1GS4GlPKQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=aunqc5ztfx9LA9TNk5CMIbKa+m9Xx8WU8MII33tHUtcVG2jE1w6dQy09WQiKL5bxdmhp6tZWgE9iDTYY0z1IH+NgDgPF/CkmDIealex6NntBaEA48os9J02VG1u4rGGqJPRkQwnD1HB4Npqrxhh9uLy0kG3ou6EQp95fNcQzYCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.columbia.edu; spf=pass smtp.mailfrom=columbia.edu; dkim=pass (2048-bit key) header.d=columbia.edu header.i=@columbia.edu header.b=D+Rdl3GC; arc=none smtp.client-ip=148.163.139.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.columbia.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=columbia.edu
Received: from pps.filterd (m0167073.ppops.net [127.0.0.1])
	by mx0b-00364e01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M1RYOi001026
	for <linux-man@vger.kernel.org>; Sun, 21 Sep 2025 23:58:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=columbia.edu; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=pps01; bh=0PqrLLogxuWaCEGQhBTiRph2LFP6fESNmO9M0M/
	REmU=; b=D+Rdl3GCccDMCmbVc58qcWGFR6eDEpMc1L29wsZMcRWfDPovQiLyjIB
	5Xd+1WaM+yphO/fs5xccOAJnRP1Vxxy21YZ+dh+s51ytDN5Z29n/9utVeTkAanfa
	bbmmAeL5+b0Z9QAkpYN8mEp4TLceZhPLlFzUg++o3ac59KPIw0GvzPeL0vI3Va04
	K0bDSVAkozEdVgoVnVYUowiz0E7nljy8gNjPi6OmfPLT772o+GcwvH3t1k/ZIQhO
	moRz1SXjkRqcROtkiVsVGQDZT6S7G0H/HgoR7NvuCpqw/ObZr5tQDOYQdSCiy52v
	O0vfzncSl7EWWHbwP2vWM440QfyyA6w==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0b-00364e01.pphosted.com (PPS) with ESMTPS id 49a9mmwfe8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-man@vger.kernel.org>; Sun, 21 Sep 2025 23:58:50 -0400 (EDT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b7ad72bc9dso141190761cf.3
        for <linux-man@vger.kernel.org>; Sun, 21 Sep 2025 20:58:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758513530; x=1759118330;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0PqrLLogxuWaCEGQhBTiRph2LFP6fESNmO9M0M/REmU=;
        b=fYGAZtRlevt8WxFPFzQ9o+HFBWm4SdGNX23Yxn5pOmWNshN9ODb2CHRi+WATS7WO0g
         q3eFtwtHidyU86imCCsa610tnNwFx074gplbptssFlD6r/LqeVNYXVEX88aeTlnF1JNu
         8IDV/G1GBW570CYlifpO5DSYFQXJ3Q6aAFEZ/aEi+JsiGMem45d4SvV97hG1hcMJv0yB
         Spq/aGciq3pyph2K96CIRQ2iuQFJp2T8i4z+/Pcar9jRtmhBqHPPh7xkADQrOyzf3DYs
         0US6HMropyzdSMLOON7NBI6IwWMnr3VhAQz/qM4xsTvQRp9UrkLckRPFxLZdCUIyLiB9
         3vKg==
X-Gm-Message-State: AOJu0YwQ491n+4nEgRjZEuKHsOIlhoTe6SdcdI4uBJc6DVjrEINX3Gub
	5ppx8AixJD3PncOgpuxkg3+irDtpugrJhUD/pBAlxhVqi3cLvEIs38kraCtL3PdpfER0FcEpBBL
	LtdHYm9ZKgmggcatg5A1DxndUUpBgP6olyjVSAXxZHTbohBwdf2QQwVkF1g==
X-Gm-Gg: ASbGncuu28Y9IOrj/w9/qBY1XG+RqBMKbnD5xyWEjXbgLgb/rOXryZPatl972kSdYbS
	56EQvE0wGsTk7tCdgtIjPzgExIhnSit3TFNC667lMSSMz3M76Ne/o9YzySVgIdnFg+PCdetS0By
	hquYBCh/lmYQhLUDdDmcoYD4URj777adaJktRzIfvVEhagNOf2U2OEl6tkFee/7Rno1CXqwg5Mn
	alJJxxop3LtNa29LFV/S5NK+TNRe5WEvCYC1pBRFYDJPQn1rNFQeD+buGQZjxZJjo4AJUhm/5Mm
	BPvNtgehPeJMO1lR2ohPDY+3feoliwZeil172PpshgpYfXoHpcXq9eom97BnFuUDhldX/2Na3g=
	=
X-Received: by 2002:a05:622a:4817:b0:4cb:102c:56b2 with SMTP id d75a77b69052e-4cb102c5b19mr16433941cf.0.1758513530152;
        Sun, 21 Sep 2025 20:58:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHJ1X4J2xpl4s/i7tduQg+oScX9WXXm62qNkpB0rG3E2FcZUA8igehgOAQ6qCROALiqmAhoMQ==
X-Received: by 2002:a05:622a:4817:b0:4cb:102c:56b2 with SMTP id d75a77b69052e-4cb102c5b19mr16433901cf.0.1758513529787;
        Sun, 21 Sep 2025 20:58:49 -0700 (PDT)
Received: from rivalak.cs.columbia.edu (kele.cs.columbia.edu. [128.59.19.81])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4bdaa787eb7sm63807121cf.48.2025.09.21.20.58.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Sep 2025 20:58:49 -0700 (PDT)
From: Kele Huang <kele@cs.columbia.edu>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org, Kele Huang <kele@cs.columbia.edu>
Subject: [PATCH 0/6] This is a set of patches to fix grammar issues
Date: Sun, 21 Sep 2025 23:55:54 -0400
Message-ID: <20250922035600.445802-1-kele@cs.columbia.edu>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: NSFlM7IEQWsJYLcr1chBuGXucRVBJfvQ
X-Proofpoint-GUID: NSFlM7IEQWsJYLcr1chBuGXucRVBJfvQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIxMDAzMyBTYWx0ZWRfXyWPFmq+g9DWJ
 J1Vco3oAsBd0/VFv2hl9A5R2Up38TXkDqpKT7mS3pi14fxka5INQoBJ3G2l1V/s23D/uhaVuuvt
 QQCVJ67uKMn8/Y6l4uGoQg/383WQgtmQI9F92Ms1nBvOv4oMf2PbG1gB+JNcVkZOaJwmdgM75Ff
 QDgf4qwooll0jJgfT7Zl9TLGiuIJ4bR2WM7Sg/uzPaVmfkM0Iv+g6kM9R5I7VhIOm4xf0XBVArA
 NOSUtx3K65th1GKknNgNh1I2HND4sHRPFFw5BgbrFxiRISk2okKYUgXWmMi5/VeiJ0YOWkHR0bP
 AT31qCJGauYt3zaJrNFj4cpeMOFLJHQ8Fc6FCTIl3aw6GjKjmf+9VMC5vxyEwEKLmL5/BWoAvoN
 sVfnpGwm
X-Authority-Analysis: v=2.4 cv=OPMn3TaB c=1 sm=1 tr=0 ts=68d0c97a cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=3s50gvPmqPWyIM6FhyrXAw==:17
 a=861-jTDryjZ0CTSc:21 a=yJojWOMRYYMA:10 a=xp9X7BZeC5JDAYvzg6QA:9
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-21_10,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=10 spamscore=0 clxscore=1011 impostorscore=0
 malwarescore=0 phishscore=0 priorityscore=1501 adultscore=0
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


