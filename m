Return-Path: <linux-man+bounces-185-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E5A7FD7CD
	for <lists+linux-man@lfdr.de>; Wed, 29 Nov 2023 14:20:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B12592825DC
	for <lists+linux-man@lfdr.de>; Wed, 29 Nov 2023 13:20:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59BD5200A7;
	Wed, 29 Nov 2023 13:20:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fi.muni.cz header.i=@fi.muni.cz header.b="VT2NoAHr"
X-Original-To: linux-man@vger.kernel.org
X-Greylist: delayed 360 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 29 Nov 2023 05:20:03 PST
Received: from anxur.fi.muni.cz (anxur.ip6.fi.muni.cz [IPv6:2001:718:801:230::3])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0D1483
	for <linux-man@vger.kernel.org>; Wed, 29 Nov 2023 05:20:03 -0800 (PST)
Received: by anxur.fi.muni.cz (Postfix, from userid 11561)
	id D7C5260AE4; Wed, 29 Nov 2023 14:13:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fi.muni.cz;
	s=20230215; t=1701263639;
	bh=BZUqA/v8xsV3kvzRCfJ+yL9RUa5Smpk8nOsN5hfJj7A=;
	h=Date:From:To:Cc:Subject:From;
	b=VT2NoAHrXbj3JEB3DPNwGbFaP9oH8C0OHd2hpbdSZ/fF5xaY0JHG3hou+jp21+fkF
	 /ZEb59F1VfjrrmQuCF/JN/Ej5krYjlRXE19FBWmXJ5QIwejh0zVxPddPPIbvCf2aNn
	 Dj4ZVs7DthAAlqpyxNWgL8eq9Wwb7kvp5k+xZ9XLIEWjMLEqpnokiaYIWDMxDNAU4k
	 q+dOpgLzBR+vYkecj6dvtt7bSg+s1mEMhxYwHYJ2MhErhVBGj7p83h1EdwFHJkLA3f
	 9aLSHUcxXyNLsHHeXQt8lXfTbSuKDHr3ei9bOnqr4Jqei+zTp7ANDFFi0QGR98ex3r
	 d1iSHEHt0Vgpw==
Date: Wed, 29 Nov 2023 14:13:59 +0100
From: Jan Kasprzak <kas@fi.muni.cz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] wfix: sigaltstack(2) example: function pointer
Message-ID: <20231129131359.GH18109@fi.muni.cz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Clacks-Overhead: GNU Terry Pratchett
User-Agent: Mutt/1.5.21 (2010-09-15)

In the following example code:

    sa.sa_handler = handler();      /* Address of a signal handler */

we expect to use a function pointer instead of actually calling a function
named handler(). So the parentheses in the above are superfluous.
(Unless there is a function named "handler" returning a pointer to some
_other_ function, of course).

Signed-off-by: Jan "Yenya" Kasprzak <kas@fi.muni.cz>
---
 man2/sigaltstack.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/sigaltstack.2 b/man2/sigaltstack.2
index bd5e6ab..d88d490 100644
--- a/man2/sigaltstack.2
+++ b/man2/sigaltstack.2
@@ -345,7 +345,7 @@ if (sigaltstack(&ss, NULL) == \-1) {
 }
 \&
 sa.sa_flags = SA_ONSTACK;
-sa.sa_handler = handler();      /* Address of a signal handler */
+sa.sa_handler = handler;      /* Address of a signal handler */
 sigemptyset(&sa.sa_mask);
 if (sigaction(SIGSEGV, &sa, NULL) == \-1) {
     perror("sigaction");
-- 
1.8.3.1


-- 
| Jan "Yenya" Kasprzak <kas at {fi.muni.cz - work | yenya.net - private}> |
| https://www.fi.muni.cz/~kas/                        GPG: 4096R/A45477D5 |
    We all agree on the necessity of compromise. We just can't agree on
    when it's necessary to compromise.                     --Larry Wall

