Return-Path: <linux-man+bounces-2223-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF68A1073C
	for <lists+linux-man@lfdr.de>; Tue, 14 Jan 2025 14:01:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A05477A050C
	for <lists+linux-man@lfdr.de>; Tue, 14 Jan 2025 13:00:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9683229620;
	Tue, 14 Jan 2025 13:00:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b="cQXazT2V"
X-Original-To: linux-man@vger.kernel.org
Received: from box.jasonyundt.email (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7B3D1FA82E
	for <linux-man@vger.kernel.org>; Tue, 14 Jan 2025 13:00:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=104.248.224.157
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736859647; cv=none; b=gFwbBRsGg8SciM6ZVMqFihH9JPrLuoF0NmSQmX/B99Y7Vw4n16dbwx632hKYrY9ZODCSHPLcOhxfA7549pBYMhB7mnC6YkRPkYRvjLXhH/KAU0tr387b73BGhS8EnygI6vkpWNGfhGlRniBnvvD+VK3TRyfk1tfY+7pujFUiasQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736859647; c=relaxed/simple;
	bh=sPoXW8mAgyq6u1Vp/JmQWK0Mw8kMQ/x99zOFXrPATvQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=me7DG5x5CxNemo8ERrv90SO5vOKWfyMoBLua3jkSF4+uZId2B57nynuqzlumtKmMlmYePrFVc3NTjK9U0d1UPkktqZnY2FRiRpnEXUmbScblqNnq9n5hU7iAb9ig+KmHFY4v3ImDszGSEZuNvn8tSAvYPRcxt04TS3mZlOuqV+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email; spf=pass smtp.mailfrom=jasonyundt.email; dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b=cQXazT2V; arc=none smtp.client-ip=104.248.224.157
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jasonyundt.email
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=jasonyundt.email;
	s=mail; t=1736859644;
	bh=sPoXW8mAgyq6u1Vp/JmQWK0Mw8kMQ/x99zOFXrPATvQ=;
	h=From:To:Cc:Subject:Date:From;
	b=cQXazT2V3tk5Vs6F1CGQLnP2Ep4Nl4g/7dbcAzKcESW2gwrV56wgr3gIZ/ChfkafS
	 WxNkqXnMvhaIWjXhl9jSOkwT+fialip9Rh9CpV8gWxk5WWHNmOwPA54DCd9w7Pcjeq
	 m2HI9iAd3x0Funcs8DHBCNx4ugn1nvyi6TdeJ//sOnYq+W3A2d+i/RHc5wWns2N3wC
	 g6C4WuBNGqgpwidr/zlYau8lXFombmowXX1nBWTBcoy3rjpBVXl2gSmPmcPJQbyCk6
	 KGKaET30UA6rSk4Q+NF74w8Zyz+MDoK5fqWYieNWwHpbh43Du5QihAmwMo6kjLd8RR
	 0MOSpg42g2/nA==
Received: from authenticated-user (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by box.jasonyundt.email (Postfix) with ESMTPSA id AB6267E2AF;
	Tue, 14 Jan 2025 08:00:44 -0500 (EST)
From: Jason Yundt <jason@jasonyundt.email>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jason Yundt <jason@jasonyundt.email>,
	linux-man@vger.kernel.org
Subject: [PATCH] man/man7/man-pages.7: Tell contributors to write titles in lowercase
Date: Tue, 14 Jan 2025 08:00:27 -0500
Message-ID: <20250114130028.28638-1-jason@jasonyundt.email>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Recently, I submitted my first patch to the Linux man-pages project.  In
my patch, I had created a new manual page.  On the manual page’s title
line, I had written the title of my new page in all caps because
man-pages(7) said that I should write it that way.  It turns out that
man-pages(7) was wrong and that the title should have been written in
lowercase [1].  This commit corrects man-pages(7) so that it tells
contributors to use lowercase when writing titles on title lines.

[1]: <https://lore.kernel.org/linux-man/rph24kz36vysoeix4qoxxxcwq3c3fskws2vmxkkgcb2lpits3f@ysm7ug66svzh/T/#mc84250a6634d7f776118879021331001cceccbe5>
---
 man/man7/man-pages.7 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man/man7/man-pages.7 b/man/man7/man-pages.7
index dc117662f..49c02d3fd 100644
--- a/man/man7/man-pages.7
+++ b/man/man7/man-pages.7
@@ -95,8 +95,8 @@ .SS Title line
 The arguments of the command are as follows:
 .TP
 .I title
-The title of the man page, written in all caps (e.g.,
-.IR MAN-PAGES ).
+The title of the man page, written in lowercase (e.g.,
+.IR man-pages ).
 .TP
 .I section
 The section number in which the man page should be placed (e.g.,
-- 
2.47.0


