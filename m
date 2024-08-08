Return-Path: <linux-man+bounces-1594-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CDD394BCA0
	for <lists+linux-man@lfdr.de>; Thu,  8 Aug 2024 13:56:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5E1EB1C209AD
	for <lists+linux-man@lfdr.de>; Thu,  8 Aug 2024 11:56:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EBD418C32F;
	Thu,  8 Aug 2024 11:56:14 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from cventin.lip.ens-lyon.fr (cventin.lip.ens-lyon.fr [140.77.13.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53402187854
	for <linux-man@vger.kernel.org>; Thu,  8 Aug 2024 11:56:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.77.13.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723118174; cv=none; b=OlWdhWlmkhhZPXauLIjWsiv6yy0gGFbSiG+zJV64QrqDsKMps8jsVavnXEfw79/6I+62dINRo7zKE3Jy7piSTQ1gH3Se4uWdtxyiZtbYgruniJ/0UDWTZ7vW6oJcu277TL0ZN0zlbjU95ua/0WJwhA8t5Ibrzx4sDWn9HOSlS0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723118174; c=relaxed/simple;
	bh=aFLSnWpT/edj665B9FNr5iw74KdN2m6IGntMKe8JQzQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OGHH33CmsN/WDBC1+DohwdGct+ICPPTAcMDO+7zS5I1DIbqkLLtXfFsa11zjPOoN4zJy0SwkBR6Xct9KcT4aoLWbSSNDB24Nqynat4xs5cPJE3Sy5y4uWK9kgehDRpLVzQZJH7qu8Mm9e0zIwrdHIAO//tXJG2RrPkJupA3Lkz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net; spf=pass smtp.mailfrom=vinc17.net; arc=none smtp.client-ip=140.77.13.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vinc17.net
Received: from vlefevre by cventin.lip.ens-lyon.fr with local (Exim 4.98)
	(envelope-from <vincent@vinc17.net>)
	id 1sc1kY-00000000ndn-22ac;
	Thu, 08 Aug 2024 13:56:10 +0200
Date: Thu, 8 Aug 2024 13:56:10 +0200
From: Vincent Lefevre <vincent@vinc17.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Subject: [PATCH v2] nextup.3: minor improvements
Message-ID: <20240808115610.GC2669@cventin.lip.ens-lyon.fr>
References: <20240807105617.GH3221@qaa.vinc17.org>
 <oa5aca4pqtnnwjopngqkouwueglyujmusnms535mgh4ipyawbk@4wonm4ymhcdv>
 <20240808025636.GE3086@qaa.vinc17.org>
 <wpkh52aryrsgp52qur6igf5uwidbhetszb4krfcfgfpyarv7yg@abea5srk4kuy>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <wpkh52aryrsgp52qur6igf5uwidbhetszb4krfcfgfpyarv7yg@abea5srk4kuy>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.13+77 (9dc98409) vl-169878 (2024-06-20)

The current "If x is 0" condition is a bit misleading because "is"
is not the equality test (just like when saying "x is NaN") and 0
as a FP number stands for +0, while this condition should apply to
both -0 and +0.
Replace this condition by "If x is +0 or -0".

Replace "Nan" by "NaN" (typography used everywhere else).

Signed-off-by: Vincent Lefevre <vincent@vinc17.net>
---
 man/man3/nextup.3 | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/man/man3/nextup.3 b/man/man3/nextup.3
index 285c2bcda..568f3b13f 100644
--- a/man/man3/nextup.3
+++ b/man/man3/nextup.3
@@ -38,8 +38,9 @@ is the smallest representable negative number in the corresponding type,
 these functions return \-0.
 If
 .I x
-is 0, the returned value is the smallest representable positive number
-of the corresponding type.
+is +0 or \-0,
+the returned value is
+the smallest representable positive number of the corresponding type.
 .P
 If
 .I x
@@ -52,7 +53,7 @@ of the corresponding type.
 .P
 If
 .I x
-is Nan,
+is NaN,
 the returned value is NaN.
 .P
 The value returned by
-- 
2.45.2


