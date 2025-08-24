Return-Path: <linux-man+bounces-3606-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 145F6B330B2
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C43EB441E2A
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5138E2DECB2;
	Sun, 24 Aug 2025 14:49:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="c6Egb7rJ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6E6B2DF3D1
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046946; cv=none; b=Sk+Les5OCP4ylcufo4PrGRy4zO93ZV/tZwB2+nXzOqtdY1OGddrz+BIq5PV9HwuLUOsXyvjKU3u3IQx1rMwt5kWZYBEzUhN0OBpL7MuToOfGeIxxlW4CRbfhQj7y/EZz3+t0VeVDw8hBXw0AWm2qZGZ2QdmQOEBIQTwvpVuo5vA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046946; c=relaxed/simple;
	bh=+1tVHQT15xIv3jKc3qSBEKw/lhqlWzamh8/4sCqHbPM=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=AcYWoD22REr/ysWtDN8QcGAfCioKBVF2dXB02cWFJHB6ALCTPDlS7NMoDQVFOoZlfnl0b+J+R77sAe0+RLHHTm4NaxOA/5OMgnZ36sllU7zWa3qI3HflZtQN6YlwhhcWx+B4UVAPK17nSryGckwwdoxYI3XSaY0Kp9HeYuC6Nqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=c6Egb7rJ; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046920;
	bh=AVEN71CYRbanVLK5mJD03zuLq8LomkfBwNfRVMHWucg=;
	h=Date:From:To:Cc:Subject;
	b=c6Egb7rJBGz8UZIzRn5DlbdoDoQktGQSKWuvzjgXQAVpyYuzGjjAEb7yB/ELRfCs5
	 SLOU48xbN9xKgoHLCC305E4IY29QMY37BdiXIDUYbVcx/ER2gAHiM0H1o5Oku5qD/a
	 FzFKP4qou71DRKZlau10eIAwpgMCAGc8NhOqzyfCgGl3XtYP6vPmnKt0Epuh8swPPg
	 h1TBIQJiolYLXZrTSOaDYRU9bCqpEfoFeYh5Rs0TgZlhkesnYK1MtW2Lyb+YKS8y4Y
	 0BerrvV7D2xXaHMzSy7HM7MSPcQlFv5CQOtJXen47oiBP9/KdAOFLzNoiHoxqvBXES
	 8VPvZp2uH+oDQ==
Original-Subject: Issue in man page getgrnam.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021703.0000000068AB2648.00139135; Sun, 24 Aug 2025 14:48:40 +0000
Date: Sun, 24 Aug 2025 14:48:40 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page getgrnam.3
Message-ID: <aKsmSP6HdG2psC-o@meinfjell.helgefjelltest.de>
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

"B<int getgrnam_r(>size_t size;\n"
"B<               const char *restrict >I<name>B<, struct group *restrict >I<grp>B<,>\n"
"B<               char >I<buf>B<[restrict >I<size>B<], size_t >I<size>B<,>\n"
"B<               struct group **restrict >I<result>B<);>\n"
"B<int getgrgid_r(>size_t size;\n"
"B<               gid_t >I<gid>B<, struct group *restrict >I<grp>B<,>\n"
"B<               char >I<buf>B<[restrict >I<size>B<], size_t >I<size>B<,>\n"
"B<               struct group **restrict >I<result>B<);>\n"

