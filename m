Return-Path: <linux-man+bounces-3672-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A81CB330FF
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:51:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3E387440C35
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:50:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4D562DF719;
	Sun, 24 Aug 2025 14:49:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="eeLEE0To"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3252E06C3
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046978; cv=none; b=G+IaVnLZK8gLTLy7ETY0fRfREbuLjKZmWiJLTwsHgHv/rmDrAujZ2tnx5Kp5n1MVErXaUIRq1kZv48D4Js6UlAfzRbxqWh6arI8qif8jfiAVr9cTKdv6FnrrizNb0hKR4Oi41Kz3Yol8q0utcBfjCfGXKsLYybS/Wm+WoYXsZTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046978; c=relaxed/simple;
	bh=9tfHZDcOca66SCArpEdCRVfHF7vPfsBxRjhC7Gd8L/E=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=RdK6I+SYnYFLa+rmraQZSB7s5TM0ifFphF7bu2bI8EMijHsSKUQe/PJcq2tvC8iIrfBOP1aJykTKfyyU8fQ/VvwqFPkM73cEXnz/3qH9QwMycL70rz75lAjTfjisi0PiLDW4N4V7cl3TKEOfChCss9VroWyl8+vWSRqpeKXbw5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=eeLEE0To; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046928;
	bh=2eC2+vHPn7l05s6PFr1HCD+JWQtmLfZ3uVxHKrwAR5I=;
	h=Date:From:To:Cc:Subject;
	b=eeLEE0Toz+FPzB5i+Ye/+ZgHwzZ/CnJNYSOkwZpp9HUP4Gmg8OU/EW84dvxDvf7S/
	 2m8IvRsgw9Z4tSl0YqEWSmtckC//NAR8Q5UH+evvs12ljSAobIvdE3YhVrznvNpmBB
	 CLJWq6keknDMkDkPpnMVyJ6LW4QNnFbeeaRKdE2pzn0F2nJmuyq2Yjy0R5XM716T7f
	 11EjY92YwCGFps7gMB188uFO04wTkXlY/uzbGCrOCRi1b8EtzrSUjf+KSYTI1EjiZO
	 QaZtJUvXprdw1YAN9kuSPtQU5SeRZ8OUsRIbM7tvjwIOxU+MdXJFKizTs/2nM6P8uU
	 Lo6LnVITjMwFQ==
Original-Subject: Issue in man page putpwent.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021669.0000000068AB2650.001397AA; Sun, 24 Aug 2025 14:48:48 +0000
Date: Sun, 24 Aug 2025 14:48:48 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page putpwent.3
Message-ID: <aKsmUHH7oH4Pj88u@meinfjell.helgefjelltest.de>
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

Issue:    Does this mean, for glibc 2.19 both options are applicable, i.e. _DEFAULT_SOURCE AND _SVID_SOURCE are necessary?

"    Since glibc 2.19:\n"
"        _DEFAULT_SOURCE\n"
"    glibc 2.19 and earlier:\n"
"        _SVID_SOURCE\n"

