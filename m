Return-Path: <linux-man+bounces-1939-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4703E9D02FF
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:51:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0C2BC28334E
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:51:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99B6913212B;
	Sun, 17 Nov 2024 10:51:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="oxHExWRc"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD9B1392
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:51:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840691; cv=none; b=deQKLZyJ0ynkmUEnK8X9XFAUMlt3IKmWw52bCo5VQsoOvLkRzshe67wzV2xaXoSXZy3VrV+xSsKJ3+pkAmfw2RaWpVtuOLku+XA6OSjTTJDvWMID3o/2oWwhxTcBzFg/jKh07eYqfy7Vzvc2FCGC9glCslqt7NgEdk5nraAPDOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840691; c=relaxed/simple;
	bh=klKF3mpsrETCbCn6EgyurNlkdJ6Z40QJAdhrQK6NU2A=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=ALVPWkeSW6YD5NkL6HBsYY8HVzfPcKD8Rsr0Qau8X8/9wuVLjvD8QGmOsk1uHG0ihH40sXl709/Q50nKfYVjiscxL91xyJDF65z7PPP4p7ce8fROtjQt9fepFt9XT/GXTWSbH7DcSp+1pC70g1nbkqDSqgnwmwg6mWCVcW/ORw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=oxHExWRc; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840381;
	bh=8D2kqxy88qkEFoykVZsW0e6GnFiSaD5BCfD7jkBK/FM=;
	h=Date:From:To:Cc:Subject;
	b=oxHExWRcXXoinwsqjlf+wEwBDP2Acof+IHrFv7QQzbi5uUTnOVVNjczHNGBEdg9xb
	 AQfp0XH2YRA7m/FS32orb7EVijvKmc2NSRuO0Fpex9J+PyOPys1IJYtyQbznnZGtFN
	 I4w8LzqWiUKIzXkaaJyrx3kk/Y2i50VWwjHkFIwaaOr2ZHB99QmEo8603nalI+yyC/
	 Ms1FmC3sD5Q3ALEbvRdIQGEwiL3NkyBBh2kWZsdPPq09x7/NL+Lj8VykEYTra0Zjvx
	 eaFJjeT2jqzeH2CgdzAk3kF3s314BOBNFbyWgfn3z0nK5LsY77F2nkX1bjfys8mwk8
	 rTqNCYBxZSqDA==
Original-Subject: Issue in man page getrpcent_r.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000200F6.000000006739C97D.003FC26B; Sun, 17 Nov 2024 10:46:21 +0000
Date: Sun, 17 Nov 2024 10:46:21 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page getrpcent_r.3
Message-ID: <ZznJfcq7xl4n6oXL@meinfjell.helgefjelltest.de>
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

Issue:    I<result> → I<*result> ?

"On error, record not found (B<getrpcbyname_r>(), B<getrpcbynumber_r>()), or "
"end of input (B<getrpcent_r>())  I<result> is set to NULL."

