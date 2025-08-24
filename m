Return-Path: <linux-man+bounces-3645-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB19B330DB
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:50:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 237E14E180D
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F8E12E03F3;
	Sun, 24 Aug 2025 14:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="ZvUtEtND"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD6A12E03E1
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046965; cv=none; b=lhR5JgbfRJxCG/O5qbJfZ3cAjb+acCiNB1zSu8h6EInKRfHEy9t/AC63eraFXtxzqTqDr5giAaW6DqKuRXYc9HvUNjS8FInoPCUC41D13NzAJbqkmVBUw+oj8cE5dutRbt51yy5NoOUUOFuhN4ogZ5pKFKDiFYzz9Lpp9bsj3YY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046965; c=relaxed/simple;
	bh=HBEXhvKft7abP6w5W2KiowhqX8eqk9Ser9/XfYQKCSw=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=QbzOidhYr7CRsO7kmRAloXaKYmY2elhb2PBGW0jdxXT+59OFsiqNwcPSfG0nakgQVINM629jvV81jnB1MUkc1cUAo3IsAfejHKxPHuqMxXL4B2z+FRcDmB/5BluZHcs8ZLhbT7S3kXxNp4G8jeJ2W0VM1x6CuVPuvYPgNLHHmPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=ZvUtEtND; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046925;
	bh=62Pd2pr7TPO4d6CdTt7UlCX42Xtf90c3irFOEIZEqq0=;
	h=Date:From:To:Cc:Subject;
	b=ZvUtEtNDqTlIeTHtVMa6RscdcYSlZg7QoWAjKG93DmYTkZnHaOatfb8n8ECzvMC34
	 a8Jzcb2k1KzSTFsYHtXaKYDGKk6/tV20ydYpQBTVGaLeNPUlGU8XVz+ApFeZ0DzwjN
	 s4csAsnL+AzPOzHaSeUTmawbKb47oMm75fxTLW8YIXJY54AzJqVas8NToK61+m6mr4
	 ZjUxmwDDPW5ERyreJpIOIDby25kW2X5HjCeFzQpIPDj5RQKllAxztH0hUNADg2k2z4
	 6VDjRGK3Hii5f8ad9brq4D7jxr3KqNIP53wvXEYk9ZIO/99F/RexCPP3dSzgjNimzc
	 S7PIItJzh5fGQ==
Original-Subject: Issue in man page mknod.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021747.0000000068AB264D.00139506; Sun, 24 Aug 2025 14:48:45 +0000
Date: Sun, 24 Aug 2025 14:48:45 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page mknod.2
Message-ID: <aKsmTfD-uij4dukU@meinfjell.helgefjelltest.de>
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

Issue:    This is the man page of B<mknod>, what is "like B<mknod>()" supposed to refer to? Itself?

"If I<path> is relative and I<dirfd> is the special value B<AT_FDCWD>, then "
"I<path> is interpreted relative to the current working directory of the "
"calling process (like B<mknod>())."

