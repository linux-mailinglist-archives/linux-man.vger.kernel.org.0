Return-Path: <linux-man+bounces-3588-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E927FB330A2
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 944F27A6075
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:47:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66F982DEA74;
	Sun, 24 Aug 2025 14:48:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="GlZJMPZO"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5B801DDC1D
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046937; cv=none; b=iecyaqTwlD6NGkb3cBCv98uRtauxI/YFte7HdpnxWc5T+mKzM2PGs9V6IVG8BRJ2a9fsHgwJcCfB7eikCQ1yJ7IIdPUrlMzc1NNEglOWfcPBsx37c3jMVgeQoPApPrC6YJaZ1526HvF/ZPqmmXdAq5Baj7TFoaOusovFOggtoz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046937; c=relaxed/simple;
	bh=rDMyqRffNu7oZq11H9rJQ5bG8gYx6iNgo/H7mgX85O4=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=a5gd2pynj6ma/edJTPZIcCN1zh1k1w8QrUVhQaQY1P/l6dwXKzCKOibhqIk1O4bJDLKljxjB2ao/CigRfY04XvOV9lgxcfEscUBQj323+JeWkMR0zHcmW/fcSMz0gR6iaN4t4FjPrFRwJc75e/N87EiNlFiarJGmsDWecllRJrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=GlZJMPZO; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046918;
	bh=NFC9OdXEW++yFcYzRqJ47HL3BevlZJHAMdkYPXvgt0k=;
	h=Date:From:To:Cc:Subject;
	b=GlZJMPZO4VLwdgcAqee4TRNUkoyw5g5zomTtK87Wqhb4AEdSBp5Qlo+rptutV768p
	 ygkKQgepzLYmMZvNtzgxR9D10Sav89+4kaoiiArSVWzDCLx1QKEti6BNsQpAXrY4Z6
	 LmwxmN+I/QYKhD0ZphIp1SiBc/+zsKAloSDFXiiQ6Dey6PJiAnFPZsdTzwawJHwgIV
	 1kgVUX/67xXL6PIsErtDPvEyRsSSbHWeDHW3A4I2uaNzCvFJIQ34ASYgG7uUtX2FsZ
	 7wEj4ypGbhwlp01EVtQyeZ6lrKc6/tIm9/COintsJdo+yc5e288sbW6LjZX+9Gdnee
	 zs/30h5bjWDcA==
Original-Subject: Issue in man page wprintf.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000216CF.0000000068AB2646.00138F73; Sun, 24 Aug 2025 14:48:38 +0000
Date: Sun, 24 Aug 2025 14:48:38 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page wprintf.3
Message-ID: <aKsmRkNmoS5CkRfr@meinfjell.helgefjelltest.de>
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

Issue:    B<int vswprintf(>size_t n → B<int vswprintf(size_t> I<n>

"B<int vwprintf(const wchar_t *restrict >I<format>B<, va_list >I<args>B<);>\n"
"B<int vfwprintf(FILE *restrict >I<stream>B<,>\n"
"B<             const wchar_t *restrict >I<format>B<, va_list >I<args>B<);>\n"
"B<int vswprintf(>size_t n;\n"
"B<             wchar_t >I<wcs>B<[restrict >I<n>B<], size_t >I<n>B<,>\n"
"B<             const wchar_t *restrict >I<format>B<, va_list >I<args>B<);>\n"

