Return-Path: <linux-man+bounces-3646-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D0FD5B330F8
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:51:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9D7F33AFC86
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C15192DECBC;
	Sun, 24 Aug 2025 14:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="PGH4QC7m"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFBF2DECA3
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046965; cv=none; b=t/I2zv03nmOCs30gHxHH2uK4zVJAGWcmxajzyLLvPBDZiI9C62c95E+a0xn6MF1/lTeoHrmTDUjuKjADZ7rqhsKn0Vvl03U5LdAu0gRhj+aTie4CC9InuBE8HE0jq9V6uPTR5AznaUEYIVOvXml3rlHU+tBz5ldtsDfigjLyWJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046965; c=relaxed/simple;
	bh=ZhXk36nzoS3rBZufOyJqaWl6tdDv9FA/dr/rI/DU7yw=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=dnh7LiAKsX8IoR2QB9tRMmYlLr18qdd2ZSlfhjZJidoY/qHwq043xxjntL1iisxYl/7MgkjT31tPZou+BBcjIjBrP5NHNIWVTqt8dnR66Mqn1mvfb4fDyqEpGO0QzphYPEiax5gzDpInCNbgT7FJFZQ/WbirK8FdfPAipZLlvcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=PGH4QC7m; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046925;
	bh=YXYSqPzDzRjs+wadjriVTv/kuFM2Wbx7z9cCh3E3aXs=;
	h=Date:From:To:Cc:Subject;
	b=PGH4QC7mrPqhb6cpPB0l5Ge5xVe+aT59QKjfA8pey5xJ49BbNZMyQd3EQ7QZ1XNV1
	 M2/iTySjx9rphwIYqpkqrxK028EuUCExhCJE8OJN8ckTup+EDexAhDCkV+V/80Kspl
	 /MWOH3ku8btbyVP3PERdAN17aFV891loDf5JdP9mPENDG5nPoXrzhIZxNBgwPz1Ier
	 h6uQvIIO6RKw+qrLgyCYcY3SuoxV8vqydvjanSzfWMDzazIhHEStbPhsestKmOaTnZ
	 3ZTRnKa+goZONyzJBZ4yHbyv1wljKEWrFULGCaK2RzQXsRBX47suFppUvaLTp1EoBM
	 ADbkcgG0SmS4Q==
Original-Subject: Issue in man page mlock.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002174A.0000000068AB264D.0013951F; Sun, 24 Aug 2025 14:48:45 +0000
Date: Sun, 24 Aug 2025 14:48:45 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page mlock.2
Message-ID: <aKsmTV3HvgZ4HfPh@meinfjell.helgefjelltest.de>
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

"B<int mlock(>size_t size;\n"
"B<          const void >I<addr>B<[>I<size>B<], size_t >I<size>B<);>\n"
"B<int mlock2(>size_t size;\n"
"B<          const void >I<addr>B<[>I<size>B<], size_t >I<size>B<, unsigned int >I<flags>B<);>\n"
"B<int munlock(>size_t size;\n"
"B<          const void >I<addr>B<[>I<size>B<], size_t >I<size>B<);>\n"

