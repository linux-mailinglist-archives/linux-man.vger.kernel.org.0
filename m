Return-Path: <linux-man+bounces-3574-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E704EB33092
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:48:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DCFEF1B259EF
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92284259C84;
	Sun, 24 Aug 2025 14:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="L71bdbhp"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8CE2DE1F0
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046930; cv=none; b=oPqftYeVGHwwcxeOvIrRMRboVT6xvP4JAj1U8I2lvQ/LP0NeqgAgESmano4sOZSl8XPytI5M49woap4+7Ix947aQpnmiFjOLA3ORpCp+zFJkQlOEkPh3FFIFJwJpG/CCcVLiPCJUBTFlFPxV2tGusJKI0+uUnG5mJpazXo2f5Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046930; c=relaxed/simple;
	bh=/Myj2XWwkWddQeAuOP9CtG7NsMK5Cd4UvB7fmECMyco=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=LBwC4GHu7xBRsX1sR5tN3aULvco83W/9GAbyRP/ARaRzR4qyaVBcdhQ6/OYyEgd9NlYm18ATwE0IbyBs/RngkprMatismtFc6ZWB9fmRuR5ryykmRbGbln0eLRPz8TVIT9IbJ5lhAYjb6g2cYjHjmKkrpAxXXQyox+vR3aCV6Lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=L71bdbhp; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046916;
	bh=9PfjuvPQvWD3pua5e3EFjP92sLZASxnHIcI/ydHTLEQ=;
	h=Date:From:To:Cc:Subject;
	b=L71bdbhpuZKeZ5S8rT9/XyLapMhA8a2qrHfZ5l6QPx09/fS62UpuPRTOlkpMeW7Na
	 fkG8OBuIl9pIcVHtTl/6licfy0pNUwLLwKJCv30StihZTqurWqoh7rNmZWrM085mkG
	 VrqYAsLUBcfQIphJFcHLQ6bs2U3SpxyNondQQq9tC2uaUH2vQBqwMpXxf0CwlH3jAn
	 XnJR0V6tmW+t1Bs8HiYSZN5qrP6VNNec9yIfR6i/xOnf9Qw2KsJPuld6Q0SYQkz4Zy
	 6KET0MIX8N8vpCA1n8Uz7adQB0TvwcsVm1oad8Ak2PWYZOho7iio3Z4a/9/pXGBsDB
	 jyaMF9ErPZSxA==
Original-Subject: Issue in man page wcsncmp.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000216A3.0000000068AB2644.00138E13; Sun, 24 Aug 2025 14:48:36 +0000
Date: Sun, 24 Aug 2025 14:48:36 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page wcsncmp.3
Message-ID: <aKsmRFMFHL3R1W5q@meinfjell.helgefjelltest.de>
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

"B<int wcsncmp(>size_t n;\n"
"B<            const wchar_t >I<s1>B<[>I<n>B<], const wchar_t >I<s2>B<[>I<n>B<], size_t >I<n>B<);>\n"

