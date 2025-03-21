Return-Path: <linux-man+bounces-2621-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3618EA6C302
	for <lists+linux-man@lfdr.de>; Fri, 21 Mar 2025 20:09:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 80AC017D22B
	for <lists+linux-man@lfdr.de>; Fri, 21 Mar 2025 19:08:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A4CA22FF2B;
	Fri, 21 Mar 2025 19:08:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=clisp.org header.i=@clisp.org header.b="IvnErcej";
	dkim=permerror (0-bit key) header.d=clisp.org header.i=@clisp.org header.b="6aGqyGm1"
X-Original-To: linux-man@vger.kernel.org
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [81.169.146.162])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EE9E22DFA4
	for <linux-man@vger.kernel.org>; Fri, 21 Mar 2025 19:08:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=81.169.146.162
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742584109; cv=pass; b=fDtoqO2Ed1MBEnG0DIslxDeos5nigByumZ38FPEPXpL+6eCRgqti9g/lrHYFT3/p67e2HTI2pxTWlJ6XTOsPFAOJETWquXdT5TIJkc9RjRd4JIf2HYcLcA1ZjmzCm727ljhbJhS2aUEk6ZFy8xQgIZC9S5+SWZ1yxwDOYN4603c=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742584109; c=relaxed/simple;
	bh=TuGNYsvy4DXisLO/KgS6izneUMNq9WSIIbtL8jSNVzw=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=FzkGpvPFWboPmFZYSSGXKBCLRcnyWy0QmZnruMc2WTldO7+LSQXACtf2D8Za2XRxeAUPrgu32yzE8zZeddNhqRGgXIaH2GIub/fKTxK/R9nioRrUdKR3WKmd5/XOSKPUpnBlCnOMXLFBQl/UC47qrP8kOE8uz9Piv/3ONkbebIo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=clisp.org; spf=none smtp.mailfrom=clisp.org; dkim=pass (2048-bit key) header.d=clisp.org header.i=@clisp.org header.b=IvnErcej; dkim=permerror (0-bit key) header.d=clisp.org header.i=@clisp.org header.b=6aGqyGm1; arc=pass smtp.client-ip=81.169.146.162
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=clisp.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=clisp.org
ARC-Seal: i=1; a=rsa-sha256; t=1742583918; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=Bn/1qE/GgaeY6FVaKai8JfqR3YCOqSm6a9eXoaGS5NupqHrX5AvbR0rwU29XqNXzwS
    9FpaT9N3jpzYLo84v+FG1tnnVaw3I5q3+u+bHFibhKVZudJMKprmZt8tR4oF3TR+cx6A
    xGw6Iy3wm8I9GHQwMIZU/6tfO0ndnBIGoiuy0xuvV8NUJV5PuYdlT5OxsElZ6KtlYgpM
    0Jw8RMpWcmo0okdxSpqDomuGqKz7zcMeu2PmmawGvtav9PPm+syEGty1gb2h98DwH91Z
    +n1+WHKVfoW+fYJ8S665oZFosOIlcULyCXRkuvgVBmKCbzDY+RhxbttvOXVgvyxMolw7
    bvEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1742583918;
    s=strato-dkim-0002; d=strato.com;
    h=Message-ID:Date:Subject:To:From:Cc:Date:From:Subject:Sender;
    bh=ZyRLFMk9wTzF4EzL2yk2OyHWyDFfUXlY5jOU1ox2A60=;
    b=LQo7Wu+c+KxIrDwvue/vchjdOgXk0htzvZJ2BfEjh9FtmAya+atHh9TKrS5NbOhpku
    CG0JuBYjE5R9/28dVdc3276b0YbtsflQVv7nVepGsrPa3dIJmsU3BoRxXNugI2ek3/8F
    /QX59BdOWdcRZt5e5Y8qw5vyv7BxjtDInnYero+SVw9oMgLU/mqpCjIsdXiVH7N08Ho/
    3M2IXutcUkwpgfJDrJyAmj5sfd8IaMgJpZ+7n/jkP9wZS1bNyGMHAXZE40HZIs0Tjk2p
    SYSbbTWUsfOF2n2Vd4xwWiiJK1Zk3KO0jrkNuQnx9Z6+j2aPDgEnZvHOJnfpXWpAtU9v
    QaXA==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1742583918;
    s=strato-dkim-0002; d=clisp.org;
    h=Message-ID:Date:Subject:To:From:Cc:Date:From:Subject:Sender;
    bh=ZyRLFMk9wTzF4EzL2yk2OyHWyDFfUXlY5jOU1ox2A60=;
    b=IvnErcej73nvpNqXr9tzOAHAtOvYdDxILeUOUNX7W8/ppvS86w1Q6ro1SNsUitSSEQ
    UCGK42QzwPMlA2tWENC3gQKnc/3t+yw65UAlRQ+4B8HgKItdGiKq24SqIlOBJmktGCWg
    GQPbnFZYVL9Gq8brLd5l5Yk71/fnYlG2fesqDBHuFgsKESUKeJBHDdTnDX4aE/QZBmcE
    vpUAK3N88tp3L3Pg1eWRmaOi5kZyXVLbNYDHMJgxQBd44UELSSRoQukhOGhK9lETGYzh
    0X5/t6wW+7eYS7BlqGcKowBD7H4seExVBGHbgbv6ZoDHx7PuKxRr9RMSIvnzznBMd3rt
    fEZA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1742583918;
    s=strato-dkim-0003; d=clisp.org;
    h=Message-ID:Date:Subject:To:From:Cc:Date:From:Subject:Sender;
    bh=ZyRLFMk9wTzF4EzL2yk2OyHWyDFfUXlY5jOU1ox2A60=;
    b=6aGqyGm1prNgPTkajGM3LZWNlBxuPJSy1+xkXi2qf1lIMuoKf+O9pLrw94gHpxFOnS
    ipOu3siASeGkOf+6dGDg==
