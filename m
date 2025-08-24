Return-Path: <linux-man+bounces-3586-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A1AF1B3309E
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 939DB4E175C
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B60871DDC3F;
	Sun, 24 Aug 2025 14:48:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="Wg/rdLER"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF2F2DC32B
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046936; cv=none; b=Y9tKz9CKkaSDFR/OJKvWY07NDepnTz3z0rOwCRpVvZSsZoutnBR8ujuWWzvWtQLOWhWXFxmUAOJzr6gVo71UQq+fC50ggLQED9+FSIAx+i4NW+RWDvo+HCgpheYqhl2WRlHZAG64kQDlfuXzWlyHqSMFapWmEq6k6Dfwcqle/Cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046936; c=relaxed/simple;
	bh=sxjTFgsjZzh8pDGzBSmEY/XuFYdoAUXQ00lDWO2zWKg=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=WPCnUnsBoFLs/o9ytde5MQGrk2fa0oh2kRaGXLg95cr4yYskmUWdZ4RGcHcO1kfhZvDb75wru3otdMFIQotL28Y0FahYE0A9XV9y1BMFQL8oOAGZCFcawP35Zuk2y2sUsVwXTayZ0Jt1ou6/SiPk1T2xQ5YJPED24/T6P7vFQwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=Wg/rdLER; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046917;
	bh=KedNrPxMRnSljQFssDTgIpVA8FohAMbZj9eejy5l9z0=;
	h=Date:From:To:Cc:Subject;
	b=Wg/rdLERg3XQDamuS+f1h+9IIre4p3xWkZdm57r0VNCbE2wDNKJh/wlJGcWIvOwHL
	 DXh3IKYXW2p1ucCPzQR8iOiPQ6w2zZLRXCJ+973n/jdJLdYrwUwnxXa4TL7YN85yG6
	 Is9ZamcTr4huQGlG/mH39WIt7bxdio14OxMLESxtbtD/cw20oQvjaASrgZUa8IEVMD
	 9c+jAlxlV36Vsjh+ftAEH01JtB24sLBeEkGxnhmDRRIT1Q6llliLuRwLCt1dSNhsOK
	 1pEy0Uw6kFR3nrytBMh9eZ2AB37rHTY6cU5rhXNUyD+hk3hAt/HEYIWeqrkqW0jV+v
	 W9fPcMeHQJAAA==
Original-Subject: Issue in man page wprintf.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000216CA.0000000068AB2645.00138F41; Sun, 24 Aug 2025 14:48:37 +0000
Date: Sun, 24 Aug 2025 14:48:37 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page wprintf.3
Message-ID: <aKsmReZ__hHFGICW@meinfjell.helgefjelltest.de>
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

Issue:    B<int swprintf(>size_t n → B<int swprintf(size_t> I<n>

"B<int wprintf(const wchar_t *restrict >I<format>B<, ...);>\n"
"B<int fwprintf(FILE *restrict >I<stream>B<,>\n"
"B<             const wchar_t *restrict >I<format>B<, ...);>\n"
"B<int swprintf(>size_t n;\n"
"B<             wchar_t >I<wcs>B<[restrict >I<n>B<], size_t >I<n>B<,>\n"
"B<             const wchar_t *restrict >I<format>B<, ...);>\n"
msgstr ""
"B<int wprintf(const wchar_t *restrict >I<format>B<, …);>\n"
"B<int fwprintf(FILE *restrict >I<datenstrom>B<,>\n"
"B<             const wchar_t *restrict >I<format>B<, …);>\n"
"B<int swprintf(size_t >I<n>B<;>\n"
"B<             wchar_t >I<wzz>B<[restrict >I<n>B<], size_t >I<n>B<,>\n"
"B<             const wchar_t *restrict >I<format>B<, …);>\n"

