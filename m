Return-Path: <linux-man+bounces-3592-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F07B330A4
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4827F203CC3
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D2FE2D543E;
	Sun, 24 Aug 2025 14:48:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="M8Zye7Ae"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C97B421D3C5
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046939; cv=none; b=Ta0S+rLQtcuuWzTLlU0Mam+JMJLYdX26F3RX70aUqpiRhNKPJ3833oyeyQ5yCr58Kk4+OI+7QTfoYLgvu2v/0Vyqe+xsjCKQCM2QIqvtjppKf/qmihk7iWHcA7LtmoHf0djQvKwCIdAKkQf4aBFxF3vUg5sMYPPu1XTdsR7QCd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046939; c=relaxed/simple;
	bh=P/2XS8rQxuvxSYc7svjQNmtq9WWC8J0AxGSvN2B6gDA=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=l0s1Ia7Up0gdO0Le0rzefnPuRNsNzZmopFlVzOvbxin5a8Zv9BuhHi9cs57+FFRU/u6RiioKqlnBn/jzwAkZ3VVV1OoxOteKikIQniVFnDymK00LTfb342SgcRU5ZpMyXO+2z88lOcLV6IZ+AAGRVDPtVz3OLXUw8J4ELMjpbaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=M8Zye7Ae; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046918;
	bh=oQ+hyxKkqFiPubVgNhbyr9iXm/NJOIJVN6Bpu5dXwzw=;
	h=Date:From:To:Cc:Subject;
	b=M8Zye7AemrBXSxyOMQ6tLEKK4u675VzwjmExY8Z1tujydCrvCz8ghXVoIMcQUnUN9
	 ozuHoXE01bfCry1DnXQgM+lIFkz2dKldZgIvfZCQpfygrXT57+Ys9Gm0qfksKrJr9X
	 arDlknzvWPM0IQP9olixPqpJneoEa+TQafwURzRaxF2s8/2zGgbmpJm+CUjMddrLAj
	 9ksTlCshyKgW/UD2vT0wfq4LwjNQeJdxMootf2PHe/aKJ47IYM1tE7wssDZI82OLtY
	 JBZqH5iJpaD9m7X9WShCp1mZPPRGXb8GOClGqFXbU8hn8E3T8uRQt2ALZjxXp7upw/
	 MLgyeJUthx6tg==
Original-Subject: Issue in man page div.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000210E6.0000000068AB2646.00138FD7; Sun, 24 Aug 2025 14:48:38 +0000
Date: Sun, 24 Aug 2025 14:48:38 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page div.3
Message-ID: <aKsmRo0iCNu6B0H_@meinfjell.helgefjelltest.de>
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

Issue 1:  I<numerator/denominator and> → I<numerator>/I<denominator>
Issue 2:  I<quot*denominator+rem\\ =\\ numerator> → I<quot>*I<denominator>+I<rem> = I<numerator>

"The B<div>()  function computes the value I<numerator/denominator and> "
"returns the quotient and remainder in a structure named I<div_t> that "
"contains two integer members (in unspecified order) named I<quot> and "
"I<rem>.  The quotient is rounded toward zero.  The result satisfies "
"I<quot*denominator+rem\\ =\\ numerator>."

