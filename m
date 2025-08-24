Return-Path: <linux-man+bounces-3610-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B1AB330B6
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C8F801B25A39
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44FE72DECA3;
	Sun, 24 Aug 2025 14:49:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="Ss6tr1h9"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB3672DF3D1
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046948; cv=none; b=lj5vHwn28lsJ5wLsMm8jNagWu+D1CO6XhpWHC15KHYs43ZuCJlcGwkCcEU9JgYD01KR24eISP16HxzFggNl3bjFuK1fbtygCZxZvI9Tc+11K+PX4CTyUeZXSnuVAdQIJTKteaQ9MbMJ9kFr+51nSvbiGyUcDgg2H2esOIvYzyO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046948; c=relaxed/simple;
	bh=MxY8fAbB7Yy1XvsbMGCfWBN7geeYXQAZre2VbcWTt0A=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=PXWreAed3FsT3A6MFYKi1vo6zVGicJFjr3MsNeo9EMm1ZCNu4KkGdukBoFkSnHAh48FgOcyLwBpwdYh9wsdk05KxCb7FhgTeSW2QdglIjNwCZWFHLHmb7wISDq+Q+Xga5ZOmfguMiARlmNpFMGFowFWZRRMZmSONKmVi779/rN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=Ss6tr1h9; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046920;
	bh=0gJhittgLNVzBnmiuu90Cilx70i4gR3UbmxoclDLVa8=;
	h=Date:From:To:Cc:Subject;
	b=Ss6tr1h9wbbX2AfGucIYLw5f154mnWmkgwyza/Ww1lz1LPeoTIZ6OeH1nYLlRLwga
	 n0w4nJBPK2ik+rQyQX7pHoq0rSfw0Ms4F4J0J8tlMPsHEO5boU+HNZg/tKinxkCCXb
	 EijMHB53PhwV+YDH3Ig+EIzNKFntdD2gZa9OtJ7iMZmJQ9GMQfY/TtnJ/5XuRTTNT1
	 xzCapKnte+O5Qcj6J45CMSdjZHqJE/Xgv0eO7ZenxG5Mu4NRDsyanmwTtHqLrYeop+
	 cOzGOotOopSPkMSY8C8Arw0jcdMFDlTqnpELN2UGwMPHqEPWj1Eln66L+VlCO8QBXj
	 tzfxjgdIss5cQ==
Original-Subject: Issue in man page gethostbyname.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002147C.0000000068AB2648.00139199; Sun, 24 Aug 2025 14:48:40 +0000
Date: Sun, 24 Aug 2025 14:48:40 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page gethostbyname.3
Message-ID: <aKsmSP-dfdKqvhFd@meinfjell.helgefjelltest.de>
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

Issue 1:  B<int gethostbyaddr_r(>socklen_t size, size_t bufsize → B<int gethostbyaddr_r(socklen_t> I<size>, B<size_t> I<bufsize>
Issue 2:  B<int gethostbyname_r(>size_t bufsize → B<int gethostbyname_r(size_t> I<bufsize>

"B<[[deprecated]]>\n"
"B<int gethostbyaddr_r(>socklen_t size, size_t bufsize;\n"
"B<                 const void >I<addr>B<[restrict >I<size>B<], socklen_t >I<size>B<,>\n"
"B<                 int >I<type>B<,>\n"
"B<                 struct hostent *restrict >I<ret>B<,>\n"
"B<                 char >I<buf>B<[restrict >I<bufsize>B<], size_t >I<bufsize>B<,>\n"
"B<                 struct hostent **restrict >I<result>B<,>\n"
"B<                 int *restrict >I<h_errnop>B<);>\n"
"B<[[deprecated]]>\n"
"B<int gethostbyname_r(>size_t bufsize;\n"
"B<                 const char *restrict >I<name>B<,>\n"
"B<                 struct hostent *restrict >I<ret>B<,>\n"
"B<                 char >I<buf>B<[restrict >I<bufsize>B<], size_t >I<bufsize>B<,>\n"
"B<                 struct hostent **restrict >I<result>B<,>\n"
"B<                 int *restrict >I<h_errnop>B<);>\n"
"B<[[deprecated]]>\n"
"B<int gethostbyname2_r(>size_t bufsize;\n"
"B<                 const char *restrict >I<name>B<, int >I<af,>\n"
"B<                 struct hostent *restrict >I<ret>B<,>\n"
"B<                 char >I<buf>B<[restrict >I<bufsize>B<], size_t >I<bufsize>B<,>\n"
"B<                 struct hostent **restrict >I<result>B<,>\n"
"B<                 int *restrict >I<h_errnop>B<);>\n"

