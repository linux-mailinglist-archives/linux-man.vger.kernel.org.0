Return-Path: <linux-man+bounces-1877-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB8F9BE448
	for <lists+linux-man@lfdr.de>; Wed,  6 Nov 2024 11:30:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E47262851C5
	for <lists+linux-man@lfdr.de>; Wed,  6 Nov 2024 10:30:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FF2F1DB34C;
	Wed,  6 Nov 2024 10:30:31 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp1.bureaucracy.de (smtp1.bureaucracy.de [80.190.133.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABA41D2F46
	for <linux-man@vger.kernel.org>; Wed,  6 Nov 2024 10:30:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.190.133.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730889031; cv=none; b=VNYcyaIUiaXTzDry4kBk07xEIRiDT74rL4GADohTNCyZwSM3VMtB1YHZU7B4nAEyPexnVZ6OYtQoXkMSuPZkrSGv1wpH2h23mv+Pe4Ng4ufM98XLk5f+cSe4X2sGo9R08vJpcaqvJ+OfaFt4AfH4BEUFphaw4kMt2Zq32SU3A80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730889031; c=relaxed/simple;
	bh=pkc79D2cY+gLtYokIf844DKT6MT/716HmRmBYSRjN08=;
	h=Message-ID:From:Date:Subject:To:Cc:MIME-Version:Content-Type; b=Q10N19/7k6B56gYGEj/fWj+NaWxPytXGsJvV6+vx0JxaAQv8LCQ1YcUWR0Xf83J9WbfZ+2ZZA60YzonYw5kuThnuLL6UwQImYf1kidySuHw13aU3CegJeQ3SiRi0kxsjUknsZgS1U1TDHxkr4jHi+kj7eyHsvCgNJaBTu1aWmQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bureaucracy.de; spf=none smtp.mailfrom=bureaucracy.de; arc=none smtp.client-ip=80.190.133.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bureaucracy.de
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bureaucracy.de
Received: from localhost (<unknown> [2a02:8071:7111:c540:2d6f:92bc:3d9b:d766])
	by smtp1.bureaucracy.de (OpenSMTPD) with ESMTPSA id 0384d84a (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Wed, 6 Nov 2024 10:30:25 +0000 (UTC)
Message-ID: <eee2fe5c6c3d6203e1e528a998b0de2c.philipp@bureaucracy.de>
From: Philipp Takacs <philipp@bureaucracy.de>
Date: Wed, 6 Nov 2024 10:53:47 +0100
Subject: [PATCH] bind.2: move EADDRNOTAVAIL to general errors
To: Alejandro Colomar <alx@kernel.org>
Cc: <linux-man@vger.kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <856264.1730889024.1@hell>
Content-Transfer-Encoding: quoted-printable

EADDRNOTAVAIL is not a socket specific error
---
 man/man2/bind.2 | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/man/man2/bind.2 b/man/man2/bind.2
index a59ac16f9..330a808b7 100644
--- a/man/man2/bind.2
+++ b/man/man2/bind.2
@@ -147,6 +147,10 @@ .SH ERRORS
 The file descriptor
 .I sockfd
 does not refer to a socket.
+.TP
+.B EADDRNOTAVAIL
+A nonexistent interface was requested or the requested
+address was not local.
 .P
 The following errors are specific to UNIX domain
 .RB ( AF_UNIX )
@@ -157,10 +161,6 @@ .SH ERRORS
 (See also
 .BR path_resolution (7).)
 .TP
-.B EADDRNOTAVAIL
-A nonexistent interface was requested or the requested
-address was not local.
-.TP
 .B EFAULT
 .I addr
 points outside the user's accessible address space.
-- =

2.39.5


