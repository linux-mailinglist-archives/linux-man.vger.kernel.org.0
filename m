Return-Path: <linux-man+bounces-3543-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 959A4B33073
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:48:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 72362203B06
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:48:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0ABCD14EC46;
	Sun, 24 Aug 2025 14:48:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="sT7X+6iQ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4A3B1F92E
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046887; cv=none; b=j/o4uFWKWWIK+CxrHOkbgt7DIIZ1LwuUrMMwO4NqH6PnRrr8iEh2XaI0wyDR4nJBwj+nHoZ+n+GrzKaBUzXujeeE0uFYS5KtsyjnNw46X+0+tNMwFthTsX6AKKf5f9q9M3Bfk1uaR5AR1xjJM/MIT75MfKkkod5W2MNutthIUus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046887; c=relaxed/simple;
	bh=ma+5V/kBOF9bPYK2F40VvJXkFO/4yNM5yOq5jcJIe5Q=;
	h=Date:From:To:Cc:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=hbtNUxoiuBiB6TPvAEw2xqqLo6nPEsJvEyfQb9l9a4uWvuMxtKZP08+Vy/XycDxT8+CtLAkK1qXvMFeNQiUSujEo/m4xtpLUra8yQbfpp1/3FgSgBXQY3GdDCCzbugIe9+/TyUQ9SeIf4GvlIRzmL+P5UqQlPMkjx/8EyR8we14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=sT7X+6iQ; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046575;
	bh=ma+5V/kBOF9bPYK2F40VvJXkFO/4yNM5yOq5jcJIe5Q=; h=Date:From:To:Cc;
	b=sT7X+6iQNTd5uExbL5WUVvUENnQmRiXgo+0PZpLqhbGJ5BQnjAqn7yFlAECFuWCwc
	 Id5ue9WHLDRprbucDOr1nlWuU1/1SYnoVKcakh59PdKCc9b0ZijxbX2y//GikPqDNz
	 KZs/+ioonPOiXlLq2TU6gFx9uqF/QEc1YkxtnDZVBCSfbatN3ngkG9NaOUCMGaR+nW
	 1KEYeenv4z5kSysM4B/oAVr36L01nKcpUidTJFDpb4NpVi6WsA7jBjas4SOr8XZ+JJ
	 Zha4P9HykeUZ5Sr6Xmll+wi2uJVS2GiaDQ5b1rzvvoz7ZEnjDy58hCJJ93WxAP16Db
	 KVpwXyNdzKkXQ==
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002011F.0000000068AB24EF.00138552; Sun, 24 Aug 2025 14:42:55 +0000
Date: Sun, 24 Aug 2025 14:42:55 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <aKsk7w7d7uOwWXbH@meinfjell.helgefjelltest.de>
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


