Return-Path: <linux-man+bounces-2784-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B17F4A94769
	for <lists+linux-man@lfdr.de>; Sun, 20 Apr 2025 12:07:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9802F1892E0A
	for <lists+linux-man@lfdr.de>; Sun, 20 Apr 2025 10:08:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9062C1DF97A;
	Sun, 20 Apr 2025 10:07:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="g2xezLpt"
X-Original-To: linux-man@vger.kernel.org
Received: from outbound.pv.icloud.com (p-west1-cluster1-host10-snip4-10.eps.apple.com [57.103.64.103])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2317714D29B
	for <linux-man@vger.kernel.org>; Sun, 20 Apr 2025 10:07:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=57.103.64.103
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745143670; cv=none; b=I5ihOY9/87dSqysqy1xiHRwBRqlhmP5GMxwGAGZ13srWjhsA2P7txjBojv7wVjU7HeJEJkn6muGOAUHGePU9k9sUB1HGBOUiXhLpP/GYDqIYqjvZ+emjLUbqBRxsT2/4B4Nq8XkqsrUTNl7V6YxtzxogDN8wwnVusLB0eQN3WQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745143670; c=relaxed/simple;
	bh=GWi+GU9fK0lb50chrJ6yP1plimM3nCs065FU95YorxA=;
	h=From:Content-Type:Mime-Version:Subject:Message-Id:Date:Cc:To; b=jH2dSHEQCUd/DqXwQNJk35xCTSJ6zFMHMEODiG/rJv2Tok9VURqQm8Jrw5dvR0SQ89SXBmifcOtcLhhXR34JgnV2+uIhbcXvaQAapnhdxVCpJ89jmzvnEE3SYPQXDWJNiOdXEyUiVFfqKWZg4EgRSIGF/fnx982G7O9DJG6BGtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=g2xezLpt; arc=none smtp.client-ip=57.103.64.103
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; bh=S9Ta6hWVTZZIw0KIWxCjduGcDAw/Xmdz9D4XbljJlkk=;
	h=From:Content-Type:Mime-Version:Subject:Message-Id:Date:To:x-icloud-hme;
	b=g2xezLptmuwmlqF6rlE0lAXlPb3hYi3mqncYERXKS0YUcdaGaSt46tzbbBDvnT60q
	 Ct65eHI1DuZszAgpDSzkFHEmq2rTuRI3XxE6zpP6Gt8ofDym6H+8EcEfZsB/6n68zs
	 cMLFJF+nP10rHVYaFTweTkRvzp1nUEfjSv4zfDuxuBdta1oiP/eo0UE5ldfZAb4OZa
	 VHVLBoeIzDqEyYGkQpDVkWwmLNXNX7hJGpNCBUGdfavH/56uyp4hqUPqNKjuyxdyYI
	 lASvM3/9cIC/jckmosOjIIl8Brz3J0DQ8EVZyZ3qOwQNQfLe9HJ242Lyn8BN9njhJP
	 ZFMhGFNwkpFwA==
Received: from smtpclient.apple (pv-asmtp-me-k8s.p00.prod.me.com [17.56.9.36])
	by outbound.pv.icloud.com (Postfix) with ESMTPSA id D9B9C1800627;
	Sun, 20 Apr 2025 10:07:45 +0000 (UTC)
From: Solomon Tan <wjsota@icloud.com>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.600.62\))
Subject: SLIST_REMOVAL number of arguments
Message-Id: <1E1258C7-25AD-4BA1-B82C-6CDFC9DB9887@icloud.com>
Date: Sun, 20 Apr 2025 18:07:32 +0800
Cc: linux-man@vger.kernel.org
To: alx@kernel.org
X-Mailer: Apple Mail (2.3774.600.62)
X-Proofpoint-ORIG-GUID: kcfIIVcrYokvQnNrjpDSk3ifK0HeGkgv
X-Proofpoint-GUID: kcfIIVcrYokvQnNrjpDSk3ifK0HeGkgv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-20_04,2025-04-17_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 suspectscore=0
 clxscore=1011 spamscore=0 malwarescore=0 mlxscore=0 mlxlogscore=631
 adultscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2504200082

Hi!

Kindly forgive me if I'm mistaken, but might there be an error in the =
man pages on the number of arguments in `SLIST_REMOVE`?

The SYNOPSIS in https://man7.org/linux/man-pages/man3/slist.3.html =
states that there are three arguments.
```
       void SLIST_REMOVE(SLIST_HEAD *head, struct TYPE *elm,
                               SLIST_ENTRY NAME);
```

However, the EXAMPLE and the source indicate that there should be four. =
Quoting the source:

```
#define    SLIST_REMOVE(head, elm, type, field) do {            \
```

Should the SYNOPSIS be the following instead?
```
       void SLIST_REMOVE(SLIST_HEAD *head, struct TYPE *elm, TYPE,
                               SLIST_ENTRY NAME);
```

Thank you.

Cheers,
Solomon=

