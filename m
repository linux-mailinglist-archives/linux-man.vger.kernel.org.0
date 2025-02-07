Return-Path: <linux-man+bounces-2353-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 00377A2CEEC
	for <lists+linux-man@lfdr.de>; Fri,  7 Feb 2025 22:17:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 198E13A59FF
	for <lists+linux-man@lfdr.de>; Fri,  7 Feb 2025 21:17:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD84B1AB6D8;
	Fri,  7 Feb 2025 21:17:31 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from omta034.useast.a.cloudfilter.net (omta034.useast.a.cloudfilter.net [44.202.169.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADCB7194C6A
	for <linux-man@vger.kernel.org>; Fri,  7 Feb 2025 21:17:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=44.202.169.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738963051; cv=none; b=W1WjiJ2acoTnLVpSKtWdV3vsEs6v7KchXc/lYyjYizxXedXvXWVuLTEGUi6C3yCEAmOHRY/PokHMT1iTzvxgAnpLS07ePw0W3eTg+kNppihdcM5i8vml5M1AdVKd2FEeY9ASQm5dxEEJrqgHV8/ptA+9wWFwzIX17Dggiqzp65Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738963051; c=relaxed/simple;
	bh=HbdxaL1wluVGwVSFFRjL4pq62JalQRsSMRCJoD1/mUw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=XgD/W46kxDBQ+9znPPoa4mLr7Aot/iaerrvCzKArxGk8EPUkzD6pqTNKpRA4BLpVtvqrF+sG1YFe5Q8tnRzGI4Fi+oQa+ruCH9ABVYCaaPqWXH3jt2Nrsf1WF6/ywMB6NqDINqXOK0fIcdzAwUGrM4ynVeOpLOZvr1L1T8Q83N4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=drabczyk.org; spf=pass smtp.mailfrom=drabczyk.org; arc=none smtp.client-ip=44.202.169.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=drabczyk.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=drabczyk.org
Received: from eig-obgw-5009a.ext.cloudfilter.net ([10.0.29.176])
	by cmsmtp with ESMTPS
	id gS3Utr2ALXshwgVj6tZ5UQ; Fri, 07 Feb 2025 21:17:28 +0000
Received: from gator3278.hostgator.com ([198.57.247.242])
	by cmsmtp with ESMTPS
	id gVj5tmH071kimgVj5teMAY; Fri, 07 Feb 2025 21:17:27 +0000
X-Authority-Analysis: v=2.4 cv=B/i/0vtM c=1 sm=1 tr=0 ts=67a67867
 a=wI8P0wgu9qut9Qmby1c6ng==:117 a=x0OE6rfHJZ6H1OKZOK5cGQ==:17
 a=IkcTkHD0fZMA:10 a=T2h4t0Lz3GQA:10 a=VGZVzwQjAAAA:8 a=Qo95dsebSWBDh275kEMA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=7KbCETwRv5F4J-amU3zH:22
 a=m_VEIBz21GJuPbWKIyfi:22
Received: from 89-77-246-87.dynamic.chello.pl ([89.77.246.87]:43326 helo=localhost.localdomain)
	by gator3278.hostgator.com with esmtpa (Exim 4.96.2)
	(envelope-from <arkadiusz@drabczyk.org>)
	id 1tgVj4-002ooQ-2E;
	Fri, 07 Feb 2025 15:17:27 -0600
From: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] regex.3: don't use z length modifier with unsigned int
Date: Fri,  7 Feb 2025 22:16:28 +0100
Message-ID: <20250207211628.25164-1-arkadiusz@drabczyk.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator3278.hostgator.com
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - drabczyk.org
X-BWhitelist: no
X-Source-IP: 89.77.246.87
X-Source-L: No
X-Exim-ID: 1tgVj4-002ooQ-2E
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 89-77-246-87.dynamic.chello.pl (localhost.localdomain) [89.77.246.87]:43326
X-Source-Auth: arkadiusz@drabczyk.org
X-Email-Count: 1
X-Org: HG=hgshared;ORG=hostgator;
X-Source-Cap: cmt1bXZicmg7cmt1bXZicmg7Z2F0b3IzMjc4Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfLW+IZjU9IrFGNs3sBHsjX3vHVNIShexcWzwArFvNRNCA+YMGGDmzttkGWAWJKle04ZkJqczfnj3R+aymajhDoxZ8h+w0iXlCwXM/R4tXTQ3pKfEC//l
 wWh1FdUhcPWG7Z+ggvET75js1oJ/s41Swhols8Ccv24Nie/22PNAlbtDiojd72nYnhLSxPIJfu3VoWcPApSwjgOu78Vx1M8i/ME=

GCC and Clang print warnings:

    $ clang main.c -Wall
    main.c:30:23: warning: format specifies type 'size_t' (aka 'unsigned long') but the argument has type 'unsigned int' [-Wformat]
       30 |     printf("#%zu:\n", i);
          |              ~~~      ^
          |              %u
    1 warning generated.

    $ gcc main.c -Wall
    main.c: In function ‘main’:
    main.c:30:16: warning: format ‘%zu’ expects argument of type ‘size_t’, but argument 2 has type ‘unsigned int’ [-Wformat=]
       30 |     printf("#%zu:\n", i);
          |              ~~^      ~
          |                |      |
          |                |      unsigned int
          |                long unsigned int
          |              %u

Signed-off-by: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
---
 man/man3/regex.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3/regex.3 b/man/man3/regex.3
index 3069489cb..a094c3b20 100644
--- a/man/man3/regex.3
+++ b/man/man3/regex.3
@@ -392,7 +392,7 @@ int main(void)
 \&
         off = pmatch[0].rm_so + (s \- str);
         len = pmatch[0].rm_eo \- pmatch[0].rm_so;
-        printf("#%zu:\[rs]n", i);
+        printf("#%u:\[rs]n", i);
         printf("offset = %jd; length = %jd\[rs]n", (intmax_t) off,
                 (intmax_t) len);
         printf("substring = \[rs]"%.*s\[rs]"\[rs]n", len, s + pmatch[0].rm_so);
-- 
2.45.2


