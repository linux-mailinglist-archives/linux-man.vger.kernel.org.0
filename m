Return-Path: <linux-man+bounces-3978-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 593EFB9FAB5
	for <lists+linux-man@lfdr.de>; Thu, 25 Sep 2025 15:52:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6F9167A555E
	for <lists+linux-man@lfdr.de>; Thu, 25 Sep 2025 13:51:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 455A328506D;
	Thu, 25 Sep 2025 13:52:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=columbia.edu header.i=@columbia.edu header.b="LwAX5ebW"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0b-00364e01.pphosted.com (mx0b-00364e01.pphosted.com [148.163.139.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BE8821C9EA
	for <linux-man@vger.kernel.org>; Thu, 25 Sep 2025 13:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.139.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758808355; cv=none; b=M9cQJPzrNT0NkVCIYt5GgTPXJv2ABa+qZ6CvVjaiE+RGitdOmEqXJTHAo5I4kgidMm0D6Xz7+pSBUSH8nV/OsTxQJ/XJ0LQuQOGJ/6GA7fQg7jjfvlO0+17WDXZroVW1Je5adJcJGw/kDeHrmjCcrjsK1bgtV43LEaoeYsA5H80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758808355; c=relaxed/simple;
	bh=IcF9kAY7KPIrSpl2YrG9pWgSerJbb6OZGOb3MbGsl2c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LAm7xJEb0mbkQbAVIe7X47Bvq0E5PVH4NqB29DZmaYUovGQV5qXYlKB/0oSfh3WRRe12rtlOe8KfN4zpuXTmKggI0Hqe6MEcgHH9nfC443jZhOY4hx7Vah7601z+lfl1LNrx0gMm4D29oak8RKsYoXiECbNEUmjttmQFzSYssMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.columbia.edu; spf=pass smtp.mailfrom=columbia.edu; dkim=pass (2048-bit key) header.d=columbia.edu header.i=@columbia.edu header.b=LwAX5ebW; arc=none smtp.client-ip=148.163.139.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.columbia.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=columbia.edu
Received: from pps.filterd (m0167077.ppops.net [127.0.0.1])
	by mx0b-00364e01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PDRCSa005966
	for <linux-man@vger.kernel.org>; Thu, 25 Sep 2025 09:52:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=columbia.edu; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=pps01; bh=jC8pdNq5IAEDVoF
	mmToHZpxqlzfm5jZUMMCI3dtcsVw=; b=LwAX5ebWR63OfT7mzVJDykf4PjBznTk
	c8Z1Veh2Y7dmv+zA+OuJ+HvZ7KD433CEyZF9feejKpYN24gtfRYTKJrIU7CqANMo
	Ji2zUjyNWesbElMuNK0X/gYOIhwCWKn9sKiFVAzXX2ROX/ARy0VAm4V7Nh/5l+UM
	kJq03XJ+1ADkfD5fokqjF5oydElaOA6N5RAK8JA4vpAAsMqvXK7O0KVLY3PyZW4c
	BUO67sYO9WYfTsooWfsfKzDHQ+mXPtUkyqoDrAl2JW6ZDmV9xXdnKqi1eVufGLY8
	9ZMcOSec4xC/zrxtma8eR4CQABnkOD120EWaeMw/iOiJ1OdJP1T0vkg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0b-00364e01.pphosted.com (PPS) with ESMTPS id 49ckr20ps8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-man@vger.kernel.org>; Thu, 25 Sep 2025 09:52:26 -0400 (EDT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b78fb75a97so13486851cf.1
        for <linux-man@vger.kernel.org>; Thu, 25 Sep 2025 06:52:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758808345; x=1759413145;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jC8pdNq5IAEDVoFmmToHZpxqlzfm5jZUMMCI3dtcsVw=;
        b=jckNVZ9IVGlNzyxkUDmfWEsT+6B5rl0KB55q26WylUnsFEFL1/Wq5UT62+RD2GVeke
         ziOfIHQSOE4pmZbcEGcCdFmLV8mPCv/yQcsEI0FTKMsB+9nfVgEB56TApcE/Y6LQ1PNA
         deBOAeyr55IArGLnWOvyo553tZukAekdeMisoS7rlQN+ydeaFHtGDTMPeeHNGv3Y7ost
         T2E2fZek+s3gGCbXeuilk1j4JNobO0cJyOFcVrGv1S6C16UnhlpP3YS8IQTsQPE8U50S
         c4a5lWDo84Cu6pviKgc0o5Ce3wZhwqV6/coEu3R6A6sorw3I9A2jXJHwB5ylDXlUjFdD
         kuSA==
X-Forwarded-Encrypted: i=1; AJvYcCWqoj2Axs/TKiBL6Ms+X9zU1qLJuGxl3IrAWgBVkC/z4N63cB0xpRrCPtxJ4CuwLMXCrS9ItA5+Ql8=@vger.kernel.org
X-Gm-Message-State: AOJu0YzRyrHa4SDftYiQrmvAUP0lQks2JXAlVkTPkdljbzp4wpLbM8MM
	aQniSqSAjii6octR6C+21qQeQRla7liVRa7KhGOA0QDT9KWG0P+lo95vIE9alr7O7mofmCAGzh7
	wjiPW5cDFx6L6MsYvljJxHtUTfJtx0VFI8g8ZAK9RhlYT+lOSDhHI1nL3qw==
X-Gm-Gg: ASbGnctwpm9RSKIXS4Vr5aApAQv+EuIxZAeHvPThlbmGzkD5PUK9wW87W46/M5i0MeA
	I6XUweXIH0NI9byZF49UgIcbe5/7j9AwMJI5veq4zy8bodH8OdbC6FkiuN/8aS9auHksLTS7+Cw
	dcnlizX35NAe1DwizMxebd4WdAb7n6pGzVdhL+XoKohGkS3PLAjhiriDO4unIy8twY/btxGeWqu
	ZE+v//PMyKkH0kJFBxqvTS4CSKOqPu2w1lvgU/dW+mwJD2/Zly3QyMqBx3Y+TDRvjWxomCI+eFC
	c8Oi1bxj5qgTZpuVX+qYUD4UQyaevPjtMtPwfrFjdTsRvpo2u4pyZH+ypYZSzvdfviD+AQ5UNg=
	=
X-Received: by 2002:a05:622a:5c95:b0:4cd:7c0f:96c4 with SMTP id d75a77b69052e-4da4d50a8c1mr43641161cf.84.1758808345126;
        Thu, 25 Sep 2025 06:52:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF6yVdU+uopdlikVONfGl/GSeKVNRK7hLOQrMvILekG6KueIPWAWUV4EqqYy/fglbJ0Qkgudg==
X-Received: by 2002:a05:622a:5c95:b0:4cd:7c0f:96c4 with SMTP id d75a77b69052e-4da4d50a8c1mr43640021cf.84.1758808343619;
        Thu, 25 Sep 2025 06:52:23 -0700 (PDT)
Received: from rivalak.cs.columbia.edu (kele.cs.columbia.edu. [128.59.19.81])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8016cf8f949sm11290986d6.54.2025.09.25.06.52.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 06:52:23 -0700 (PDT)
From: Kele Huang <kele@cs.columbia.edu>
To: alx@kernel.org
Cc: g.branden.robinson@gmail.com, linux-man@vger.kernel.org,
        Kele Huang <kele@cs.columbia.edu>
Subject: [PATCH v2 6/6] man/man2/fanotify_mark.2: grfix
Date: Thu, 25 Sep 2025 09:52:15 -0400
Message-ID: <20250925135215.1648059-1-kele@cs.columbia.edu>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250922035934.446271-7-kele@cs.columbia.edu>
References: <20250922035934.446271-7-kele@cs.columbia.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: W9BErmakzolfA1GDEJpRghoJdIOXvlC0
X-Proofpoint-ORIG-GUID: W9BErmakzolfA1GDEJpRghoJdIOXvlC0
X-Authority-Analysis: v=2.4 cv=K/AiHzWI c=1 sm=1 tr=0 ts=68d5491a cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=3s50gvPmqPWyIM6FhyrXAw==:17
 a=yJojWOMRYYMA:10 a=GozpZ13YquPDOjToDPoA:9 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI0MDEzNyBTYWx0ZWRfXwmE/K2LOMsXp
 8GO439YA0SC8qLwZX/Yafl8v9OIfGa+D/3Aio41Fdr6aTseap93p6Jmv5hIOmKj+d1mR0rSTI7+
 /tq5tNVUlihLfzDa3tdeOFr5jwvX9uRXaYhyXyp33pkb1IvNbwXOKMiX6r6T5GypeirIRxUUz9j
 ZFPg294XCI5EGWykhe9Ewy4H8VaNARa5HpjinDX4/GLiAvgj3uwpF5M7QcMPBeaIiJg3MnGM5Ot
 3XeQPdR1ZKAerlUJaSIYyV8gQ28YtFGNPprOJy2ji7A/M29azmMwqhaETCEsP6tyHQQFqw7mEZ1
 WAMWhEv1fP8CLIQyIlX/j4n4Jqu+W7i3CxilfrXRZGuO9OqElUYSxoZaECTZPIen7j5/d9aazVj
 Qo4sBDTO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_01,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 malwarescore=0 bulkscore=10 clxscore=1015 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509240137

---
changes since v1:
- revert "a fanotify" to "an fanotify" as suggested by G. Branden Robinson

Signed-off-by: Kele Huang <kele@cs.columbia.edu>
---
 man/man2/fanotify_mark.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/fanotify_mark.2 b/man/man2/fanotify_mark.2
index 6d191dfaa..e561ffd21 100644
--- a/man/man2/fanotify_mark.2
+++ b/man/man2/fanotify_mark.2
@@ -727,7 +727,7 @@ and
 .I path
 does not exist.
 This error also occurs when trying to remove a mark from an object
-which is not marked.
+that is not marked.
 .TP
 .B ENOMEM
 The necessary memory could not be allocated.
-- 
2.51.0


