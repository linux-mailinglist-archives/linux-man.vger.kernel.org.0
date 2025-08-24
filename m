Return-Path: <linux-man+bounces-3571-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C3773B3308E
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:48:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BBA851B259A6
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1EA6244663;
	Sun, 24 Aug 2025 14:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="Lb5poG2j"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 593452DE1F0
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046928; cv=none; b=Zs6uu12S9AAdvWEwRfYHL0a/2R0BnTH0JlBMai8OLlMZxv6zNUdlHB/lR/hlXD/HRno1hoIucjWL1Da7aoH3UJXukRVlIm2ytSm80TE38DXy+vR8qf6Rof/Hm/XRw+WAbsJQF4Qfo+ovxJTmjZGV8kblw2U/65fMXoUFtCF1sto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046928; c=relaxed/simple;
	bh=IvldTdnDbV7XgTPIxlWueBcy2xvFVQkhIvr4Q4uBX9A=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=WM9nrnPYzoX07M/jz+ZhB+myWrOFumG0l9o0S5oFFdfFvODH9npbeafcr+S3vV+yu2LYixvYLU2RUqaiAc0jtC8Wx+dd4E5nQenxzSpSx7q0m1TkccVhueIB30Q6/A94xWl0J3k4zG6VbGKIqA+7291birHrKVC/FfsZEkaCCWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=Lb5poG2j; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046915;
	bh=ALTG73XaYpPga3w22McoltcDHFp7ST00AN1pJSPS37k=;
	h=Date:From:To:Cc:Subject;
	b=Lb5poG2jVFaL5rRWbZ1qXWHAkboNNPx64B5WqvkgRGeTdc+oLvgskQ5Nrg55VTdnG
	 hc+fo6LMIVCarlFzMp+qJ+X9EHtMBKsuRLhW/dL90OsXwVYV0WULF58q91ERlCV+Tz
	 9xZB6d3JBWYi7/ykyc6e6kzN5QsbuJaj2QQMfrhVtNaQKqJxr11WsgTwOfZ8iNcMRf
	 sFKv4mFibCMuAcHEzD9V6e1X0nOSQRC8+V5wunqDSEciWyeP5tSrQBtRdbZmBZJ3Pk
	 ZZkPUCUIYy21revyYu6uNDDlLlCB7VjD6u8ch7scIYso5OUDKCmkIrXWAqRi9w93ja
	 Xn8hyy7C7ogUQ==
Original-Subject: Issue in man page wcpncpy.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002166C.0000000068AB2643.00138DC8; Sun, 24 Aug 2025 14:48:35 +0000
Date: Sun, 24 Aug 2025 14:48:35 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page wcpncpy.3
Message-ID: <aKsmQ9ijvP6DRGkv@meinfjell.helgefjelltest.de>
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

"B<wchar_t *wcpncpy(>size_t n;\n"
"B<                 wchar_t >I<dest>B<[restrict >I<n>B<],>\n"
"B<                 const wchar_t *restrict >I<src>B<,>\n"
"B<                 size_t >I<n>B<);>\n"

