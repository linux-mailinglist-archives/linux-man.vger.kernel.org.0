Return-Path: <linux-man+bounces-3644-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 36588B330DA
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:50:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B1996188C177
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:50:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1C9E2DE6F6;
	Sun, 24 Aug 2025 14:49:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="RBT0IlTx"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6703E2DE6FC
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046964; cv=none; b=Eyh2kGw66yZhk9Cm+RQ/TpBNG8pWSXqSV3H8U3Zp/bwBgjh3XruG/DYg1kXVJIpp2519dLPhwmFQ+nlzl5cdq1XI0fgzoYd6xYbVfL+wRbYPmyrgZCP5mdCbGvqkc7rGx+HhNzTrnO2zH/NsV6ZeSCRQA384Cn7rDL0tt3Md66w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046964; c=relaxed/simple;
	bh=TAEwq2jnZbUVrFpoHLZl5OXupngZxDmThF/omXVttXw=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=eMcd4PO3cYQIAIWS93gz3FNy+S56K49ZPCKsgV1bEFDOsA3dDKLx0ko0hztoEMrGx8n6fzQGkVnF2IlayjqtIpz8bkqBJVvUzHyQDbuHBv2r0ptrs3Z8TjXsxbYwqBjAlIBEZSZ5m0uJYdj2VY9GN/L2Yt+X2UZ/zAL7InifSG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=RBT0IlTx; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046925;
	bh=HVyUd+aQQbVUO44Ez7WzFleK/hKSeoDdAxti7XZjlXQ=;
	h=Date:From:To:Cc:Subject;
	b=RBT0IlTxcTnpcnt/FndrJ2jbiElrsuxznAmGVghykm+pAgn+DV/EpXBtcQrTwTnZ3
	 CDeDlXGzsE++iypXJI3zILySIRT31G63Z5HLiuyyZd7hKffKTwpnT41PEw7avcdUvk
	 +np51iPR4X1UC1HDnA/0DH5iFD7+AELLlWwOjTjY5hdcNIKkug45NlST06Toj3Ojbz
	 tKJiQ58RlmqZ8yWH5fsBpMgJsZf6ubrYBY/oWoc9s1CxC8hf9c2HOLsaN/nw0wllJk
	 qM0LSFMY/3dD/4ETucvMcLCeiWNVP4lNmqagM01pyGCN6ZdnQ5AwvDYRVYhPOAdqGZ
	 IiivKOPQlZfQQ==
Original-Subject: Issue in man page memset.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000215F9.0000000068AB264D.001394ED; Sun, 24 Aug 2025 14:48:45 +0000
Date: Sun, 24 Aug 2025 14:48:45 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page memset.3
Message-ID: <aKsmTZV6gVRJXVKQ@meinfjell.helgefjelltest.de>
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

Issue:    B<…>size_t n → B<…size_t> I<n>

"B<void *memset(>size_t n;\n"
"B<             void >I<s>B<[>I<n>B<], int >I<c>B<, size_t >I<n>B<);>\n"