X-RZG-AUTH: ":Ln4Re0+Ic/6oZXR1YgKryK8brlshOcZlLnY4jECd2hdUURIbZgL8PX2QiTuZ3cdB8X/nqjudQGqu6PE53xUYf1X3lkG4dJM="
Received: from nimes.localnet
    by smtp.strato.de (RZmta 51.3.0 AUTH)
    with ESMTPSA id N7dcf812LJ5II2Z
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Fri, 21 Mar 2025 20:05:18 +0100 (CET)
From: Bruno Haible <bruno@clisp.org>
To: Alejandro Colomar <alx.manpages@gmail.com>, linux-man@vger.kernel.org
Subject: strtoul pitfalls
Date: Fri, 21 Mar 2025 20:05:18 +0100
Message-ID: <1818253.7aRn1RRit1@nimes>
Organization: GNU
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Alejandro,

reviewing the strtoul() calls in gnulib and gettext, I found several
places where the original coder had fallen into one of these two pitfalls.
I would find it good to mention both pitfalls more prominently in the
man-pages (the first one is mentioned as a NOTE, should better be called
a BUG).

* Leading whitespace and a sign are accepted by default.
  Often this is not desired.
  To avoid this, the caller should pre-parse the initial portion
  of the string, up to the first digit.

* If values > MAX should lead to a diagnostic, they arise in two
  circumstances:
    - errno = ERANGE,
    - errno = 0, end == str, but value > MAX.
  It is not obvious how to arrange the code, so as to get the same
  diagnostic, without code duplication.

Bruno

[1] https://git.savannah.gnu.org/gitweb/?p=gnulib.git;a=commitdiff;h=008ff109def9bdfdd04a12355d8f4a835045ae41
[2] https://git.savannah.gnu.org/gitweb/?p=gnulib.git;a=commitdiff;h=3df6da258c338e4fd165a2850bb8d4b0f39b6e9b
[3] https://git.savannah.gnu.org/gitweb/?p=gettext.git;a=commitdiff;h=b8ab4f2bef0ff18cf1ae749c1c81a359a40d0450




