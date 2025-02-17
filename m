Return-Path: <linux-man+bounces-2471-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC45A38A22
	for <lists+linux-man@lfdr.de>; Mon, 17 Feb 2025 17:56:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4187B1894068
	for <lists+linux-man@lfdr.de>; Mon, 17 Feb 2025 16:56:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 636F1226520;
	Mon, 17 Feb 2025 16:56:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b="GdRaMRpD"
X-Original-To: linux-man@vger.kernel.org
Received: from sender4-pp-o96.zoho.com (sender4-pp-o96.zoho.com [136.143.188.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1CBD226187
	for <linux-man@vger.kernel.org>; Mon, 17 Feb 2025 16:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.96
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739811396; cv=pass; b=jizY9vFU9Eb1qXCigaqpFPYHKIYSRsIe6MXBy4+O+K5ai2Zi10cDi/gNRYJAZVS3Iss/c8dE2KHaG3j9Op9TgXTpQ/I0vufWAkF9/tnYu5DtoSSyipMqLm+LzWpyMTkFPl9zUsUkopQUt9/q5QrHSrIaHgk8Z5Qqs/+qESCrI3g=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739811396; c=relaxed/simple;
	bh=dummJTNTStYRcPncJlJt00rxAdMjpbUzmHGLhcavu3g=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=dYRZDrJyMYOc8I/Cm33HGQpXnZqx5dyjbMLtfi0aqL1HNWpnOII8I5Zy6vfo0GtFEn0QbB0x6vp6EX8LVe8kX1QdUp9xP8OdYNpD+CCGUM51s5hjqk1cftkEF5TrlCsIqDYP7ZAcBqgraq2J+Lm8U2/H7/IiYwu6z5Y3LlohyJo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com; spf=pass smtp.mailfrom=zohomail.com; dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b=GdRaMRpD; arc=pass smtp.client-ip=136.143.188.96
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zohomail.com
ARC-Seal: i=1; a=rsa-sha256; t=1739811389; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=gIJMDvpxoZjy2gGOuCIL4IUFW1SiGcT2gctdmZJqW4yzPgrkxobjmdJ0w6ZVzCLSnSeVPOhSk8v99b5FoONos42JoNgmKdWSnAZMVpXA9L0nSToFQlYA5i4kl/uf1Zqk32RDIyi5Ml67T6GsZIAT9+PFkGH0kBmoEX4vKggaen0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1739811389; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=ErcSE/EoQCqcDFcq8tcjt04M+uOwA3Pd1MZ31upoe8k=; 
	b=MsJ71k/gvKPk3ahNiI9RlCmFw1EEz1PiP9YbBeQfCxkVYPzJzDKeEue8oOZRWHj8Mz6uJFxWyUJ9Re6skuiB2UJgrGfGM+diyVCuNnD1d7PLKxwD4g+k+DKXH0RBI53wtAC9Oss5nDp7QVpLKM5G88skKsrNez1GCd3d92KHmrE=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=zohomail.com;
	spf=pass  smtp.mailfrom=safinaskar@zohomail.com;
	dmarc=pass header.from=<safinaskar@zohomail.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1739811389;
	s=zm2022; d=zohomail.com; i=safinaskar@zohomail.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-Id:Message-Id:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Feedback-ID:Reply-To;
	bh=ErcSE/EoQCqcDFcq8tcjt04M+uOwA3Pd1MZ31upoe8k=;
	b=GdRaMRpDtsRmvZlBqmBT6X92u23ZU1e5BgHqfUU2zdIBW4qJHURSBSQ9o/OEVX2r
	n2VJ8v9irXGId53tVHA8LTZwi+zE1PTeFtPbkZHyN2DxSNTafLg3rDq7O5NWpZ1v0VG
	CGJX5sglAm64tDKC4XGmcYbFp6/U504xr8T6GRDg=
Received: by mx.zohomail.com with SMTPS id 1739811386301719.4652935919095;
	Mon, 17 Feb 2025 08:56:26 -0800 (PST)
From: Askar Safin <safinaskar@zohomail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Carlos O'Donell <carlos@redhat.com>,
	linux-man@vger.kernel.org
Subject: [PATCH v3 2/2] man/man3/getcwd.3: tfix (pathname => pathnames)
Date: Mon, 17 Feb 2025 16:51:43 +0000
Message-Id: <20250217165143.1265542-3-safinaskar@zohomail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250217165143.1265542-1-safinaskar@zohomail.com>
References: <20250216061828.2277971-1-safinaskar@zohomail.com>
 <20250217165143.1265542-1-safinaskar@zohomail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Feedback-ID: rr0801122c5bf8078baac8c2ba80f5e6780000f985bca7bc85d87cbd6cac112b92a36632e256b38ab112c8296059f7990a:zu08011227a937440576d65831f7a40fee000038be29b429708af7ac63e3e6fcc77272573024cc49088ea76d:rf0801122ac577d872c964b7c076952f120000bdc0a01dd162c97f20fe6e8ecfa5b5442d9294e4965885c477534b0f:ZohoMail
X-ZohoMailClient: External

Signed-off-by: Askar Safin <safinaskar@zohomail.com>
---
 man/man3/getcwd.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3/getcwd.3 b/man/man3/getcwd.3
index 919ffb08f..f3da4b5a9 100644
--- a/man/man3/getcwd.3
+++ b/man/man3/getcwd.3
@@ -245,7 +245,7 @@ process (e.g., because the process set a new filesystem root using
 without changing its current directory into the new root).
 Such behavior can also be caused by an unprivileged user by changing
 the current directory into another mount namespace.
-When dealing with pathname from untrusted sources, callers of the
+When dealing with pathnames from untrusted sources, callers of the
 functions described in this page (until glibc 2.27)
 or the raw
 .BR getcwd ()
-- 
2.39.5


