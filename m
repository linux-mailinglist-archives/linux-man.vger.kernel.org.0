Return-Path: <linux-man+bounces-2489-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 196E0A3D476
	for <lists+linux-man@lfdr.de>; Thu, 20 Feb 2025 10:20:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 495417A7C80
	for <lists+linux-man@lfdr.de>; Thu, 20 Feb 2025 09:19:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6758F1DF24F;
	Thu, 20 Feb 2025 09:20:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b="YQkpa0gl"
X-Original-To: linux-man@vger.kernel.org
Received: from sender4-pp-o94.zoho.com (sender4-pp-o94.zoho.com [136.143.188.94])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7F91C3316
	for <linux-man@vger.kernel.org>; Thu, 20 Feb 2025 09:20:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.94
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740043216; cv=pass; b=tGlZgoIjWV4DsjbnaL4fumqjZj5XdcVVHj/InO6t1FK1hiMXQTHo08m6HMD0iZ21gOi+ousUaYVF02lAuAutjVW2r3wbyLmTk0n4H/koNWUSS2oAlDu36RkoowsIY8iivQeZOH7YnfzNMxAYxUYITYV/RsJqbt1ZUKPcAzuyNRY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740043216; c=relaxed/simple;
	bh=Edg+bp+QngftuDzlZgpQgfdEOhh/PZe++ivxFn+q2Y0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=sWm1diP3YS9BV9w2E5lN4pLPGx/TRzw2bp2kUEs6FjUN3K4vyloQvU+D+4gtPZfRfh9D4hsWB6GvIrxFFxpHfGubSDKEzt11SjBFAYkGQRS5J+KxR/m7YspsAYeQuUMEOXfPCUxQK4T5zjlDsoNtuGaM5Cjn45xWjmPbP4X/ubc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com; spf=pass smtp.mailfrom=zohomail.com; dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b=YQkpa0gl; arc=pass smtp.client-ip=136.143.188.94
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zohomail.com
ARC-Seal: i=1; a=rsa-sha256; t=1740043205; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=e3PhsKIsp2n0xQ4LIr5h1go0uOmuk8a96aieyvU/zHQHI1AJklIpjz/WgVLfiIZpCHgWWnFtpK0n+JsWLThY5R8paGRoKLMPAsdus2cW0xwyn9dpEVvoJq61mcvAq2i7ff121UBS7uGyCSc0gDlW7qc4PYao58FOmZyq1TMhiEw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1740043205; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=ea/o7aILXnVTIcR906xea9o9oketFssPRMA1/MxDscg=; 
	b=lUsko6+B44qAxqTpthdeJWLJN5zopS+vbx5MEWBGiaBJomn1tLKHo6bfvkJ9q+1Ke7i/aDxlFIQqdaKxCKL6qdi94xjD1ytAqM/9rmsNLnh7xQV0ZUWqD8P+EnmFrpxCvE4eLzq4fSJFrMw11+87N35D5y1KDYuPazZV96uOoto=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=zohomail.com;
	spf=pass  smtp.mailfrom=safinaskar@zohomail.com;
	dmarc=pass header.from=<safinaskar@zohomail.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1740043205;
	s=zm2022; d=zohomail.com; i=safinaskar@zohomail.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-Id:Message-Id:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Feedback-ID:Reply-To;
	bh=ea/o7aILXnVTIcR906xea9o9oketFssPRMA1/MxDscg=;
	b=YQkpa0glxc86vwgvR4qXyTaHk4jFKXoGgVcKFAGOYN+IPYaN9nzsOraYea21s6R7
	FRBdZXxK9W1zlFFisPjJg/zTupjQmQ1z9mgAg+aa0Xbti9Ky2EdwcZD05jYXh+678SA
	tEusrEoKL0WGExZFk7dspNkaMr3cwCU8vZjq2WHw=
Received: by mx.zohomail.com with SMTPS id 1740043202605194.13945801115233;
	Thu, 20 Feb 2025 01:20:02 -0800 (PST)
From: Askar Safin <safinaskar@zohomail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Carlos O'Donell <carlos@redhat.com>,
	linux-man@vger.kernel.org
Subject: [PATCH v4 0/2] man/man3/getcwd.3: say more clear that syscall can return "(unreachable)", but modern glibc wrapper cannot
Date: Thu, 20 Feb 2025 09:19:24 +0000
Message-Id: <20250220091926.3985504-1-safinaskar@zohomail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250217165143.1265542-1-safinaskar@zohomail.com>
References: <20250217165143.1265542-1-safinaskar@zohomail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Feedback-ID: rr080112272fca05cc3fbaa7edd365e61a000071c370230f6092a721471eeb383dc2446397761bbf592c66b9:zu08011227d021945ae8fe7d77088762890000e32424eae1727e3d23622b8ffc878adbf62c6eebc6de123590:rf0801122ce38f35885567e014d8aeca3f0000ecbef5c56411ebe59471aa74f4fd6e903e9dd0a94b47c459b877da6cc950:ZohoMail
X-ZohoMailClient: External

changes since v3:
- small edit to commit message

Askar Safin (2):
  man/man3/getcwd.3: say more clear that syscall can return
    "(unreachable)", but modern glibc wrapper cannot
  man/man3/getcwd.3: tfix (pathname => pathnames)

 man/man3/getcwd.3 | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

-- 
2.39.5


