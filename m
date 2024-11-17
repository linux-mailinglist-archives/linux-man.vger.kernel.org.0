Return-Path: <linux-man+bounces-1927-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B60D9D02F1
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:46:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BD4FE28312C
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:46:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 225AE13A26F;
	Sun, 17 Nov 2024 10:46:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="DOA6lsxi"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5089C2942A
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:46:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840394; cv=none; b=Bu+XrEhNc1ByzVuV3lV9yORGQWxn8jG+56tRbS4VBN63dFKyHbqJa/KIm40gSfAcTx/CE+aokM0AHDSZMAKDjGSwQ2S7JS0WtBjNasbhnK4GrZaQD1cHY58Sid+TPO0BHyNf078byBtRkS3IPA4aXqkuzMjX3WNv/s7XbqfUv1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840394; c=relaxed/simple;
	bh=ggF6uRD5H2UV5UyfsnxTe6edQwEkA1xuQ4qR3Ap2/fs=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=bT28gzmQ0/0ANxS/6qE7falGT38ONMkN/rxk15hUcxkGZRrpRVR/FJ4LHh+xVyssBkrT/OmBtke/U4QFX/kVr2fyv9SdxYWmFCAbmHPbbbfY8AncIjSnKMalJl/p0dxilliOBRry2bVoqWfSCGneipmw6pNIfCAB3RrDRK2HAew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=DOA6lsxi; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840384;
	bh=LhccT98qByEAnTvnz9ymWh/HvQSbDTfSz44m73+oTug=;
	h=Date:From:To:Cc:Subject;
	b=DOA6lsxibmMeBnVdQx6eaQjiacLSztcw46Y/QSc6yX1Rn8S/E3GSU+pFuRB6dGcrg
	 yopAWQT1fHT8Kd1T1VcD/IE8EmJWjxQPVDHg6QgfcGlQ+iqGCF864kv24fY/9BOMqx
	 MiZVkRvpV3oPB6+6J+uUJpy3TZt9rWoTKvT0O44MoyoY/dzDv1xkamLkU0RVrMyxP3
	 ti5tJT2knagAAGcrrVNdofAxiCVkj6Nguq2lM1+C9Eahn8qfhzPwpBCOpL+61mvPmB
	 kq9JyDTAF1WGsO3Wr99RyjkONW8pS4HK3latJZhX/Y3SZ6OW4tHu3rxMSDERQLPvvb
	 lhrDMCvOy37YA==
Original-Subject: Issue in man page time.1
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000215F5.000000006739C980.003FC4F4; Sun, 17 Nov 2024 10:46:24 +0000
Date: Sun, 17 Nov 2024 10:46:24 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page time.1
Message-ID: <ZznJgOKJFHMRJteu@meinfjell.helgefjelltest.de>
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

Issue:    printf-like → B<printf>(3)-like

"The format is interpreted in the usual printf-like way.  Ordinary characters "
"are directly copied, tab, newline, and backslash are escaped using \\[rs]t, "
"\\[rs]n, and \\[rs]\\[rs], a percent sign is represented by %%, and "
"otherwise % indicates a conversion.  The program B<time> will always add a "
"trailing newline itself.  The conversions follow.  All of those used by "
"B<tcsh>(1)  are supported."

