Return-Path: <linux-man+bounces-3624-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D86B330C6
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C09517A8E4F
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:47:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21ABE2DF705;
	Sun, 24 Aug 2025 14:49:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="Cxooc0kF"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90A642DF6FA
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046954; cv=none; b=WS6+jRpLOiVONTgP3X1btUFYSSZF3CztLimaXvR7aByPHMC9NNzRdg/1caTeYup6uCrtVGcwbLz9s/+PQDHMh7eQEc/+swL3kZcumDghoMTNC3zWcS054pC6uQObZjk8+ZwM/wzzd7mDgGqDFboJoTb6qigLAEp9o9byLFAU958=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046954; c=relaxed/simple;
	bh=4UFQCNVF/Dqk33mLCsSYpVKoiVblxBeGni801C8vEtw=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=r35estKS/qijsPYuiN5embE3cRb69acRFW0UNyLiJLzlA9OJyzxSWmKUyKUq1X7uGcjPAUbI8soncEjGRhOlCJ1TW7Mt/WiJ/E70TH2t5vxLKCVzaIloltF3hdvnNEtWM5vyLlOyjHCKIrsjW9PPY7yFnS1htDejkqU+KQn+ct0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=Cxooc0kF; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046922;
	bh=3eZVYbc/0z3k1x7X4sDURmeqjd3TQDdOmyt8R75AxHM=;
	h=Date:From:To:Cc:Subject;
	b=Cxooc0kFsdvV9yKMQaMhu1lWAuvgZh7r/luhrt/Or16KkBoSkJb57DqTO6xe52Ft/
	 1HhPwd4XJK1YT1u3v7HklbAeowlvd5JnRpOqgv1e0BHVmv8Xfad4pkZwhwLhDr4xw7
	 sEe3EZBLJCoAJuwi9YvQN4GDQSjS1qJXUZkoX9nu+CY6CQO+k6sNO1d2WzfBusW0GS
	 I6E1yCSaWGTWumpRtb4yzJNO8d5y6S2kC4ojSHcszskypiLUrF+5yjwBHET5abrRxZ
	 nzrOGGWOhGvHTO0+R1MoNO1kRt3xN7OvMYyFAiDJ61Is1tJLbBiBCzOpAWJSHKYxKX
	 8zu9ri0vmoyuA==
Original-Subject: Issue in man page isalpha.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000214D5.0000000068AB264A.001392F7; Sun, 24 Aug 2025 14:48:42 +0000
Date: Sun, 24 Aug 2025 14:48:42 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page isalpha.3
Message-ID: <aKsmSoYQ-cuMsni8@meinfjell.helgefjelltest.de>
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

Issue:    I<(isalpha(c)\\ || \\ isdigit(c))> → B<(isalpha(>I<c>B<) || isdigit(>I<c>B<))>

"checks for an alphanumeric character; it is equivalent to I<(isalpha(c)\\ ||"
"\\ isdigit(c))>."

