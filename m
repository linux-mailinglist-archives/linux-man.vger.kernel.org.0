Return-Path: <linux-man+bounces-3934-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 27BEBB8EE59
	for <lists+linux-man@lfdr.de>; Mon, 22 Sep 2025 05:59:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 344963BEC8C
	for <lists+linux-man@lfdr.de>; Mon, 22 Sep 2025 03:59:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D8112ECD39;
	Mon, 22 Sep 2025 03:59:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=columbia.edu header.i=@columbia.edu header.b="hsLp96Sz"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0b-00364e01.pphosted.com (mx0b-00364e01.pphosted.com [148.163.139.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A3E02EC0BF
	for <linux-man@vger.kernel.org>; Mon, 22 Sep 2025 03:59:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.139.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758513544; cv=none; b=F7QrXC5PKrn0UQu5S/qswZ+MyqBp/zL2ium728UyA7x+EWsio/V78ygIrahKJ3mbHm2Y+6SkHMa5MSPsD/5SnSQqeq3Vbc1J08z+gorVhjDgG4RvOwIo3SweAk07cDWFDiTaeaB7+WJvjgWCKwiuOcqc4Vj5f0KPe+IWRpbjpJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758513544; c=relaxed/simple;
	bh=mokNJ1aLM5s9U7HjkCZmvt5jSPZbyL2Rnsj3q34aueQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kGBcpWLqm5fLbK3Ql4VZb7QMWZjLLzO1mlkxJ1FpEhNETUvvPwY4/U9VBNn18jU4Bp/YmwlzCoJVdZFV3hGoFrC671ofOFlupoT01ZQYbTk7pIchvjZAVLFMMYS0eZm337/VYzvKAV4HCGRWPa3IROuOudsWa9Kf5XwZTzeSmXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.columbia.edu; spf=pass smtp.mailfrom=columbia.edu; dkim=pass (2048-bit key) header.d=columbia.edu header.i=@columbia.edu header.b=hsLp96Sz; arc=none smtp.client-ip=148.163.139.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.columbia.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=columbia.edu
Received: from pps.filterd (m0167074.ppops.net [127.0.0.1])
	by mx0b-00364e01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M1MWCI002973
	for <linux-man@vger.kernel.org>; Sun, 21 Sep 2025 23:59:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=columbia.edu; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=pps01; bh=gT1+V7ONE2qDCtq
	ugTju2/2N6tCEDeHUq0iYwrbmz5Q=; b=hsLp96SzyKIqacM3PWNN8/SAv5eP5Gg
	Uay1DQWokJwRGiQZzQuZzLJ8TjhlhEkvuc5Gm23KSzYjy8Uucvc19dHrRFwQUhjT
	5sF+7sQOyyrE9Tiv98UgmwA5NR0lXtTMK11368MSfYoNfr3DePED/86zan6FlgS8
	/cU4uVD5qBa6YuvVzlMbMh4NWGIT2jl7xy2cEe7Qzs32BVT9UzENWIHPl32wbJIM
	PvTLUPLoJiafWER1k9mBIc0icNIln44Df8w4uFrvbUI1BuB6cG4698m14CsLKNjU
	z2EMsCsgqgtk9UksmD5TDbLU4FcPJXQt5e/PQW7dYPRyHURIhim+y4A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0b-00364e01.pphosted.com (PPS) with ESMTPS id 49a9ek5j1x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-man@vger.kernel.org>; Sun, 21 Sep 2025 23:59:01 -0400 (EDT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b5e303fe1cso67155361cf.2
        for <linux-man@vger.kernel.org>; Sun, 21 Sep 2025 20:59:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758513540; x=1759118340;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gT1+V7ONE2qDCtqugTju2/2N6tCEDeHUq0iYwrbmz5Q=;
        b=Vb++vYonDxaTlxpAy+I5I23HEyAAh15rz1z+hkgeFuprJHNjFWg+hEqkR1fY+0OlWu
         mjkYYYjHEQbC+KW3h3vsbSSC4Udy+Zg6r8B1Q0yVZFCAWacbtFHyLUE9R4BQakkBdRCl
         T5HbJSFBWtGbrRoHZDcR3LoRuaYLPG/9XoVonJPyqPzuiWcGFqNhiEV2F+lLiaK0Rdqm
         igcPIZOik7TUlPuWkMEjTNcAN1ES6UCWCLg3JVZlu+n5tb0K/svEDmf0DAHjqTwieJ3Y
         +8XKUFnT96XRfFnkk5Fvujmon0oKlsdSx0Oz0CDubIn6Ym5rLkuug/TiDALg3FdNeksv
         PUgw==
X-Gm-Message-State: AOJu0YxIHk7qjHjVZx7KNaIyDyHgpph4Sd1vyJvbrlXtg1xFveVEXa3R
	P9Ev1Ym2Ps9Sa7g7B0VIwgXDM6yUMzH8CjVawZzS4sqAF0Fk/iKDTcV/Av4gNlfZwCor5R+agtQ
	dDwtQrZlncdY3S80uAV2u5krpe72e5OADXTgjQ7rXiSwdho/6KUmKgDDYOYYtYxLJtw==
X-Gm-Gg: ASbGnctOUs2CHlI8DJGPfXT8WJDmstxY353KJdRo57ZejJwLc1ne1p8QTtxvNICbTKE
	8qjN4pA+cgE5Q5MCXKulkizQqo7qH/KDNTiAyOAYic8jA9v3R8kdDurzo5+mLJPA+SW7GPUhAMX
	FKixznGDTv31uAZuvn687UejzIf/77XlZLx1aZaKzyWfOa9RBpPib1haw3r/SaZ6NJ1xiuMAAeV
	OHNNpec0JJJvxryXmvm/j+qLjLP5SkezDV2im9P+IVsrRnp6ed77fb9dHlQVjCJGuMIwIdi2bB8
	oyn7vYVYnESJs0uGJhJR0vBMs+w4ukzb0fcuGiOA+XmVhL+BOlGXyaDfhrCJfeg/TwyoC8mOAA=
	=
X-Received: by 2002:a05:622a:5e1a:b0:4c0:c983:4328 with SMTP id d75a77b69052e-4c0c9928605mr91621301cf.25.1758513540391;
        Sun, 21 Sep 2025 20:59:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG1F2vlAm19BbV9LBJMuatFIzJa+17lXuS6b7/OQj/KLhW2ipPdfdniejoOashrkDyIy10S9A==
X-Received: by 2002:a05:622a:5e1a:b0:4c0:c983:4328 with SMTP id d75a77b69052e-4c0c9928605mr91621261cf.25.1758513540051;
        Sun, 21 Sep 2025 20:59:00 -0700 (PDT)
Received: from rivalak.cs.columbia.edu (kele.cs.columbia.edu. [128.59.19.81])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4bdaa787eb7sm63807121cf.48.2025.09.21.20.58.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Sep 2025 20:58:59 -0700 (PDT)
From: Kele Huang <kele@cs.columbia.edu>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org, Kele Huang <kele@cs.columbia.edu>
Subject: [PATCH 1/6] man/man2/getitimer.2: grfix
Date: Sun, 21 Sep 2025 23:55:55 -0400
Message-ID: <20250922035600.445802-2-kele@cs.columbia.edu>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250922035600.445802-1-kele@cs.columbia.edu>
References: <20250922035600.445802-1-kele@cs.columbia.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: le5ILQJgVDpOik31wSqW5NF5de32Cu77
X-Authority-Analysis: v=2.4 cv=e6IGSbp/ c=1 sm=1 tr=0 ts=68d0c985 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=3s50gvPmqPWyIM6FhyrXAw==:17
 a=yJojWOMRYYMA:10 a=KdpxGcdQdKQXK64bDFoA:9 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: le5ILQJgVDpOik31wSqW5NF5de32Cu77
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIxMDAzMSBTYWx0ZWRfX3VrFC5UG+Ky9
 lNTlHdml0O6IZNFMLdB73DsCD0rAXNrqdASG8Fy7Mg7ht/YpdAMqz0IEhlUvLEv3Z9m2r2r+hJt
 C1iQBQjbvUJ/e4JKExXVn8OOJ7VHxNmzHwyKTfe7piijjBR+ezljBsd1iI30nQ9q58Jp65AF/bA
 /1KXZJq9TxWzHQIVOqEx0xFfbIlk0NXzoy0qnB+4tILwg8oJ+BfeP97STLsBIshv14IEHKfSFCh
 e1y30cOeds7X5t+NyYnFWuQNYSYXgwDWFruJpg4WzfZpe9IFZXKn7bKTWuKK4R/Ti6Rcr5qweN9
 zv/x4CEalI3pFVzop8/FC/4l1FIBZ+DPbpeZhmtbNj5G29V/wE6ARr1mOswHtLYW1dgHh31OgML
 j34AErEb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-21_10,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=10 malwarescore=0 suspectscore=0 adultscore=0
 phishscore=0 priorityscore=1501 impostorscore=0 clxscore=1011
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


