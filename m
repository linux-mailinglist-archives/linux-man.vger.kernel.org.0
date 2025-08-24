Return-Path: <linux-man+bounces-3619-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E10F5B330BE
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D86651B25B70
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B315F2DF6F7;
	Sun, 24 Aug 2025 14:49:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="tmbVCy3d"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231AB2DE719
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046952; cv=none; b=rxzVhGvOkZDU1gqfWdYWVjU0KthIwos0aphq3VH5n5aV/RPSOfsvXdZX3JmYHavEUSV1uPx7N/ZixSq7qT2HK0X5N1vPZ1l5zoYZPdfMzyjSiz3ZwtB5d+kYoq3KQunhmKSLJIiAt1DNxr7GPxw1IFF4/eJwEH1D4L77njk4gQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046952; c=relaxed/simple;
	bh=zJ/Ywi0IW+EI39fmPGShghLsLuErsrshQwSJG+0HpNE=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=DzWrlpwYP/YPI3iOnw8s7fgPnmKqUGiTMoLl3xreL5mXy1Yb9ACgLksdZbgIuVFUnKQjkAvo4UMpEY/ZPC4dgwe1LMfJFGDlfhExi8tP+rYVfiEU7gRAk3i0FRWx7Zo6jKoCkkdDqNtdj7dWYWxagjU4gmiFrb4dIWEEH2kxmB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=tmbVCy3d; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046922;
	bh=KBWcZe65iQxn0Mr2kSqk6xFz5l93vQZZEZIa1wDqrDw=;
	h=Date:From:To:Cc:Subject;
	b=tmbVCy3du/66Dx6G1gsWFjuLdjhZ4GEBUxQDMKxBZEat9fcHSBZG7c8oPmyBBKsnG
	 Bo2Rlsw2q91Bd8AZbII84JpuKRWkDQnYgHRqKON1hqBrF0BUBIuAmgSesv7Gv1i0ST
	 wYxQE9kY/9NAKpvR/TGSPw7lzy2V0UaD+AzsEz0vweSfpVWGfbAj9ilS2FXSN4JtfL
	 0p6/5Rs+3H8EQkE2rfPmPxFbmiSVdN62RHG3xNOVlp9Xy5/EWWA+F5a37AC9pm/PHR
	 w1pQtbrwXodvrCwcNo8P6zCoYw5Tp+yUPQSiOcXVQG9x/bRBYKZZPba8LaNLd13pdg
	 kpsVrdyQjelNQ==
Original-Subject: Issue in man page getxattr.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002171C.0000000068AB2649.0013927A; Sun, 24 Aug 2025 14:48:41 +0000
Date: Sun, 24 Aug 2025 14:48:41 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page getxattr.2
Message-ID: <aKsmST2vJitemjdL@meinfjell.helgefjelltest.de>
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

Issue:    B<…>size_t size → B<…size_t> I<size>

"B<ssize_t getxattr(>size_t size;\n"
"B<                 const char *>I<path>B<, const char *>I<name>B<,>\n"
"B<                 void >I<value>B<[>I<size>B<], size_t >I<size>B<);>\n"
"B<ssize_t lgetxattr(>size_t size;\n"
"B<                 const char *>I<path>B<, const char *>I<name>B<,>\n"
"B<                 void >I<value>B<[>I<size>B<], size_t >I<size>B<);>\n"
"B<ssize_t fgetxattr(>size_t size;\n"
"B<                 int >I<fd>B<, const char *>I<name>B<,>\n"
"B<                 void >I<value>B<[>I<size>B<], size_t >I<size>B<);>\n"

