Return-Path: <linux-man+bounces-3640-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C9980B330D6
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7DFCD4E178B
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04FFE27381B;
	Sun, 24 Aug 2025 14:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="kg0JkYJj"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F8B92DFF19
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046962; cv=none; b=e+7tP/EPpw22dCloJsHvM8jhAhGrriBjpqkyoqBag94Lwio7ooECckaOl6ooEh2C3tbtuP88FVdz6YHmz7yHIa4rpubn+h0nQce6awkTzJ4L0+xLZCm4ILRLSt5Bo/lZ6DlbNV2MCfac+9n7k7111XNPe1f3LCoRtrlrLsfkiNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046962; c=relaxed/simple;
	bh=M9gPvf3k/OYkNA+KtmEknh7b9lUAkKg2OQjRIrj50J8=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=okRlKYFj6PEcTZubjRGIjS/mGoTnBIIF9MbrAyBxUPBi5EjVPpCqcRqiqmBokp64YJBi/HY36KBKj+4QgI0X5w3OmXhmk/JLKeE6udwrlbh5TuN+6t0NCoB97q3/7akxJQFomHogibrXh641zUflaUziWaUX3w3hjPSuPK1TfFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=kg0JkYJj; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046924;
	bh=YAN3SV6F8JqWoCHLMWUmPH6zrSOi7JsOD5BE8NobbDI=;
	h=Date:From:To:Cc:Subject;
	b=kg0JkYJjU4u8lsTTCwAbi5IV6PKV9ioeh0rMrmrGL+mSXg1O5cJ3cliBeIjuEBqes
	 oPssJ4KWhA0p0t8jM86SgKC0hstPcXzZsvDsTZfvzqXGDxLbj58U+We2A9ASz/mUEZ
	 Nnug3FntqnPmIChW/Pxkz4LqHfBU6IbrTAwTJ8oovVuCy3Zknh0HqI2C7VcI3WeNhD
	 iKya7xzwBlc6npdlWwCzIxlXjzw3BJ2SHAhD/o4Zdr5BNL5+1lssmUp28/+kGh2NAv
	 9kNE8W4SjGZU3FtJIh5RHROY5rvSImXGRRkQ4I5TDIWGLnhqRr7bq5jrIBKs5IiVq7
	 pRESbQWawQN0w==
Original-Subject: Issue in man page bcopy.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000215F6.0000000068AB264C.00139489; Sun, 24 Aug 2025 14:48:44 +0000
Date: Sun, 24 Aug 2025 14:48:44 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page bcopy.3
Message-ID: <aKsmTDSFRXAA5Zt-@meinfjell.helgefjelltest.de>
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

"B<[[deprecated]] void bcopy(>size_t n;\n"
"B<                          const void >I<src>B<[>I<n>B<], void >I<dest>B<[>I<n>B<], size_t >I<n>B<);>\n"

