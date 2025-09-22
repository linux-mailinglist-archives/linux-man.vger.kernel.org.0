Return-Path: <linux-man+bounces-3936-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F838B8EE63
	for <lists+linux-man@lfdr.de>; Mon, 22 Sep 2025 06:01:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 29324189D271
	for <lists+linux-man@lfdr.de>; Mon, 22 Sep 2025 04:01:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 436011D88D0;
	Mon, 22 Sep 2025 04:01:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=columbia.edu header.i=@columbia.edu header.b="udycdVP8"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0a-00364e01.pphosted.com (mx0a-00364e01.pphosted.com [148.163.135.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A256C148
	for <linux-man@vger.kernel.org>; Mon, 22 Sep 2025 04:01:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758513665; cv=none; b=Cu4K9vT45R81U6VYUcMoUkQcfJMYIs+Y9jgUMUY6PJeq/0B2B3Y2bBfvXoFV/AInffdzqLfa/l0gxxckRBvQatWoP6TFHUBlwFh71wBy87TpgYdLfg0gmUXAs3KQGLCLUwTFOzOZY4NQucN4Tg72JNzbjCCxOMRFJqrQGGxWks4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758513665; c=relaxed/simple;
	bh=mokNJ1aLM5s9U7HjkCZmvt5jSPZbyL2Rnsj3q34aueQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SXfNzCj+y1+PBbxRY630gU2ldQ6pYg2V2vxWklJHM/WBAskRYH/OC1OYV4U2O9MS0t09DoPMQ1PJbj8iktRlBA1k9QLGdyeys5ij/jJfOV7uVmIb2a3Lt/2MMt712cSRJkgvEVZO47I4x75yegZp5+brA/lZ97ebdwABw1+mbDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.columbia.edu; spf=pass smtp.mailfrom=columbia.edu; dkim=pass (2048-bit key) header.d=columbia.edu header.i=@columbia.edu header.b=udycdVP8; arc=none smtp.client-ip=148.163.135.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.columbia.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=columbia.edu
Received: from pps.filterd (m0167070.ppops.net [127.0.0.1])
	by mx0a-00364e01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M1MX2P008960
	for <linux-man@vger.kernel.org>; Mon, 22 Sep 2025 00:00:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=columbia.edu; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=pps01; bh=gT1+V7ONE2qDCtq
	ugTju2/2N6tCEDeHUq0iYwrbmz5Q=; b=udycdVP8w0IuI+eNcEz9BJs1M7fCpJp
	XQq8UbcT+xxg9IXAvRWadyU6Rww9Ld5Mdfv1OHgYL638arsg4c9lJGHS2YXw9ZDV
	o6YCGUcD9esPMf4MgqTrDyjjkyXQY0y+R5ZMOSpiuLjZ8pdDZvgfATDIkcZRdy9T
	pkLeVp7s/8SBQ1PFlj5vmQzMzW0wD8IY0Deu5/5FhIFEEZ33KAKFGpncHOQtroaa
	pGTeKrW6Yu8gMXhuBA7l3qrubU94mNNZnMZLvOA2CYgoi1TKgsVoVjeCVelcwzY5
	jrWzFoWDvvPdb6mw118GDBBM8yyq2jamGX06pXC+TaK1azGl67YRk5w==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-00364e01.pphosted.com (PPS) with ESMTPS id 49a9d5ngh2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-man@vger.kernel.org>; Mon, 22 Sep 2025 00:00:56 -0400 (EDT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-78e50889f83so105752276d6.1
        for <linux-man@vger.kernel.org>; Sun, 21 Sep 2025 21:00:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758513655; x=1759118455;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gT1+V7ONE2qDCtqugTju2/2N6tCEDeHUq0iYwrbmz5Q=;
        b=LHSC1d/oikD7fzdq7l+hULJ1jfdNJVFJMYR8EbKfYNLXR3K5uZdylu5+7SPJTyGMTQ
         SUL9YPaBpXTYvFnorgWE2/5Mv+DUtgAPFqd08bMBqecqsjjxRb977sfBGjnN2hcbJxHO
         XSq35zF1RXAnBgUOdiK/oC1KgdWoV0CsYu+R2587b3lSLQNfPm0CgkDQtuXGfD2ewpoE
         4Dv25H8uRPPayd3SuvSMNCwFd2IYzYtPL74IzCfGigvxOLrj9yxL7Aijzi7epzfgQaHU
         /3HXb+kK37qGKtPBLXhhzzyi43GStlRrOGXdzH7sgVhhU+bVdjvQ7pQJ8t7OZrX+2moV
         VbDg==
X-Gm-Message-State: AOJu0YxrnNhKBiizjQbImgU7Hc6ufJq5uTIzC19iyXtl+rg4iZrj0JwK
	UDga2zlwydg6zxlxpQbUYaon1fswpwQNcE9xaijHADFR8jK3m+rYkXrPya358U+Q+iNnhx8InvA
	ho66uDU4ny+j2qnhC05GvaRiOexx0Jclolf6tF3xLRcGEIuE/n0GbqzHwPAc9qL5crQ==
X-Gm-Gg: ASbGnct5+hwyN+UROJtF0PpwrVlXVGq/d7Z82S5ImoyF/67rhXZ04Rf3IzY9yKTcWgl
	QwDf3+Bf7dezy2VAEI7TzsVQz1zdSGMM7CoYT43y9BryPHUAEHmec7fllMc0/N/8ihGIPuapZug
	vsnRaxTZsJ3bGgTMXJWu2riCtlYjzZ5rMBYnS+eDTCqQn8kK2bjFXBFTsYC1c15LeQuX0rbBXO5
	UKl+iQn7azDnP8H+xZZTEaItW0Dw+5I/gxG/8S+H4zFGFcDvtf/gl8jJww+gYav404f6WnvkuBM
	lIEk7Fq4/mjHinY1OZj3SHK/F+C5UQBaxL/dBGAKjPfuPYJWspSiBP+HFjmVdTClNkOAc7jk4A=
	=
X-Received: by 2002:a05:6214:519a:b0:78c:9cc4:7624 with SMTP id 6a1803df08f44-799211db36dmr107383556d6.62.1758513655212;
        Sun, 21 Sep 2025 21:00:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHdLbx6FfKlC1LSHndP9Xi7mnf4s5Kmb/+ioXC0qP2dxS9WgYTO6yaJNf17GE8D2jo1++5f1g==
X-Received: by 2002:a05:6214:519a:b0:78c:9cc4:7624 with SMTP id 6a1803df08f44-799211db36dmr107383376d6.62.1758513654675;
        Sun, 21 Sep 2025 21:00:54 -0700 (PDT)
Received: from rivalak.cs.columbia.edu (kele.cs.columbia.edu. [128.59.19.81])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-793469322f1sm67218036d6.20.2025.09.21.21.00.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Sep 2025 21:00:54 -0700 (PDT)
From: Kele Huang <kele@cs.columbia.edu>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org, Kele Huang <kele@cs.columbia.edu>
Subject: [PATCH 1/6] man/man2/getitimer.2: grfix
Date: Sun, 21 Sep 2025 23:59:29 -0400
Message-ID: <20250922035934.446271-2-kele@cs.columbia.edu>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIxMDAzMSBTYWx0ZWRfX0lRnXvHKQ0b8
 lJkgF6BKg/3GFA2kO6PkAkgL4MNfOIcP4EpKy002NrZd/c8341mohDRfLRz2wRul9q+n5Akj1/P
 S56GTdoYVsGqfGvnoTjuV1ij+VbDjScgb21PdqfNzzH0AHQqlP9XM94PaBJ+JyEZoKNld/w7vwf
 23WA8eVTyhOX1gDO9ac708MaQ0eaAX4PL0E61haxxXbPqvKM/ZupUcWKtYfDEyKQEKmgpHplrwj
 iN8xDuGYYeoapVCI8FpXqQstWzneEsZYNJ8sge6tFZVEeQ7kh3SbPU+XI3aUMmoptcpgpRV/fL/
 fyV9boIsfUk4zMQVN1I6FvSW3pmu0mPEvIjeQLuzFlFsmmlqpvKD8YyPmaBffoaJPX1U8RK64SC
 mxVjNL2c
X-Proofpoint-GUID: DtoHqJ4kZDI3JabJ2ix5dbUzIyM-XOMg
X-Authority-Analysis: v=2.4 cv=SJtCVPvH c=1 sm=1 tr=0 ts=68d0c9f8 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=3s50gvPmqPWyIM6FhyrXAw==:17
 a=yJojWOMRYYMA:10 a=KdpxGcdQdKQXK64bDFoA:9 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: DtoHqJ4kZDI3JabJ2ix5dbUzIyM-XOMg
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
 man/man2/getitimer.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/getitimer.2 b/man/man2/getitimer.2
index adf1dd350..40467b661 100644
--- a/man/man2/getitimer.2
+++ b/man/man2/getitimer.2
@@ -139,7 +139,7 @@ is set to indicate the error.
 .IR old_value ,
 or
 .I curr_value
-is not valid a pointer.
+is not a valid pointer.
 .TP
 .B EINVAL
 .I which
-- 
2.51.0


