Return-Path: <linux-man+bounces-2337-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E3FD9A256B8
	for <lists+linux-man@lfdr.de>; Mon,  3 Feb 2025 11:13:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A4AE81883DFC
	for <lists+linux-man@lfdr.de>; Mon,  3 Feb 2025 10:14:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0585C1FF5E6;
	Mon,  3 Feb 2025 10:13:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KHLZer96"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9CD31D5176
	for <linux-man@vger.kernel.org>; Mon,  3 Feb 2025 10:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738577637; cv=none; b=KMWQHkXd3BkS/R2RCLTVXfzbMyYmViGgDaRaen7o5XWN6CUtW/csVh568oe/jBDgOn5359jFnN5Bwwb/ag+FC5blCLLtqG5rh5ERJVbh05iDyLn9QYQH1qWHeAkRJFXwqpklGgqEpcRk15+fnUj27Csu5riAy2Y5v0VV3G5NpdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738577637; c=relaxed/simple;
	bh=MR4DaHcfbsX+F5cmAym+l13y5ZXUiILFpXLxlsC2BdQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DVIKepJdYC1A48CLG7UdkB4JVW0gAQ6Icc7L3mpT2tYiJcISAqwWKeFEwquVF6Uv8MVqvEg9uZsEOx3yeqWWkafLQnVWgFVE3Z6BGSf0HxTBJf9QiY1tHgEUtXdChOx384DzpeS8CGpWzD307oWHbFs2TiRSOloc/4tj1C1Akkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KHLZer96; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21866C4CEE0;
	Mon,  3 Feb 2025 10:13:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738577637;
	bh=MR4DaHcfbsX+F5cmAym+l13y5ZXUiILFpXLxlsC2BdQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KHLZer96bnfbDrlN/fR2uEG8cGvGSZjk3McqfzzQ4hE4ewNBOgv0QZUQzilkW3pMJ
	 bacQncrrfuqLgfvpBCzTDDX2TIu/Nx9ieJHSrLW2bg0Ep102fcQBOhrsI3FGY68I/+
	 cAhLaKsj5x+6wzFs3h+96DjRy0gj6eR9vGpfVDrM+hakVznWhEzva/UvMEM0J770BS
	 WEIoq0qzoXRhJuxw8DAY0aZX9JsTz0qw9jajT7/LrrU41iaHxhGHGZj8Jvhj8gAc8+
	 TaIqz6OqjHxk61R0/6iI9ergMMOgk8EbkniGm6wuuWXBjIPmRGcoRazuNt+qe0vjJI
	 ZXsETU9Vxt8VQ==
Date: Mon, 3 Feb 2025 11:13:52 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Sam James <sam@gentoo.org>,
	Paul Smith <psmith@gnu.org>, Guenther Noack <gnoack@google.com>
Subject: [PATCH 3/3] GNUmakefile: help: Show only variables assigned with '?='
Message-ID: <70840ec935f2e9e9c128694710d1c91e494bf0f8.1738577250.git.alx@kernel.org>
References: <cover.1738577250.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <cover.1738577250.git.alx@kernel.org>
X-Mailer: git-send-email 2.47.2

The others are internal stuff that most likely shouldn't be touched.

Cc: Sam James <sam@gentoo.org>
Cc: Paul Smith <psmith@gnu.org>
Cc: Guenther Noack <gnoack@google.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 GNUmakefile | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/GNUmakefile b/GNUmakefile
index cfc6d2409..d7dfed473 100644
--- a/GNUmakefile
+++ b/GNUmakefile
@@ -54,9 +54,8 @@ help:
 	$(info	$(INFO_)To see a list of variables, run:)
 	$(info	$(INFO_)	$$ find GNUmakefile share/mk/configure -type f \)
 	$(info	$(INFO_)	| sort \)
-	$(info	$(INFO_)	| xargs grep '^[^[:space:]].*=' \)
-	$(info	$(INFO_)	| sed 's/=.*/=/' \)
-	$(info	$(INFO_)	| grep -v -e ':DEFAULT_.*=' -e ':MAKEFILE_.*INCLUDED :=';)
+	$(info	$(INFO_)	| xargs grep '^[^[:space:]].*?=' \)
+	$(info	$(INFO_)	| sed 's/=.*/=/';)
 	$(info	)
 	$(info	$(INFO_)To see a list of dependencies (package/program), run:)
 	$(info	$(INFO_)	$$ find share/mk/configure/build-depends -type f \)
-- 
2.47.2


