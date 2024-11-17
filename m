Return-Path: <linux-man+bounces-1949-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B799D030D
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:51:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 301A3B22407
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:51:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97B74170A11;
	Sun, 17 Nov 2024 10:51:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="dGtzsQUA"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3FF14A4D4
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:51:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840696; cv=none; b=d8jlQ8CIDbIyjcIBNqyLBKXE55GQbI+sp+OjhusEkgzZvr5//MADflOmlUJ4krTRXd3H0cAhFFW8lBKvxXxpm62IMOlbR7duMmZuiDKIFt0WnAR4fWgYHK58zAzt+UPn7ppkuYX/z9TbiwkNHCLneUoIo5HRBOCh8qsRZ4FdPY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840696; c=relaxed/simple;
	bh=W70ul3HtAfY3JxYPrbjK/OiFU78Dta1bxvNHRZVNUcw=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=j0zakEiI2FLQuEbYK+4HOlsIWROnAJ9UOgz1OEXSBaH+6RNWhGBVKYRUIdRZwmvP8Z8CJTJYEsl447gB9LJAr5rQaxdsRXYOelJuCWoGzfR98R34gjozqMEwwC9WJ+oNTtIUCZWKdcDlgjAVBxS6BrModN5/FvO28cXpS8aODuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=dGtzsQUA; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840383;
	bh=sqcnCFntCKodigjpoaRDBKE8SD0vGcuRezH3BMHQuIc=;
	h=Date:From:To:Cc:Subject;
	b=dGtzsQUAAz6pZyaqeu1G22WS1Pa+6aUK+QNczoJ/HUNenDY0cmC2kj6coXypKZyg1
	 Vv5FHWZ+HIgm+g1Lct+lcbMeSD62OfSYN51eV5jG7Tln0aRn6+u6qz/IA0gpzbIchR
	 c2TKHI0OvMLYkXd8+cy7E9imlds//lZh2F0+sCQ3Dqdp9aJBmoS3qvb5gWAABIi3WU
	 kf+jkRUWAGbGGISq9xJAvBnL0ts5b3KRDXA7GS5j/VdpqEEOSltFmCjFI7cExXEqc+
	 1zKi/HiAfWWndBmA3aW1rpQ+jACWjgF/downJpxmLWF4iwfHdadTsyOh47XfCSKe1q
	 qPTb/BWl7bWiQ==
Original-Subject: Issue in man page remquo.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000206C6.000000006739C97F.003FC3C8; Sun, 17 Nov 2024 10:46:23 +0000
Date: Sun, 17 Nov 2024 10:46:23 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page remquo.3
Message-ID: <ZznJf900B2F5LgrV@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

Without further ado, the following was found:

Issue:    Why is this no-wrap?

"Domain error: I<x> is an infinity or I<y> is 0, and the other argument is not a NaN"

