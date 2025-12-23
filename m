Return-Path: <linux-man+bounces-4475-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 049B2CD97CF
	for <lists+linux-man@lfdr.de>; Tue, 23 Dec 2025 14:50:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B3CA63015854
	for <lists+linux-man@lfdr.de>; Tue, 23 Dec 2025 13:49:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDE85258EDE;
	Tue, 23 Dec 2025 13:49:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZtpMARsN"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DFD522A813
	for <linux-man@vger.kernel.org>; Tue, 23 Dec 2025 13:49:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766497780; cv=none; b=LYJdLMRsPm3jDKBbAmu7HEHo0855dQjxNUW9U2oMX07OXP1MTmpnrIiXnpleL+yGUEEDNAgOJjX8A6+zy7VM44417K7cidUn6X4JDYU+jcIZyMmaECRv9fCIsl2STYtcwbII3L54p5iYvbsn8yPeuKErv/nnInNRDm072IwBk7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766497780; c=relaxed/simple;
	bh=Qt+AClzln/07WhbiY52mmDR67S4EyfhqJBoEFf/EQnA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MQmbPoeGvye0YkY+mTLESnfwM4OEpnbccnMmX6tTAe2+tOCPhXOIvJnIX5TYlW0KQUY4uga+hYF6XWXO44JsNeFz01/GThqWXjiTBxKkzpEGwamJG5roAAN8XoOE9ZMzp3CfmoVgkl+HOCHifmNXAnBYGiwQk6Zc6wMLc5rnHks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZtpMARsN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A855C113D0;
	Tue, 23 Dec 2025 13:49:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766497780;
	bh=Qt+AClzln/07WhbiY52mmDR67S4EyfhqJBoEFf/EQnA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZtpMARsNEdq1tDb7dvw3KKYXEJPEz54HdGtCU7iZ8sb7+WQIwr4wWwjw/hRwc+RHC
	 /Y2qIJW1sCuAEBxGzq3uHAXQKx2dCZRYCDEl+alPH6ajIfIXd8jNb+nk7tJ+JhAns9
	 pxFAw65Uy1TsPq15HdkpZSoAP6DQciSNuijTE5UEyxKEUSqm7mtx0gE/iwfMzqb41B
	 977xufagoh92AQ4cvLus3eofgfxrcnMY8w8havNYH0RTGNYFVBWl0SqXOoIXEB5uht
	 pyzIfp2FOZ3Q+QmvTMo96qlLhK+p++wdGk28IF8gUePGRp65HL4BwTYtMDONwd8m+O
	 hGbSbzcpo3bpA==
Date: Tue, 23 Dec 2025 14:49:37 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, 
	Collin Funk <collin.funk1@gmail.com>, Seth McDonald <sethmcmail@pm.me>
Subject: [PATCH v1] man/man7/standards.7: Document C27, C23, POSIX.1-2004,
 POSIX.1-2013, POSIX.1-2024, SUSv5
Message-ID: <4d36afef1c657d5f9ed4a0d121648b330d62ce2c.1766497736.git.alx@kernel.org>
X-Mailer: git-send-email 2.51.0
References: <I8K8HXS7TxdvIdzhsS5M03Fz5hnQp28BkAR-9d82UTEMdcPpNA767OxJ0_VRN3dHo8GBgGnprip2EsvlRAAKWC8NAzTn6A-ZMD2Eeci24ls=@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <I8K8HXS7TxdvIdzhsS5M03Fz5hnQp28BkAR-9d82UTEMdcPpNA767OxJ0_VRN3dHo8GBgGnprip2EsvlRAAKWC8NAzTn6A-ZMD2Eeci24ls=@pm.me>

Cc: Collin Funk <collin.funk1@gmail.com>
Reported-by: Seth McDonald <sethmcmail@pm.me>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi Seth,

I've expanded standards(7) to include several standards that were
undocumented.  Thanks for the report!


Have a lovely day!
Alex

 man/man7/standards.7 | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/man/man7/standards.7 b/man/man7/standards.7
index a3ab6e219..1b685d213 100644
--- a/man/man7/standards.7
+++ b/man/man7/standards.7
@@ -102,6 +102,14 @@ .SH DESCRIPTION
 This revision of the C language standard was ratified by ISO in 2011
 .RI ( "ISO/IEC 9899:2011" ).
 .TP
+.B C17
+This revision of the C language standard was ratified by ISO in 2018
+.RI ( "ISO/IEC 9899:2018" ).
+.TP
+.B C23
+This revision of the C language standard was ratified by ISO in 2024
+.RI ( "ISO/IEC 9899:2024" ).
+.TP
 .B LFS
 The Large File Summit specification, completed in 1996.
 This specification defined mechanisms that allowed 32-bit systems
@@ -235,6 +243,10 @@ .SH DESCRIPTION
 TC1 in 2003
 and TC2 in 2004.
 .TP
+.B POSIX.1-2004
+This revision of POSIX is technically identical to POSIX.1-2001 with
+Technical Corrigenda 1 and 2 applied.
+.TP
 .B POSIX.1-2008
 .TQ
 .B SUSv4
@@ -279,6 +291,10 @@ .SH DESCRIPTION
 .UR http://www.opengroup.org\:/austin/
 .UE .
 .TP
+.B POSIX.1-2013
+This revision of POSIX is technically identical to POSIX.1-2008 with
+Technical Corrigendum 1 applied.
+.TP
 .B SUSv4 2016 edition
 This is equivalent to POSIX.1-2008, with the addition of
 Technical Corrigenda 1 and 2 and the XCurses specification.
@@ -295,6 +311,17 @@ .SH DESCRIPTION
 manual pages under sections 0p (header files), 1p (commands),
 and 3p (functions);
 thus one can write "man 3p open".
+.TP
+.B POSIX.1-2024
+.TQ
+.B SUSv5
+Work on the next revision of POSIX.1/SUS
+was completed and ratified in 2024.
+.IP
+Further information can be found on the
+.UR http://www.opengroup.org/\:austin/
+Austin Group web site
+.UE .
 .SH SEE ALSO
 .BR getconf (1),
 .BR confstr (3),

Range-diff against v0:
-:  --------- > 1:  4d36afef1 man/man7/standards.7: Document C27, C23, POSIX.1-2004, POSIX.1-2013, POSIX.1-2024, SUSv5
-- 
2.51.0


