Return-Path: <linux-man+bounces-3616-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B2FCCB330BB
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A69204E1231
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D2462DECCB;
	Sun, 24 Aug 2025 14:49:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="TF5Bsf1g"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A49BF2DF3D1
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046951; cv=none; b=lj4qqxG713borDF6WaTZ1uOcaifVIK8Lc1BKb3UFyHhsod43Z0w3rf2nVoEGqWLs/pFqFCaI3sa2k4Fs36iLsaV5wndYEfJjkuip2mfpNxZbw8O/+sqzFT/dnH1Fd5iPtOBQnzOvQFWWtUKGWBFkMx+N1YWcFktrwI3vraV3ePM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046951; c=relaxed/simple;
	bh=8PQ5N7qSzpx+srlel1iQcKeM6tn5FqCvD7izJkO53Aw=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=me2dK0DI4S+At4X0tGorEScCJlVWAuYVz5xc5HzuxoGN3jzIrdpVWbojoLLMFt5IaJhA5eKlEOCJr8hvmMoW2LcvM01+2d5IdsQhEVt9BrYcWQ+D4uNLczRh3zY4RLqP8vNHLBnyw347a9KxNN1fn8+k2KfHJJQPYN39EoU9Rc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=TF5Bsf1g; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046921;
	bh=hsx5VUb1c4zAJb/Su0m5b8gL+PTtz3mn2fCxZtOcWyw=;
	h=Date:From:To:Cc:Subject;
	b=TF5Bsf1gO7cLnOkteM2lH2O20a1Iq+A4NjiomsWRBP1lQ6zH09Sn7692ZV8FPhngs
	 o6zw/CZ51/JROmHTE1CxL0s/8A6sZY7opbOq+xYne9pUPwQr746cxALR5KAJ1Bh8Oi
	 kJlgUtCXSFl5Ca5DGUbYrFLBMty1n3fA0bBb7r10uLSmluv90RPWL8HpNxxC1dwcWg
	 bs/DywahBVxjAT5Q2VAOr9X2FdoBlGjgcqs3LAPAVW3k4ZGMoZqTiPWi0K0KMiAXVR
	 V6uqD/+ezZHPccq4lCfPCMFnofCwoI7KJrUS5oMwNIHD4/pg7f8yPO17VvOnWLIo0/
	 aKSha1NHmh8BA==
Original-Subject: Issue in man page getrpcent_r.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021714.0000000068AB2649.0013922F; Sun, 24 Aug 2025 14:48:41 +0000
Date: Sun, 24 Aug 2025 14:48:41 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page getrpcent_r.3
Message-ID: <aKsmSZEEwn4KbCye@meinfjell.helgefjelltest.de>
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

"B<int getrpcent_r(>size_t size;\n"
"B<                struct rpcent *>I<result_buf>B<, char >I<buf>B<[>I<size>B<],>\n"
"B<                size_t >I<size>B<, struct rpcent **>I<result>B<);>\n"
"B<int getrpcbyname_r(>size_t size;\n"
"B<                const char *>I<name>B<,>\n"
"B<                struct rpcent *>I<result_buf>B<, char >I<buf>B<[>I<size>B<],>\n"
"B<                size_t >I<size>B<, struct rpcent **>I<result>B<);>\n"
"B<int getrpcbynumber_r(>size_t size;\n"
"B<                int >I<number>B<,>\n"
"B<                struct rpcent *>I<result_buf>B<, char >I<buf>B<[>I<size>B<],>\n"
"B<                size_t >I<size>B<, struct rpcent **>I<result>B<);>\n"

