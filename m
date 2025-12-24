Return-Path: <linux-man+bounces-4502-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 650E8CDC8C5
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:41:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 62906305058A
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 987BC358D33;
	Wed, 24 Dec 2025 14:38:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="CFzlHTPB"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D43E1358D21
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587115; cv=none; b=nd8hKmW9L4jiGm+u6BNSCx1fgWR9i5mnFgfA51OtXXeDlDhjahPsXz5sTrmEE3P2IwylxAymHO1zQ6fUorgslPCz+Z7gVcNDBMc9xeQyiQz81kWxH09hbMZ1Ial9ylkox1ZOCHB1DCOhzkR3hwM6q/UdTHXB3HA33m+YfrVg0ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587115; c=relaxed/simple;
	bh=fOti+cjKTDzyD8r4uV/XXLEBZG6SCNRaXQjFfdMXujo=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=ZlZlTiWDerR8WrTihunhHZ57nmnj+zftBHM5aRjaLKJokcWPSpV8Ek3fnpVUAPVegraHOLoWYUv42jYV7OupokbcBwEdLXYJwuhkz6UTMwbF4P+sOuOnqwsXGbE84ykCgSpbgExapad/J+b0f3oyge7qMiXFBzqSxkesHUpuq3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=CFzlHTPB; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587103;
	bh=K1C/qQBEBPnBWXzJMznnMRRiU9YvNiTzHInB1uMnczc=;
	h=Date:From:To:Cc:Subject;
	b=CFzlHTPBivuLSrVXm0jnKdN3YMrDNW4WCMGILO5lF3kidWjTW7GzaG5fT27EwJCRl
	 X38t/2ASlfNdsku58xQo+Q6f/TpnPn0nYsNDF0yNW8xmM4qCltaepmOm0YRoWP01y4
	 DzIWegBtjR8Q9hm7YpkG6Z/cT2eUVoGyrz01BOW8v5Vkbqrow1sXZoHQBrV+8z/Lrr
	 EqzOcDIw7FenHZ4oTg16Z5Dt5DD9hEq/sOTmbQQNfgLWWaqxQ372AI7oHeKnSS2kkA
	 cCx+OiAGlm0ET8taEpqpM/DX2rUixY0EjPLhKjjryspKP7kDdHPQz6DrRwf6RaVh4F
	 2FI5iXoHW+zog==
Original-Subject: Issue in man page  PR_SET_MM_EXE_FILE.2const
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000209E7.00000000694BFADF.003198C1; Wed, 24 Dec 2025 14:38:23 +0000
Date: Wed, 24 Dec 2025 14:38:23 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page  PR_SET_MM_EXE_FILE.2const
Message-ID: <aUv634z31AeeWkuI@meinfjell.helgefjelltest.de>
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

Issue:     This the → This is the

"This the second attempt to change the I</proc/>pidI</exe> symbolic link."

