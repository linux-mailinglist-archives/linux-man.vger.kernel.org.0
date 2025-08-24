Return-Path: <linux-man+bounces-3615-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EDD5B330BA
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A5FC2441EB4
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3E772DF6E9;
	Sun, 24 Aug 2025 14:49:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="uA2joKxF"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F33F2DE703
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046950; cv=none; b=u0agJulcb33NPEUwgr9UxuSGfAVQAisZJBwpIDX1BE3zz5S/jKW4vr4s70dU25EzioOJupsUocLFsPcV0tAHYYUqTD2COBEx9cWIdI8pxFQJPi43cWnz1wRDRF1YZx7SxGo5fXhmOjB/BQOAmW/zl/0Jmm6FH2CY3kJBBi7EUIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046950; c=relaxed/simple;
	bh=PHqEs31OSdTOu51GktmiUN5fBIBpMA48GOtxeNSIuW4=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=YoytRb2NEEgHW+NX6t7y5WCiv5TGxfOB9sojzoYYI/+EwSFqTDaZ1ErkOoP0j2uzcix6jAG0ECdYtrofpvPOtW/RcycjBCwys+rcQvocXcxUgkLhqi7h11Gr1+12dNBvX+wHyh0hWJYngo7vxoRk+5Czk8RySMxb9Vep889+X/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=uA2joKxF; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046921;
	bh=6UeWjJ20qr0WKQva9mZlWxXjLkjKBJgluTrGICLLUpc=;
	h=Date:From:To:Cc:Subject;
	b=uA2joKxFHQkLnKn+mkZkhcp4/fkSndWnhbgNG0OnssFqFhaUUAARdujxtRDjIXBkS
	 aTH3QRDqLfXnasJS0I3e50k1LFM3zav7ZjbHh79jz2KD0ynO1DeHwyCQBhjpvbwoiv
	 uC0HWde0X/xpXK5XYk7tneI/rfYHBUOr2n6JlmiiKhfEhqkntD5tl7twUwjr0XlNo6
	 Sj4x6CM1V9hqlPhMtMMgik/Qrq+HgLVbm2IEJA0nx94YJ4O86gTtzRqwwi4jzF4l0v
	 kLhTf/VISuQYVA/GqvnGXKKDNIoqaRGSMHAraHTt3WTyY6qYtlaa3WMWN7/9SPY+b0
	 u09D7lDd1pOEw==
Original-Subject: Issue in man page getpwnam.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021713.0000000068AB2649.00139216; Sun, 24 Aug 2025 14:48:41 +0000
Date: Sun, 24 Aug 2025 14:48:41 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page getpwnam.3
Message-ID: <aKsmSeBy5JpwQSKf@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

Without further ado, the following was found:

Issue:    B<…>size_t size → B<…size_t> I<size>

"B<int getpwnam_r(>size_t size;\n"
"B<               const char *restrict >I<name>B<, struct passwd *restrict >I<pwd>B<,>\n"
"B<               char >I<buf>B<[restrict >I<size>B<], size_t >I<size>B<,>\n"
"B<               struct passwd **restrict >I<result>B<);>\n"
"B<int getpwuid_r(>size_t size;\n"
"B<               uid_t >I<uid>B<, struct passwd *restrict >I<pwd>B<,>\n"
"B<               char >I<buf>B<[restrict >I<size>B<], size_t >I<size>B<,>\n"
"B<               struct passwd **restrict >I<result>B<);>\n"

