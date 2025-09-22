Return-Path: <linux-man+bounces-3942-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A2240B8EE6E
	for <lists+linux-man@lfdr.de>; Mon, 22 Sep 2025 06:01:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 54A403A896B
	for <lists+linux-man@lfdr.de>; Mon, 22 Sep 2025 04:01:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27702246BB7;
	Mon, 22 Sep 2025 04:01:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=columbia.edu header.i=@columbia.edu header.b="CsGEaNpH"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0a-00364e01.pphosted.com (mx0a-00364e01.pphosted.com [148.163.135.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 609851D88D0
	for <linux-man@vger.kernel.org>; Mon, 22 Sep 2025 04:01:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758513670; cv=none; b=fs8prxgzzMkOlJybGKJRmVuSTsf1OwgrlCwLhRotRmfb/QvqDrRvvep/jBvfTuWs4Dwz5pUgzANVJSp8kxy1yHwvNefNy4RwL1X3xRO9dW9sSiQ8r2X48DSsnDzU0wGVe/YwmLQ7ND6hGQJknRrALumc6WRU5Z9NIFeeWUVrpTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758513670; c=relaxed/simple;
	bh=i5A35fWUnpk/WiuICrXeJpE+Q52nzBSPnYLXaiPWi10=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BnINcAbSaeEmOspaV98o49pkAmHp4cbcaG3trfaxqsdjYKX6SW4fNP1AB8z/Nuqun2voqGhrenP1dHRFv2eLvJ19JdK+dDo9HhoKgLicPOpU1fv7vTUWzpRxX5aLChZ0axP247WQv8sqM8Qva83MHZ2slApFQ6DQ3abqN3dez4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.columbia.edu; spf=pass smtp.mailfrom=columbia.edu; dkim=pass (2048-bit key) header.d=columbia.edu header.i=@columbia.edu header.b=CsGEaNpH; arc=none smtp.client-ip=148.163.135.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.columbia.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=columbia.edu
Received: from pps.filterd (m0167070.ppops.net [127.0.0.1])
	by mx0a-00364e01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M1MSK1008752
	for <linux-man@vger.kernel.org>; Mon, 22 Sep 2025 00:01:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=columbia.edu; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=pps01; bh=7eaVpfR32ne4OnK
	BmmLGoFu+EyCBGkFBR6e3kEVvCB4=; b=CsGEaNpH15rjpzXom5r5ypEj0Sh7RLi
	xWu+Mtl1C8A4HWiWvxF3PDKaebjxmh2QzrlL0GhtASO8ITG3pqGGKwpZoaqw0nxF
	9h8WYcTZbm6bUu3BKKTk2lR7oBLxwpXSEaY6zSOcsUfjp0qZRJ3JsWiFKmyAX2wT
	U4/7F+leQm/H1Q9mN5XsYF+46ZL8v+hnlzcHMqhT/Oz3dneIQ6f/A3A6SJbSglof
	+1HSjjgvxcg8yFjsWA4EaGM5Rl1HBTioIrL94dkkT3fNaKWvkZVbdzBbcRpHB04X
	I4WSW+hLbnyk61FKgnbM5ak5XD7tLIHhUY08ezRaCXDu1KTbMRUYNbQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-00364e01.pphosted.com (PPS) with ESMTPS id 49a9d5ngja-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-man@vger.kernel.org>; Mon, 22 Sep 2025 00:01:08 -0400 (EDT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-82e5940eef8so906910385a.1
        for <linux-man@vger.kernel.org>; Sun, 21 Sep 2025 21:01:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758513667; x=1759118467;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7eaVpfR32ne4OnKBmmLGoFu+EyCBGkFBR6e3kEVvCB4=;
        b=L24+7bDY3V2MWXNI7hecCh4ms3JcnQG5Q4XIoMXkkgKQ2AgCn/GzNTLnZffkGjkYsT
         PTDzjgVE6KIuzY+T6S3b3ha30xZU4DsL/UdkJStx6OCE00V1XAfXnfY1Ikrhgs2SjJ+v
         UOgUsrI+MxinpifWmoVbTitOhPKzbsBjjgseYg0muSRLM28ZVTrLFiVSCIa9L/kbuf4K
         +L7C1nSmriD92sxh+3G/qC0bhf/lAo6wClktYoNpNmvhBDBg+tROLSZ6+HeulrcuGxkM
         rjQebzIPgRMBQ7mdVdmOq7z1DW5lUDvH/Bp6opLQA2sW2IpXCqzICyarwQzILIXd5dIT
         S6lA==
X-Gm-Message-State: AOJu0Yz2oTjTuQV3lp2j1GYjucvFqtAI6WxrDHHDnhsnPlZbKuTqmyuJ
	pz5QGd+n+fZ7ovixZ3MuD6HZqoYz91CQm1yEXwMyqZH5MCHkYuuV1MtW/XbCHxhuOAV0JtfA3cR
	E+BqJpEuZ/HvX9w9+C5pu4dYf09vj+JdQWh92JmuSpupQDa36YGF/zfQSJQ==
X-Gm-Gg: ASbGnctRY7QqdX7MvH84dW6h8wZ25HtnOq6vjnYRciH2gzw9WWlJUflMt95IfEjirpU
	DbHikKt3zgOG4RKG5dwQdm6916yAgKN/3d3WXOvQMwQzm5vbmZJmUiblStBDcRsAxlXT6XvxwOb
	A2qO0k52EGD7N97lWsm616O+mOcQe1sHpyyoaY0MZDfULhb1od0/oj7pa39ElkQBN9qASXfXJ3i
	9gKnYBuQSooWg1sMLtUPCqXL0CijRrjK5PavfNQnPtVr7kIBBQz3+h+8CTCKxvyDKRwWcsflQ4i
	g+w/QaqnkpSS4VnONCTL7VeKRjLqkDLIzYtFLCRyyvvfimc0g2w5bph7AZv1JMKXTkYCojUsMw=
	=
X-Received: by 2002:a05:6214:f01:b0:78f:145b:56cc with SMTP id 6a1803df08f44-7991cbb107bmr119601676d6.51.1758513667111;
        Sun, 21 Sep 2025 21:01:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFTMhs6Rm9Rr4HhyRV1aKzXWjRmOKWw+6/CMvk8JR9kN+RD1Q1WvDtNVyfEU2A6FTmy6/f2rQ==
X-Received: by 2002:a05:6214:f01:b0:78f:145b:56cc with SMTP id 6a1803df08f44-7991cbb107bmr119601486d6.51.1758513666720;
        Sun, 21 Sep 2025 21:01:06 -0700 (PDT)
Received: from rivalak.cs.columbia.edu (kele.cs.columbia.edu. [128.59.19.81])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-793469322f1sm67218036d6.20.2025.09.21.21.01.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Sep 2025 21:01:06 -0700 (PDT)
From: Kele Huang <kele@cs.columbia.edu>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org, Kele Huang <kele@cs.columbia.edu>
Subject: [PATCH 6/6] man/man2/fanotify_mark.2: grfix
Date: Sun, 21 Sep 2025 23:59:34 -0400
Message-ID: <20250922035934.446271-7-kele@cs.columbia.edu>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIxMDAzMSBTYWx0ZWRfX/RbZgs9kyjvr
 8dim5IniXUIgz+cCFOOXuYMskT0oRiN2d9MxFcg5GcpmTgXJpRLr//DI8LTjfIu5HWtBkSOyFHk
 8kmDBZAbOj4C3bOvlRxfJUQkbbYBFCA/dUjkg4/cTNWATBSrqHQVezxQmgyS74CvbV4LpswZPj3
 pSR4af9hM+e+NML9/GWcy5XAEJiojL0Vz8qstYNEDvcBBg7DTqKm7QxotJ/UI+cIFP7yx+copRE
 Tbf1VQ3Biiu+8Iw2wGB8UdOlbAToIten5rmocr7NNCY03PAK5NJXjuITl3uhhbia3gL53QFv1NL
 Y82ncr8zwb3yzaO0efRXh76ilf8fi2KgpOLllFoQuLnjCoYizTs2iF/tsk602GBueee2APIklP1
 oWv/34zt
X-Proofpoint-GUID: Qf343UnRmfTL_au-2eODznPDgB4eJ99-
X-Authority-Analysis: v=2.4 cv=SJtCVPvH c=1 sm=1 tr=0 ts=68d0ca04 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=3s50gvPmqPWyIM6FhyrXAw==:17
 a=yJojWOMRYYMA:10 a=mSxDhFL_xtvxtgIUEMEA:9 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: Qf343UnRmfTL_au-2eODznPDgB4eJ99-
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
 man/man2/fanotify_mark.2 | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/man/man2/fanotify_mark.2 b/man/man2/fanotify_mark.2
index 6d191dfaa..6c4234947 100644
--- a/man/man2/fanotify_mark.2
+++ b/man/man2/fanotify_mark.2
@@ -4,7 +4,7 @@
 .\"
 .TH fanotify_mark 2 (date) "Linux man-pages (unreleased)"
 .SH NAME
-fanotify_mark \- add, remove, or modify an fanotify mark on a filesystem
+fanotify_mark \- add, remove, or modify a fanotify mark on a filesystem
 object
 .SH LIBRARY
 Standard C library
@@ -22,7 +22,7 @@ For an overview of the fanotify API, see
 .BR fanotify (7).
 .P
 .BR fanotify_mark ()
-adds, removes, or modifies an fanotify mark on a filesystem object.
+adds, removes, or modifies a fanotify mark on a filesystem object.
 The caller must have read permission on the filesystem object that
 is to be marked.
 .P
@@ -663,7 +663,7 @@ or
 .IR mask ,
 or
 .I fanotify_fd
-was not an fanotify file descriptor.
+was not a fanotify file descriptor.
 .TP
 .B EINVAL
 The fanotify file descriptor was opened with
@@ -713,7 +713,7 @@ is associated with a filesystem that reports zero
 .I fsid
 (e.g.,
 .BR fuse (4)).
-This error can be returned only with an fanotify group that identifies
+This error can be returned only with a fanotify group that identifies
 filesystem objects by file handles.
 Since Linux 6.8,
 .\" commit 30ad1938326bf9303ca38090339d948975a626f5
@@ -727,7 +727,7 @@ and
 .I path
 does not exist.
 This error also occurs when trying to remove a mark from an object
-which is not marked.
+that is not marked.
 .TP
 .B ENOMEM
 The necessary memory could not be allocated.
@@ -794,7 +794,7 @@ The object indicated by
 .I path
 is associated with a filesystem
 that does not support the encoding of file handles.
-This error can be returned only with an fanotify group that identifies
+This error can be returned only with a fanotify group that identifies
 filesystem objects by file handles.
 Calling
 .BR name_to_handle_at (2)
@@ -815,7 +815,7 @@ resides within a filesystem subvolume (e.g.,
 which uses a different
 .I fsid
 than its root superblock.
-This error can be returned only with an fanotify group that identifies
+This error can be returned only with a fanotify group that identifies
 filesystem objects by file handles.
 Since Linux 6.8,
 .\" commit 30ad1938326bf9303ca38090339d948975a626f5
-- 
2.51.0


