Return-Path: <linux-man+bounces-2469-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E272AA38A20
	for <lists+linux-man@lfdr.de>; Mon, 17 Feb 2025 17:55:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EF1B33AEE8B
	for <lists+linux-man@lfdr.de>; Mon, 17 Feb 2025 16:55:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08B31226182;
	Mon, 17 Feb 2025 16:55:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b="KEQqqUZu"
X-Original-To: linux-man@vger.kernel.org
Received: from sender4-pp-o96.zoho.com (sender4-pp-o96.zoho.com [136.143.188.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADADE223700
	for <linux-man@vger.kernel.org>; Mon, 17 Feb 2025 16:55:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.96
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739811313; cv=pass; b=LelJWyJ9+btJQfIZey5946feGYIR2VRJgis3ZCydftBi7tYVJfqkrYT8psF+0Gokg49rrq2165w8+3oAQE1JpLbzoN7+ewqNZLQ3Z2nLeCnF8Iv27S4LOhXtfldapWsa0JZxXYrY1nxQ5Fke1OlRy4VbqcytI6Os8jr7ItT5fQs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739811313; c=relaxed/simple;
	bh=sLNrLz08W38Udr635wEKF1pOYgUNxDQypv2tF4o7sSY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZX3RNzgYZnHUmMvkIJ4ruQQf4BlYTwsahxrMQNvnoSF1dZyUQAODKs0sP+eE6V63LP3EyJH0uRbJDCHzP2YMrgfrKS9eFZY86cuAINI+IA3cYTY6EraLANOUxP3eXZyykBB2Xy0sjkeIbJ4EtmV9f2VFptJCYMglxL3Pc0dq1E0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com; spf=pass smtp.mailfrom=zohomail.com; dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b=KEQqqUZu; arc=pass smtp.client-ip=136.143.188.96
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zohomail.com
ARC-Seal: i=1; a=rsa-sha256; t=1739811302; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=WmTpbgWc7Jv0E1oX5nXevHEKFzR79kKNMCRnKTLKnxk61K/dPHaUFIKFn6/qxu2JQc4YBsBUaw8SzUUZM+cGxudsdoApD0eOq6wUk9cmSh+LVcrTZ2NhI5N8RRQkcH/i2ScfLhDcEXwtjvGq6aAmWPKQl7z8DE6PCAd1KNRWqRw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1739811302; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=JRbUbcHAS1KaN38i6mf1yBYbQr03333ntG4BpxlkCU4=; 
	b=QU38ZHt5rNSrIZgoxiLJVhRGBaIw9TFyJqa816v5cp+j5lX3/xKu2e6EjQqmsrt772QqqGfN/GWBsKNU2o+zvk97UpVRhvK8MNVkxk0xjaCxfTkVEDorWhZEUtE/iOQhpUjasltR09VDjG86GufdF3uNFRXV8eN9D3rLyqVGnCM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=zohomail.com;
	spf=pass  smtp.mailfrom=safinaskar@zohomail.com;
	dmarc=pass header.from=<safinaskar@zohomail.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1739811302;
	s=zm2022; d=zohomail.com; i=safinaskar@zohomail.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-Id:Message-Id:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Feedback-ID:Reply-To;
	bh=JRbUbcHAS1KaN38i6mf1yBYbQr03333ntG4BpxlkCU4=;
	b=KEQqqUZu7pUinaeMB1nOnZfXXAnK5oMO2X/RLD7gwxYxhrILEXypS6bIB8GYOlS+
	9S7D+dZYAVVaYok5rNAdRvBBFATM2CbjB/P8EN3BTHMFwjk0dH5QfirGTbHBmNN+b0r
	lNtSbosaMN2/lg1Vtp3tB6WUIdGDCAIQ2FMJbpxE=
Received: by mx.zohomail.com with SMTPS id 1739811299890101.18220133197417;
	Mon, 17 Feb 2025 08:54:59 -0800 (PST)
From: Askar Safin <safinaskar@zohomail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Carlos O'Donell <carlos@redhat.com>,
	linux-man@vger.kernel.org
Subject: [PATCH v3 0/2] man/man3/getcwd.3: say more clear that syscall can return "(unreachable)", but modern glibc wrapper cannot
Date: Mon, 17 Feb 2025 16:51:41 +0000
Message-Id: <20250217165143.1265542-1-safinaskar@zohomail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250216061828.2277971-1-safinaskar@zohomail.com>
References: <20250216061828.2277971-1-safinaskar@zohomail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Feedback-ID: rr0801122c5ae827348ea3ecaed0e8bf7c00001481f83fd6460655cbfefc29972dfdf7acccbc42ad0d76cfde9a5b8efe37:zu08011227e22288885c01e2743af377f40000b67a717a5a60ac6000e55adc0c0836080ca27beb2978957b8b:rf0801122a94fbe8e8b5e3a44f15bb54fd000056d5d2ff99f72850bc851ff3b69f450f28f0aa818acff1bcc98448c5:ZohoMail
X-ZohoMailClient: External

changes since prev. version:
- fix all things mentioned by Alejandro Colomar in two latest messages

Askar Safin (2):
  man/man3/getcwd.3: say more clear that syscall can return
    "(unreachable)", but modern glibc wrapper cannot
  man/man3/getcwd.3: tfix (pathname => pathnames)

 man/man3/getcwd.3 | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

-- 
2.39.5


