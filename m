Return-Path: <linux-man+bounces-1793-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D11C998641
	for <lists+linux-man@lfdr.de>; Thu, 10 Oct 2024 14:39:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C8B5E1F25190
	for <lists+linux-man@lfdr.de>; Thu, 10 Oct 2024 12:39:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CD3B1C1AD9;
	Thu, 10 Oct 2024 12:39:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=jankratochvil.net header.i=@jankratochvil.net header.b="XGS68eoS";
	dkim=pass (1024-bit key) header.d=jankratochvil.net header.i=@jankratochvil.net header.b="7kfZuONn"
X-Original-To: linux-man@vger.kernel.org
Received: from vps3.jankratochvil.net (vps3.jankratochvil.net [45.136.17.69])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BAFE1BD00B
	for <linux-man@vger.kernel.org>; Thu, 10 Oct 2024 12:39:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.136.17.69
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728563978; cv=none; b=dID8nTdBWGoOiLK755mdQD45qB5FfVftPJiR2Hmzs1rDySL+MmzlUKuf6gFQw70fDzJVSe2OutRO+IlZPiO5UnNBI1vyDMgEpC9OY0NrwqNahOswoafB6YKNFU39FZaBC2l/xWtFVIFGEB6w+p4I8lQjp+gFV6USSVNimoIl6po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728563978; c=relaxed/simple;
	bh=XZJWQCdaNmYlw0Cqechwl/TxMeH69gue52HW6P55r4k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Sze9YNuGWMtxBb8U21V6CCLWZefgyV2ZLr6XoT8VTEd5npqypeVx4CZaSlnxdqx5aEIgFz98iKA0M2WT2vr8qbI031My4rqDTxuXvTRMg3r1S8B4lsw18wUWJWHGZ7Z5Iia0gx07/W/EFTPvUAmzqLNGDKJPxY8HCWS+a8f9jKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jankratochvil.net; spf=pass smtp.mailfrom=jankratochvil.net; dkim=fail (0-bit key) header.d=jankratochvil.net header.i=@jankratochvil.net header.b=XGS68eoS reason="key not found in DNS"; dkim=pass (1024-bit key) header.d=jankratochvil.net header.i=@jankratochvil.net header.b=7kfZuONn; arc=none smtp.client-ip=45.136.17.69
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jankratochvil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jankratochvil.net
Received: from host2.jankratochvil.net (host2vpn [192.168.92.2])
	by vps3.jankratochvil.net (8.16.1/8.16.1) with ESMTPS id 49ACdODn3467417
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Thu, 10 Oct 2024 14:39:26 +0200
DKIM-Filter: OpenDKIM Filter v2.11.0 vps3.jankratochvil.net 49ACdODn3467417
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jankratochvil.net;
	s=202405; t=1728563967;
	bh=XZJWQCdaNmYlw0Cqechwl/TxMeH69gue52HW6P55r4k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XGS68eoSuqfsY+TIJUnVAR4ohzAoUphM9viWkHuOwBGo6BQg57tNpDPlBOvA1aEHW
	 RgtmYL5kYQBgJykNd8l4t2f+NT1QFPr7K1xQcn96+tyAyD3Q51cs14Fh6ldP/ri9Np
	 pKaq4n2otQjptCouwL9u/zOclEfCQPryHwGYeDbg=
Received: from host2.jankratochvil.net (localhost [127.0.0.1])
	by host2.jankratochvil.net (8.18.1/8.18.1) with ESMTPS id 49ACdMsn218516
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Thu, 10 Oct 2024 20:39:22 +0800
DKIM-Filter: OpenDKIM Filter v2.11.0 host2.jankratochvil.net 49ACdMsn218516
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jankratochvil.net;
	s=default; t=1728563963;
	bh=XZJWQCdaNmYlw0Cqechwl/TxMeH69gue52HW6P55r4k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=7kfZuONnrnDkB8eLh4n+wr1O99etBgN8eTRkeAneXiaVQzTrrzDeKa2NTcJR1/ip1
	 EOkTtz/m3xalrXu5H7rafkcPkYMmExY18x2rvBPXqz5dAe7ZFQjmnM/6gA/FxGzP7g
	 YAqTWglKBdsljAlqulcJJWWmRFrUvM7J6pPkJJNM=
Received: (from lace@localhost)
	by host2.jankratochvil.net (8.18.1/8.18.1/Submit) id 49ACdKhj218265;
	Thu, 10 Oct 2024 20:39:20 +0800
Date: Thu, 10 Oct 2024 20:39:20 +0800
From: Jan Kratochvil <jan@jankratochvil.net>
To: Florian Weimer <fw@deneb.enyo.de>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: [patchv3] pthread_cond_wait and pthread_cond_timedwait can also
 return EPERM
Message-ID: <ZwfK-LmLeU0gQjLe@host2.jankratochvil.net>
References: <ZwZ8wiQz6hYtQxV2@host2.jankratochvil.net>
 <8734l4fdt8.fsf@mid.deneb.enyo.de>
 <Zwe-ipF5N82CTN64@host2.jankratochvil.net>
 <87ttdkdu0b.fsf@mid.deneb.enyo.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="3pG/YDsAWUAFsM+/"
Content-Disposition: inline
In-Reply-To: <87ttdkdu0b.fsf@mid.deneb.enyo.de>
User-Agent: Mutt/2.2.12 (2023-09-09)


--3pG/YDsAWUAFsM+/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, 10 Oct 2024 20:25:56 +0800, Florian Weimer wrote:
> Indeed, POSIX disallows EINTR for all three wait functions.

Fixed.


Jan

Signed-off-by: Jan Kratochvil <jan@jankratochvil.net>
Reviewed-by: Florian Weimer <fw@deneb.enyo.de>

--3pG/YDsAWUAFsM+/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="pthread_cond_init.3.patch"

diff --git a/man/man3/pthread_cond_init.3 b/man/man3/pthread_cond_init.3
index 42e7eac..df1f631 100644
--- a/man/man3/pthread_cond_init.3
+++ b/man/man3/pthread_cond_init.3
@@ -141,22 +141,28 @@ and a non-zero error code on error.
 .
 .SH ERRORS
 \fBpthread_cond_init\fP,
-\fBpthread_cond_signal\fP,
-\fBpthread_cond_broadcast\fP,
-and \fBpthread_cond_wait\fP
+\fBpthread_cond_signal\fP
+and \fBpthread_cond_broadcast\fP,
 never return an error code.
 .P
+The \fBpthread_cond_wait\fP function returns
+the following error codes on error:
+.RS
+.TP
+\fBEPERM\fP
+\fBmutex\fP is not locked.
+.RE
+.P
 The \fBpthread_cond_timedwait\fP function returns
 the following error codes on error:
 .RS
 .TP
+\fBEPERM\fP
+\fBmutex\fP is not locked.
+.TP
 \fBETIMEDOUT\fP
 The condition variable was not signaled
 until the timeout specified by \fIabstime\fP.
-.TP
-\fBEINTR\fP
-\fBpthread_cond_timedwait\fP was interrupted by a signal.
-.RE
 .P
 The \fBpthread_cond_destroy\fP function returns
 the following error code on error:

--3pG/YDsAWUAFsM+/--

