Return-Path: <linux-man+bounces-3544-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AE72AB33074
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:48:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 519A0441D87
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:48:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1162B1D63CD;
	Sun, 24 Aug 2025 14:48:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="JjrLPuBD"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A8C1F92E
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046914; cv=none; b=NxVkvjyQRqNm9Rwk+dm+ZLc/MapmxKS1AzRp96uwcPcT+Xpstdp/txoFQG0uPsLKbefxAJSWVwPJ26m6o7MhzQzXkDVQ4rphR0f7wpIg7irhxvdoK5WzKtR4mxkbGDlmdl6uqO6ax+aYa7kmuyjR3/oYv0vdUo8xMM6gWgW1F94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046914; c=relaxed/simple;
	bh=MSomurAiw8uwNkHgdMHX07fWD/cNfWmvvNI/t4dz+Fs=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=vEwBvmICeHy/uC/MkrpiOox2TPGWqCjKPwGBWG0VOCV9enMo/olwI2Psdrt5/h25rq8h5NabznMe46B6xshvHoP3lnDGBAEhVhgeb0T/khr3EzyRWMxrCFlS+GH1aR+3TwLH086kiTijzTTLcXe0cigdZzJ8WOsgr94NqtFIS4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=JjrLPuBD; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046912;
	bh=RHuRaXi0cSfIFOQQ6qmt/qX9xVGK/eCfV6H5sjLTo8E=;
	h=Date:From:To:Cc:Subject;
	b=JjrLPuBDhabl0kYvW1S51BPdzR7uDEuw0EKoJF5DmJpocRsbGjW6sdgaA/BcEN95N
	 XSEoHhI52WvJY7MnY4uMAdUxQkAbvqBy33suwW+n4nUNWhiMMuuQxdCDGpWufrMsQk
	 Hoy0DCIkOmJcL/jI4RNktboUNvmNKwUGrWGtiMvfnu4BDli2JQHRLtH6mGqqBTkEDC
	 1LmFWkpl48OjC6mWpVsfYuLtWGHhtLccoDf/hFhoTwkGVjVT/FcDnOcHxlG96AcG3S
	 ujbF3+A6tIHBt8FShC+wn376HhHI+Nh+preMAKTiS98v0rjlgaXuTIGhf91cuJT108
	 FjWVSmBdPN1pQ==
Original-Subject: Issue in man page resolver.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002011F.0000000068AB2640.00138B03; Sun, 24 Aug 2025 14:48:32 +0000
Date: Sun, 24 Aug 2025 14:48:32 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page resolver.3
Message-ID: <aKsmQBB8CZKAhQvH@meinfjell.helgefjelltest.de>
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

Issue:    B<…>int datalen, int buflen → B<…int> I<datalen>, B<int> I<buflen>

"B<int res_nmkquery(>int datalen, int buflen;\n"
"B<           res_state >I<statep>B<,>\n"
"B<           int >I<op>B<, const char *>I<dname>B<, int >I<class>B<,>\n"
"B<           int >I<type>B<, const unsigned char >I<data>B<[>I<datalen>B<], int >I<datalen>B<,>\n"
"B<           const unsigned char *>I<newrr>B<,>\n"
"B<           unsigned char >I<buf>B<[>I<buflen>B<], int >I<buflen>B<);>\n"

